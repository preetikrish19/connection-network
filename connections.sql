-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2021 at 10:14 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

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
  `uid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `year` tinyint(4) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolldetails`
--

INSERT INTO `enrolldetails` (`uid`, `name`, `email`, `year`, `password`, `department`) VALUES
(11, 'Pinky', 'r@gmail.com', 2, 'rat@123456', 'CSE'),
(15, 'Preeti krishnaveni', 'bmspr1502@gmail.com', 4, 'al;skdfj', 'cs');

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
  `description` text NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mentordetails`
--

INSERT INTO `mentordetails` (`mid`, `email`, `name`, `password`, `year`, `domain`, `description`, `display`) VALUES
(1, 'y@mail.com', 'jueh', '4343', 4, 2, 'bhalllll', 1),
(2, 'u@mai.com', 'njendkjnejkdn', '23', 1, 3, 'jkdjhfjrhnfjirf', 1),
(3, 'bmspr1502@gmail.com', 'Preeti krishnaveni', 'asdfasdfasd', 3, 4, 'asdfasdfasgsfgfgasfgaf', 1),
(4, 'fadsf', 'aefdf', 'fasdfasdf', 3, 2, 'fdasfasf', 1),
(5, 'r@gmail.com', 'Pinky', 'rat@123456', 2, 1, 'uuuuuuuu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `studentemail` varchar(255) DEFAULT NULL,
  `mentoremail` varchar(255) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `studentemail`, `mentoremail`, `sender_id`, `receiver_id`, `message`) VALUES
(1, 'Preeti krishnaveni', NULL, 'lfgjjk@asdf.com', NULL, NULL, NULL),
(2, 'Preeti krishnaveni', NULL, 'lfgjjk@asdf.com', NULL, NULL, NULL),
(3, 'Preeti krishnaveni', NULL, 'lfgjjk@asdf.com', NULL, NULL, NULL),
(4, 'Preeti krishnaveni', NULL, 'preetikrishnaveni19@gmail.com', NULL, NULL, NULL),
(5, 'Preeti krishnaveni', 'bmspr1502@gmail.com', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `enrolldetails`
--
ALTER TABLE `enrolldetails`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `mentordetails`
--
ALTER TABLE `mentordetails`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrolldetails`
--
ALTER TABLE `enrolldetails`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mentordetails`
--
ALTER TABLE `mentordetails`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
