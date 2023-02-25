-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 08:41 PM
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

--
-- Dumping data for table `blood_distribution`
--

INSERT INTO `blood_distribution` (`s_no`, `name`, `population`, `OP`, `OM`, `BP`, `BM`, `AP`, `AM`, `ABP`, `ABM`) VALUES
(1, 'Delhi', '18560000', '7238400', '1670400', '1670400', '371200', '5568000', '1113600', '742400', '185600'),
(2, 'Sonipat', '7000000', '2730000', '630000', '1750000', '420000', '630000', '140000', '420000', '280000'),
(3, 'Lucknow', '15000000', '6000000', '1200000', '3000000', '1050000', '1500000', '150000', '1200000', '900000'),
(4, 'Patiala', '12000000', '4560000', '840000', '4200000', '720000', '720000', '240000', '480000', '240000'),
(5, 'Panipat', '9000000', '3330000', '810000', '27000000', '540000', '630000', '270000', '630000', '90000'),
(6, 'Karnal', '10000000', '4800000', '500000', '2000000', '500000', '6000000', '100000', '800000', '700000'),
(7, 'Ambala', '11000000', '4400000', '770000', '2970000', '660000', '550000', '330000', '1320000', '1100000'),
(8, 'Rohtak', '10000000', '3500000', '800000', '2800000', '700000', '900000', '100000', '700000', '500000'),
(9, 'Jalander', '12000000', '4320000', '960000', '3840000', '1080000', '960000', '120000', '360000', '120000'),
(10, 'Bharadurgarh', '8000000', '2960000', '720000', '2640000', '400000', '800000', '80000', '240000', '160000');

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

--
-- Dumping data for table `doctors_list`
--

INSERT INTO `doctors_list` (`s_no`, `name`, `email`, `ph_no`, `hospital_id`) VALUES
(1, 'Dr. Emily Johnson', 'jonhson@gmail.com', '7999999999', 'HSPID001'),
(2, 'Dr. David Lee', 'sophiebrown89@hotmail.com', '7999999998', 'HSPID002'),
(3, 'Dr. Amanda Rodriguez', 'chris_henry@yahoo.com', '7999999997', 'HSPID003'),
(4, 'Dr. Michael Chen', 'katie_wong33@gmail.com', '7999999996', 'HSPID004'),
(5, 'Dr. Sarah Brown', 'tom.jones76@outlook.com', '7999999995', 'HSPID005'),
(6, 'Dr. Daniel Kim', 'emma.miller_1@yahoo.co.uk', '7999999994', 'HSPID006'),
(7, 'Dr. Jennifer Davis', 'john.cole32@gmail.com', '7999999993', 'HSPID007'),
(8, 'Dr. Matthew Green', 'lauren_davies22@icloud.com', '7999999992', 'HSPID008'),
(9, 'Dr. Elizabeth Carter', 'samantha_baker_87@hotmail.co.uk', '7999999991', 'HSPID009'),
(10, 'Dr. Christopher Patel', 'mark.johnson99@yahoo.com', '7999999990', 'HSPID010'),
(11, 'Dr. Samantha White', 'sarah_lee1234@outlook.com', '7999999989', 'HSPID011'),
(12, 'Dr. Kevin Nguyen', 'david_williams_1985@gmail.com', '7999999988', 'HSPID012'),
(13, 'Dr. Rachel Taylor', 'amy_thomas12@yahoo.co.uk', '7999999987', 'HSPID013'),
(14, 'Dr. Brian Thomas', 'peter.evans89@icloud.com', '7999999986', 'HSPID014'),
(15, 'Dr. Ashley Garcia', 'elizabeth_nguyen23@hotmail.com', '7999999985', 'HSPID015'),
(16, 'Dr. Jonathan Wong', 'michael_brown_1@yahoo.com', '7999999984', 'HSPID016'),
(17, 'Dr. Lauren Scott', 'lisa_jones_42@gmail.com', '7999999983', 'HSPID017'),
(18, 'Dr. Tyler Davis', 'benjamin_smith22@outlook.com', '7999999982', 'HSPID018'),
(19, 'Dr. Victoria Jackson', 'jenny_clark78@yahoo.co.uk', '7999999981', 'HSPID019'),
(20, 'Dr. Nicholas Wilson', 'alexander_harris_1@hotmail.co.uk', '7999999980', 'HSPID020'),
(21, 'Dr. Katherine Jones', 'jessica_tan12@gmail.com', '7999999979', 'HSPID021'),
(22, 'Dr. Timothy Lee', 'andrew_davis88@yahoo.com', '7999999978', 'HSPID022'),
(23, 'Dr. Megan Adams', 'olivia_green_1@icloud.com', '7999999977', 'HSPID023'),
(24, 'Dr. Peter Kim', 'matthew_turner34@hotmail.com', '7999999976', 'HSPID024'),
(25, 'Dr. Stephanie Martin', 'laura_walker87@yahoo.co.uk', '7999999975', 'HSPID025'),
(26, 'Dr. James Lee', 'charles_richards_1@gmail.com', '7999999974', 'HSPID026'),
(27, 'Dr. Jennifer Lee', 'anna_parker99@outlook.com', '7999999973', 'HSPID027'),
(28, 'Dr. Charles Brown', 'george_morris22@yahoo.com', '7999999972', 'HSPID028'),
(29, 'Dr. Erica Kim', 'sophia_kim_1@hotmail.com', '7999999971', 'HSPID029'),
(30, 'Dr. Christopher Lee', 'william_jackson56@yahoo.co.uk', '7999999970', 'HSPID030'),
(31, 'Dr. Rebecca Johnson', 'emily_adams_1@gmail.com', '7999999969', 'HSPID031'),
(32, 'Dr. Benjamin Chen', 'daniel_roberts88@outlook.com', '7999999968', 'HSPID032'),
(33, 'Dr. Maria Rodriguez', 'isabella_liu99@yahoo.com', '7999999967', 'HSPID033'),
(34, 'Dr. Ryan Smith', 'james_taylor76@hotmail.com', '7999999966', 'HSPID034'),
(35, 'Dr. Michelle Davis', 'avery_brown_1@yahoo.co.uk', '7999999965', 'HSPID035'),
(36, 'Dr. Andrew Nguyen', 'ryan_carter_22@gmail.com', '7999999964', 'HSPID036'),
(37, 'Dr. Jacqueline Lee', 'grace_lee1234@icloud.com', '7999999963', 'HSPID037'),
(38, 'Dr. Jonathan Green', 'jacob_smith89@yahoo.com', '7999999962', 'HSPID038'),
(39, 'Dr. Katherine Wilson', 'mia_harris_1@hotmail.com', '7999999961', 'HSPID039'),
(40, 'Dr. Alexander Lee', 'jackson_kim12@yahoo.co.uk', '7999999960', 'HSPID040');

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
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors_list`
--
ALTER TABLE `doctors_list`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
