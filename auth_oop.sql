-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 03:42 PM
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
-- Database: `auth_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(1, 'Faiyaz Rahman', 'faiyaz@gmail.com', '$2y$10$vUAHNTka4eTvuCpcdVTGXuSeVwzjIiJATq2ty1pJ5Ik4J5IzAG8F6'),
(2, 'Azad', 'azad@gmail.com', '$2y$10$jAjs.FiShnw5DK8YLwm9BeVN8xb7MVfI0KRtLL1Xa6R2/uiVDKyf6'),
(3, 'Pranto', 'pranto@gmail.com', '$2y$10$roazjvtQ9eyDW9dYRuKHoesJTcc6WMcN/rg2lc4KXsinx/i0MQIvi'),
(4, 'admin', 'admin@gmail.com', '$2y$10$SvHFMBL7BXcba1CKX5vASO.8eqgbmcwJQBHYLTtkov.N/UoO1Zfoe'),
(5, 'Arnob', 'arnob@gmail.com', '$2y$10$yRxAqVWO/fJ7Z8BUmwn82eICkUlDW2Uv3S0U/Kc1IUcOf6vQpj2qC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
