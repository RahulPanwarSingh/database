-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table northwind.territories
DROP TABLE IF EXISTS `territories`;
CREATE TABLE IF NOT EXISTS `territories` (
  `TerritoryID` varchar(20) NOT NULL,
  `TerritoryDescription` varchar(50) NOT NULL,
  `RegionID` int(11) NOT NULL,
  PRIMARY KEY (`TerritoryID`),
  KEY `FK_Territories_Region` (`RegionID`),
  CONSTRAINT `FK_Territories_Region` FOREIGN KEY (`RegionID`) REFERENCES `region` (`RegionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table northwind.territories: ~53 rows (approximately)
DELETE FROM `territories`;
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`) VALUES
	('01581', 'Westboro                                          ', 1),
	('01730', 'Bedford                                           ', 1),
	('01833', 'Georgetow                                         ', 1),
	('02116', 'Boston                                            ', 1),
	('02139', 'Cambridge                                         ', 1),
	('02184', 'Braintree                                         ', 1),
	('02903', 'Providence                                        ', 1),
	('03049', 'Hollis                                            ', 3),
	('03801', 'Portsmouth                                        ', 3),
	('06897', 'Wilton                                            ', 1),
	('07960', 'Morristown                                        ', 1),
	('08837', 'Edison                                            ', 1),
	('10019', 'New York                                          ', 1),
	('10038', 'New York                                          ', 1),
	('11747', 'Mellvile                                          ', 1),
	('14450', 'Fairport                                          ', 1),
	('19428', 'Philadelphia                                      ', 3),
	('19713', 'Neward                                            ', 1),
	('20852', 'Rockville                                         ', 1),
	('27403', 'Greensboro                                        ', 1),
	('27511', 'Cary                                              ', 1),
	('29202', 'Columbia                                          ', 4),
	('30346', 'Atlanta                                           ', 4),
	('31406', 'Savannah                                          ', 4),
	('32859', 'Orlando                                           ', 4),
	('33607', 'Tampa                                             ', 4),
	('40222', 'Louisville                                        ', 1),
	('44122', 'Beachwood                                         ', 3),
	('45839', 'Findlay                                           ', 3),
	('48075', 'Southfield                                        ', 3),
	('48084', 'Troy                                              ', 3),
	('48304', 'Bloomfield Hills                                  ', 3),
	('53404', 'Racine                                            ', 3),
	('55113', 'Roseville                                         ', 3),
	('55439', 'Minneapolis                                       ', 3),
	('60179', 'Hoffman Estates                                   ', 2),
	('60601', 'Chicago                                           ', 2),
	('72716', 'Bentonville                                       ', 4),
	('75234', 'Dallas                                            ', 4),
	('78759', 'Austin                                            ', 4),
	('80202', 'Denver                                            ', 2),
	('80909', 'Colorado Springs                                  ', 2),
	('85014', 'Phoenix                                           ', 2),
	('85251', 'Scottsdale                                        ', 2),
	('90405', 'Santa Monica                                      ', 2),
	('94025', 'Menlo Park                                        ', 2),
	('94105', 'San Francisco                                     ', 2),
	('95008', 'Campbell                                          ', 2),
	('95054', 'Santa Clara                                       ', 2),
	('95060', 'Santa Cruz                                        ', 2),
	('98004', 'Bellevue                                          ', 2),
	('98052', 'Redmond                                           ', 2),
	('98104', 'Seattle                                           ', 2);
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
