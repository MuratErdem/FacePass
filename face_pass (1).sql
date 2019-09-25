-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2019 at 03:10 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_pass`
--

-- --------------------------------------------------------

--
-- Table structure for table `camera_master`
--

CREATE TABLE `camera_master` (
  `id` int(11) NOT NULL,
  `camera_type` tinyint(1) NOT NULL DEFAULT '0',
  `source_URL` varchar(1000) NOT NULL,
  `cam_nam` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera_master`
--

INSERT INTO `camera_master` (`id`, `camera_type`, `source_URL`, `cam_nam`) VALUES
(1, 1, '\'0\'', 'WEBCAM');

-- --------------------------------------------------------

--
-- Table structure for table `face_capture2`
--

CREATE TABLE `face_capture2` (
  `id` int(11) NOT NULL,
  `face_time` time(6) NOT NULL,
  `face_date` date NOT NULL,
  `face_img_path` varchar(1000) NOT NULL,
  `is_proccessed` tinyint(1) NOT NULL DEFAULT '0',
  `realtive_path` varchar(1000) NOT NULL,
  `camera_id` int(11) NOT NULL,
  `cap_frame_path` varchar(1000) DEFAULT NULL,
  `cap_frame_path_show` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(3) NOT NULL,
  `usertype_id` int(1) NOT NULL DEFAULT '2',
  `lecturer_id` int(3) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usertype_id`, `lecturer_id`, `email`, `password`, `is_active`) VALUES
(1, 1, 1, 'admin@trinetram.net', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `person_details2`
--

CREATE TABLE `person_details2` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `img_file_path` varchar(500) NOT NULL,
  `is_train` tinyint(1) DEFAULT '1',
  `data_set` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_details2`
--

INSERT INTO `person_details2` (`id`, `fname`, `mname`, `lname`, `img_file_path`, `is_train`, `data_set`) VALUES
(1, 'Jasjit', 'Singh', 'Rayat', '060e1-1cr5-1fc43.jpg', 1, 1),
(2, 'Geet ', 'Anil', 'Hilwala', '8d01a-geet.jpg', 1, 1),
(3, 'Kushal', 'Mukesh', 'Jagad', 'b73f0-kushal.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `presence_in_out`
--

CREATE TABLE `presence_in_out` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `pre_date` date NOT NULL,
  `pre_time_in` time(6) NOT NULL,
  `pre_time_out` time(6) DEFAULT NULL,
  `face_img_show_in` varchar(1000) NOT NULL,
  `camera_id_in` int(11) NOT NULL,
  `matched_img_path_in` varchar(1000) DEFAULT NULL,
  `camera_id_out` int(11) DEFAULT NULL,
  `face_img_show_out` varchar(1000) DEFAULT NULL,
  `matched_img_path_out` varchar(1000) DEFAULT NULL,
  `time_duration` varchar(1000) DEFAULT NULL,
  `face_frame_path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recog_records`
--

CREATE TABLE `recog_records` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `pre_date` date NOT NULL,
  `pre_time` time(6) NOT NULL,
  `matched_img_path` varchar(1000) DEFAULT NULL,
  `face_img_show` varchar(1000) NOT NULL,
  `camera_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `reg_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic_path` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `password`, `user_type_id`, `is_active`, `reg_timestamp`, `pic_path`) VALUES
(9, 'admin', 'admin', 1, 1, '2018-06-22 19:19:09', 'logo!.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_master`
--

CREATE TABLE `user_type_master` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_master`
--

INSERT INTO `user_type_master` (`id`, `type`) VALUES
(1, 'Super Admin'),
(2, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera_master`
--
ALTER TABLE `camera_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `face_capture2`
--
ALTER TABLE `face_capture2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_details2`
--
ALTER TABLE `person_details2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presence_in_out`
--
ALTER TABLE `presence_in_out`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recog_records`
--
ALTER TABLE `recog_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_type_master`
--
ALTER TABLE `user_type_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera_master`
--
ALTER TABLE `camera_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `face_capture2`
--
ALTER TABLE `face_capture2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28764;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `person_details2`
--
ALTER TABLE `person_details2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `presence_in_out`
--
ALTER TABLE `presence_in_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `recog_records`
--
ALTER TABLE `recog_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9525;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_type_master`
--
ALTER TABLE `user_type_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
