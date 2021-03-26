-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 05:49 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connections`
--

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `did` int(11) NOT NULL,
  `dname` int(11) NOT NULL,
  `ddescription` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enrolldetails`
--

CREATE TABLE `enrolldetails` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `year` tinyint(4) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolldetails`
--

INSERT INTO `enrolldetails` (`name`, `email`, `year`, `password`, `department`) VALUES
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('rat', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('rat', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('rat', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('rat', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
('Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `mentordetails`
--

CREATE TABLE `mentordetails` (
  `mid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(15) NOT NULL,
  `year` int(11) NOT NULL,
  `domain` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentordetails`
--

INSERT INTO `mentordetails` (`mid`, `email`, `name`, `password`, `year`, `domain`, `description`) VALUES
(1, '', '', '', 4, 2, ''),
(2, '', '', '', 1, 3, ''),
(3, 'bmspr1502@gmail.com', 'Preeti krishnaveni', 'asdfasdfasd', 3, 4, 'asdfasdfasgsfgfgasfgaf'),
(4, 'fadsf', 'aefdf', 'fasdfasdf', 3, 2, 'fdasfasf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `mentordetails`
--
ALTER TABLE `mentordetails`
  ADD PRIMARY KEY (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentordetails`
--
ALTER TABLE `mentordetails`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
