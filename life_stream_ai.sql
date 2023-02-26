-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 05:25 AM
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
-- Table structure for table `ambulance_locations`
--

CREATE TABLE `ambulance_locations` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `van_number` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambulance_locations`
--

INSERT INTO `ambulance_locations` (`s_no`, `van_number`, `lat`, `lon`) VALUES
(1, 'PB-11-A-2021', '30.342592', '76.379326'),
(2, 'PB-11-A-2022', '30.346059', '76.395704'),
(3, 'PB-11-A-2023', '30.329404', '76.398155'),
(4, 'PB-11-A-2024', '30.318239', '76.354829'),
(5, 'PB-11-A-2025', '30.348255', '76.348429'),
(6, 'PB-11-A-2026', '30.363562', '76.380388'),
(7, 'PB-11-A-2027', '30.371289', '76.475296'),
(8, 'PB-11-A-2028', '30.319169', '76.41038');

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
-- Table structure for table `blood_logistics`
--

CREATE TABLE `blood_logistics` (
  `s_no` int(6) UNSIGNED NOT NULL,
  `city_from` varchar(30) NOT NULL,
  `city_to` varchar(30) NOT NULL,
  `units` varchar(30) NOT NULL,
  `blood_group` varchar(30) NOT NULL,
  `prog` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_logistics`
--

INSERT INTO `blood_logistics` (`s_no`, `city_from`, `city_to`, `units`, `blood_group`, `prog`) VALUES
(1, 'Delhi', 'Sonipat', '15', 'O+', 'In Transiant'),
(2, 'Delhi', 'Panipat', '9', 'O-', 'In Transiant'),
(3, 'Delhi', 'Patiala', '6', 'A+', 'In Transiant'),
(4, 'Chandigarh', 'Patiala', '10', 'AB-', 'In Transiant'),
(5, 'Chandigarh', 'Jalandhar', '12', 'B+', 'In Transiant');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_list`
--

CREATE TABLE `doctors_list` (
  `s_no` int(11) DEFAULT NULL,
  `name` varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ph_no` bigint(20) DEFAULT NULL,
  `hospital_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(96) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors_list`
--

INSERT INTO `doctors_list` (`s_no`, `name`, `email`, `ph_no`, `hospital_id`, `url`) VALUES
(1, 'Dr. Emily Johnson', 'jonhson@gmail.com', 7999999999, 'HSPID001', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(2, 'Dr. David Lee', 'sophiebrown89@hotmail.com', 7999999998, 'HSPID002', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(3, 'Dr. Amanda Rodriguez', 'chris_henry@yahoo.com', 7999999997, 'HSPID003', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(4, 'Dr. Michael Chen', 'katie_wong33@gmail.com', 7999999996, 'HSPID004', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(5, 'Dr. Sarah Brown', 'tom.jones76@outlook.com', 7999999995, 'HSPID005', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(6, 'Dr. Daniel Kim', 'emma.miller_1@yahoo.co.uk', 7999999994, 'HSPID006', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(7, 'Dr. Jennifer Davis', 'john.cole32@gmail.com', 7999999993, 'HSPID007', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(8, 'Dr. Matthew Green', 'lauren_davies22@icloud.com', 7999999992, 'HSPID008', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(9, 'Dr. Elizabeth Carter', 'samantha_baker_87@hotmail.co.uk', 7999999991, 'HSPID009', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(10, 'Dr. Christopher Patel', 'mark.johnson99@yahoo.com', 7999999990, 'HSPID010', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(11, 'Dr. Samantha White', 'sarah_lee1234@outlook.com', 7999999989, 'HSPID011', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(12, 'Dr. Kevin Nguyen', 'david_williams_1985@gmail.com', 7999999988, 'HSPID012', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(13, 'Dr. Rachel Taylor', 'amy_thomas12@yahoo.co.uk', 7999999987, 'HSPID013', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(14, 'Dr. Brian Thomas', 'peter.evans89@icloud.com', 7999999986, 'HSPID014', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(15, 'Dr. Ashley Garcia', 'elizabeth_nguyen23@hotmail.com', 7999999985, 'HSPID015', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(16, 'Dr. Jonathan Wong', 'michael_brown_1@yahoo.com', 7999999984, 'HSPID016', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(17, 'Dr. Lauren Scott', 'lisa_jones_42@gmail.com', 7999999983, 'HSPID017', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(18, 'Dr. Tyler Davis', 'benjamin_smith22@outlook.com', 7999999982, 'HSPID018', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(19, 'Dr. Victoria Jackson', 'jenny_clark78@yahoo.co.uk', 7999999981, 'HSPID019', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(20, 'Dr. Nicholas Wilson', 'alexander_harris_1@hotmail.co.uk', 7999999980, 'HSPID020', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(21, 'Dr. Katherine Jones', 'jessica_tan12@gmail.com', 7999999979, 'HSPID021', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(22, 'Dr. Timothy Lee', 'andrew_davis88@yahoo.com', 7999999978, 'HSPID022', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(23, 'Dr. Megan Adams', 'olivia_green_1@icloud.com', 7999999977, 'HSPID023', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(24, 'Dr. Peter Kim', 'matthew_turner34@hotmail.com', 7999999976, 'HSPID024', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(25, 'Dr. Stephanie Martin', 'laura_walker87@yahoo.co.uk', 7999999975, 'HSPID025', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(26, 'Dr. James Lee', 'charles_richards_1@gmail.com', 7999999974, 'HSPID026', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(27, 'Dr. Jennifer Lee', 'anna_parker99@outlook.com', 7999999973, 'HSPID027', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(28, 'Dr. Charles Brown', 'george_morris22@yahoo.com', 7999999972, 'HSPID028', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(29, 'Dr. Erica Kim', 'sophia_kim_1@hotmail.com', 7999999971, 'HSPID029', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(30, 'Dr. Christopher Lee', 'william_jackson56@yahoo.co.uk', 7999999970, 'HSPID030', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(31, 'Dr. Rebecca Johnson', 'emily_adams_1@gmail.com', 7999999969, 'HSPID031', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(32, 'Dr. Benjamin Chen', 'daniel_roberts88@outlook.com', 7999999968, 'HSPID032', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(33, 'Dr. Maria Rodriguez', 'isabella_liu99@yahoo.com', 7999999967, 'HSPID033', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(34, 'Dr. Ryan Smith', 'james_taylor76@hotmail.com', 7999999966, 'HSPID034', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(35, 'Dr. Michelle Davis', 'avery_brown_1@yahoo.co.uk', 7999999965, 'HSPID035', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(36, 'Dr. Andrew Nguyen', 'ryan_carter_22@gmail.com', 7999999964, 'HSPID036', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(37, 'Dr. Jacqueline Lee', 'grace_lee1234@icloud.com', 7999999963, 'HSPID037', 'https://th.bing.com/th/id/OIP.ecdKmR-UYKRXLXDwgx3O1gHaD6?w=319&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(38, 'Dr. Jonathan Green', 'jacob_smith89@yahoo.com', 7999999962, 'HSPID038', 'https://th.bing.com/th/id/OIP.v884g_qQDHZs7wGY99d3CwHaKj?w=117&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(39, 'Dr. Katherine Wilson', 'mia_harris_1@hotmail.com', 7999999961, 'HSPID039', 'https://th.bing.com/th/id/OIP.0npZFKmzhS7TIGzTvUPmjQHaEK?w=327&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(40, 'Dr. Alexander Lee', 'jackson_kim12@yahoo.co.uk', 7999999960, 'HSPID040', 'https://th.bing.com/th/id/OIP.GehegT--J2Bpd4ONcrjvRQHaE7?w=303&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7');

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
  `s_no` int(11) DEFAULT NULL,
  `name` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `patients` int(11) DEFAULT NULL,
  `doctors` int(11) DEFAULT NULL,
  `ph_no` bigint(20) DEFAULT NULL,
  `url` varchar(96) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals_list`
--

INSERT INTO `hospitals_list` (`s_no`, `name`, `patients`, `doctors`, `ph_no`, `url`) VALUES
(1, ' manipal hospital', 100, 4, 8999999999, 'https://th.bing.com/th/id/OIP.XDEu0hi2s6A5QX55qGvFYAHaFQ?w=259&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(2, 'health hospital', 150, 6, 8999999998, 'https://th.bing.com/th/id/OIP.kLYOgCrUX_zEivb_oaN6OgHaE8?w=294&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(3, 'civil hospital', 100, 4, 8999999997, 'https://th.bing.com/th/id/OIP.JnaehYTPmPP1l7_PlIlLMAHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(4, 'edc hospital', 250, 10, 8999999996, 'https://th.bing.com/th/id/OIP.8eohBuxZXz63gOcEexsLVgHaD2?w=339&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(5, 'fortis hospital', 50, 2, 8999999995, 'https://th.bing.com/th/id/OIP.5Uy0ZHbYVWm-qmyvBgImvAHaEh?w=304&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(6, 'bits hospital', 150, 6, 8999999994, 'https://th.bing.com/th/id/OIP.IA1DQSKrDsuWsjDtCOnx0QHaE7?w=261&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(7, 'thapar hospital', 100, 4, 8999999993, 'https://th.bing.com/th/id/OIP.FgeX9MS5PrNtd0bCNIcPnwHaEP?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
(8, 'srm hospital', 200, 8, 8999999992, 'https://th.bing.com/th/id/OIP.VOiX_Yxo0yPeOQ_zD9-J-wHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `username`, `ph_no`, `email`, `psw_hash`, `user_state`, `dashboard_type`) VALUES
(1, 'Akarsh', 'Srivastava', 'admin', 'admin', 'akarsh91140@gmail.com', 'admin', 0, 0),
(2, 'Akarsh', 'Srivastava', 'user', 'user', 'akarsh91140@gmail.com', 'user', 2, 0),
(3, 'Akarsh', 'Srivastava', 'doctor', 'doctor', 'akarsh91140@gmail.com', 'doctor', 3, 0),
(4, 'Akarsh', 'Srivastava', 'ambulance', 'ambulance', 'akarsh91140@gmail.com', 'ambulance', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance_locations`
--
ALTER TABLE `ambulance_locations`
  ADD PRIMARY KEY (`s_no`);

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
-- Indexes for table `blood_logistics`
--
ALTER TABLE `blood_logistics`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `donors_list`
--
ALTER TABLE `donors_list`
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
-- AUTO_INCREMENT for table `ambulance_locations`
--
ALTER TABLE `ambulance_locations`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `blood_logistics`
--
ALTER TABLE `blood_logistics`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donors_list`
--
ALTER TABLE `donors_list`
  MODIFY `s_no` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
