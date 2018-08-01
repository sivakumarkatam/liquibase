CREATE TABLE `APG_Configuration_Service` (
  `APG_Configuration_ServiceID` int(11) NOT NULL AUTO_INCREMENT,
  `Service` varchar(100) DEFAULT NULL,
  `Group_Key` varchar(1000) DEFAULT NULL,
  `Group_Key_Add` varchar(1000) DEFAULT NULL,
  `Group_Title` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`APG_Configuration_ServiceID`)
 ) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
