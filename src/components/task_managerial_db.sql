-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 04:18 PM
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
-- Database: `task_managerial_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `taskcategories`
--

CREATE TABLE `taskcategories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasklog`
--

CREATE TABLE `tasklog` (
  `TaskLogID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `CompletionStatus` enum('Completed On Time','Completed Late') NOT NULL,
  `CompletionDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasklog`
--

INSERT INTO `tasklog` (`TaskLogID`, `TaskID`, `UserID`, `CompletionStatus`, `CompletionDate`) VALUES
(1, 1, 0, 'Completed Late', '2024-03-08 07:58:51'),
(2, 2, 0, 'Completed Late', '2024-03-08 07:58:51'),
(3, 3, 0, 'Completed Late', '2024-03-08 07:58:51'),
(4, 4, 0, 'Completed Late', '2024-03-08 07:58:51'),
(5, 5, 0, 'Completed Late', '2024-03-08 07:58:51'),
(6, 6, 0, 'Completed Late', '2024-03-08 07:58:51'),
(7, 7, 0, 'Completed Late', '2024-03-08 07:58:51'),
(8, 1, 0, 'Completed Late', '2024-03-08 07:58:53'),
(9, 2, 0, 'Completed Late', '2024-03-08 07:58:53'),
(10, 3, 0, 'Completed Late', '2024-03-08 07:58:53'),
(11, 4, 0, 'Completed Late', '2024-03-08 07:58:53'),
(12, 5, 0, 'Completed Late', '2024-03-08 07:58:53'),
(13, 6, 0, 'Completed Late', '2024-03-08 07:58:53'),
(14, 7, 0, 'Completed Late', '2024-03-08 07:58:53'),
(15, 1, 0, 'Completed Late', '2024-03-08 07:58:53'),
(16, 2, 0, 'Completed Late', '2024-03-08 07:58:53'),
(17, 3, 0, 'Completed Late', '2024-03-08 07:58:53'),
(18, 4, 0, 'Completed Late', '2024-03-08 07:58:53'),
(19, 5, 0, 'Completed Late', '2024-03-08 07:58:53'),
(20, 6, 0, 'Completed Late', '2024-03-08 07:58:53'),
(21, 7, 0, 'Completed Late', '2024-03-08 07:58:53'),
(22, 1, 0, 'Completed Late', '2024-03-08 07:58:53'),
(23, 2, 0, 'Completed Late', '2024-03-08 07:58:53'),
(24, 3, 0, 'Completed Late', '2024-03-08 07:58:53'),
(25, 4, 0, 'Completed Late', '2024-03-08 07:58:53'),
(26, 5, 0, 'Completed Late', '2024-03-08 07:58:53'),
(27, 6, 0, 'Completed Late', '2024-03-08 07:58:53'),
(28, 7, 0, 'Completed Late', '2024-03-08 07:58:53'),
(29, 1, 0, 'Completed Late', '2024-03-08 08:09:56'),
(30, 2, 0, 'Completed Late', '2024-03-08 08:09:56'),
(31, 3, 0, 'Completed Late', '2024-03-08 08:09:56'),
(32, 4, 0, 'Completed Late', '2024-03-08 08:09:56'),
(33, 5, 0, 'Completed Late', '2024-03-08 08:09:56'),
(34, 6, 0, 'Completed Late', '2024-03-08 08:09:56'),
(35, 7, 0, 'Completed Late', '2024-03-08 08:09:56'),
(36, 1, 0, 'Completed Late', '2024-03-08 08:16:33'),
(37, 2, 0, 'Completed Late', '2024-03-08 08:16:33'),
(38, 3, 0, 'Completed Late', '2024-03-08 08:16:33'),
(39, 4, 0, 'Completed Late', '2024-03-08 08:16:33'),
(40, 5, 0, 'Completed Late', '2024-03-08 08:16:33'),
(41, 6, 0, 'Completed Late', '2024-03-08 08:16:33'),
(42, 7, 0, 'Completed Late', '2024-03-08 08:16:33'),
(43, 1, 0, 'Completed Late', '2024-03-08 08:17:30'),
(44, 2, 0, 'Completed Late', '2024-03-08 08:17:30'),
(45, 3, 0, 'Completed Late', '2024-03-08 08:17:30'),
(46, 4, 0, 'Completed Late', '2024-03-08 08:17:30'),
(47, 5, 0, 'Completed Late', '2024-03-08 08:17:30'),
(48, 6, 0, 'Completed Late', '2024-03-08 08:17:30'),
(49, 7, 0, 'Completed Late', '2024-03-08 08:17:30'),
(50, 1, 0, 'Completed Late', '2024-03-08 08:18:26'),
(51, 2, 0, 'Completed Late', '2024-03-08 08:18:26'),
(52, 3, 0, 'Completed Late', '2024-03-08 08:18:26'),
(53, 4, 0, 'Completed Late', '2024-03-08 08:18:26'),
(54, 5, 0, 'Completed Late', '2024-03-08 08:18:26'),
(55, 6, 0, 'Completed Late', '2024-03-08 08:18:26'),
(56, 7, 0, 'Completed Late', '2024-03-08 08:18:26'),
(57, 1, 0, 'Completed Late', '2024-03-08 08:18:31'),
(58, 2, 0, 'Completed Late', '2024-03-08 08:18:31'),
(59, 3, 0, 'Completed Late', '2024-03-08 08:18:31'),
(60, 4, 0, 'Completed Late', '2024-03-08 08:18:31'),
(61, 5, 0, 'Completed Late', '2024-03-08 08:18:31'),
(62, 6, 0, 'Completed Late', '2024-03-08 08:18:31'),
(63, 7, 0, 'Completed Late', '2024-03-08 08:18:31'),
(64, 1, 0, 'Completed Late', '2024-03-08 08:18:32'),
(65, 2, 0, 'Completed Late', '2024-03-08 08:18:32'),
(66, 3, 0, 'Completed Late', '2024-03-08 08:18:32'),
(67, 4, 0, 'Completed Late', '2024-03-08 08:18:32'),
(68, 5, 0, 'Completed Late', '2024-03-08 08:18:32'),
(69, 6, 0, 'Completed Late', '2024-03-08 08:18:32'),
(70, 7, 0, 'Completed Late', '2024-03-08 08:18:32'),
(71, 1, 0, 'Completed Late', '2024-03-08 08:18:51'),
(72, 2, 0, 'Completed Late', '2024-03-08 08:18:51'),
(73, 3, 0, 'Completed Late', '2024-03-08 08:18:51'),
(74, 4, 0, 'Completed Late', '2024-03-08 08:18:51'),
(75, 5, 0, 'Completed Late', '2024-03-08 08:18:51'),
(76, 6, 0, 'Completed Late', '2024-03-08 08:18:51'),
(77, 7, 0, 'Completed Late', '2024-03-08 08:18:51'),
(78, 1, 0, 'Completed Late', '2024-03-08 08:18:52'),
(79, 2, 0, 'Completed Late', '2024-03-08 08:18:52'),
(80, 3, 0, 'Completed Late', '2024-03-08 08:18:52'),
(81, 4, 0, 'Completed Late', '2024-03-08 08:18:52'),
(82, 5, 0, 'Completed Late', '2024-03-08 08:18:52'),
(83, 6, 0, 'Completed Late', '2024-03-08 08:18:52'),
(84, 7, 0, 'Completed Late', '2024-03-08 08:18:52'),
(85, 1, 0, 'Completed Late', '2024-03-08 08:18:52'),
(86, 2, 0, 'Completed Late', '2024-03-08 08:18:52'),
(87, 3, 0, 'Completed Late', '2024-03-08 08:18:52'),
(88, 4, 0, 'Completed Late', '2024-03-08 08:18:52'),
(89, 5, 0, 'Completed Late', '2024-03-08 08:18:52'),
(90, 6, 0, 'Completed Late', '2024-03-08 08:18:52'),
(91, 7, 0, 'Completed Late', '2024-03-08 08:18:52'),
(92, 1, 0, 'Completed Late', '2024-03-08 08:18:52'),
(93, 2, 0, 'Completed Late', '2024-03-08 08:18:52'),
(94, 3, 0, 'Completed Late', '2024-03-08 08:18:52'),
(95, 4, 0, 'Completed Late', '2024-03-08 08:18:52'),
(96, 5, 0, 'Completed Late', '2024-03-08 08:18:52'),
(97, 6, 0, 'Completed Late', '2024-03-08 08:18:52'),
(98, 7, 0, 'Completed Late', '2024-03-08 08:18:52'),
(99, 1, 0, 'Completed Late', '2024-03-08 08:19:04'),
(100, 2, 0, 'Completed Late', '2024-03-08 08:19:04'),
(101, 3, 0, 'Completed Late', '2024-03-08 08:19:04'),
(102, 4, 0, 'Completed Late', '2024-03-08 08:19:04'),
(103, 5, 0, 'Completed Late', '2024-03-08 08:19:04'),
(104, 6, 0, 'Completed Late', '2024-03-08 08:19:04'),
(105, 7, 0, 'Completed Late', '2024-03-08 08:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `TaskID` int(11) NOT NULL,
  `TaskName` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DueDate` datetime DEFAULT NULL,
  `Priority` enum('Low','Medium','High') DEFAULT 'Medium',
  `Status` enum('To Do','In Progress','Completed') DEFAULT 'To Do',
  `AssignedUserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`TaskID`, `TaskName`, `Description`, `dateCreated`, `DueDate`, `Priority`, `Status`, `AssignedUserID`) VALUES
(1, 'Complete Project Proposal', 'Write a detailed project proposal including scope, objectives, and timeline.', '2024-03-04 09:28:44', '2024-03-10 00:00:00', 'High', 'To Do', 1),
(2, 'Prepare Presentation Slides', 'Create slides for the upcoming project presentation.', '2024-03-04 09:28:44', '2024-03-15 00:00:00', 'Medium', 'In Progress', 1),
(3, 'Review Code Changes', 'Review and test recent code changes before deployment.', '2024-03-04 09:28:44', '2024-03-12 00:00:00', 'High', 'To Do', 1),
(4, 'Client Meeting', 'Attend the scheduled meeting with the client to discuss project updates.', '2024-03-04 09:28:44', '2024-03-18 00:00:00', 'Medium', 'In Progress', 1),
(5, 'Bug Fixing', 'Investigate and fix reported bugs in the software.', '2024-03-04 09:28:44', '2024-03-14 00:00:00', 'High', 'To Do', 1),
(6, 'Database Optimization', 'Optimize database queries for better performance.', '2024-03-04 09:28:44', '2024-03-20 00:00:00', 'Medium', 'To Do', 1),
(7, 'Documentation', 'Document the project progress and updates for future reference.', '2024-03-04 09:28:44', '2024-03-22 00:00:00', 'Low', 'To Do', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usercomments`
--

CREATE TABLE `usercomments` (
  `CommentID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `CommentText` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `JoinDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `Password`, `FirstName`, `LastName`, `DateOfBirth`, `JoinDate`) VALUES
(1, 'calebtoromo', 'calebtoromo@gmail.com', '0797223505', 'caleb', 'toromo', '2011-07-06', '2024-02-22 13:55:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taskcategories`
--
ALTER TABLE `taskcategories`
  ADD PRIMARY KEY (`CategoryID`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tasklog`
--
ALTER TABLE `tasklog`
  ADD PRIMARY KEY (`TaskLogID`),
  ADD KEY `fk_task_log_task` (`TaskID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`TaskID`),
  ADD KEY `AssignedUserID` (`AssignedUserID`);

--
-- Indexes for table `usercomments`
--
ALTER TABLE `usercomments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `TaskID` (`TaskID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `taskcategories`
--
ALTER TABLE `taskcategories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasklog`
--
ALTER TABLE `tasklog`
  MODIFY `TaskLogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `TaskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usercomments`
--
ALTER TABLE `usercomments`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasklog`
--
ALTER TABLE `tasklog`
  ADD CONSTRAINT `fk_task_log_task` FOREIGN KEY (`TaskID`) REFERENCES `tasks` (`TaskID`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`AssignedUserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `usercomments`
--
ALTER TABLE `usercomments`
  ADD CONSTRAINT `usercomments_ibfk_1` FOREIGN KEY (`TaskID`) REFERENCES `tasks` (`TaskID`),
  ADD CONSTRAINT `usercomments_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
