-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 06:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `life_stream_ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_distribution`
--

CREATE TABLE `blood_distribution` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `population` varchar(30) NOT NULL,
  `OP` varchar(30) NOT NULL,
  `OM` varchar(30) NOT NULL,
  `BP` varchar(30) NOT NULL,
  `BM` varchar(30) NOT NULL,
  `AP` varchar(30) NOT NULL,
  `AM` varchar(30) NOT NULL,
  `ABP` varchar(30) NOT NULL,
  `ABM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_inventory`
--

CREATE TABLE `blood_inventory` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `population` varchar(30) NOT NULL,
  `OP` varchar(30) NOT NULL,
  `OM` varchar(30) NOT NULL,
  `BP` varchar(30) NOT NULL,
  `BM` varchar(30) NOT NULL,
  `AP` varchar(30) NOT NULL,
  `AM` varchar(30) NOT NULL,
  `ABP` varchar(30) NOT NULL,
  `ABM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors_list`
--

CREATE TABLE `doctors_list` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `hospital_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donors_list`
--

CREATE TABLE `donors_list` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `blood_group` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `last_donation_date` varchar(50) NOT NULL,
  `times_donated` int(3) NOT NULL,
  `probable_donor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors_list`
--

INSERT INTO `donors_list` (`s_no`, `name`, `age`, `blood_group`, `ph_no`, `gender`, `last_donation_date`, `times_donated`, `probable_donor`) VALUES
(1, 'Ava', '18', 'O+', '9999999999', 'M', '2023-02-25 00:00:00', 3, 0),
(2, 'Noah', '19', 'O+', '9999999998', 'F', '2023-02-24 00:00:00', 2, 0),
(3, 'Isabella', '20', 'O+', '9999999997', 'M', '2023-02-23 00:00:00', 1, 1),
(4, 'Liam', '21', 'O+', '9999999996', 'F', '2023-02-22 00:00:00', 3, 0),
(5, 'Sophia', '22', 'O+', '9999999995', 'M', '2023-02-21 00:00:00', 2, 1),
(6, 'Ethan', '23', 'O+', '9999999994', 'F', '2023-02-20 00:00:00', 1, 1),
(7, 'Mia', '24', 'O-', '9999999993', 'M', '2023-02-25 00:00:00', 3, 0),
(8, 'Mason', '25', 'O-', '9999999992', 'F', '2023-02-25 00:00:00', 2, 0),
(9, 'Charlotte', '26', 'O-', '9999999991', 'M', '2023-02-24 00:00:00', 1, 1),
(10, 'Lucas', '27', 'O-', '9999999990', 'F', '2023-02-23 00:00:00', 3, 0),
(11, 'Amelia', '28', 'O-', '9999999989', 'M', '2023-02-22 00:00:00', 2, 1),
(12, 'Logan', '29', 'O-', '9999999988', 'F', '2023-02-21 00:00:00', 1, 1),
(13, 'Harper', '30', 'AB+', '9999999987', 'M', '2023-02-20 00:00:00', 3, 0),
(14, 'Jackson', '31', 'AB+', '9999999986', 'F', '2023-02-25 00:00:00', 2, 0),
(15, 'Evelyn', '32', 'AB+', '9999999985', 'M', '2023-02-25 00:00:00', 1, 1),
(16, 'Aiden', '33', 'AB+', '9999999984', 'F', '2023-02-24 00:00:00', 3, 0),
(17, 'Abigail', '34', 'AB+', '9999999983', 'M', '2023-02-23 00:00:00', 2, 1),
(18, 'Caden', '35', 'AB+', '9999999982', 'F', '2023-02-22 00:00:00', 1, 1),
(19, 'Emily', '18', 'AB-', '9999999981', 'M', '2023-02-21 00:00:00', 3, 0),
(20, 'Grayson', '19', 'AB-', '9999999980', 'F', '2023-02-20 00:00:00', 2, 0),
(21, 'Elizabeth', '20', 'AB-', '9999999979', 'M', '2023-02-25 00:00:00', 1, 1),
(22, 'Elijah', '21', 'AB-', '9999999978', 'F', '2023-02-25 00:00:00', 3, 0),
(23, 'Victoria', '22', 'AB-', '9999999977', 'M', '2023-02-24 00:00:00', 2, 1),
(24, 'Oliver', '23', 'AB-', '9999999976', 'F', '2023-02-23 00:00:00', 1, 1),
(25, 'Scarlett', '24', 'A+', '9999999975', 'M', '2023-02-22 00:00:00', 3, 0),
(26, 'Jacob', '25', 'A+', '9999999974', 'F', '2023-02-21 00:00:00', 2, 0),
(27, 'Madison', '26', 'A+', '9999999973', 'M', '2023-02-20 00:00:00', 1, 1),
(28, 'William', '27', 'A+', '9999999972', 'F', '2023-02-25 00:00:00', 3, 0),
(29, 'Grace', '28', 'A+', '9999999971', 'M', '2023-02-25 00:00:00', 2, 1),
(30, 'Benjamin', '29', 'A+', '9999999970', 'F', '2023-02-24 00:00:00', 1, 1),
(31, 'Avery', '30', 'A-', '9999999969', 'M', '2023-02-23 00:00:00', 3, 0),
(32, 'Michael', '31', 'A-', '9999999968', 'F', '2023-02-22 00:00:00', 2, 0),
(33, 'Chloe', '32', 'A-', '9999999967', 'M', '2023-02-21 00:00:00', 1, 1),
(34, 'Alexander', '33', 'A-', '9999999966', 'F', '2023-02-20 00:00:00', 3, 0),
(35, 'Lily', '34', 'A-', '9999999965', 'M', '2023-02-25 00:00:00', 2, 1),
(36, 'Daniel', '35', 'A-', '9999999964', 'F', '2023-02-25 00:00:00', 1, 1),
(37, 'Aubrey', '36', 'B-', '9999999963', 'M', '2023-02-24 00:00:00', 3, 0),
(38, 'Matthew', '37', 'B-', '9999999962', 'F', '2023-02-23 00:00:00', 2, 0),
(39, 'Ella', '38', 'B-', '9999999961', 'M', '2023-02-22 00:00:00', 1, 1),
(40, 'Henry', '18', 'B-', '9999999960', 'F', '2023-02-21 00:00:00', 3, 0),
(41, 'Sofia', '19', 'B-', '9999999959', 'M', '2023-02-20 00:00:00', 2, 1),
(42, 'Sebastian', '20', 'B-', '9999999958', 'F', '2023-02-25 00:00:00', 1, 1),
(43, 'Riley', '18', 'B+', '9999999957', 'M', '2023-02-25 00:00:00', 3, 0),
(44, 'Joseph', '19', 'B+', '9999999956', 'F', '2023-02-24 00:00:00', 2, 0),
(45, 'Layla', '20', 'B+', '9999999955', 'M', '2023-02-23 00:00:00', 1, 1),
(46, 'Samuel', '21', 'B+', '9999999954', 'F', '2023-02-22 00:00:00', 3, 0),
(47, 'Zoey', '22', 'B+', '9999999953', 'M', '2023-02-21 00:00:00', 2, 1),
(48, 'Gabrie', '23', 'B+', '9999999952', 'F', '2023-02-20 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals_list`
--

CREATE TABLE `hospitals_list` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `patients` varchar(30) NOT NULL,
  `doctors` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals_list`
--

INSERT INTO `hospitals_list` (`s_no`, `name`, `patients`, `doctors`, `ph_no`) VALUES
(1, ' manipal hospital', '100', '4', '8999999999'),
(2, 'health hospital', '150', '6', '8999999998'),
(3, 'civil hospital', '100', '4', '8999999997'),
(4, 'edc hospital', '250', '10', '8999999996'),
(5, 'fortis hospital', '50', '2', '8999999995'),
(6, 'bits hospital', '150', '6', '8999999994'),
(7, 'thapar hospital', '100', '4', '8999999993'),
(8, 'srm hospital', '200', '8', '8999999992');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psw_hash` varchar(255) NOT NULL,
  `user_state` int(1) NOT NULL,
  `dashboard_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_distribution`
--
ALTER TABLE `blood_distribution`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `doctors_list`
--
ALTER TABLE `doctors_list`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `donors_list`
--
ALTER TABLE `donors_list`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `hospitals_list`
--
ALTER TABLE `hospitals_list`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_distribution`
--
ALTER TABLE `blood_distribution`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors_list`
--
ALTER TABLE `doctors_list`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donors_list`
--
ALTER TABLE `donors_list`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `hospitals_list`
--
ALTER TABLE `hospitals_list`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
