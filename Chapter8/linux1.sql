-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2014 at 04:53 PM
-- Server version: 5.5.35
-- PHP Version: 5.4.4-14+deb7u8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `linux1`
--

-- --------------------------------------------------------

--
-- Table structure for table `custnames`
--

CREATE TABLE IF NOT EXISTS `custnames` (
  `idnumber` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `custnames`
--

INSERT INTO `custnames` (`idnumber`, `firstname`, `lastname`, `address`, `city`, `state`) VALUES
(1, 'Bob', 'Smith', '111 This that', 'Somewhere', 'Or Other'),
(2, 'Joan', 'Bob', '112 That This', 'Someplace', 'or Not'),
(3, 'A', 'B', 'C', 'D', 'E'),
(4, 'F', 'G', 'H', 'I', 'J'),
(5, 'K', 'L', 'M', 'N', 'O'),
(6, 'P', 'Q', 'R', 'S', 'T'),
(7, 'U', 'V', 'W', 'X', 'Y'),
(8, 'Z', 'AA', 'Ab', 'AC', 'Ad'),
(9, 'Ae', 'Af', 'Ag', 'Ah', 'Ai'),
(10, 'Aj', 'Ak', 'Al', 'AM', 'AN');

-- --------------------------------------------------------

--
-- Table structure for table `myhobby`
--

CREATE TABLE IF NOT EXISTS `myhobby` (
  `idnumber` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(200) DEFAULT NULL,
  `albums` text,
  `genre` varchar(50) DEFAULT NULL,
  `website` varchar(400) DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  `mood` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `myhobby`
--

INSERT INTO `myhobby` (`idnumber`, `artist`, `albums`, `genre`, `website`, `tags`, `mood`) VALUES
(1, 'Big Giant Circles', 'Impostor Nostalgia, The Glory Days, A Big Giant Christmas', 'Chiptune', 'http://biggiantcircles.com', 'chiptune, 8bit, electronic', 'Happy'),
(2, 'Pixelmonster', 'Reboot Me, Maximonium, LIFTOFF!!', 'Electronic', 'http://pixelmonster.bandcamp.com', 'Happy, Electronic, Fun', 'Happy'),
(3, 'Mayyhem', 'Eggs and Other Songs, As of Yet Unnamed', 'Happy-Hardcore', 'http://lapfox.bandcamp.com', 'Furry, Anthro, Shark, Electronic', 'Energetic'),
(4, 'Wolfgun', 'Projections, Sundisk, Reality', 'Drum and Bass', 'http://wolfgun.bandcamp.com', 'Drum, Bass, Drum and Bass, energetic', 'Energetic'),
(5, 'Svix', 'Induction', 'Electronic', 'http://svix.bandcamp.com', 'Electronic, Furry, Anthro', 'Energetic'),
(6, 'Rchetype', 'Reset EP,', 'Drum and Bass', 'http://rchetype.bandcamp.com', 'Drum and Bass', 'Energetic'),
(7, 'Ramses B', 'Freedom', 'Dubstep', 'http://ramsesb.com', 'Dubstep, Drum and Bass, Chillout', 'Energetic'),
(8, 'Streetlights', 'Dreams of Pixel Screams', 'Dance', 'streetlights1.bandcamp.com', 'Dubstep, Hardcore, House', 'IDK'),
(9, 'a', 'qwer', 'b', 'c', 'd', 'e'),
(10, 'f', 'asdf', 'g', 'h', 'i', 'j');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
