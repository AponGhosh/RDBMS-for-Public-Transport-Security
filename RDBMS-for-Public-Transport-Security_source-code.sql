-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 06:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Bus_Reg_No` varchar(10) NOT NULL,
  `Engine_No` varchar(15) NOT NULL,
  `Chassis_No` varchar(15) NOT NULL,
  `Vehicle_Class` varchar(10) DEFAULT NULL,
  `Fuel` varchar(10) DEFAULT NULL,
  `Fitness_Cert_No` int(11) NOT NULL,
  `Fitness_Validity` date NOT NULL,
  `Tax_Token_No` int(11) NOT NULL,
  `Tax_Expiry_Date` date NOT NULL,
  `Driver_DLN` int(11) NOT NULL,
  `Serial_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus_Reg_No`, `Engine_No`, `Chassis_No`, `Vehicle_Class`, `Fuel`, `Fitness_Cert_No`, `Fitness_Validity`, `Tax_Token_No`, `Tax_Expiry_Date`, `Driver_DLN`, `Serial_No`) VALUES
('BA109811', '52WVC10338', 'E35A-03266', 'City Bus', 'Diesel', 1191495888, '2022-12-28', 1697415823, '2023-10-20', 2033433233, 2210270200),
('EE844838', '22WCC10477', 'F36A-03267', 'City Bus', 'Diesel', 1331741675, '2023-11-15', 2139711582, '2023-02-25', 2053478299, 2208080600),
('GI208922', '37ABC85246', 'J76L-22233', 'City Bus', 'Diesel', 2131495289, '2025-07-09', 2007415823, '2023-09-07', 1147654321, 2212220830),
('TF836490', '32WXC10328', 'F29B-68879', 'City Bus', 'CNG', 2101495875, '2023-10-20', 1139741582, '2024-08-06', 1055433278, 2212231100),
('YE837479', '75HKC10328', 'D39A-36974', 'City Bus', 'CNG', 1831495875, '2022-11-13', 1039742580, '2023-05-28', 2140283736, 2208191230);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Driving_Lic_No` int(11) NOT NULL,
  `NID_No` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Father's_Name` varchar(20) NOT NULL,
  `Mother's_Name` varchar(20) NOT NULL,
  `Contact` varchar(14) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Blood_Group` varchar(3) DEFAULT NULL,
  `DLic_Issue_Date` date NOT NULL,
  `DLic_Expiry_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Driving_Lic_No`, `NID_No`, `Name`, `Father's_Name`, `Mother's_Name`, `Contact`, `Address`, `DOB`, `Blood_Group`, `DLic_Issue_Date`, `DLic_Expiry_Date`) VALUES
(1055433278, 1498235599, 'Mustakim Kabir', 'Ashraf Kabir', 'Nadira Kabir', '01924519868', 'Demra, Dhaka', '1987-07-15', 'AB+', '2016-12-28', '2022-12-28'),
(1147654321, 1237894565, 'Ataul Rahim', 'Ali Ahmed', 'Nasrin Ahmed', '01846509333', 'Shegunbagicha, Dhaka', '1990-06-06', 'B+', '2020-10-20', '2025-10-20'),
(2033433233, 2134936887, 'Afzal Hossain', 'Mokbul Hossain', 'Rahela Banu', '01634775154', 'Rayerbazar, Dhaka', '1996-03-06', 'O+', '2018-12-05', '2023-12-05'),
(2053478299, 1597538522, 'Md. Abid', 'Didar Patwary', 'Nishat Patwary', '01872792251', 'Mirpur 2, Dhaka', '1984-05-10', 'B-', '2019-11-09', '2024-11-09'),
(2140283736, 1137896549, 'Misbah Hossain', 'Tahsin Hossain', 'Labiha Hossain', '01629503232', 'Shonkor, Dhanmondi', '1993-08-08', 'AB-', '2018-01-01', '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `NID_No` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Father_Name` varchar(20) NOT NULL,
  `Mother_Name` varchar(20) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `Blood_Group` varchar(3) DEFAULT NULL,
  `Bus_Reg_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`NID_No`, `Name`, `Father_Name`, `Mother_Name`, `Contact`, `Address`, `DOB`, `Blood_Group`, `Bus_Reg_No`) VALUES
(1119871230, 'Tanvir Hossain', 'Enayet Hossain', 'Lamia Hossain', '01575752269', 'Gulshan 2, Dhala', '1991-06-16', 'A-', 'GI208922'),
(1479638529, 'Faysal Ahmed', 'Aminuddin Ahmed', 'Rokeya Ahmed', '01987752175', 'Dhanmondi 7/A, Dhaka', '1988-10-10', 'B+', 'BA109811'),
(1874936887, 'Mehedi Hasan', 'Akbar Hasan', 'Pamela Hasan', '01405228655', 'Shahabag, Dhaka', '1992-11-12', 'B+', 'TF836490'),
(1992482695, 'Sohag Ahmed', 'Ismail Ahmed', 'Sultana Parvin', '01957653165', 'Baridhara, Dhaka', '1984-09-19', 'B-', 'YE837479'),
(2135826392, 'Mohammad Safafet', 'Mohammad Nazir', 'Rokeya Begum', '01711663322', 'Mirpur 1, Dhaka', '1979-04-08', 'A+', 'EE844838');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Bus_Card_No` int(11) NOT NULL,
  `NID/Birth_Cert_No` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Father_Name` varchar(20) NOT NULL,
  `Mother_Name` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `Blood_Group` varchar(3) DEFAULT NULL,
  `Bus_Reg_No` varchar(10) NOT NULL,
  `Bus_Serial_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Bus_Card_No`, `NID/Birth_Cert_No`, `Name`, `Father_Name`, `Mother_Name`, `Address`, `Contact`, `DOB`, `Blood_Group`, `Bus_Reg_No`, `Bus_Serial_No`) VALUES
(28833, '1679611633', 'Shejuti Sharkar', 'Srikanto Sarker', 'Rani Sharkar', 'Zigatola, Dhaka', '01872893341', '2000-01-10', 'B+', 'BA109811', 2210270200),
(34895, '2033511539', 'Ruhi Islam', 'Mofazzol Islam', 'Sharmin Islam', 'Mitali Road, Dhaka', '01846470043', '2002-02-02', 'AB-', 'EE844838', 2208080600),
(60387, '2230109080', 'Akash Ali', 'Asgar Ali', 'Sanjida Ali', 'Dhanmondi 2, Dhaka', '01923388799', '1999-09-09', 'B+', 'GI208922', 2212220830),
(75362, '1870640980', 'Rafi Ahmed', 'Habibur Ahmed', 'Amena Ahmed', 'Polton, Dhaka', '01703354218', '1996-09-06', 'B-', 'TF836490', 2212231100),
(98745, '2130563779', 'Afshin Hossain', 'Taukir Hossain', 'Takia Hossain', 'Dhanmondi 15, Dhaka', '01611611323', '2005-02-10', 'O+', 'YE837479', 2208191230);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Bus_Serial_No` bigint(20) NOT NULL,
  `Route_No` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Start_Location` varchar(20) NOT NULL,
  `End_Location` varchar(20) NOT NULL,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`Bus_Serial_No`, `Route_No`, `Date`, `Start_Location`, `End_Location`, `Start_Time`, `End_Time`) VALUES
(2208080600, 3, '2022-08-08', 'City Collage, Dhaka', 'Kalabagan, Dhaka', '06:00:00', '23:00:00'),
(2208191230, 3, '2022-08-19', 'City Collage, Dhaka', 'Kalabagan, Dhaka', '12:30:00', '21:30:00'),
(2210270200, 2, '2022-10-27', 'Zigatola, Dhaka', 'Mohammadpur, Dhaka', '02:00:00', '22:00:00'),
(2212220830, 2, '2022-12-22', 'Zigatola, Dhaka', 'Mohammadpur, Dhaka', '08:30:00', '22:30:00'),
(2212231100, 3, '2022-12-23', 'City Collage, Dhaka', 'Kalabagan, Dhaka', '11:00:00', '19:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_Reg_No`),
  ADD KEY `Driver_DLN_Fk` (`Driver_DLN`) USING BTREE,
  ADD KEY `Serial_No_FK` (`Serial_No`) USING BTREE;

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driving_Lic_No`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`NID_No`),
  ADD KEY `Foreign Key` (`Bus_Reg_No`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Bus_Card_No`),
  ADD KEY `Bus_Reg_No_FK` (`Bus_Reg_No`) USING BTREE,
  ADD KEY `Bus_Serial_No_Fk` (`Bus_Serial_No`) USING BTREE;

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Bus_Serial_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`Driver_DLN`) REFERENCES `driver` (`Driving_Lic_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bus_ibfk_2` FOREIGN KEY (`Serial_No`) REFERENCES `route` (`Bus_Serial_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `Foreign Key` FOREIGN KEY (`Bus_Reg_No`) REFERENCES `bus` (`Bus_Reg_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_fk_1` FOREIGN KEY (`Bus_Reg_No`) REFERENCES `bus` (`Bus_Reg_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`Bus_Reg_No`) REFERENCES `bus` (`Bus_Reg_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`Bus_Serial_No`) REFERENCES `route` (`Bus_Serial_No`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

