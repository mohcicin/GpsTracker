-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.11-beta-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gpstracker2
--

CREATE DATABASE IF NOT EXISTS gpstracker2;
USE gpstracker2;

--
-- Definition of table `gpslocations2`
--

DROP TABLE IF EXISTS `gpslocations2`;
CREATE TABLE `gpslocations2` (
  `GPSLocationID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Latitude` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `Longitude` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `phoneNumber` varchar(20) NOT NULL,
  `sessionID` varchar(25) NOT NULL,
  `speed` int(10) unsigned NOT NULL,
  `direction` int(10) unsigned NOT NULL,
  `distance` int(10) unsigned NOT NULL,
  `gpsTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LocationMethod` varchar(100) NOT NULL DEFAULT '',
  `accuracy` int(10) unsigned NOT NULL,
  `isLocationValid` varchar(5) NOT NULL,
  `extraInfo` varchar(255) NOT NULL,
  PRIMARY KEY (`GPSLocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gpslocations2`
--

/*!40000 ALTER TABLE `gpslocations2` DISABLE KEYS */;
INSERT INTO `gpslocations2` (`GPSLocationID`,`LastUpdate`,`Latitude`,`Longitude`,`phoneNumber`,`sessionID`,`speed`,`direction`,`distance`,`gpsTime`,`LocationMethod`,`accuracy`,`isLocationValid`,`extraInfo`) VALUES 
 (4,'2008-04-16 14:59:52','47.473349','-122.025035','molly','1208372106690',0,0,0,'2008-04-16 11:59:51','8',0,'0','Invalid Location: Time out, fix unattainable and assist unavailable.'),
 (12,'2008-04-16 15:09:04','47.446123','-121.988437','molly','1208372106690',0,139,3,'2008-04-16 12:09:03','327681',70,'1','Valid Location.'),
 (13,'2008-04-16 15:10:13','47.437515','-121.978176','molly','1208372106690',44,141,4,'2008-04-16 12:10:11','327681',44,'1','Valid Location.'),
 (14,'2008-04-16 15:11:16','47.433877','-121.973387','molly','1208372106690',24,138,4,'2008-04-16 12:11:14','327681',52,'1','Valid Location.'),
 (15,'2008-04-16 15:12:20','47.436571','-121.967061','molly','1208372106690',49,57,4,'2008-04-16 12:12:19','327681',44,'1','Valid Location.'),
 (16,'2008-04-16 15:13:38','47.449381','-121.958283','molly','1208372106690',45,24,5,'2008-04-16 12:13:34','327681',132,'1','Valid Location.'),
 (17,'2008-04-16 15:14:51','47.461755','-121.945067','molly','1208372106690',52,35,6,'2008-04-16 12:14:51','327681',70,'1','Valid Location.'),
 (18,'2008-04-16 15:15:54','47.465712','-121.928203','molly','1208372106690',0,70,7,'2008-04-16 12:15:53','327681',52,'1','Valid Location.'),
 (19,'2008-04-16 15:17:06','47.473136','-121.906763','molly','1208372106690',55,62,8,'2008-04-16 12:17:06','327681',117,'1','Valid Location.'),
 (20,'2008-04-16 15:18:29','47.484347','-121.889056','molly','1208372106690',56,46,9,'2008-04-16 12:18:27','327681',104,'1','Valid Location.'),
 (21,'2008-04-16 15:19:35','47.499045','-121.885739','molly','1208372106690',0,8,10,'2008-04-16 12:19:33','327681',60,'1','Valid Location.'),
 (22,'2008-04-16 15:20:37','47.508517','-121.880395','molly','1208372106690',51,20,11,'2008-04-16 12:20:35','327681',91,'1','Valid Location.'),
 (23,'2008-04-16 15:21:37','47.510901','-121.857973','molly','1208372106690',69,81,12,'2008-04-16 12:21:35','327681',52,'1','Valid Location.'),
 (24,'2008-04-16 15:22:55','47.508485','-121.829131','molly','1208372106690',68,97,14,'2008-04-16 12:22:55','327681',70,'1','Valid Location.'),
 (25,'2008-04-16 15:24:07','47.494528','-121.811840','molly','1208372106690',57,140,15,'2008-04-16 12:24:06','327681',70,'1','Valid Location.'),
 (26,'2008-04-16 15:25:08','47.485893','-121.794368','molly','1208372106690',60,126,16,'2008-04-16 12:25:07','327681',80,'1','Valid Location.'),
 (27,'2008-04-16 15:26:09','47.473557','-121.779776','molly','1208372106690',69,141,17,'2008-04-16 12:26:08','327681',104,'1','Valid Location.'),
 (28,'2008-04-16 15:27:21','47.473323','-121.749280','molly','1208372106690',62,90,18,'2008-04-16 12:27:21','327681',132,'1','Valid Location.'),
 (29,'2008-04-16 15:28:24','47.468064','-121.725557','molly','1208372106690',70,108,20,'2008-04-16 12:28:24','327681',70,'1','Valid Location.'),
 (30,'2008-04-16 15:29:31','47.458677','-121.703264','molly','1208372106690',0,121,21,'2008-04-16 12:29:30','327681',132,'1','Valid Location.'),
 (31,'2008-04-16 15:30:31','47.444704','-121.691840','molly','1208372106690',69,151,22,'2008-04-16 12:30:30','327681',70,'1','Valid Location.'),
 (32,'2008-04-16 15:31:37','47.443136','-121.664373','molly','1208372106690',65,94,23,'2008-04-16 12:31:36','327681',80,'1','Valid Location.'),
 (33,'2008-04-16 15:32:42','47.434107','-121.641504','molly','1208372106690',50,120,24,'2008-04-16 12:32:41','327681',149,'1','Valid Location.'),
 (34,'2008-04-16 15:33:52','47.429093','-121.615371','molly','1208372106690',67,105,26,'2008-04-16 12:33:50','327681',91,'1','Valid Location.'),
 (35,'2008-04-16 15:34:56','47.421152','-121.592448','molly','1208372106690',52,117,27,'2008-04-16 12:34:56','327681',104,'1','Valid Location.'),
 (36,'2008-04-16 15:35:57','47.409291','-121.576128','molly','1208372106690',65,137,28,'2008-04-16 12:35:57','327681',104,'1','Valid Location.'),
 (37,'2008-04-16 15:37:10','47.399184','-121.551893','molly','1208372106690',68,121,29,'2008-04-16 12:37:08','327681',70,'1','Valid Location.'),
 (38,'2008-04-16 15:38:12','47.395051','-121.527936','molly','1208372106690',68,104,31,'2008-04-16 12:38:11','327681',104,'1','Valid Location.'),
 (39,'2008-04-16 15:39:15','47.396219','-121.501365','molly','1208372106690',69,86,32,'2008-04-16 12:39:13','327681',132,'1','Valid Location.'),
 (40,'2008-04-16 15:40:17','47.395040','-121.480896','molly','1208372106690',1,94,33,'2008-04-16 12:40:17','327681',91,'1','Valid Location.'),
 (41,'2008-04-16 15:41:42','47.392939','-121.481472','molly','1208372106690',0,190,33,'2008-04-16 12:41:42','327681',132,'1','Valid Location.'),
 (42,'2008-04-16 15:43:13','47.393259','-121.482144','molly','1208372106690',0,304,33,'2008-04-16 12:43:12','327681',167,'0','Invalid Location: Time out, accuracy unattainable.'),
 (43,'2008-04-16 15:44:44','47.394752','-121.480875','molly','1208372106690',18,29,33,'2008-04-16 12:44:44','327681',149,'1','Valid Location.'),
 (44,'2008-04-16 15:47:53','47.397093','-121.492501','molly','1208372106690',68,286,34,'2008-04-16 12:47:51','327681',104,'1','Valid Location.'),
 (45,'2008-04-16 15:51:23','47.413760','-121.589707','molly','1208372106690',0,284,38,'2008-04-16 12:51:21','8',0,'0','Invalid Location: Time out, fix unattainable and assist unavailable.'),
 (46,'2008-04-16 15:54:39','47.433429','-121.640171','molly','1208372106690',54,299,41,'2008-04-16 12:54:37','327681',80,'1','Valid Location.'),
 (47,'2008-04-16 15:57:53','47.458203','-121.702464','molly','1208372106690',0,300,44,'2008-04-16 12:57:53','327681',132,'1','Valid Location.'),
 (48,'2008-04-16 16:01:26','47.474885','-121.777867','molly','1208372106690',0,288,48,'2008-04-16 13:01:14','327681',117,'1','Valid Location.'),
 (49,'2008-04-16 16:04:46','47.488192','-121.794773','molly','1208372106690',0,319,49,'2008-04-16 13:04:45','327681',167,'0','Invalid Location: Time out, accuracy unattainable.'),
 (50,'2008-04-16 16:07:52','47.489733','-121.794005','molly','1208372106690',28,18,49,'2008-04-16 13:07:50','327681',91,'1','Valid Location.'),
 (51,'2008-04-16 16:11:01','47.501344','-121.791584','molly','1208372106690',37,8,50,'2008-04-16 13:11:00','327681',44,'1','Valid Location.'),
 (52,'2008-04-16 16:14:34','47.508368','-121.816128','molly','1208372106690',48,292,52,'2008-04-16 13:14:31','327681',70,'1','Valid Location.'),
 (53,'2008-04-16 16:17:36','47.525760','-121.823083','molly','1208372106690',28,344,53,'2008-04-16 13:17:34','327681',44,'1','Valid Location.'),
 (54,'2008-04-16 16:20:59','47.543280','-121.836917','molly','1208372106690',0,331,54,'2008-04-16 13:20:58','327681',91,'1','Valid Location.'),
 (55,'2008-04-16 16:24:25','47.543163','-121.837067','molly','1208372106690',0,220,54,'2008-04-16 13:24:24','327681',70,'1','Valid Location.'),
 (56,'2008-04-16 16:27:28','47.543131','-121.836789','molly','1208372106690',0,99,54,'2008-04-16 13:27:26','327681',117,'1','Valid Location.'),
 (57,'2008-04-16 16:30:43','47.534421','-121.840096','molly','1208372106690',40,194,55,'2008-04-16 13:30:41','327681',149,'1','Valid Location.'),
 (58,'2008-04-16 16:33:56','47.523504','-121.880160','molly','1208372106690',35,248,57,'2008-04-16 13:33:54','327681',70,'1','Valid Location.'),
 (59,'2008-04-16 16:37:25','47.489925','-121.887755','molly','1208372106690',57,188,59,'2008-04-16 13:37:23','327681',209,'0','Invalid Location: Time out, accuracy unattainable.'),
 (60,'2008-04-16 16:40:28','47.466347','-121.930624','molly','1208372106690',2,230,62,'2008-04-16 13:40:27','327681',60,'1','Valid Location.'),
 (61,'2008-04-16 16:43:49','47.458864','-121.948907','molly','1208372106690',49,238,63,'2008-04-16 13:43:48','327681',132,'1','Valid Location.'),
 (62,'2008-04-16 16:45:42','47.436240','-121.967989','molly','1208372106690',50,209,65,'2008-04-16 13:45:42','327681',149,'1','Valid Location.'),
 (63,'2008-04-16 16:47:58','47.444427','-121.973024','molly','1208372106690',0,337,65,'2008-04-16 13:47:56','327681',80,'1','Valid Location.'),
 (64,'2008-04-16 16:50:03','47.459573','-121.980085','molly','1208372106690',27,342,66,'2008-04-16 13:50:02','327681',117,'1','Valid Location.'),
 (65,'2008-04-16 16:52:14','47.472827','-121.993173','molly','1208372106690',0,326,67,'2008-04-16 13:52:13','327681',91,'1','Valid Location.'),
 (68,'2008-04-16 16:59:29','47.476933','-122.021419','molly','1208372106690',0,34,69,'2008-04-16 13:59:28','327681',260,'0','Invalid Location: Time out, accuracy unattainable.'),
 (69,'2008-04-17 13:46:16','47.473307','-122.024693','206-555-1212','1208454364321',0,0,0,'2008-04-17 10:46:15','327681',80,'1','Valid Location.'),
 (70,'2008-04-17 13:48:20','47.461216','-122.026219','206-555-1212','1208454364321',0,184,0,'2008-04-17 10:48:17','327681',70,'1','Valid Location.'),
 (71,'2008-04-17 13:50:33','47.445077','-122.046645','206-555-1212','1208454364321',36,220,2,'2008-04-17 10:50:31','327681',91,'1','Valid Location.'),
 (72,'2008-04-17 13:52:33','47.438731','-122.066048','206-555-1212','1208454364321',0,244,3,'2008-04-17 10:52:33','327681',25,'1','Valid Location.'),
 (73,'2008-04-17 13:54:45','47.424661','-122.051755','206-555-1212','1208454364321',0,145,4,'2008-04-17 10:54:43','327681',80,'1','Valid Location.'),
 (74,'2008-04-17 13:56:49','47.406597','-122.038752','206-555-1212','1208454364321',25,154,5,'2008-04-17 10:56:48','327681',44,'1','Valid Location.'),
 (75,'2008-04-17 13:58:56','47.394085','-122.049120','206-555-1212','1208454364321',0,209,6,'2008-04-17 10:58:55','327681',80,'1','Valid Location.'),
 (76,'2008-04-17 14:01:05','47.377595','-122.081067','206-555-1212','1208454364321',61,232,8,'2008-04-17 11:01:04','327681',104,'1','Valid Location.'),
 (77,'2008-04-17 14:03:05','47.361323','-122.116469','206-555-1212','1208454364321',59,235,10,'2008-04-17 11:03:05','327681',52,'1','Valid Location.'),
 (78,'2008-04-17 14:05:16','47.358016','-122.115115','206-555-1212','1208454364321',0,164,11,'2008-04-17 11:05:15','327681',117,'1','Valid Location.'),
 (79,'2008-04-17 14:07:23','47.357627','-122.109707','206-555-1212','1208454364321',6,96,11,'2008-04-17 11:07:22','327681',60,'1','Valid Location.'),
 (80,'2008-04-17 14:42:29','47.357115','-122.114773','3b','1208457732980',0,0,0,'2008-04-17 11:42:22','327681',70,'1','Valid Location.'),
 (81,'2008-04-17 14:44:32','47.358101','-122.115307','3b','1208457732980',25,339,0,'2008-04-17 11:44:32','327681',70,'1','Valid Location.'),
 (82,'2008-04-17 14:46:44','47.371355','-122.094517','3b','1208457732980',53,46,1,'2008-04-17 11:46:43','327681',52,'1','Valid Location.'),
 (83,'2008-04-17 14:48:44','47.387616','-122.058048','3b','1208457732980',59,56,3,'2008-04-17 11:48:44','327681',52,'1','Valid Location.'),
 (84,'2008-04-17 14:50:46','47.409472','-122.032917','3b','1208457732980',60,37,5,'2008-04-17 11:50:45','327681',80,'1','Valid Location.'),
 (85,'2008-04-17 14:52:55','47.425824','-121.991819','3b','1208457732980',59,59,7,'2008-04-17 11:52:54','327681',44,'1','Valid Location.'),
 (86,'2008-04-17 14:55:22','47.442251','-121.985579','3b','1208457732980',42,14,8,'2008-04-17 11:55:20','327681',60,'1','Valid Location.'),
 (87,'2008-04-17 14:57:27','47.459232','-122.005856','3b','1208457732980',39,321,10,'2008-04-17 11:57:27','327681',132,'1','Valid Location.'),
 (88,'2008-04-17 14:59:34','47.475531','-122.026176','3b','1208457732980',8,319,11,'2008-04-17 11:59:33','327681',80,'1','Valid Location.'),
 (89,'2008-04-17 15:02:05','47.473349','-122.025035','3b','1208457732980',0,160,11,'2008-04-17 12:02:03','8',0,'0','Invalid Location: Time out, fix unattainable and assist unavailable.'),
 (90,'2008-04-17 15:04:34','47.473349','-122.025035','3b','1208457732980',0,0,11,'2008-04-17 12:04:32','8',0,'0','Invalid Location: Time out, fix unattainable and assist unavailable.'),
 (91,'2008-04-17 15:07:03','47.473349','-122.025035','3b','1208457732980',0,0,11,'2008-04-17 12:07:02','8',0,'0','Invalid Location: Time out, fix unattainable and assist unavailable.');
/*!40000 ALTER TABLE `gpslocations2` ENABLE KEYS */;


--
-- Definition of procedure `prcDeleteRoute`
--

DROP PROCEDURE IF EXISTS `prcDeleteRoute`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteRoute`(
_sessionID VARCHAR(20),
_phoneNumber VARCHAR(25)
)
BEGIN
  DELETE FROM gpslocations2
  WHERE sessionID = _sessionID
  AND phoneNumber = _phoneNumber
  ORDER BY lastupdate;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcGetRouteForMap`
--

DROP PROCEDURE IF EXISTS `prcGetRouteForMap`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetRouteForMap`(
_sessionID VARCHAR(20),
_phoneNumber VARCHAR(25)
)
BEGIN
  SELECT
  CONCAT('<locations latitude="', CAST(latitude AS CHAR),'" longitude="', CAST(longitude AS CHAR),
  '" speed="', CAST(speed AS CHAR), '" direction="', CAST(direction AS CHAR), '" distance="', CAST(distance AS CHAR),
  '" locationMethod="', locationMethod, '" gpsTime="', DATE_FORMAT(gpsTime, '%b %e %Y %h:%i%p'), '" phoneNumber="', phoneNumber,
  '" sessionID="', CAST(sessionID AS CHAR), '" accuracy="', CAST(accuracy AS CHAR), '" isLocationValid="', isLocationValid,
  '" extraInfo="', extraInfo, '" />') xml
  FROM gpslocations2
  WHERE sessionID = _sessionID
  AND phoneNumber = _phoneNumber
  ORDER BY lastupdate;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcGetRoutes`
--

DROP PROCEDURE IF EXISTS `prcGetRoutes`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetRoutes`()
BEGIN
  CREATE TEMPORARY TABLE tempRoutes (
    sessionID VARCHAR(25),
    phoneNumber VARCHAR(20),
    startTime DATETIME,
    endTime DATETIME)
  ENGINE = MEMORY;

  INSERT INTO tempRoutes (sessionID, phoneNumber)
  SELECT DISTINCT sessionID, phoneNumber
  FROM gpslocations2;

  UPDATE tempRoutes tr
  SET startTime = (SELECT MIN(gpsTime) FROM gpslocations2 gl
  WHERE gl.sessionID = tr.sessionID
  AND gl.phoneNumber = tr.phoneNumber);

  UPDATE tempRoutes tr
  SET endTime = (SELECT MAX(gpsTime) FROM gpslocations2 gl
  WHERE gl.sessionID = tr.sessionID
  AND gl.phoneNumber = tr.phoneNumber);

  SELECT
  CONCAT('<route sessionID="', CAST(sessionID AS CHAR),  '" phoneNumber="', phoneNumber,
  '" times="(', DATE_FORMAT(startTime, '%b %e %Y %h:%i%p'), ' - ',
  DATE_FORMAT(endTime, '%b %e %Y %h:%i%p'), ')" />')
  FROM tempRoutes
  ORDER BY phoneNumber;

  DROP TABLE tempRoutes;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcSaveGPSLocation2`
--

DROP PROCEDURE IF EXISTS `prcSaveGPSLocation2`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSaveGPSLocation2`(
_lat VARCHAR(45),
_lng VARCHAR(45),
_mph VARCHAR(45),
_direction VARCHAR(45),
_distance VARCHAR(45),
_date VARCHAR(100),
_locationMethod VARCHAR(100),
_phoneNumber VARCHAR(20),
_sessionID VARCHAR(50),
_accuracy VARCHAR(20),
_locationIsValid VARCHAR(5),
_extraInfo VARCHAR(255)
)
BEGIN
  INSERT INTO gpslocations2 (latitude, longitude, speed, direction, distance, gpsTime, locationMethod,
                            phoneNumber,  sessionID, accuracy, isLocationValid, extraInfo)
  VALUES (_lat, _lng, _mph, _direction, _distance, _date, _locationMethod,
	  _phoneNumber, _sessionID, _accuracy, _locationIsValid, _extraInfo);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
