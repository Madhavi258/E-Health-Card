-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 08:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vida`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhaar_detail`
--

CREATE TABLE `aadhaar_detail` (
  `aadhaar_id` varchar(150) NOT NULL,
  `f_name` varchar(150) NOT NULL,
  `l_name` varchar(150) NOT NULL,
  `mobile_no` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `dob` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aadhaar_detail`
--

INSERT INTO `aadhaar_detail` (`aadhaar_id`, `f_name`, `l_name`, `mobile_no`, `email`, `dob`, `gender`, `address`) VALUES
('538164824104', 'Maunik', 'Sakariya', '9874563214', 'maunik@gmail.com', '1999-05-02', 'Male', 'xyz'),
('654789651452', 'Dhruvi', 'Barad', '9517532589', 'dhruvibarad@gmail.com', '2000-10-05', 'Female', 'Surat'),
('741289654912', 'Prachi', 'Kher', '9851547895', 'prachikher@gmail.com', '1999-01-23', 'Female', 'Kosamba\r\n'),
('966477646112', 'Madhavi', 'Aghera', '9664776461', 'madhaviaghera2000@gmail.com', '2000-08-20', 'Female', 'Kim');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(150) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile_no` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `email`, `mobile_no`, `password`) VALUES
('1', 'Madhavi', 'madhaviaghera@gmail.com', '9874563214', 'madhavi123'),
('2', 'Dhruvi', 'dhruvibarad@gmail.com', '95647895688', 'dhruvi123'),
('3', 'Vrajesh', 'vrajeshbhatt@gmail.com', '9547895632', 'vrajesh123');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `email`, `password`) VALUES
('1234', 'madhavi@gmail.com', '1234567'),
('15789', 'dhruvi510@gmail.com', '123456'),
('6789', 'dhruvi@gmail.com', '456789');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_info`
--

CREATE TABLE `doctor_info` (
  `doctor_id` varchar(150) NOT NULL,
  `doctor_name` varchar(150) NOT NULL,
  `contact_no` varchar(250) NOT NULL,
  `specialization` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `creation_date` varchar(150) NOT NULL,
  `updation_date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_info`
--

INSERT INTO `doctor_info` (`doctor_id`, `doctor_name`, `contact_no`, `specialization`, `Address`, `creation_date`, `updation_date`) VALUES
('1234', 'Dr. Madhavi', '9874563214', 'MD', 'kim,surat', '2019-08-12', '2020-04-21'),
('12345', 'hello', '9874562589', 'xyz', 'xyz', '2020-04-21', '2020-04-21'),
('15789', 'Dhruvi', '987458965', 'MD', 'surat', '2020-04-21', '2020-04-21'),
('6789', 'Dr.Dhruvi', '7896541593', 'Cardiologist', 'surat', '2019-05-13', '2019-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_request`
--

CREATE TABLE `doctor_request` (
  `doctor_id` varchar(150) NOT NULL,
  `doctor_name` varchar(150) NOT NULL,
  `contact_no` varchar(250) NOT NULL,
  `specialization` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_request`
--

INSERT INTO `doctor_request` (`doctor_id`, `doctor_name`, `contact_no`, `specialization`, `Address`, `email`, `password`) VALUES
('1234', 'abcd', '9578852395', 'MD', '40,Kailash Residency, Kim', 'abcd@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `l_id` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`l_id`, `email`, `password`) VALUES
('1234', 'vrajesh123@gmail.com', '12345678'),
('456789', '17se02ce001@ppsu.ac.in', '12345678'),
('l_5', 'hello@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_history`
--

CREATE TABLE `laboratory_history` (
  `sr_no` int(11) NOT NULL,
  `l_id` varchar(150) NOT NULL,
  `case_id` varchar(150) NOT NULL,
  `aadhaar_id` varchar(150) NOT NULL,
  `report` varchar(500) NOT NULL,
  `report_file` varchar(11) NOT NULL,
  `report_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory_history`
--

INSERT INTO `laboratory_history` (`sr_no`, `l_id`, `case_id`, `aadhaar_id`, `report`, `report_file`, `report_date`) VALUES
(1, '1234', '7', '654789651452', '', '0', '20'),
(2, '1234', '7', '654789651452', 'blood', 'Report.pdf', '20-04-21'),
(3, '1234', '7', '654789651452', 'blood', 'ppt.pdf', '20-04-21'),
(4, '1234', '7', '654789651452', 'blood', 'android.txt', '20-04-21'),
(5, '1234', '7', '654789651452', 'blood', 'Zoom_IDs.tx', '20-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_info`
--

CREATE TABLE `laboratory_info` (
  `l_id` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `mobile_no` varchar(150) NOT NULL,
  `specialization` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `creation_date` varchar(150) NOT NULL,
  `updation_date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory_info`
--

INSERT INTO `laboratory_info` (`l_id`, `name`, `mobile_no`, `specialization`, `address`, `creation_date`, `updation_date`) VALUES
('123', 'jenish', '9517534569', 'B.S.', 'surat', '', ''),
('1234', 'Vrajesh', '99876543290', 'B.S.', 'surat', '2020-04-20', '2020-04-20'),
('456789', 'Aghera', '9874563258', 'bhd', '40,Kailash Residency, Kim', '2020-04-20', '2020-04-20'),
('l_5', 'Hello', '9546897512', 'xyz', 'xyz', '2020-04-21', '2020-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_request`
--

CREATE TABLE `laboratory_request` (
  `l_id` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `mobile_no` varchar(150) NOT NULL,
  `specialization` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory_request`
--

INSERT INTO `laboratory_request` (`l_id`, `name`, `mobile_no`, `specialization`, `address`, `email`, `password`) VALUES
('123', 'Demo', '9586821625', 'B.S', 'Surat', 'demo@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `medical_info`
--

CREATE TABLE `medical_info` (
  `sr_no` int(11) NOT NULL,
  `aadhaar_id` varchar(150) NOT NULL,
  `allergy_name` varchar(150) NOT NULL,
  `allergy_description` varchar(500) NOT NULL,
  `allergy_medicine` varchar(150) NOT NULL,
  `allergy_side_effects` varchar(500) NOT NULL,
  `blood_group` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_info`
--

INSERT INTO `medical_info` (`sr_no`, `aadhaar_id`, `allergy_name`, `allergy_description`, `allergy_medicine`, `allergy_side_effects`, `blood_group`) VALUES
(11, '538164824104', 'Hives', 'skin reactions that appear as itchy swellings and can occur on any part of the body. Hives can be caused by an allergic reaction, such as to a food or medication', 'Dapsone', 'Swelling in the eyes or mouth. Swelling of the hands, feet or throat. Difficulty breathing, stomach cramps or swelling of the lining of the eyes.', 'B+ve'),
(12, '654789651452', 'Hives', 'skin reactions that appear as itchy swellings and can occur on any part of the body. Hives can be caused by an allergic reaction, such as to a food or medication', 'Dapsone', 'Swelling in the eyes or mouth.\r\nSwelling of the hands, feet or throat.\r\nDifficulty breathing, stomach cramps or swelling of the lining of the eyes.\r\n', 'O+ve'),
(13, '741289654912', 'Hives', 'skin reactions that appear as itchy swellings and can occur on any part of the body. Hives can be caused by an allergic reaction, such as to a food or medication', 'Dapsone', 'Swelling in the eyes or mouth. Swelling of the hands, feet or throat. Difficulty breathing, stomach cramps or swelling of the lining of the eyes.', 'O+ve'),
(14, '654789651452', 'xyz', 'xyz', 'xyz				', 'xyz										', 'AB+ve');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `aadhaar_id` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`aadhaar_id`, `password`, `email`) VALUES
('538164824104', '1234567', 'mauniksakariya@gmail.com '),
('654789651452', 'dhruvi123', 'dhruvibarad@gmail.com'),
('741289654912', 'prachi123', 'prachikher@gmail.com'),
('966477646112', '123456', 'dhruvibarad510@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `sr_no` int(50) NOT NULL,
  `aadhaar_id` varchar(150) NOT NULL,
  `case_id` varchar(150) NOT NULL,
  `doctor_id` varchar(250) NOT NULL,
  `medicine` varchar(350) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `medicine_quantity` varchar(350) NOT NULL,
  `creation_date` varchar(150) NOT NULL,
  `last_date` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `disease_description` varchar(1000) NOT NULL,
  `height` int(150) NOT NULL,
  `weight` int(150) NOT NULL,
  `medicine_timing` varchar(500) NOT NULL,
  `report_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`sr_no`, `aadhaar_id`, `case_id`, `doctor_id`, `medicine`, `disease`, `medicine_quantity`, `creation_date`, `last_date`, `status`, `disease_description`, `height`, `weight`, `medicine_timing`, `report_name`) VALUES
(1, '538164824104', '1', '1234', 'paracetamol', 'headache', '3', '4-2-2020', '2020-04-22', 'closed', 'headache', 6, 45, 'morning and night', 'blood'),
(3, '741289654912', '2', '1234', 'paracetamol', 'headache', '2', '2020-04-21', '2020-04-21', '', 'headache', 5, 40, 'morning', 'blood'),
(5, '654789651452', '7', '1234', 'paracetamol ', 'fever', '2', '2020-04-21', '2020-04-21', 'closed', 'fever', 6, 45, 'morning and night', 'blood'),
(6, '654789651452', '6', '6789', 'paracetamol ', 'headache ', '3', '2020-04-21', '2020-04-21', 'closed', 'headache ', 6, 45, 'morning and night', 'blood'),
(8, '654789651452', '2', '1234', 'paracitamole', 'fever', '4				', '2020-04-21', '2020-04-21', '', 'fever										', 5, 45, 'morning', 'nothing                ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhaar_detail`
--
ALTER TABLE `aadhaar_detail`
  ADD PRIMARY KEY (`aadhaar_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctor_request`
--
ALTER TABLE `doctor_request`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `laboratory_history`
--
ALTER TABLE `laboratory_history`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `laboratory_info`
--
ALTER TABLE `laboratory_info`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `laboratory_request`
--
ALTER TABLE `laboratory_request`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `medical_info`
--
ALTER TABLE `medical_info`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`aadhaar_id`);

--
-- Indexes for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laboratory_history`
--
ALTER TABLE `laboratory_history`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medical_info`
--
ALTER TABLE `medical_info`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patient_history`
--
ALTER TABLE `patient_history`
  MODIFY `sr_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
