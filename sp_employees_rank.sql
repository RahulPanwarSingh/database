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

-- Dumping structure for procedure northwind.sp_employees_rank
DROP PROCEDURE IF EXISTS `sp_employees_rank`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_employees_rank`()
BEGIN
select *
     from (select a.Title, a.EmployeeID, a.FirstName, a.Salary,
                  (select 1 + count(*)
                   from Employees b
                   where b.Title = a.Title
                     and b.Salary > a.Salary) RANK
           from Employees as a) as x
     order by x.Title, x.RANK;

END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
