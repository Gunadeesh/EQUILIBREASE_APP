-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 05:22 AM
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
-- Database: `patient_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctorreplies`
--

CREATE TABLE `doctorreplies` (
  `id` int(11) NOT NULL,
  `patientId` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `video_id` varchar(50) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `selected_feedback` text NOT NULL,
  `difficulty_text` text NOT NULL,
  `patient_comment` text NOT NULL,
  `doctor_reply` text NOT NULL,
  `reply_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT 0,
  `reply_sent` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorreplies`
--

INSERT INTO `doctorreplies` (`id`, `patientId`, `name`, `gender`, `image_path`, `video_id`, `video_title`, `selected_feedback`, `difficulty_text`, `patient_comment`, `doctor_reply`, `reply_timestamp`, `status`, `reply_sent`) VALUES
(9, 'Sath40', 'Sathish ', 'Male', 'http://192.168.37.78/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Gjo', '2024-07-09 10:16:48', NULL, 0),
(10, 'Sath40', 'Sathish ', 'Male', 'http://192.168.37.78/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Good', '2024-07-09 10:21:56', NULL, 0),
(11, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://172.25.37.143/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Cj', '2024-07-12 08:27:29', NULL, 0),
(12, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://172.25.37.143/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Cj', '2024-07-12 08:27:31', NULL, 0),
(13, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.0.33/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '13', '13. Elf-epley maneuver right ear exercise', '8 - 10 : Feeling Relieved', 'Nice', 'Yes', 'Take ', '2024-09-01 09:47:16', NULL, 0),
(14, 'Madh20', 'Madhav ', 'Male', 'http://192.168.0.33/Gunadeesh_app/uploads/667ae8e35155b_1719331043.jpg', '1', '1. Head side to side', '0 - 1 : No Improvement', 'Not feeling good', 'Yes', 'Fg', '2024-09-04 10:37:30', NULL, 0),
(15, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 08:10:29', NULL, 0),
(16, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Fg', '2024-09-16 16:29:35', NULL, 0),
(17, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:41:46', NULL, 0),
(18, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:42:16', NULL, 0),
(19, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Gh', '2024-09-16 16:42:43', NULL, 0),
(20, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Gh', '2024-09-16 16:44:21', NULL, 0),
(21, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Gh', '2024-09-16 16:46:32', NULL, 0),
(22, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:47:02', NULL, 0),
(23, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:47:28', NULL, 0),
(24, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:47:59', NULL, 0),
(25, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:49:33', 0, 0),
(26, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:49:58', 0, 0),
(27, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 16:50:44', 0, 0),
(28, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Hood', '2024-09-16 17:00:41', NULL, 0),
(29, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Hood', '2024-09-16 17:01:06', NULL, 0),
(30, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:24:06', 0, 0),
(31, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:27:39', 1, 0),
(32, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:30:10', 1, 0),
(33, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:31:20', 1, 0),
(34, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Goid', '2024-09-16 17:34:02', 1, 0),
(35, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:34:11', 1, 0),
(36, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:40:19', 1, 0),
(37, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:40:43', 1, 0),
(38, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:45:39', 1, 2),
(39, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Gdgvb', '2024-09-16 17:46:02', 1, 2),
(40, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '2', '2. Head 45 degree', '5 - 7 : Moderate Improvement', 'Had some difficulty with the exercises', 'Yes', 'Gkj', '2024-09-16 17:46:41', 1, 0),
(41, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Good', '2024-09-16 17:46:59', 1, 0),
(42, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:47:25', 1, 0),
(43, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:47:49', 1, 2),
(44, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:48:01', 1, 2),
(45, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:51:27', 1, 2),
(46, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:52:36', 1, 2),
(47, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 17:58:08', 1, 1),
(48, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-16 18:10:00', 1, 2),
(49, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Good', '2024-09-17 08:18:00', 1, 2),
(50, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '8 - 10 : Feeling Relieved', 'Good', 'Yes', 'Good', '2024-09-17 08:18:09', 1, 2),
(51, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '8 - 10 : Feeling Relieved', 'Good', 'Yes', 'Good', '2024-09-17 08:18:09', 1, 2),
(52, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.249/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '0 - 1 : No Improvement', 'Gbh', 'Yes', 'Good', '2024-09-17 08:18:16', 1, 2),
(53, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '6', '6. Head below', '0 - 1 : No Improvement', 'Guna', 'Yes', 'Ok', '2024-09-19 15:51:58', 1, 2),
(54, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Meet me', '2024-09-21 17:12:24', 1, 2),
(55, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Meet me ', '2024-09-21 17:12:56', 1, 2),
(56, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Meet me ', '2024-09-21 17:13:11', 1, 2),
(57, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-21 17:13:44', 1, 1),
(58, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Guna call me', '2024-09-21 17:17:13', 1, 1),
(59, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Good', '2024-09-21 17:30:32', 1, 2),
(60, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '13', '13. Elf-epley maneuver right ear exercise', '8 - 10 : Feeling Relieved', 'Very happy ', 'Yes', 'Good', '2024-09-21 17:33:08', 1, 2),
(61, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', '', 'Yes', 'Good', '2024-09-21 17:36:35', 1, 1),
(62, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '11', '11. Sitting up & down', '8 - 10 : Feeling Relieved', '', 'Yes', 'Good', '2024-09-21 17:38:04', 1, 2),
(63, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Good', '2024-09-21 17:42:33', 1, 2),
(64, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '7', '7. Head move round', '8 - 10 : Feeling Relieved', 'Very nice', 'Yes', 'Good', '2024-09-21 18:06:03', 1, 2),
(65, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '7', '7. Head move round', '8 - 10 : Feeling Relieved', 'Very nice', 'Yes', 'Good', '2024-09-21 18:06:12', 1, 2),
(66, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '1', '1. Head side to side', '5 - 7 : Moderate Improvement', 'Some difficulties', 'Yes', 'Goof', '2024-09-21 18:07:52', 1, 2),
(67, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '12', '12. Brandt-daroff exercise', '8 - 10 : Feeling Relieved', 'Worked', 'Yes', 'OK sir ', '2024-09-21 18:16:34', 0, 2),
(68, 'Guna20', 'Gunadeeshreddy', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '3', '3. Head right side', '8 - 10 : Feeling Relieved', 'Super ', 'Yes', 'Ok', '2024-09-21 18:20:12', 0, 2),
(69, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '7', '7. Head move round', '8 - 10 : Feeling Relieved', 'Nice', 'Yes', 'Ok', '2024-09-21 19:44:15', 0, 1),
(70, 'Sath40', 'Sathish ', 'Male', 'http://192.168.226.1/Gunadeesh_app/uploads/667ae7822f87d_1719330690.jpg', '13', '13. Elf-epley maneuver right ear exercise', '8 - 10 : Feeling Relieved', 'No', 'Yes', 'Ho', '2024-09-21 19:45:17', 0, 1),
(71, 'Guna20', 'GunadeeshReddy ', 'Male', 'http://192.168.226.57/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg', '8', '8.Walking on uneven surface', '8 - 10 : Feeling Relieved', 'Goof', 'Yes', 'Good', '2024-09-22 19:41:23', 0, 2),
(72, 'Guna20', 'GunadeeshReddy ', 'Male', 'http://192.168.32.108/equilibrease/uploads/667bd07e740c2_1719390334.jpg', '4', '4.Eyes focus on fingers with arm outstretched', '8 - 10 : Feeling Relieved', 'Good', 'Yes', 'Good\n', '2024-11-05 14:12:06', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `ID` int(11) NOT NULL,
  `doctor_ID` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`ID`, `doctor_ID`, `name`, `password`) VALUES
(10, 'Dinesh1', 'Dinesh', 'Dinesh@1');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `patientId` varchar(50) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `selected_feedback` enum('0 - 1 : No Improvement','2 - 4 : Mild Improvement','5 - 7 : Moderate Improvement','8 - 10 : Feeling Relieved') DEFAULT NULL,
  `difficulty_text` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `patientId`, `video_id`, `selected_feedback`, `difficulty_text`, `timestamp`, `status`) VALUES
(7, 'Guna20', 1, '5 - 7 : Moderate Improvement', 'Some difficulties', '2024-07-08 13:58:31', 1),
(13, 'Guna20', 1, '0 - 1 : No Improvement', 'Gbh', '2024-07-09 07:59:12', 1),
(17, 'Sath40', 1, '5 - 7 : Moderate Improvement', '', '2024-07-30 11:11:37', 1),
(45, 'Guna20', 11, '8 - 10 : Feeling Relieved', '', '2024-09-16 18:54:16', 1),
(48, 'Guna20', 6, '0 - 1 : No Improvement', 'Guna', '2024-09-19 15:50:56', 1),
(53, 'Guna20', 13, '8 - 10 : Feeling Relieved', 'Very happy ', '2024-09-21 17:31:54', 1),
(54, 'Guna20', 7, '8 - 10 : Feeling Relieved', 'Very nice', '2024-09-21 18:00:39', 1),
(55, 'Guna20', 12, '8 - 10 : Feeling Relieved', 'Worked', '2024-09-21 18:15:27', 1),
(56, 'Guna20', 3, '8 - 10 : Feeling Relieved', 'Super ', '2024-09-21 18:19:12', 1),
(57, 'Sath40', 7, '8 - 10 : Feeling Relieved', 'Nice', '2024-09-21 18:28:49', 1),
(58, 'Sath40', 13, '8 - 10 : Feeling Relieved', 'No', '2024-09-21 18:31:46', 1),
(59, 'Guna20', 8, '8 - 10 : Feeling Relieved', 'Goof', '2024-09-22 10:08:19', 1),
(60, 'Guna20', 4, '8 - 10 : Feeling Relieved', 'Good', '2024-09-22 19:38:22', 1),
(61, 'Guna20', 1, '8 - 10 : Feeling Relieved', 'Nice', '2024-09-27 09:34:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `patientId` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `diagnosis` text NOT NULL,
  `comorbidities` text NOT NULL,
  `investigations` text NOT NULL,
  `examination` text NOT NULL,
  `medications` text NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `sex`, `patientId`, `password`, `occupation`, `diagnosis`, `comorbidities`, `investigations`, `examination`, `medications`, `image_path`) VALUES
(1, 'Namaste ', 20, '', 'Nama20', 'Nama@20', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667f9352c2134_1719636818.jpg'),
(15, 'Sathish ', 40, 'Male', 'Sath40', 'Sath@40', 'Have ', 'Namaste ', 'P ', 'P ', 'P fighting ', 'Glen add ', 'uploads/667ae7822f87d_1719330690.jpg'),
(16, 'Madhav ', 20, 'Male', 'Madh20', 'Madh@20', 'Student ', 'Cough ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'uploads/667ae8e35155b_1719331043.jpg'),
(17, 'Revanth', 20, 'Male', 'Reva20', 'Reva@20', 'Good ', 'Good ', 'Good ', 'Good ', 'Good', 'Good', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667bcdcd791dc_1719389645.jpg'),
(18, 'Saikiran', 20, 'Male', 'Saik20', 'Saik@20', 'Good ', 'Good ', 'Good ', 'Good ', 'Good', 'Good', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667bceb3bd8e6_1719389875.jpg'),
(19, 'GunadeeshReddy ', 20, 'Male', 'Guna20', 'Guna@20', 'Student ', 'Note', 'E', 'P ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667bd07e740c2_1719390334.jpg'),
(22, 'Joshna ', 20, 'Female', 'Josh20', 'Josh@20', 'Student ', 'Nothing ', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667f83af98f3d_1719632815.jpg'),
(24, 'Esha', 10, 'Female', 'Esha10', 'Esha@10', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667f8b25cb80b_1719634725.jpg'),
(25, 'Sasi', 8, 'Female', 'Sasi8', 'Sasi@8', 'Fb', 'Fn', 'Cm', 'Xn', 'Fj', 'Cn', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667f8db240c1f_1719635378.jpg'),
(26, 'Rekha ', 20, 'Male', 'Rekh20', 'Rekh@20', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667f91d859fe9_1719636440.jpg'),
(29, 'PGUNADEESHREDDY ', 20, 'Male', 'PGUN20', 'PGUN@20', 'Student ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/667f946357271_1719637091.jpg'),
(30, 'Mohit', 20, 'Male', 'Mohi20', 'Mohi@20', 'Student ', 'None', 'None', 'None', 'None', 'None', 'C:/xampp/htdocs/Gunadeesh_app/uploads/6683b830f012b_1719908400.jpg'),
(31, 'Sasi', 12, 'Female', 'Sasi12', 'Sasi@12', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/668a91be856eb_1720357310.jpg'),
(32, 'San', 20, 'Female', 'San20', 'San@20', 'Gb', 'Eh', 'Cn', 'Fhm', 'Dbn', 'Dhj', 'C:/xampp/htdocs/Gunadeesh_app/uploads/66e7e84f3cee5_1726474319.jpg'),
(33, 'Isaiah ', 21, '', 'Isai21', 'Isai@21', 'Isaiah ', 'Isaiah ', 'Isaiah ', 'Isaiah ', 'Isaiah ', 'Isaiah ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/66eee5fe1b586_1726932478.jpg'),
(34, 'Sai kiran', 22, '', 'Sai 22', 'Sai @22', 'Good', 'P ', 'Namaste ', 'Namaste ', 'Namaste ', 'Namaste ', 'C:/xampp/htdocs/Gunadeesh_app/uploads/66efdc7170670_1726995569.jpg'),
(35, 'Kalesk', 25, 'Male', 'Kale25', 'Kale@25', 'C', 'C', 'V', 'V', 'H', 'V', 'C:/xampp/htdocs/Gunadeesh_app/uploads/66efdf951cfdf_1726996373.jpg'),
(36, 'Rani', 40, 'Female', 'Rani40', 'Rani@40', 'Teacher ', 'P ', 'P ', 'I ', 'P ', 'P ', 'C:/xampp/htdocs/equilibrease/uploads/66f67c7875ef6_1727429752.jpg'),
(47, 'reena', 20, 'Female', 'reen20', 'reen@20', 'cbn', 'vh', 'vb', 'cb', 'fb', 'vhn', 'C:/xampp/htdocs/equilibrease/uploads/672862ab86d4d_1730699947.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `uris_English` varchar(255) DEFAULT NULL,
  `uris_Telugu` varchar(255) DEFAULT NULL,
  `uris_Hindi` varchar(255) DEFAULT NULL,
  `uris_Tamil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `title`, `image`, `languages`, `completed`, `uris_English`, `uris_Telugu`, `uris_Hindi`, `uris_Tamil`) VALUES
(1, '1. Head side to side', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/1)Head side to side.mp4', './assets/videos/1)Head side to side.mp4', './assets/videos/1)Head side to side.mp4', './assets/videos/1)Head side to side.mp4'),
(2, '2. Head up & down', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/2)Head up & down.mp4', './assets/videos/2)Head up & down.mp4', './assets/videos/2)Head up & down.mp4', './assets/videos/2)Head up & down.mp4'),
(3, '3. Head 45 degree', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/3)Head 45 degree.mp4', './assets/videos/3)Head 45 degree.mp4', './assets/videos/3)Head 45 degree.mp4', './assets/videos/3)Head 45 degree.mp4'),
(4, '4.Eyes focus on fingers with arm outstretched', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/4)Eyes focus on fingers with arm outstretched.mp4', './assets/videos/4)Eyes focus on fingers with arm outstretched.mp4', './assets/videos/4)Eyes focus on fingers with arm outstretched.mp4', './assets/videos/4)Eyes focus on fingers with arm outstretched.mp4'),
(5, '5.Standing exercise', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/5)Standing exercise.mp4', './assets/videos/5)Standing exercise.mp4', './assets/videos/5)Standing exercise.mp4', './assets/videos/5)Standing exercise.mp4'),
(6, '6.Sitting up & down', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/6)Sitting up & down.mp4', './assets/videos/6)Sitting up & down.mp4', './assets/videos/6)Sitting up & down.mp4', './assets/videos/6)Sitting up & down.mp4'),
(7, '7.Walking on flat surface', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/7)Walking on flat surface.mp4', './assets/videos/7)Walking on flat surface.mp44', './assets/videos/7)Walking on flat surface.mp4', './assets/videos/7)Walking on flat surface.mp4'),
(8, '8.Walking on uneven surface', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/8)Walking on uneven surface.mp4', './assets/videos/8)Walking on uneven surface.mp4', './assets/videos/8)Walking on uneven surface.mp4', './assets/videos/8)Walking on uneven surface.mp4'),
(9, '9.Walking heel to toe', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/9)Walking heel to toe.mp4', './assets/videos/9)Walking heel to toe.mp4', './assets/videos/9)Walking heel to toe.mp4', './assets/videos/9)Walking heel to toe.mp4'),
(10, '10.Sit & lean exercise', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/10)Sit & lean exercise.mp4', './assets/videos/10)Sit & lean exercise.mp4', './assets/videos/10)Sit & lean exercise.mp4', './assets/videos/10)Sit & lean exercise.mp4'),
(11, '11.Rolling exercise', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, '../assets/videos/11)Rolling exercise.mp4', './assets/videos/11)Rolling exercise.mp4', './assets/videos/11)Rolling exercise.mp4', './assets/videos/11)Rolling exercise.mp4'),
(12, '12. Brandt-daroff exercise', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/12)Brandt-daroff exercise.mp4', './assets/videos/12)Brandt-daroff exercise.mp4', './assets/videos/12)Brandt-daroff exercise.mp4', './assets/videos/12)Brandt-daroff exercise.mp4'),
(13, '13. Elf-epley maneuver right ear exercise', './assets/video1.png', 'English,Telugu,Hindi,Tamil', 0, './assets/videos/13)Elf-epley maneuver right ear exercise.mp4', './assets/videos/13)Elf-epley maneuver right ear exercise.mp4', './assets/videos/13)Elf-epley maneuver right ear exercise.mp4', './assets/videos/13)Elf-epley maneuver right ear exercise.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorreplies`
--
ALTER TABLE `doctorreplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `fk_patientId` (`patientId`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_patientId` (`patientId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorreplies`
--
ALTER TABLE `doctorreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patients` (`patientId`),
  ADD CONSTRAINT `fk_patientId` FOREIGN KEY (`patientId`) REFERENCES `patients` (`patientId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
