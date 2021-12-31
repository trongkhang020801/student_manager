-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 31, 2021 lúc 04:44 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `std1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` text CHARACTER SET utf8mb4 NOT NULL,
  `i_name` text CHARACTER SET utf8 NOT NULL,
  `gender` text CHARACTER SET utf8mb4 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `reg_date`) VALUES
(1, 100, 'Admin', 'Admin', 'Male', 'Quảng Nam', '012-345-6789', 'admin@gmail.com', 'uploads/20211231021005.jpg', '2018-01-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_index` bigint(11) NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_room`
--

CREATE TABLE `class_room` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `class_room`
--

INSERT INTO `class_room` (`id`, `name`, `student_count`) VALUES
(18, '19T2', 100),
(19, '20T1', 100),
(20, 'Class C', 850),
(23, '19T1', 67);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `create_by` bigint(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `event_category`
--

CREATE TABLE `event_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `event_category_type`
--

CREATE TABLE `event_category_type` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `exam`
--

INSERT INTO `exam` (`id`, `name`) VALUES
(4, 'Term 1'),
(5, 'Term 2'),
(6, 'Term 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_range_grade`
--

CREATE TABLE `exam_range_grade` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `mark_range` varchar(255) NOT NULL,
  `_from` int(11) NOT NULL,
  `_to` int(11) NOT NULL,
  `mark_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `exam_range_grade`
--

INSERT INTO `exam_range_grade` (`id`, `grade_id`, `mark_range`, `_from`, `_to`, `mark_grade`) VALUES
(51, 11, '0-35', 0, 35, 'F'),
(52, 11, '35-45', 35, 45, 'S'),
(53, 11, '45-55', 45, 55, 'C'),
(54, 11, '55-75', 55, 75, 'B'),
(55, 11, '75-85', 75, 85, 'A'),
(56, 11, '85-100', 85, 100, 'A+'),
(57, 12, '0-35', 0, 35, 'F'),
(58, 12, '35-45', 35, 45, 'S'),
(59, 12, '45-55', 45, 55, 'C'),
(60, 12, '55-75', 55, 75, 'B'),
(61, 12, '75-85', 75, 85, 'A'),
(62, 12, '85-100', 85, 100, 'A+'),
(63, 13, '0-35', 0, 35, 'F'),
(64, 13, '35-45', 35, 45, 'S'),
(65, 13, '45-55', 45, 55, 'C'),
(66, 13, '55-75', 55, 75, 'B'),
(67, 13, '75-85', 75, 85, 'A'),
(68, 13, '85-100', 85, 100, 'A+');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam_timetable`
--

CREATE TABLE `exam_timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `admission_fee` double(11,2) NOT NULL,
  `hall_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `grade`
--

INSERT INTO `grade` (`id`, `name`, `admission_fee`, `hall_charge`) VALUES
(11, 'Khoa Điện - Điẹn Tử', 0.00, 0),
(12, 'Khoa Cơ Khí', 0.00, 0),
(13, 'Khoa Xây Dựng', 0.00, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_message`
--

CREATE TABLE `group_message` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `main_notifications`
--

CREATE TABLE `main_notifications` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `main_notifications`
--

INSERT INTO `main_notifications` (`id`, `notification_id`, `_status`, `year`, `month`, `date`, `_isread`) VALUES
(1, 1, 'Payments', 2017, 'November', '2017-11-25', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `my_friends`
--

CREATE TABLE `my_friends` (
  `id` int(11) NOT NULL,
  `my_index` bigint(11) NOT NULL,
  `friend_index` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `my_type` varchar(255) NOT NULL,
  `friend_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `my_friends`
--

INSERT INTO `my_friends` (`id`, `my_index`, `friend_index`, `_status`, `conversation_id`, `my_type`, `friend_type`, `_isread`) VALUES
(1, 100, 25252525, 'Friend', 1, 'Admin', 'Student', 1),
(2, 25252525, 100, 'Friend', 1, 'Student', 'Admin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification_history`
--

CREATE TABLE `notification_history` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `online_chat`
--

CREATE TABLE `online_chat` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_index` bigint(11) NOT NULL,
  `msg` longtext NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `online_chat`
--

INSERT INTO `online_chat` (`id`, `conversation_id`, `user_index`, `msg`, `user_type`, `_isread`, `date`, `time`) VALUES
(1, 1, 25252525, 'alo', 'Student', 1, '2021-12-31', '13:32:27'),
(2, 1, 25252525, 'alo', 'Student', 1, '2021-12-31', '13:32:45'),
(3, 1, 100, 'hi', 'Admin', 0, '2021-12-31', '13:33:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `index_number` varchar(255) NOT NULL,
  `my_son_index` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `reg_date` date NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `parents`
--

INSERT INTO `parents` (`id`, `index_number`, `my_son_index`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `reg_date`, `reg_year`, `reg_month`, `_status`) VALUES
(7, 'G-11', 11, 'Dad 1', 'Dad 1', 'Male', 'USA', '111-111-1112', 'dad1@gmail.com', 'uploads/20171125093360.png', '1965-08-25', '2017-11-24', 2017, 'November', ''),
(8, 'G-12', 12, 'Dad 2', 'Dad 2', 'Male', 'USA', '(222) 222-2222', 'dad2@gmail.com', 'uploads/20171125104538.png', '1968-05-10', '2017-11-24', 2017, 'November', ''),
(9, 'G-13', 13, 'Dad 3', 'Dad 3', 'Male', 'USA', '(333) 333-3333', 'dad3@gmail.com', 'uploads/20171125091460.jpg', '1965-05-28', '2017-11-24', 2017, 'November', ''),
(12, 'G-14', 14, 'Dad 4', 'Dad 4', 'Male', 'USA', '(444) 444-4444', 'dad4@gmail.com', 'uploads/20171125091724.png', '1964-08-25', '2017-11-24', 2017, 'November', ''),
(13, 'G-25252525', 25252525, 'Dad 1', 'Dad 154444444', 'Male', 'Sri Lankaklkklklkk', '555-555-5555', 'dad1hgjhjhjhj23@gmail.com', 'uploads/2018024035941.png', '0000-00-00', '2018-02-04', 2018, 'February', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_notifications`
--

CREATE TABLE `payment_notifications` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `payment_notifications`
--

INSERT INTO `payment_notifications` (`id`, `index_number`, `year`, `month`, `date`, `_status`) VALUES
(1, 11, 2017, 'November', '2017-11-25', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `petty_cash`
--

CREATE TABLE `petty_cash` (
  `id` int(11) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `paid` double(11,2) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `petty_cash`
--

INSERT INTO `petty_cash` (`id`, `received_by`, `approved_by`, `year`, `month`, `date`, `time`, `paid`, `received_type`, `_status`) VALUES
(1, 100, 100, 2021, 'December', '2021-12-31', '01:34:47', 1111.00, 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `petty_cash_history`
--

CREATE TABLE `petty_cash_history` (
  `id` int(11) NOT NULL,
  `_desc` varchar(255) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` double(11,2) NOT NULL,
  `total_paid` double(11,2) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `petty_cash_history`
--

INSERT INTO `petty_cash_history` (`id`, `_desc`, `received_by`, `approved_by`, `year`, `month`, `date`, `time`, `amount`, `total_paid`, `invoice_number`, `received_type`, `_status`) VALUES
(1, 'á?âsd', 100, 100, 2021, 'December', '2021-12-31', '01:34:47', 1111.00, 1111.00, 1, 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `_status` varchar(255) NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `_status`, `reg_year`, `reg_month`, `reg_date`) VALUES
(11, 11, 'Student 1', 'Student 1jbjb', 'Female', 'USA', '111-111-1112', 'std1@gmail.com', 'uploads/20171125093359.png', '2010-01-01', '', 2017, 'November', '2017-11-24'),
(12, 12, 'Student 2', 'Student 20', 'Male', 'USA', '(222) 222-2222', 'std2@gmail.com', 'uploads/20171125104521.png', '2010-01-02', '', 2017, 'November', '2017-11-24'),
(13, 13, 'Student 3', 'Student 3', 'Female', 'USA', '(333) 333-3333', 'std3@gmail.com', 'uploads/20171125091459.png', '2010-01-03', '', 2017, 'November', '2017-11-24'),
(19, 14, 'Student 4', 'Student 4', 'Female', 'USA', '(444) 444-4444', 'std4@gmail.com', 'uploads/20171125091723.png', '2010-01-04', '', 2017, 'November', '2017-11-24'),
(20, 25252525, 'Sandun1111111111', 'Sandun111111111', 'Female', 'Sri Lanka11111111', '455-455-4555', 'lkforex2015111@gmail.com', 'uploads/2018024042603.jpg', '0000-00-00', 'leave', 2018, 'February', '2018-02-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(1, 11, '2017-11-25', 'November', 2017, '11:30:59', 'intime', 'Present');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_exam`
--

CREATE TABLE `student_exam` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_exam`
--

INSERT INTO `student_exam` (`id`, `index_number`, `grade_id`, `exam_id`, `subject_id`, `marks`, `year`, `date`) VALUES
(37, 11, 11, 4, 15, '45', 2017, '2017-11-26'),
(38, 11, 11, 4, 16, '60', 2017, '2017-11-26'),
(39, 11, 11, 4, 17, '95', 2017, '2017-11-26'),
(40, 11, 11, 4, 18, '65', 2017, '2017-11-26'),
(41, 11, 11, 4, 19, '60', 2017, '2017-11-26'),
(42, 11, 11, 4, 20, '90', 2017, '2017-11-26'),
(43, 11, 11, 5, 15, '75', 2017, '2017-11-26'),
(44, 11, 11, 5, 16, '95', 2017, '2017-11-26'),
(45, 11, 11, 5, 17, '65', 2017, '2017-11-26'),
(46, 11, 11, 5, 18, '85', 2017, '2017-11-26'),
(47, 11, 11, 5, 19, '92', 2017, '2017-11-26'),
(48, 11, 11, 5, 20, '98', 2017, '2017-11-26'),
(49, 11, 11, 6, 15, '75', 2017, '2017-11-26'),
(50, 11, 11, 6, 16, '94', 2017, '2017-11-26'),
(51, 11, 11, 6, 17, '70', 2017, '2017-11-26'),
(52, 11, 11, 6, 18, '97', 2017, '2017-11-26'),
(53, 11, 11, 6, 19, '82', 2017, '2017-11-26'),
(54, 11, 11, 6, 20, '97', 2017, '2017-11-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_grade`
--

INSERT INTO `student_grade` (`id`, `index_number`, `grade_id`, `year`) VALUES
(82, 12, 11, 2017),
(83, 13, 11, 2017),
(86, 14, 11, 2017);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `student_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_payment`
--

INSERT INTO `student_payment` (`id`, `index_number`, `year`, `month`, `date`, `paid`, `_status`, `student_status`) VALUES
(225, 11, 2017, 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(226, 11, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(227, 12, 2017, 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(228, 12, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(229, 13, 2017, 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(230, 13, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(234, 14, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(235, 25252525, 2018, 'February', '2018-02-04', 1000.00, 'Admission Fee', ''),
(236, 25252525, 2018, 'February', '2018-02-04', 1500.00, 'Monthly Fee1', ''),
(237, 25252525, 2021, 'December', '2021-12-31', 1000.00, 'Admission Fee', ''),
(238, 25252525, 2021, 'December', '2021-12-31', 250.00, 'Monthly Fee1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_payment_history`
--

CREATE TABLE `student_payment_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_payment_history`
--

INSERT INTO `student_payment_history` (`id`, `index_number`, `grade_id`, `subject_id`, `teacher_id`, `subject_fee`, `subtotal`, `_status`, `month`, `year`, `date`, `invoice_number`) VALUES
(582, 11, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(583, 11, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(584, 11, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(585, 11, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(586, 11, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(587, 11, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(588, 12, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(589, 12, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(590, 12, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(591, 12, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(592, 12, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(593, 12, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(594, 13, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(595, 13, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(596, 13, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(597, 13, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(598, 13, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(599, 13, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(612, 14, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(613, 14, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(614, 14, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(615, 14, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(616, 14, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(617, 14, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(618, 25252525, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(619, 25252525, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(620, 25252525, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(621, 25252525, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(622, 25252525, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(623, 25252525, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(624, 25252525, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'December', 2021, '2021-12-31', 237);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `sr_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `reg_month` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_subject`
--

INSERT INTO `student_subject` (`id`, `index_number`, `_status`, `sr_id`, `year`, `reg_month`) VALUES
(207, 12, '', 17, 2017, ''),
(208, 12, '', 18, 2017, ''),
(209, 12, '', 19, 2017, ''),
(210, 12, '', 20, 2017, ''),
(211, 12, '', 21, 2017, ''),
(212, 12, '', 22, 2017, ''),
(213, 13, '', 17, 2017, ''),
(214, 13, '', 18, 2017, ''),
(215, 13, '', 19, 2017, ''),
(216, 13, '', 20, 2017, ''),
(217, 13, '', 21, 2017, ''),
(218, 13, '', 22, 2017, ''),
(231, 14, '', 17, 2017, ''),
(232, 14, '', 18, 2017, ''),
(233, 14, '', 19, 2017, ''),
(234, 14, '', 20, 2017, ''),
(235, 14, '', 21, 2017, ''),
(236, 14, '', 22, 2017, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(15, 'Subject 1'),
(16, 'Subject 2'),
(17, 'Subject 3'),
(18, 'Subject 4'),
(19, 'Subject 5'),
(20, 'Subject 6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject_routing`
--

CREATE TABLE `subject_routing` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fee` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `subject_routing`
--

INSERT INTO `subject_routing` (`id`, `grade_id`, `subject_id`, `teacher_id`, `fee`) VALUES
(17, 11, 15, 10, 6.00),
(18, 11, 16, 11, 7.00),
(19, 11, 17, 12, 8.00),
(20, 11, 18, 13, 8.00),
(21, 11, 19, 14, 8.00),
(22, 11, 20, 15, 7.00),
(23, 12, 15, 10, 9.00),
(24, 12, 16, 11, 9.00),
(25, 12, 17, 12, 9.00),
(27, 12, 19, 14, 5.00),
(28, 12, 20, 15, 7.00),
(29, 13, 15, 10, 5.00),
(30, 13, 16, 11, 7.00),
(31, 13, 17, 12, 8.00),
(32, 13, 18, 13, 9.00),
(33, 13, 19, 14, 8.00),
(34, 13, 20, 15, 8.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `index_number`, `reg_date`) VALUES
(10, 'Teacher 1', 'Teacher 1fdsfhdfgdh', 'Male', 'Schoolfdgsfg', '111-111-1111', 't1@gmail.com', 'uploads/20171124010228.png', 1, '2017-11-24'),
(11, 'Teacher 2', 'Teacher 2', 'Female', 'School', '222-222-2222', 't2@gmail.com', 'uploads/20171124010308.png', 2, '2017-11-24'),
(12, 'Teacher 3', 'Teacher 3', 'Female', 'School', '333-333-3333', 't3@gmail.com', 'uploads/20171124010354.png', 3, '2017-11-24'),
(13, 'Teacher 4', 'Teacher 4', 'Male', 'School', '444-444-4444', 't4@gmail.com', 'uploads/20171124010530.png', 4, '2017-11-24'),
(14, 'Teacher 5', 'Teacher 5', 'Male', 'School', '555-555-5555', 't5@gmail.com', 'uploads/20171124010613.png', 5, '2017-11-24'),
(15, 'Teacher 6', 'Teacher 6', 'Male', 'School', '666-666-6666', 't6@gmail.com', 'uploads/20171124010754.png', 6, '2017-11-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_salary`
--

CREATE TABLE `teacher_salary` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_salary_history`
--

CREATE TABLE `teacher_salary_history` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `student_count` int(11) NOT NULL,
  `hall_charge` int(11) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `timetable`
--

INSERT INTO `timetable` (`id`, `grade_id`, `day`, `subject_id`, `teacher_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(42, 11, 'Sunday', 15, 10, 18, 7.00, 8.00),
(43, 11, 'Monday', 15, 10, 18, 7.00, 8.00),
(44, 11, 'Tuesday', 15, 10, 18, 7.00, 8.00),
(45, 11, 'Wednesday', 15, 10, 18, 7.00, 8.00),
(46, 11, 'Thursday', 15, 10, 18, 7.00, 8.00),
(47, 11, 'Friday', 15, 10, 18, 7.00, 8.00),
(48, 11, 'Sunday', 16, 11, 18, 8.00, 9.00),
(49, 11, 'Monday', 16, 11, 18, 8.00, 9.00),
(50, 11, 'Tuesday', 16, 11, 18, 8.00, 9.00),
(51, 11, 'Wednesday', 16, 11, 18, 8.00, 9.00),
(52, 11, 'Thursday', 16, 11, 19, 8.00, 9.00),
(53, 11, 'Friday', 16, 11, 18, 8.00, 9.00),
(54, 11, 'Sunday', 17, 12, 18, 9.00, 10.00),
(55, 11, 'Monday', 17, 12, 18, 9.00, 10.00),
(56, 11, 'Tuesday', 17, 12, 18, 9.00, 10.00),
(57, 11, 'Wednesday', 17, 12, 18, 9.00, 10.00),
(58, 11, 'Thursday', 17, 12, 18, 9.00, 10.00),
(59, 11, 'Friday', 17, 12, 18, 9.00, 10.00),
(60, 11, 'Sunday', 18, 13, 18, 10.00, 11.00),
(61, 11, 'Monday', 18, 13, 18, 10.00, 11.00),
(62, 11, 'Tuesday', 18, 13, 18, 10.00, 11.00),
(63, 11, 'Wednesday', 18, 13, 18, 10.00, 11.00),
(64, 11, 'Thursday', 18, 13, 18, 10.00, 11.00),
(65, 11, 'Friday', 18, 13, 18, 10.00, 11.00),
(69, 11, 'Sunday', 19, 14, 18, 12.00, 13.00),
(70, 11, 'Monday', 19, 14, 18, 12.00, 13.00),
(71, 11, 'Tuesday', 19, 14, 18, 12.00, 13.00),
(72, 11, 'Wednesday', 19, 14, 18, 12.00, 13.00),
(73, 11, 'Thursday', 19, 14, 18, 12.00, 13.00),
(74, 11, 'Friday', 19, 14, 18, 12.00, 13.00),
(75, 11, 'Sunday', 20, 15, 18, 13.00, 14.00),
(76, 11, 'Monday', 20, 15, 18, 13.00, 14.00),
(77, 11, 'Tuesday', 20, 15, 18, 13.00, 14.00),
(78, 11, 'Wednesday', 20, 15, 18, 13.00, 14.00),
(79, 11, 'Thursday', 20, 15, 18, 13.00, 14.00),
(80, 11, 'Friday', 20, 15, 18, 13.00, 14.00),
(81, 11, 'Saturday', 20, 15, 23, 9.00, 10.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`) VALUES
(29, 'admin@gmail.com', '12345', 'Admin'),
(47, 't1@gmail.com', '12345', 'Teacher'),
(48, 't2@gmail.com', '12345', 'Teacher'),
(49, 't3@gmail.com', '12345', 'Teacher'),
(50, 't4@gmail.com', '12345', 'Teacher'),
(51, 't5@gmail.com', '12345', 'Teacher'),
(52, 't6@gmail.com', '12345', 'Teacher'),
(53, 'std1@gmail.com', '12345', 'Student'),
(54, 'dad1@gmail.com', '12345', 'Parents'),
(55, 'std2@gmail.com', '12345', 'Student'),
(56, 'dad2@gmail.com', '12345', 'Parents'),
(57, 'std3@gmail.com', '12345', 'Student'),
(58, 'dad3@gmail.com', '12345', 'Parents'),
(59, 'std4@gmail.com', '12345', 'Student'),
(61, 'std4@gmail.com', '12345', 'Student'),
(63, 'std4@gmail.com', '12345', 'Student'),
(64, 'std4@gmail.com', '12345', 'Student'),
(66, 'std4@gmail.com', '12345', 'Student'),
(67, 'dad4@gmail.com', '12345', 'Parents'),
(69, 'dad123@gmail.com', '12345', 'Parents'),
(70, 'lkforex2015111@gmail.com', '12345', 'Student'),
(71, 'admin@gmail.com', '12345', 'Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `class_room`
--
ALTER TABLE `class_room`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `event_category`
--
ALTER TABLE `event_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `event_category_type`
--
ALTER TABLE `event_category_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam_timetable`
--
ALTER TABLE `exam_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `main_notifications`
--
ALTER TABLE `main_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `my_friends`
--
ALTER TABLE `my_friends`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notification_history`
--
ALTER TABLE `notification_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `online_chat`
--
ALTER TABLE `online_chat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_notifications`
--
ALTER TABLE `payment_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student_payment_history`
--
ALTER TABLE `student_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher_salary`
--
ALTER TABLE `teacher_salary`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `class_room`
--
ALTER TABLE `class_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `event_category`
--
ALTER TABLE `event_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `event_category_type`
--
ALTER TABLE `event_category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `exam_range_grade`
--
ALTER TABLE `exam_range_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `exam_timetable`
--
ALTER TABLE `exam_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `group_message`
--
ALTER TABLE `group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `main_notifications`
--
ALTER TABLE `main_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `my_friends`
--
ALTER TABLE `my_friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `notification_history`
--
ALTER TABLE `notification_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `online_chat`
--
ALTER TABLE `online_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `payment_notifications`
--
ALTER TABLE `payment_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `petty_cash_history`
--
ALTER TABLE `petty_cash_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `student_payment_history`
--
ALTER TABLE `student_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT cho bảng `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `subject_routing`
--
ALTER TABLE `subject_routing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacher_salary`
--
ALTER TABLE `teacher_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacher_salary_history`
--
ALTER TABLE `teacher_salary_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
