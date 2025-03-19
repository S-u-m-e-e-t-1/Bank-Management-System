-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 04:04 PM
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
-- Database: `bankmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `pin` varchar(20) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`pin`, `date`, `type`, `amount`) VALUES
('123456', 'Sun Feb 25 23:05:08 IST 2024', 'Deposit', '10000000'),
('123456', 'Sun Feb 25 23:05:41 IST 2024', 'Withdrawl', '50000'),
('4417', 'Mon Nov 18 23:36:35 IST 2024', 'Deposit', '10000000');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Form_number` varchar(20) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Father_name` varchar(20) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Marital` varchar(20) DEFAULT NULL,
  `Adress` varchar(40) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `PIn` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Form_number`, `Name`, `Father_name`, `DOB`, `Gender`, `Email`, `Marital`, `Adress`, `City`, `PIn`, `State`) VALUES
('942', 'Sumeet Panigrahy', 'Gopinath Panigrahy', '28-Feb-2005', 'Male', 'sumeetpanigrahy529@gamail.com', 'Unmarried', 'Dhabalpur', 'Sheragarh', '761106', 'Odisha'),
('4528', 'sumeet', 'gopinath', '28-Feb-2005', 'Male', 'summet@gmail.com', 'Unmarried', 'bakilikona', 'konkaroda', '761146', 'odisha');

-- --------------------------------------------------------

--
-- Table structure for table `customer2`
--

CREATE TABLE `customer2` (
  `Form_number` varchar(20) DEFAULT NULL,
  `Religion` varchar(30) DEFAULT NULL,
  `Catagory` varchar(20) DEFAULT NULL,
  `Income` varchar(20) DEFAULT NULL,
  `Education` varchar(20) DEFAULT NULL,
  `Occupation` varchar(30) DEFAULT NULL,
  `PAN` varchar(20) DEFAULT NULL,
  `Adhar` varchar(40) DEFAULT NULL,
  `Sr_citizen` varchar(20) DEFAULT NULL,
  `Exst_accounnt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer2`
--

INSERT INTO `customer2` (`Form_number`, `Religion`, `Catagory`, `Income`, `Education`, `Occupation`, `PAN`, `Adhar`, `Sr_citizen`, `Exst_accounnt`) VALUES
('942', 'Hindu', 'General', 'Null', 'Non-Graduate', 'Salaried', '546864354643513215', '577263452965', 'No', 'No'),
('4528', 'Hindu', 'General', '<1,50,000', 'Graduate', 'Salaried', '76554896', '577263452965', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `customer3`
--

CREATE TABLE `customer3` (
  `formno` int(11) NOT NULL,
  `atype` varchar(255) DEFAULT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer3`
--

INSERT INTO `customer3` (`formno`, `atype`, `cardno`, `pin`, `facility`) VALUES
(942, 'Saving Account', '5040935969652607', '123456', 'ATM Card Internet Banking Mobile Banking E-Statement'),
(4528, 'Saving Account', '5040936052468273', '4417', 'ATM Card Internet Banking Mobile Banking EMAIL Alerts');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `formno` int(11) NOT NULL,
  `cardno` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`formno`, `cardno`, `pin`) VALUES
(942, '5040935969652607', '123456'),
(4528, '5040936052468273', '4417');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer3`
--
ALTER TABLE `customer3`
  ADD PRIMARY KEY (`formno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`formno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
