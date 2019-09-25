-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2019 at 03:06 PM
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

--
-- Dumping data for table `face_capture2`
--

INSERT INTO `face_capture2` (`id`, `face_time`, `face_date`, `face_img_path`, `is_proccessed`, `realtive_path`, `camera_id`, `cap_frame_path`, `cap_frame_path_show`) VALUES
(28732, '03:31:52.158050', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152158050.png', 1, '12019-09-26033152158050.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152158050frame.png', '2019-09-26033152158050frame.jpg'),
(28733, '03:31:52.286005', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152286005.png', 1, '12019-09-26033152286005.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152286005frame.png', '2019-09-26033152286005frame.jpg'),
(28734, '03:31:52.353002', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152353002.png', 1, '12019-09-26033152353002.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152353002frame.png', '2019-09-26033152353002frame.jpg'),
(28735, '03:31:52.494996', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152494996.png', 1, '12019-09-26033152494996.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152494996frame.png', '2019-09-26033152494996frame.jpg'),
(28736, '03:31:52.561685', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152561685.png', 1, '12019-09-26033152561685.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152561685frame.png', '2019-09-26033152561685frame.jpg'),
(28737, '03:31:52.670761', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152670761.png', 1, '12019-09-26033152670761.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152670761frame.png', '2019-09-26033152670761frame.jpg'),
(28738, '03:31:52.740397', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152740397.png', 1, '12019-09-26033152740397.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152740397frame.png', '2019-09-26033152740397frame.jpg'),
(28739, '03:31:52.799713', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152799713.png', 1, '12019-09-26033152799713.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152799713frame.png', '2019-09-26033152799713frame.jpg'),
(28740, '03:31:52.868535', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152868535.png', 1, '12019-09-26033152868535.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152868535frame.png', '2019-09-26033152868535frame.jpg'),
(28741, '03:31:52.933908', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152933908.png', 1, '12019-09-26033152933908.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152933908frame.png', '2019-09-26033152933908frame.jpg'),
(28742, '03:31:52.998353', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152998353.png', 1, '12019-09-26033152998353.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033152998353frame.png', '2019-09-26033152998353frame.jpg'),
(28743, '03:31:53.058525', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153058525.png', 1, '12019-09-26033153058525.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153058525frame.png', '2019-09-26033153058525frame.jpg'),
(28744, '03:31:53.124188', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153124188.png', 1, '12019-09-26033153124188.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153124188frame.png', '2019-09-26033153124188frame.jpg'),
(28745, '03:31:53.184628', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153184628.png', 1, '12019-09-26033153184628.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153184628frame.png', '2019-09-26033153184628frame.jpg'),
(28746, '03:31:53.249143', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153249143.png', 1, '12019-09-26033153249143.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153249143frame.png', '2019-09-26033153249143frame.jpg'),
(28747, '03:31:53.308701', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153308701.png', 1, '12019-09-26033153308701.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153308701frame.png', '2019-09-26033153308701frame.jpg'),
(28748, '03:31:53.373476', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153373476.png', 1, '12019-09-26033153373476.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153373476frame.png', '2019-09-26033153373476frame.jpg'),
(28749, '03:31:53.515711', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153515711.png', 1, '12019-09-26033153515711.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153515711frame.png', '2019-09-26033153515711frame.jpg'),
(28750, '03:31:53.581725', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153581725.png', 1, '12019-09-26033153581725.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153581725frame.png', '2019-09-26033153581725frame.jpg'),
(28751, '03:31:53.641964', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153641964.png', 1, '12019-09-26033153641964.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153641964frame.png', '2019-09-26033153641964frame.jpg'),
(28752, '03:31:53.707253', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153707253.png', 1, '12019-09-26033153707253.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153707253frame.png', '2019-09-26033153707253frame.jpg'),
(28753, '03:31:53.767387', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153767387.png', 1, '12019-09-26033153767387.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153767387frame.png', '2019-09-26033153767387frame.jpg'),
(28754, '03:31:53.831671', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153831671.png', 1, '12019-09-26033153831671.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153831671frame.png', '2019-09-26033153831671frame.jpg'),
(28755, '03:31:53.892803', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153892803.png', 1, '12019-09-26033153892803.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153892803frame.png', '2019-09-26033153892803frame.jpg'),
(28756, '03:31:53.958217', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153958217.png', 1, '12019-09-26033153958217.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033153958217frame.png', '2019-09-26033153958217frame.jpg'),
(28757, '03:31:54.023785', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154023785.png', 1, '12019-09-26033154023785.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033154023785frame.png', '2019-09-26033154023785frame.jpg'),
(28758, '03:31:54.091068', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154091068.png', 1, '12019-09-26033154091068.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033154091068frame.png', '2019-09-26033154091068frame.jpg'),
(28759, '03:31:54.150105', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154150105.png', 1, '12019-09-26033154150105.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033154150105frame.png', '2019-09-26033154150105frame.jpg'),
(28760, '03:31:54.215379', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154215379.png', 1, '12019-09-26033154215379.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033154215379frame.png', '2019-09-26033154215379frame.jpg'),
(28761, '03:31:54.279677', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154279677.png', 1, '12019-09-26033154279677.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033154279677frame.png', '2019-09-26033154279677frame.jpg'),
(28762, '03:31:57.705680', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033157705680.png', 1, '12019-09-26033157705680.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033157705680frame.png', '2019-09-26033157705680frame.jpg'),
(28763, '03:32:15.005571', '2019-09-26', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033215005571.png', 0, '12019-09-26033215005571.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//2019-09-26033215005571frame.png', '2019-09-26033215005571frame.jpg');

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

--
-- Dumping data for table `presence_in_out`
--

INSERT INTO `presence_in_out` (`id`, `person_id`, `pre_date`, `pre_time_in`, `pre_time_out`, `face_img_show_in`, `camera_id_in`, `matched_img_path_in`, `camera_id_out`, `face_img_show_out`, `matched_img_path_out`, `time_duration`, `face_frame_path`) VALUES
(82, 1, '2019-09-26', '03:31:52.158050', NULL, '12019-09-26033152158050.png', 1, 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152158050.png', NULL, NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `recog_records`
--

INSERT INTO `recog_records` (`id`, `person_id`, `pre_date`, `pre_time`, `matched_img_path`, `face_img_show`, `camera_id`) VALUES
(9494, 1, '2019-09-26', '03:31:52.158050', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152158050.png', '12019-09-26033152158050.png', 1),
(9495, 1, '2019-09-26', '03:31:52.740397', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152740397.png', '12019-09-26033152740397.png', 1),
(9496, 1, '2019-09-26', '03:31:52.353002', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152353002.png', '12019-09-26033152353002.png', 1),
(9497, 1, '2019-09-26', '03:31:52.286005', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152286005.png', '12019-09-26033152286005.png', 1),
(9498, 1, '2019-09-26', '03:31:52.494996', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152494996.png', '12019-09-26033152494996.png', 1),
(9499, 1, '2019-09-26', '03:31:53.249143', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153249143.png', '12019-09-26033153249143.png', 1),
(9500, 1, '2019-09-26', '03:31:52.670761', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152670761.png', '12019-09-26033152670761.png', 1),
(9501, 1, '2019-09-26', '03:31:52.561685', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152561685.png', '12019-09-26033152561685.png', 1),
(9502, 1, '2019-09-26', '03:31:53.124188', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153124188.png', '12019-09-26033153124188.png', 1),
(9503, 1, '2019-09-26', '03:31:53.641964', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153641964.png', '12019-09-26033153641964.png', 1),
(9504, 1, '2019-09-26', '03:31:53.515711', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153515711.png', '12019-09-26033153515711.png', 1),
(9505, 1, '2019-09-26', '03:31:53.707253', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153707253.png', '12019-09-26033153707253.png', 1),
(9506, 1, '2019-09-26', '03:31:53.184628', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153184628.png', '12019-09-26033153184628.png', 1),
(9507, 1, '2019-09-26', '03:31:54.091068', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154091068.png', '12019-09-26033154091068.png', 1),
(9508, 1, '2019-09-26', '03:31:52.799713', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152799713.png', '12019-09-26033152799713.png', 1),
(9509, 1, '2019-09-26', '03:31:53.581725', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153581725.png', '12019-09-26033153581725.png', 1),
(9510, 1, '2019-09-26', '03:31:53.767387', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153767387.png', '12019-09-26033153767387.png', 1),
(9511, 1, '2019-09-26', '03:31:53.373476', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153373476.png', '12019-09-26033153373476.png', 1),
(9512, 1, '2019-09-26', '03:31:52.933908', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152933908.png', '12019-09-26033152933908.png', 1),
(9513, 1, '2019-09-26', '03:31:53.831671', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153831671.png', '12019-09-26033153831671.png', 1),
(9514, 1, '2019-09-26', '03:31:54.279677', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154279677.png', '12019-09-26033154279677.png', 1),
(9515, 1, '2019-09-26', '03:31:53.058525', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153058525.png', '12019-09-26033153058525.png', 1),
(9516, 1, '2019-09-26', '03:31:54.023785', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154023785.png', '12019-09-26033154023785.png', 1),
(9517, 1, '2019-09-26', '03:31:54.215379', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154215379.png', '12019-09-26033154215379.png', 1),
(9518, 1, '2019-09-26', '03:31:53.308701', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153308701.png', '12019-09-26033153308701.png', 1),
(9519, 1, '2019-09-26', '03:31:54.150105', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033154150105.png', '12019-09-26033154150105.png', 1),
(9520, 1, '2019-09-26', '03:31:52.868535', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152868535.png', '12019-09-26033152868535.png', 1),
(9521, 1, '2019-09-26', '03:31:53.958217', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153958217.png', '12019-09-26033153958217.png', 1),
(9522, 1, '2019-09-26', '03:31:53.892803', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033153892803.png', '12019-09-26033153892803.png', 1),
(9523, 1, '2019-09-26', '03:31:52.998353', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033152998353.png', '12019-09-26033152998353.png', 1),
(9524, 1, '2019-09-26', '03:31:57.705680', 'C:Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass//assets//images//dump//12019-09-26033157705680.png', '12019-09-26033157705680.png', 1);

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
