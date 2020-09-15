-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 11:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2019-02-28 14:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `table_services`
--

CREATE TABLE `table_services` (
  `id` int(11) NOT NULL,
  `paragraph` text NOT NULL,
  `type` varchar(599) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_services`
--

INSERT INTO `table_services` (`id`, `paragraph`, `type`) VALUES
(23, 'Out of Town\r\nTravelling beyond Cebu City? JD car rental Transport Services offers convenient transportation services in and out of town including tourist destinations in nearby cities and municipalities within Region VII.			\r\n									 	\r\n							\r\n\r\n										', 'services'),
(24, 'Family Outings\r\nTravelling with family and relatives? We are a dependable service that you can rely on for all occasions. Our experienced drivers are responsible that will get you to your desired destination safely and on time.				\r\n									 	\r\n									\r\n										', 'services'),
(25, 'Birthdays\r\nWhether you are celebrating a birthday or special occasion and are looking for the best travel experience that includes a quick and efficient transport service, then JD car rental Transport Services can help.				\r\n\r\n\r\n										', 'services');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(46, 'solanokentlouie@gmail.com', 7, 'jan 1 2019', 'feb 1 2020', 'please ', 1, '2019-05-10 11:00:37'),
(47, 'solanokentlouie@gmail.com', 7, 'feb 1 2020', 'march 1 2021', 'please', 1, '2019-05-10 11:01:33'),
(48, '123456@gmail.com', 7, 'dec 1 2018', 'jan 1 2019', 'please', 1, '2019-05-10 11:03:03'),
(49, 'crisblasco@gmail.com', 7, 'ddgsd', 'sdfdsfsd', 'dsfssfzd', 1, '2019-05-11 01:13:14'),
(50, 'solanokent@gmail.com', 9, '5-11-2019', '5-13-2019', 'hh', 2, '2019-05-11 03:18:27'),
(51, 'solanokentlouie1@gmail.com', 9, '5-11-2019', '5-13-2019', 'hhhh', 1, '2019-05-11 03:21:20'),
(52, 'ejmanugas@gmail.com', 7, 'dffd', '30', 'fdsfsdf', 1, '2019-05-17 08:16:05'),
(53, 'ejmanugas@gmail.com', 9, '17-05-2019', '18-05-2019', 'sample', 1, '2019-05-17 12:06:58'),
(54, 'james.manugas@Textsample.com', 7, '29-02-2019', '01-01-2019', 'fuck this shit', 1, '2019-06-07 12:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'TOYOTA', '2019-04-30 13:30:56', NULL),
(6, 'yamaha', '2019-05-10 11:05:03', NULL),
(7, 'honda', '2019-05-11 03:28:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'louie', 'solanokentlouie@ymail.com', '09226637168', 'thank you', '2019-05-01 16:10:45', 1),
(2, 'cris blasco', 'solanokentlouie@gmail.com', '123456', 'asdasdasdasd', '2019-05-03 17:25:50', 1),
(3, 'cris blasco', 'solanokentlouie@gmail.com', '123456', 'sadasdasdasdasdad', '2019-05-03 17:40:51', NULL),
(4, 'cris pogi', 'benlouie223@gmail.com', '2342342342', 'asa dapit inyu', '2019-05-03 17:42:47', 1),
(5, 'jasper', 'benlouie223@gmail.com', '09226637168', 'ewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrwwew\r\nrew\r\nrew\r\nrew\r\nr\r\nwer\r\newr\r\newr\r\nwer\r\newr\r\newr\r\newr\r\nwerwererrrrrrr', '2019-05-03 17:43:44', 1),
(6, 'alk aghd;f ', '1234@yahoo.com', '132345679', 'yes i want to ', '2019-05-10 10:28:57', NULL),
(7, 'eee', 'ee@gmail.com', '123456', 'werwerewrw', '2019-05-10 10:31:52', NULL),
(8, 'jasper  elvasw', 'benlouie223@gmail.com', '09226637168', 'ffgfgfgfgfsbsfb', '2019-05-11 03:33:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', 'All reservations are based on a vehicle category and not a certain car model. In case of no availability for a confirmed reservation, JD car rental reserves the right to offer a vehicle of bigger category to the customer with no extra charge.\r\n									 	\r\n																			 	\r\n			 \r\n\r\n										'),
(2, 'Privacy Policy', 'privacy', '					Your privacy is very important for JD Car Rental. We want you to feel secure when sending your personal data to us. Personal data constitutes any information that can be used for identification of a person. Personal data is data that JD Car Rental collects for provision of its services, conclusion of the agreement, identification of a person, contacting a person, or for another purpose stated below. Processing of personal data is required for effective provision of the services of JD Car Rental, and without provision of personal data the use of the services provided by JD Car Rental is not possible. \r\nWe have taken technical and organizational measures to ensure protection of your data from loss, change, theft or access by third persons. Data can be accessed only by persons authorized for that. '),
(3, 'About Us ', 'aboutus', '	JD Car Rental is now one of the most trusted and remarkable tourist transport service provider in Region VII that offers affordable transportation, comfort and safety.\r\n\r\n'),
(11, 'Our Services', 'services', '				\r\n									 	\r\n				\r\n\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(4, 'solanokentlouie@gmail.com', 'its really great .. we have a lot of fun.', '2019-04-23 07:49:44', 1),
(5, 'solanokentlouie@ymail.com', 'I LOVE YOU', '2019-05-02 00:48:57', 1),
(6, 'crisblasco@gmail.com', 'thank you.', '2019-05-04 05:43:19', 1),
(7, 'crisblasco@gmail.com', 'thank you.', '2019-05-04 05:44:11', NULL),
(8, 'crisblasco@gmail.com', 'oks', '2019-05-11 01:05:48', 1),
(9, 'solanokentlouie1@gmail.com', 'sdgdsgsgfgsgg', '2019-05-11 03:33:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(12) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(21, 'erwin', 'ejmanugas@gmail.com', 'df3abe152b31198523e6766c9c6c8d0f', '639569941240', NULL, 'lap lap', 'cebu', 'dlsjsldfj', '2019-05-17 07:53:06', '2019-06-07 09:31:43'),
(22, 'testing', 'james.manugas@Textsample.com', 'df3abe152b31198523e6766c9c6c8d0f', '639236948643', NULL, 'babag', 'cebu', 'philippines', '2019-06-07 12:10:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(7, 'HIACE COMMUTER', 4, 'Toyota Commuter is a 4-door 15-seater van based on front-engine layout and rear wheel drive system. It has a 70-liter fuel tank.\r\n\r\nArrive in exquisite style with sheer size and elegant stance of the Hiace. Wide sliding doors wrap its passengers for an airy interior feel and a sleek exterior design.\r\nMore to ease. Relax in a lofty cabin with plush moquette seats contoured to every passenger and rear air conditioning system to keep everyone at ease. And with generous amounts of storage and luggage space, the Hiace allows you to haul anything you need, anywhere.4848', 230, 'Diesel', 2017, 15, 'hiace1jpg.jpg', 'hiace2jpg.jpg', 'hiace3jpg.png', 'hiace4jpg.jpg', '', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, 1, 1, '2019-04-30 13:50:12', '2019-05-10 10:26:21'),
(8, 'COASTER', 5, 'If you are looking for a spacious vehicle that can comfortably accommodate up to 27 to 28 persons, you need not look any further. We are offering our services to safely and securely transport you and your group to any points here in Cebu City as well as anywhere in the island of Cebu.', 3000, 'Premium', 2018, 28, 'coaster.png', 'coaster1.jpg', 'coaster2.jpg', 'coaster3.jpg', '', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2019-05-03 14:51:14', '2019-05-10 11:14:41'),
(9, 'HIACE GRANDIA', 5, 'There are three variants for the Hiace: the Commuter Deluxe which is a 15-seater, GL Grandia which is a 12-seater, and GL Grandia Tourer which is a 14-seater. Meaning, the interior is configured according to what variant you want to get. However, all three trims come with a dashboard-mounted shift stick. The GL Grandia variants come with a touchscreen display.\r\n\r\nThe all-new Hiace is powered by a 2.8-liter 1GD diesel engine, which is the same engine found in the Fortuner. The power output depends on the variant; 176 hp and 420 Nm of tourque for the Commuter Deluxe; 176 hp and 450 Nm of torque for the GL Grandia; and 163 hp and 420 Nm of torque for the GL Grandia Tourer. The Toyota Hiace comes equipped with either a 6-speed manual or 6-speed automatic transmission.', 1500, 'Premium', 2019, 15, 'tgrandia.png', 'hiace2jpg.jpg', 'h2.jpg.jpg', 'h1.jpg.jpg', '', 1, 1, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, '2019-05-03 14:55:19', '2019-05-10 11:15:07'),
(10, 'NISSAN NV350 URVAN', 4, 'The Nissan NV350 Urvan employs a clean look on the outside, with subtle lines on the side, which is a universal look for passenger and utility vans. Inside the Urvan is a simple aesthetic approach that favors comfort over style. The shift knob is positioned on the dashboard to maximize seating in the front cabin, while 360-degree air vents ensure every occupant will be cozy and comfortable. A multi-function display includes shift timing and fuel efficiency, and a lower tray with air vent keeps your things cold during the travel. At the back are 12 individual air-conditioning vents for each and every passenger.', 1700, 'Premium', 2017, 18, 'urvan.png', 'hiace2jpg.jpg', 'hiace4jpg.jpg', 'h1.jpg.jpg', '', 1, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, NULL, '2019-05-03 14:59:11', '2019-05-10 11:15:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_services`
--
ALTER TABLE `table_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tblpages` ADD FULLTEXT KEY `detail` (`detail`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_services`
--
ALTER TABLE `table_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
