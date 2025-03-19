-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 05:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_project01`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `MembershipType` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `PaymentStatus` varchar(20) DEFAULT NULL,
  `EngagementScore` float DEFAULT NULL,
  `LastVisit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `Name`, `Email`, `Phone`, `MembershipType`, `StartDate`, `ExpiryDate`, `PaymentStatus`, `EngagementScore`, `LastVisit`) VALUES
(1, 'Alice Smith', 'alice@example.com', '9447085245', 'Gold', '2024-01-01', '2024-12-31', 'Paid', 85.5, '2024-12-01'),
(2, 'John Connor', 'john@example.com', '0987654321', 'Silver', '2024-02-01', '2024-12-31', 'Pending', 72, '2024-11-25'),
(3, 'Petter Griffin', 'peter@example.com', '985263452', 'Gold', '2023-05-15', '2024-05-15', 'Paid', 91.2, '2024-11-28'),
(4, 'Gwen Stacy', 'gwen@example.com', '453453434', 'Platinum', '2022-11-01', '2023-10-31', 'Expired', 55, '2023-10-01'),
(5, 'Eve Adams', 'eve@example.com', '652484752', 'Silver', '2024-03-01', '2024-12-31', 'Paid', 78, '2024-12-05'),
(6, 'Frank Castle', 'frank@example.com', '452189545', 'Bronze', '2024-06-01', '2024-12-31', 'Pending', 60, '2024-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ProjectGoals` text DEFAULT NULL,
  `Budget` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
