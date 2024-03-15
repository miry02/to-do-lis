-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2024 at 06:40 AM
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
-- Database: `react-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time_posted` timestamp NOT NULL DEFAULT current_timestamp(),
  `deadline` timestamp NOT NULL DEFAULT (current_timestamp() + interval 4 hour)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `task`, `time_posted`, `deadline`) VALUES
(1, 'Test', '2024-03-14 14:40:44', '0000-00-00 00:00:00'),
(2, 'Complete Assignments', '2024-03-14 14:59:52', '0000-00-00 00:00:00'),
(3, 'Project seminars', '2024-03-14 18:55:02', '2024-03-14 22:55:02'),
(5, 'tasks', '2024-03-14 18:58:21', '2024-03-14 22:58:21'),
(8, 'hello', '2024-03-14 19:27:39', '2024-03-14 23:27:39'),
(9, '11', '2024-03-14 19:27:48', '2024-03-14 23:27:48'),
(10, 'health', '2024-03-14 19:34:17', '2024-03-01 21:00:00'),
(11, 'workable ', '2024-03-14 19:34:29', '2024-03-14 23:34:29'),
(12, 'work schedule', '2024-03-14 19:35:26', '2024-03-14 23:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` int(10) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', 0, 1234567890, '2024-03-14 12:58:32', '2024-03-14 12:58:32'),
(2, 'Jane Smith', 'jane@example.com', 0, 9876543210, '2024-03-14 12:58:32', '2024-03-14 12:58:32'),
(3, 'Caleb Kipkemboi Toromo', 'calebtoromo@gmail.com', 1234567, 797223505, '2024-03-14 13:52:36', '2024-03-14 13:52:36'),
(4, 'Rita Litole', 'tkipkemboi@kabarak.ac.ke', 0, 797223505, '2024-03-14 14:10:13', '2024-03-14 14:10:13'),
(5, 'Ibrah', 'ibrahimmohammed@kabarak.ac.ke', 0, 748339466, '2024-03-14 16:23:52', '2024-03-14 16:23:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
