// Please leave the link below with the source code, thank you.
// http://www.websmithing.com/portal/Programming/tabid/55/articleType/ArticleView/articleId/6/Google-Map-GPS-Cell-Phone-Tracker-Version-2.aspx

import javax.microedition.location.*;
import java.util.Calendar;
import java.util.Date;

public class GPS implements LocationListener  {
   
    private LocationProvider locationProvider = null;
    private Coordinates oldCoordinates = null, currentCoordinates = null;
    private float distance = 0;
    private int azimuth = 0;
    private String uploadWebsite;
    private String queryString;
    private GPSTracker midlet;
    private int interval;       
    protected Calendar currentTime;    
    protected long sessionID;
    
    
    public GPS(GPSTracker Midlet, int Interval, String UploadWebsite){
        currentTime = Calendar.getInstance();
        sessionID = System.currentTimeMillis();
        this.midlet = Midlet;
        this.interval = Interval;
        this.uploadWebsite = UploadWebsite;
    } 
   
    // getting the gps location is based on an interval in seconds. for instance, 
    // the location is gotten once a minute, sent to the website to be stored in 
    // the DB (and then viewed on Google map) and used to retrieve a map tile (image) 
    // to be diplayed on the phone
    
    public void startGPS() {
         if (locationProvider == null) {
                createLocationProvider();

                Thread locationThread = new Thread() {
                    public void run(){
                        createLocationListener();
                    }
                };
                locationThread.start();
       }       
    }
    
    // this allows us to change how often the gps location is gotten
    public void changeInterval(int Interval) {
        if (locationProvider != null) {
            locationProvider.setLocationListener(this, Interval, -1, -1);
        }
    }
    
    private void createLocationProvider() {
        Criteria cr = new Criteria(); 
        
        try {
            locationProvider = LocationProvider.getInstance(cr);
        } catch (Exception e) {
           midlet.log("GPS.createLocationProvider: " + e);
        }
    }
    
    private void createLocationListener(){
          // 2cd value is interval in seconds
          try {
            locationProvider.setLocationListener(this, interval, -1, -1); 
          } catch (Exception e) {
           midlet.log("GPS.createLocationListener: " + e);
        } 
   }
    
    public void locationUpdated(LocationProvider provider, final Location location) {
        // get new location from locationProvider
         
        try {
            Thread getLocationThread = new Thread(){
                public void run(){
                   getLocation(location);
                }
            };

            getLocationThread.start();
        } catch (Exception e) {
           midlet.log("GPS.locationUpdated: " + e);
        }
    }    
 
    public void providerStateChanged(LocationProvider provider, int newState) {}
    
    private void getLocation(Location location){
        float speed = 0;
            
        try {
            QualifiedCoordinates qualifiedCoordinates = location.getQualifiedCoordinates();

           qualifiedCoordinates.getLatitude();

            if (oldCoordinates == null){
                oldCoordinates = new Coordinates(qualifiedCoordinates.getLatitude(),
                                                 qualifiedCoordinates.getLongitude(),
                                                 qualifiedCoordinates.getAltitude());
            } else {
                if (!Float.isNaN( qualifiedCoordinates.distance(oldCoordinates))) {
                    distance += qualifiedCoordinates.distance(oldCoordinates);
                }

                currentCoordinates = new Coordinates(qualifiedCoordinates.getLatitude(),
                                                     qualifiedCoordinates.getLongitude(),
                                                     qualifiedCoordinates.getAltitude());
                azimuth = (int)oldCoordinates.azimuthTo(currentCoordinates);
                oldCoordinates.setAltitude(qualifiedCoordinates.getAltitude());
                oldCoordinates.setLatitude(qualifiedCoordinates.getLatitude());
                oldCoordinates.setLongitude(qualifiedCoordinates.getLongitude());

            }

            if (qualifiedCoordinates != null){
                Date d = new Date();

                if (!Float.isNaN(location.getSpeed())) {
                    speed = location.getSpeed();
                }

                queryString = "?lat=" + String.valueOf(qualifiedCoordinates.getLatitude()) 
                        + "&lng=" + String.valueOf(qualifiedCoordinates.getLongitude())
                        + "&mph=" + String.valueOf((int)(speed/1609*3600))
                        + "&dir=" + String.valueOf(azimuth) 
                        + "&dis=" + String.valueOf((int)(distance/1609))
                        + "&dt=" + d.toString()
                        + "&lm=" + location.getLocationMethod()
                        + "&pn=" + midlet.phoneNumber
                        + "&sid=" + String.valueOf(sessionID)
                        + "&acc=" + String.valueOf((int)(qualifiedCoordinates.getHorizontalAccuracy()*3.28))
                        + "&iv=" + String.valueOf(location.isValid())
                        + "&info=" + location.getExtraInfo("text/plain")
                        + "&zm=" + midlet.zoomLevel
                        + "&h=" + midlet.height
                        + "&w=" + midlet.width;
               
                // with our query string built, we create a networker object to send the 
                // query to our website and get the map image and update the DB
                NetWorker worker = new NetWorker(midlet, uploadWebsite);
                worker.getUrl(queryString);

            }

        } catch (Exception e) {
            midlet.log("GPS.getLocation: " + e);
        }
    }
}



