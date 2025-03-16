-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 03:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorytoolspring1`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(12),
(12),
(12),
(12);

-- --------------------------------------------------------

--
-- Table structure for table `issueprocesed`
--

CREATE TABLE `issueprocesed` (
  `id` int(11) NOT NULL,
  `ipname` varchar(255) DEFAULT NULL,
  `ipquantity` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pissueDate` varchar(255) DEFAULT NULL,
  `pissueTime` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueprocesed`
--

INSERT INTO `issueprocesed` (`id`, `ipname`, `ipquantity`, `pid`, `pissueDate`, `pissueTime`, `pname`) VALUES
(10, 'paragi', 70, 8, '2024-08-08', '20:00', 'bread'),
(11, 'sonal', 20, 9, '2024-08-08', '03:00', 'paper');

-- --------------------------------------------------------

--
-- Table structure for table `issueraw`
--

CREATE TABLE `issueraw` (
  `id` int(11) NOT NULL,
  `iname` varchar(255) DEFAULT NULL,
  `iquantity` int(11) NOT NULL,
  `issueDate` varchar(255) DEFAULT NULL,
  `issueTime` varchar(255) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `rname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueraw`
--

INSERT INTO `issueraw` (`id`, `iname`, `iquantity`, `issueDate`, `issueTime`, `rid`, `rname`) VALUES
(2, 'santosh', 80, '2024-07-27', '02:03', 1, 'wood'),
(7, 'sakshi', 20, '2024-08-08', '20:09', 1, 'wood');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`email`, `password`) VALUES
('manu@gmail.com', 'manu1');

-- --------------------------------------------------------

--
-- Table structure for table `processedmaterial`
--

CREATE TABLE `processedmaterial` (
  `pid` int(11) NOT NULL,
  `pcostPerUnit` float NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pquantity` int(11) NOT NULL,
  `punit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processedmaterial`
--

INSERT INTO `processedmaterial` (`pid`, `pcostPerUnit`, `pname`, `pquantity`, `punit`) VALUES
(8, 3.45, 'bread', 50, 'pcs'),
(9, 1, 'paper', 0, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `rawmaterial`
--

CREATE TABLE `rawmaterial` (
  `rid` int(11) NOT NULL,
  `rcostPerUnit` float NOT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `rquantity` int(11) NOT NULL,
  `runit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rawmaterial`
--

INSERT INTO `rawmaterial` (`rid`, `rcostPerUnit`, `rname`, `rquantity`, `runit`) VALUES
(1, 30, 'wood', 0, 'kg'),
(3, 40, 'wood', 30, 'kg'),
(4, 50, 'wool', 50, 'kg'),
(5, 80, 'oil', 70, 'ltr'),
(6, 60, 'corn', 90, 'kg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issueprocesed`
--
ALTER TABLE `issueprocesed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issueraw`
--
ALTER TABLE `issueraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `processedmaterial`
--
ALTER TABLE `processedmaterial`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rawmaterial`
--
ALTER TABLE `rawmaterial`
  ADD PRIMARY KEY (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
