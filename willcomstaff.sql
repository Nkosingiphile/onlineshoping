-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 05:07 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `willcomstaff`
--

-- --------------------------------------------------------

--
-- Table structure for table `cont_details`
--

CREATE TABLE `cont_details` (
  `Cont_ID` int(11) NOT NULL,
  `Phone_Num` varchar(50) NOT NULL,
  `Email_Address` varchar(50) NOT NULL,
  `Emp_No` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cont_details`
--

INSERT INTO `cont_details` (`Cont_ID`, `Phone_Num`, `Email_Address`, `Emp_No`) VALUES
(1, '0711266385', 'Ofentse@gmail.com', 'TNO111'),
(2, '0711266398', 'Nothando@gmail.com', 'TNN122'),
(3, '0711267398', 'Thabo@gmail.com', 'TNT422'),
(4, '0713366398', 'Sheena@gmail.com', 'TNS543'),
(5, '0714566398', 'LULU@gmail.com', 'TNL743'),
(6, '0714565398', 'pWayneP@gmail.com', 'TNW783');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dept_ID` int(11) NOT NULL,
  `Dept_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dept_ID`, `Dept_Name`) VALUES
(2, 'Core_Data_Network'),
(3, 'NMG'),
(4, 'RAN'),
(5, 'Sever'),
(1, 'Transmission');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` int(11) NOT NULL,
  `Emp_No` varchar(6) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `EMP_Pass` varchar(20) NOT NULL,
  `Dept_ID` int(11) DEFAULT NULL,
  `Job_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_ID`, `Emp_No`, `F_Name`, `L_Name`, `User_Name`, `EMP_Pass`, `Dept_ID`, `Job_ID`) VALUES
(6, 'TNL743', 'LULU', 'Madlopha', 'LULUP', 'LULUK3!&', NULL, NULL),
(2, 'TNN122', 'Nothando', 'Shabangu', 'NothandoS', 'Nothando@3$', NULL, NULL),
(1, 'TNO111', 'Ofentse', 'Monkwe', 'OfentseZ', 'OfentseZ#12', NULL, NULL),
(4, 'TNS543', 'Sheena', 'Shiwaui', 'SheenaP', 'Sheenah%3(&', NULL, NULL),
(3, 'TNT422', 'Thabo', 'Thabethe', 'ThaboJ', 'Thabo%3$', NULL, NULL),
(5, 'TNW783', 'Wayne', 'Pillay', 'WayneP', 'WayneP%390', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `Job_ID` int(11) NOT NULL,
  `JOB_Tittle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`Job_ID`, `JOB_Tittle`) VALUES
(1, 'Network_Specilalist'),
(2, 'Manager'),
(3, 'Transmission_Engineer'),
(4, 'Senior_Network_Specilalist'),
(5, 'InternShip'),
(6, 'Leanearship');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `username`, `email`, `password`) VALUES
(1, 'Gift_test', 'giftmamba250@gmail.com', 'c3d0fc270de22edcf27553893947d13f'),
(2, 'NoarahM', 'norahmhlongo16@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'NorahM', 'norahmhlongo16@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cont_details`
--
ALTER TABLE `cont_details`
  ADD PRIMARY KEY (`Cont_ID`),
  ADD UNIQUE KEY `Phone_Num` (`Phone_Num`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`),
  ADD UNIQUE KEY `Emp_No` (`Emp_No`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_ID`),
  ADD UNIQUE KEY `Dept_Name` (`Dept_Name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_No`),
  ADD UNIQUE KEY `Emp_ID` (`Emp_ID`),
  ADD UNIQUE KEY `User_Name` (`User_Name`),
  ADD UNIQUE KEY `EMP_Pass` (`EMP_Pass`),
  ADD KEY `Dept_ID` (`Dept_ID`),
  ADD KEY `Job_ID` (`Job_ID`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`Job_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `user_ID` (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cont_details`
--
ALTER TABLE `cont_details`
  MODIFY `Cont_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Dept_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `Job_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cont_details`
--
ALTER TABLE `cont_details`
  ADD CONSTRAINT `Emp_No` FOREIGN KEY (`Emp_No`) REFERENCES `employee` (`Emp_No`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `Dept_ID` FOREIGN KEY (`Dept_ID`) REFERENCES `department` (`Dept_ID`),
  ADD CONSTRAINT `Job_ID` FOREIGN KEY (`Job_ID`) REFERENCES `occupation` (`Job_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
