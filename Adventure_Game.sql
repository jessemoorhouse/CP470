-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2015 at 04:33 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Adventure Game`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Command`
--

CREATE TABLE IF NOT EXISTS `ADV_Command` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `ActionID` int(11) NOT NULL,
  `Text` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `AdventureID` (`AdventureID`),
  KEY `ActionID` (`ActionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Event`
--

CREATE TABLE IF NOT EXISTS `ADV_Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `EventTypeID` int(11) NOT NULL,
  `ActionID` int(11) NOT NULL,
  `String1` varchar(50) NOT NULL,
  `String2` varchar(50) NOT NULL,
  `String3` varchar(50) NOT NULL,
  `Value1` varchar(50) NOT NULL,
  `Value2` varchar(50) NOT NULL,
  `Value3` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `AdventureID` (`AdventureID`),
  KEY `EventTypeID` (`EventTypeID`),
  KEY `ActionID` (`ActionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_EventPrereq`
--

CREATE TABLE IF NOT EXISTS `ADV_EventPrereq` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EventID` int(11) NOT NULL,
  `RequiredID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EventID` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Location`
--

CREATE TABLE IF NOT EXISTS `ADV_Location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `AdventureID` (`AdventureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_LocationConnection`
--

CREATE TABLE IF NOT EXISTS `ADV_LocationConnection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FromID` int(11) NOT NULL,
  `Direction` varchar(50) NOT NULL,
  `ToID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_LocationThing`
--

CREATE TABLE IF NOT EXISTS `ADV_LocationThing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ThingID` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ThingID` (`ThingID`,`LocationID`),
  KEY `LocationID` (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Thing`
--

CREATE TABLE IF NOT EXISTS `ADV_Thing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ThingTypeID` int(11) NOT NULL,
  `AdventureID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `IsStackable` tinyint(1) NOT NULL,
  `Value` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ThingTypeID` (`ThingTypeID`,`AdventureID`),
  KEY `AdventureID` (`AdventureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_Action`
--

CREATE TABLE IF NOT EXISTS `MST_Action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_Adventure`
--

CREATE TABLE IF NOT EXISTS `MST_Adventure` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_EventType`
--

CREATE TABLE IF NOT EXISTS `MST_EventType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_ThingType`
--

CREATE TABLE IF NOT EXISTS `MST_ThingType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_Event`
--

CREATE TABLE IF NOT EXISTS `STA_Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StateID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  `Order` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `StateID` (`StateID`),
  KEY `EventID` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_LocationThing`
--

CREATE TABLE IF NOT EXISTS `STA_LocationThing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SaveID` int(11) NOT NULL,
  `ThingID` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SaveID` (`SaveID`),
  KEY `ThingID` (`ThingID`),
  KEY `LocationID` (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_Save`
--

CREATE TABLE IF NOT EXISTS `STA_Save` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `LocationID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `AdventureID` (`AdventureID`),
  KEY `LocationID` (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADV_Command`
--
ALTER TABLE `ADV_Command`
  ADD CONSTRAINT `ADV_Command_ibfk_2` FOREIGN KEY (`ActionID`) REFERENCES `MST_Action` (`ID`),
  ADD CONSTRAINT `ADV_Command_ibfk_1` FOREIGN KEY (`AdventureID`) REFERENCES `MST_Adventure` (`ID`);

--
-- Constraints for table `ADV_Event`
--
ALTER TABLE `ADV_Event`
  ADD CONSTRAINT `ADV_Event_ibfk_3` FOREIGN KEY (`ActionID`) REFERENCES `MST_Action` (`ID`),
  ADD CONSTRAINT `ADV_Event_ibfk_1` FOREIGN KEY (`AdventureID`) REFERENCES `MST_Adventure` (`ID`),
  ADD CONSTRAINT `ADV_Event_ibfk_2` FOREIGN KEY (`EventTypeID`) REFERENCES `MST_EventType` (`ID`);

--
-- Constraints for table `ADV_EventPrereq`
--
ALTER TABLE `ADV_EventPrereq`
  ADD CONSTRAINT `ADV_EventPrereq_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `ADV_Event` (`ID`);

--
-- Constraints for table `ADV_Location`
--
ALTER TABLE `ADV_Location`
  ADD CONSTRAINT `ADV_Location_ibfk_1` FOREIGN KEY (`AdventureID`) REFERENCES `MST_Adventure` (`ID`);

--
-- Constraints for table `ADV_LocationThing`
--
ALTER TABLE `ADV_LocationThing`
  ADD CONSTRAINT `ADV_LocationThing_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `ADV_Location` (`ID`),
  ADD CONSTRAINT `ADV_LocationThing_ibfk_1` FOREIGN KEY (`ThingID`) REFERENCES `ADV_Thing` (`ID`);

--
-- Constraints for table `ADV_Thing`
--
ALTER TABLE `ADV_Thing`
  ADD CONSTRAINT `ADV_Thing_ibfk_2` FOREIGN KEY (`AdventureID`) REFERENCES `MST_Adventure` (`ID`),
  ADD CONSTRAINT `ADV_Thing_ibfk_1` FOREIGN KEY (`ThingTypeID`) REFERENCES `MST_ThingType` (`ID`);

--
-- Constraints for table `STA_Event`
--
ALTER TABLE `STA_Event`
  ADD CONSTRAINT `STA_Event_ibfk_2` FOREIGN KEY (`StateID`) REFERENCES `STA_Save` (`ID`),
  ADD CONSTRAINT `STA_Event_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `STA_Event` (`ID`);

--
-- Constraints for table `STA_LocationThing`
--
ALTER TABLE `STA_LocationThing`
  ADD CONSTRAINT `STA_LocationThing_ibfk_3` FOREIGN KEY (`LocationID`) REFERENCES `ADV_Location` (`ID`),
  ADD CONSTRAINT `STA_LocationThing_ibfk_1` FOREIGN KEY (`SaveID`) REFERENCES `STA_Save` (`ID`),
  ADD CONSTRAINT `STA_LocationThing_ibfk_2` FOREIGN KEY (`ThingID`) REFERENCES `ADV_Thing` (`ID`);

--
-- Constraints for table `STA_Save`
--
ALTER TABLE `STA_Save`
  ADD CONSTRAINT `STA_Save_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `ADV_Location` (`ID`),
  ADD CONSTRAINT `STA_Save_ibfk_1` FOREIGN KEY (`AdventureID`) REFERENCES `MST_Adventure` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
