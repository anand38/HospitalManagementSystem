-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 16, 2017 at 01:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `userid` text NOT NULL,
  `name` text NOT NULL,
  `specialization` text NOT NULL,
  `experience` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `time` text NOT NULL,
  `no_of_patients` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `userid`, `name`, `specialization`, `experience`, `address`, `contact`, `email`, `time`, `no_of_patients`, `password`) VALUES
(6, 'anand38', 'Anand singh', 'Cardiologist', '5', 'Some address', '9870220355', 'anand@gmail.com', '12:00 p.m -1:00 p.m', '3', '12345'),
(7, 'anand381', 'Anand singh', 'Audiologist', '5', 'B/408, Om Shree Balaji Apt., navghar gaon, bhayander E', '9870220355', 'anand@gmail.com', '3:00 p.m -4:00 p.m', '4', '12345'),
(8, 'anand382', 'Anand singh', 'Allergist', '3', 'B/408, Om Shree Balaji Apt., navghar gaon, bhayander E', '9870220355', 'anand@gmail.com', '7:00 p.m -8:00 p.m', '2', '12345'),
(9, 'anand383', 'Anand singh', 'Andrologists', '7', 'B/408, Om Shree Balaji Apt., navghar gaon, bhayamder E', '9870220355', 'anand@gmail.com', '1:00 p.m -2:00 p.m', '3', '12345'),
(10, 'anand384', 'Anand singh', 'Anesthesiologist', '8', 'B/408, Om Shree Balaji Apt., naghar gaon, bhayander E', '9870220355', 'anand@gmail.com', '4:00 p.m -5:00 p.m', '3', '12345'),
(11, 'anand385', 'Anand singh', 'Cardiovascular Surgeon', '9', 'B/408, Om Shree Balaji Apt., navghar gaon, bhayander E', '9870220355', 'anand@gmail.com', '4:00 p.m -5:00 p.m', '4', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `dob` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `gender` text NOT NULL,
  `doctor` text NOT NULL,
  `appointment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `dob`, `address`, `contact`, `email`, `gender`, `doctor`, `appointment_date`) VALUES
(1, 'Anand singh', '2017-06-15', 'dfgjdgfj', '9870220355', 'anand@gmail.com', 'male', 'Cardiologist', '2017-06-17'),
(2, 'Anand singh 1', '2017-06-15', 'dfgjdgfj', '9870220355', 'anand@gmail.com', 'male', 'Cardiologist', '2017-06-17'),
(4, 'Anand singh 5', '2017-06-14', 'sdfdf', '9870220355', 'anand@gmail.com', 'male', 'Cardiologist', '2017-06-16'),
(5, 'Anand singh 6', '2017-06-14', 'sdfdf', '9870220355', 'anand@gmail.com', 'male', 'Cardiologist', '2017-06-16'),
(6, 'Anand singh 7', '2017-06-14', 'sdfdf', '9870220355', 'anand@gmail.com', 'male', 'Cardiologist', '2017-06-16'),
(15, 'Anand singh12', '2017-06-16', 'zdgdsf', '9870220355', 'anand@gmail.com', 'male', 'Cardiologist', '2017-06-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
