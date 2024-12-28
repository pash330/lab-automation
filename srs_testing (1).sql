-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2024 at 12:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srs_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_type`, `date_added`) VALUES
('33232332', 'tv', 'hgcfjdgfjfggfnhhgbfgggf', 'tv', '2024-12-05 20:06:54'),
('P675BBE757', 'tv', 'hdbjsvgghgsf', 'ffsssssssssssssss', '2024-12-13 04:56:21'),
('P675D139DD', 'tv', 'the display of this tv is  very durable it is water prof', 'telivision', '2024-12-14 05:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `testing_id` varchar(12) NOT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `testing_type` varchar(255) DEFAULT NULL,
  `testing_performed` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `result` enum('Passed','Failed','Pending') DEFAULT 'Pending',
  `status` enum('Pending','In Progress','Completed') DEFAULT 'Pending',
  `tester_name` varchar(255) DEFAULT NULL,
  `revision` enum('1','2','3') DEFAULT '1',
  `next_step` enum('Remake','CPRI Approval','Further Testing') DEFAULT 'Further Testing',
  `date_conducted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`testing_id`, `product_id`, `testing_type`, `testing_performed`, `remarks`, `result`, `status`, `tester_name`, `revision`, `next_step`, `date_conducted`) VALUES
('T67520F16DCA', '33232332', 'dispaly quality', 'hhgbvgzcxgggggggggggggggggggg', 'hjhhhghrryhbh', 'Failed', 'Pending', 'hammad', '1', 'CPRI Approval', '2024-12-05 20:37:42'),
('T675BBEC7C6B', 'P675BBE757', 'jhhjghghgngg', 'hghgtnjnggff', 'bgbggfgb', '', 'Pending', 'shayan', '1', 'CPRI Approval', '2024-12-13 04:57:43'),
('T675D1326E6A', '33232332', 'dispaly quality', 'display built test', 'display built quality is so good', '', 'Pending', 'sufiyan', '1', 'CPRI Approval', '2024-12-14 05:09:58'),
('T675D134DC1C', '33232332', 'dispaly quality', 'display built test', 'display built quality is so good', '', 'Pending', 'sufiyan', '1', 'CPRI Approval', '2024-12-14 05:10:37'),
('T675D1352D17', '33232332', 'dispaly quality', 'display built test', 'display built quality is so good', '', 'Pending', 'sufiyan', '1', 'CPRI Approval', '2024-12-14 05:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('CPRI','SRS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'Bridge', '$2y$10$2N/sWfQvrVazjs6/w31kzuTWncwyhOJ6.2NriiagwQc8FuNnv8d9y', 'CPRI'),
(2, 'shayan', '$2y$10$RZaSkRkTJtTTXzCNUTkEMe3FWsnrMXZ5h5JPVXoeJkKT22CsxXSzu', 'SRS'),
(5, 'sufiyan', '$2y$10$47pJD/u.p2w5VxmqWWYIpOqIqkopa2G1P.QRkqy5RhXOaNZaOFUlG', 'SRS'),
(6, 'hammad_007rashid', '$2y$10$4DIIdDS2rhFBoocy7R4gnOvZNWfgqSPeNWocgwHQQRZtGHwdER.O.', 'CPRI'),
(7, 'pashminazehra2@gmail.com', '$2y$10$RzTWJW.xBQ7PN7ZJNaBE9O6faLCrUyebz/kGscQrVtZ7DQ6fOo4Sy', 'CPRI'),
(8, 'elevatenetwork12', '$2y$10$qDxb0AFlAJjh/Hk2k6KxSuXl1clpnuYUIwwqpFWaQ/GT2qz04AI0i', 'SRS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`testing_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
