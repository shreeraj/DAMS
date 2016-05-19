-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2016 at 08:00 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dams`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `adminId` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Appointment`
--

CREATE TABLE `Appointment` (
  `appointmentId` int(11) NOT NULL,
  `appDate` varchar(255) DEFAULT NULL,
  `dateTimeStamp` bigint(20) NOT NULL,
  `docId` int(11) NOT NULL,
  `isCompleted` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `timeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Appointment`
--

INSERT INTO `Appointment` (`appointmentId`, `appDate`, `dateTimeStamp`, `docId`, `isCompleted`, `patientId`, `timeId`) VALUES
(1, '05/20/2016', 1463720400000, 2, 1, 1, 1),
(2, '05/20/2016', 1463720400000, 2, 1, 1, 2),
(3, '05/22/2016', 1463893200000, 2, 0, 2, 2),
(4, '05/20/2016', 1463720400000, 2, 1, 1, 4),
(5, '05/21/2016', 1463806800000, 2, 0, 1, 3),
(6, '05/25/2016', 1464152400000, 2, 0, 1, 2),
(7, '05/26/2016', 1464238800000, 2, 0, 2, 3),
(8, '05/24/2016', 1464066000000, 2, 0, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

CREATE TABLE `Contact` (
  `contactId` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `replied` int(11) NOT NULL,
  `replyMessage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`contactId`, `email`, `message`, `name`, `phone`, `replied`, `replyMessage`) VALUES
(1, 'karkishreeraj@gmail.com', 'I need health care information.', 'RIkesh Karki', '9843700132', 1, 'ah thik cha'),
(2, 'azit.rb@gmail.com', 'Test Message', 'Ajit Rajthala', '6414513124', 0, NULL),
(3, 'karkishreeraj@gmail.com', 'I need health service', 'shree raj karki', '9843700132', 1, 'ok thank you we will get on that'),
(4, 'karkishreeraj@gmail.com', 'I want to know more about.', 'shree raj karki', '9843700132', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `DocTime`
--

CREATE TABLE `DocTime` (
  `timeId` int(11) NOT NULL,
  `end` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DocTime`
--

INSERT INTO `DocTime` (`timeId`, `end`, `start`, `doctorId`) VALUES
(1, '6:30 PM', '6:00 AM', 2),
(2, '7:30 PM', '7:00 PM', 2),
(3, '8:30 PM', '8:00 PM', 2),
(4, '9:00 PM', '8:30 PM', 2),
(5, '4:30 PM', '4:00 PM', 3),
(6, '5:30 PM', '5:00 PM', 3),
(7, '6:00 PM', '5:30 PM', 3),
(8, '7:00 PM', '6:30 PM', 3),
(9, '4:30 AM', '4:00 AM', 11),
(10, '5:30 AM', '5:00 AM', 12),
(11, '6:30 AM', '6:00 AM', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `doctorId` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `registration` varchar(255) NOT NULL,
  `specialityId` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `speciality_specialityId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`doctorId`, `city`, `state`, `street`, `zip`, `dob`, `email`, `firstname`, `image`, `lastname`, `password`, `phone`, `registration`, `specialityId`, `username`, `speciality_specialityId`) VALUES
(2, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'azit.rb@gmail.com', 'Ajit', 'Ajit.jpg', 'Rajthala', 'ajit', '9843700132', 'KSK 54332', '1', 'ajit', NULL),
(3, 'Fairfield', 'iowa', '1000 N 4th St', '52556', NULL, 'karkishreeraj@gmail.com', 'Shree', 'Shree.jpg', 'Karki', 'shree', '9843700132', 'JSJ 83747', '2', 'shree', NULL),
(4, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'raj.singh822014@gmail.com', 'Shailesh', 'Shailesh.jpg', 'Singh', 'shailesh', '6414513124', 'KSK 3434', '3', 'shailesh', NULL),
(5, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'purinabin44@gmail.com', 'Aditya', 'Aditya.jpg', 'Rajthala', 'aditya', '642451321', '83747', '3', 'aditya', NULL),
(6, 'Fairfield', 'iowa', '1000 N 4th St', '52556', NULL, 'riya@gmail.com', 'Riya', 'Riya.jpg', 'shreshta', 'riya', '9348948', '839k', '4', 'riya', NULL),
(7, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'karkishreeraj@gmail.com', 'Sanam', 'Sanam.jpg', 'Kc', 'sanam', '9843700132', '83747', '2', 'sanam', NULL),
(8, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'karkishreeraj@gmail.com', 'Rikky', 'Rikky.jpg', 'Karki', 'rikky', '9843700132', 'KSK 3434', '1', 'rikky', NULL),
(9, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'karkishreeraj@gmail.com', 'Samrat', 'Samrat.jpg', 'Bhusal', 'samrat', '9843700132', 'SASF 2323', '3', 'samrat', NULL),
(10, 'kansas', 'iowa', '1000 N 4th St', '52556', NULL, 'john@gmail.com', 'John', 'John.jpg', 'Deo', 'john', '9843700132', 'KSK 3434', '2', 'john', NULL),
(11, 'kansas', 'iowa', '1000 N 4th St', '834', NULL, 'hari@gmail.com', 'Hari', 'Hari.jpg', 'Thapa', 'hari', '9843700132', '83747', '2', 'hari', NULL),
(12, 'Fairfield', 'Iowa', '1000 N 4th St', '52556', NULL, 'harka@gmail.com', 'Harka', 'Harka.jpg', 'Thapa', 'harka', '9843700132', 'HER 778', '2', 'harka', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `patientId` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`patientId`, `city`, `state`, `street`, `zip`, `dob`, `email`, `firstname`, `lastname`, `password`, `phone`, `username`) VALUES
(1, 'kansas', 'iowa', '1000 N 4th St', '52556', '05/11/2016', 'karkishreeraj@gmail.com', 'Shree', 'Karki', 'raj', '9843700132', 'shree'),
(2, 'kansas', 'iowa', '1000 N 4th St', '834', '05/10/2016', 'karkishreeraj@gmail.com', 'Ram', 'Thapa', 'ram', '9843700132', 'ram');

-- --------------------------------------------------------

--
-- Table structure for table `Slider`
--

CREATE TABLE `Slider` (
  `sliderId` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Slider`
--

INSERT INTO `Slider` (`sliderId`, `description`, `image`, `title`) VALUES
(1, 'Welcome To DAMS Appointment Management', 'DAMS APPOINTMENT MANAGEMENT.jpg', 'DAMS APPOINTMENT MANAGEMENT'),
(2, 'We Proved Best Service', 'Best Health Care .jpg', 'Best Health Care ');

-- --------------------------------------------------------

--
-- Table structure for table `Speciality`
--

CREATE TABLE `Speciality` (
  `specialityId` int(11) NOT NULL,
  `specialityName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Speciality`
--

INSERT INTO `Speciality` (`specialityId`, `specialityName`) VALUES
(1, 'Bone Problem'),
(2, 'Brain Problem'),
(3, 'Eye Problem'),
(4, 'Heart Problem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `Appointment`
--
ALTER TABLE `Appointment`
  ADD PRIMARY KEY (`appointmentId`);

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `DocTime`
--
ALTER TABLE `DocTime`
  ADD PRIMARY KEY (`timeId`),
  ADD KEY `FK_hr41uwpdpq3y2rh73e36ngu0t` (`doctorId`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`doctorId`),
  ADD KEY `FK_g1jx9jvh3tdmn4bhpsxpp6i8m` (`speciality_specialityId`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`patientId`),
  ADD UNIQUE KEY `UK_ilrh6siryrwpd35ko2nwqo0pm` (`username`);

--
-- Indexes for table `Slider`
--
ALTER TABLE `Slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `Speciality`
--
ALTER TABLE `Speciality`
  ADD PRIMARY KEY (`specialityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Appointment`
--
ALTER TABLE `Appointment`
  MODIFY `appointmentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `DocTime`
--
ALTER TABLE `DocTime`
  MODIFY `timeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `doctorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Patient`
--
ALTER TABLE `Patient`
  MODIFY `patientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Slider`
--
ALTER TABLE `Slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Speciality`
--
ALTER TABLE `Speciality`
  MODIFY `specialityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `DocTime`
--
ALTER TABLE `DocTime`
  ADD CONSTRAINT `FK_hr41uwpdpq3y2rh73e36ngu0t` FOREIGN KEY (`doctorId`) REFERENCES `Doctor` (`doctorId`);

--
-- Constraints for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD CONSTRAINT `FK_g1jx9jvh3tdmn4bhpsxpp6i8m` FOREIGN KEY (`speciality_specialityId`) REFERENCES `Speciality` (`specialityId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
