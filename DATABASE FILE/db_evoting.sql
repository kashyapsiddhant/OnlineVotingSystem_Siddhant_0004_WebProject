-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 06:30 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`aid` int(11) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`aid`, `admin_username`, `admin_password`, `time_stamp`) VALUES
(1, 'admin', 'webproject2023', '2021-04-03 14:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
`id` int(5) NOT NULL,
  `full_name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `voter_id` int(10) NOT NULL,
  `voted_for` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `email`, `voter_id`, `voted_for`) VALUES
(1, 'Bill Hill', 'billhill@gmail.com', 696978, 'JM'),
(3, 'David J Jackson', 'jckgn@gmail.com', 753960, 'JM'),
(4, 'David Murphy', 'murphyuniverse@mail.com', 789674, 'JM'),
(5, 'Max Gerber', 'kgerber@gmail.com', 612002, 'JM'),
(6, 'Patricia Bidwell', 'bidwellp@gmail.com', 3687430, 'JM'),
(7, 'Sebastian Chaney', 'sebsta@gmail.com', 3674629, 'JRZ'),
(8, 'Pennie Hain', 'pennisch@gmail.com', 9989378, 'DM'),
(9, 'Margaret K Vinson', 'margaretfk@gmail.com', 2294940, 'MAD'),
(10, 'Jerry J Hudkins', 'puticns@gmail.com', 6066483, 'MAD'),
(11, 'Michael C Wilson', 'wilsonc@yahoo.com', 9749403, 'JRZ'),
(12, 'Robert French', 'robertof@gmail.com', 9566678, 'MAD'),
(13, 'Bernard T Hamilton', 'hamiltonb@gmail.com', 696969, 'JM'),
(14, 'Lawrence C Godsey', 'godsey1169@gmail.com', 124588, 'DM'),
(15, 'Ivan Blackwell', 'rndiwelvan@gmail.com', 696478, 'DM'),
(16, 'Christine Pennie', 'pennict@gmail.com', 452200, 'DM'),
(17, 'Bruno Denn', 'denbru@gmail.com', 178540, 'MAD'),
(18, 'Will Williams', 'williamswi@gmail.com', 369741, 'DM'),
(19, 'James Barnes', 'barnesismine@gmail.com', 852145, 'DM'),
(20, 'Tommy Hiddle', 'hiddlet@gmail.com', 852000, 'DM'),
(21, 'John Stelpw', 'stejo@gmail.com', 782200, 'DM'),
(22, 'James Rhoades', 'rhoadesj02@gmail.com', 197352, 'JRZ'),
(23, 'Mia Adams', 'adams.mia6@gmail.com', 699660, 'JRZ'),
(24, 'Amy Nelcon', 'nelconam@gmail.com', 719645, 'MAD'),
(25, 'Henry Doe', 'henry7755@gmail.com', 123121, 'JW'),
(26, 'Thomas Yorkke', 'yorkehead@gmail.com', 130058, 'JW'),
(27, 'Colin Greenwwod', 'greenco002@gmail.com', 703969, 'JW'),
(29, 'Harry Denn', 'harryden66@gmail.com', 852069, 'DM'),
(30, 'Johnny Moore', 'moorejh@gmail.com', 852476, 'JM'),
(31, 'Marky Doee', 'marky667@gmail.com', 710009, 'DM'),
(32, 'Danny', 'danny2@gmail.com', 555520, 'MAD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
