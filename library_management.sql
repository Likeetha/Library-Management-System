-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2020 at 07:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `books_details`
--

CREATE TABLE `books_details` (
  `Book_Id` varchar(6) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Edition` varchar(100) NOT NULL,
  `Cost` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_details`
--

INSERT INTO `books_details` (`Book_Id`, `Title`, `Author`, `Edition`, `Cost`, `Quantity`) VALUES
('ISN001', 'A Dictionary of Computer Science', 'Andrew Butterfield', '1st', 990, 2),
('ISN002', 'Python programming', 'john zelle', '3rd', 880, 10),
('ISN003', 'Think Perl 6', 'Allen B.Downey', '1st', 780, 20),
('ISN004', 'Creative Coding', 'Josh Caldwell', '1st', 999, 5),
('ISN005', 'C Programming', 'BalaguruSwamy', '5th', 900, 20),
('isn011', 'MYSQL', 'UN KNOW', '6TH', 800, 10);

-- --------------------------------------------------------

--
-- Table structure for table `issue_details`
--

CREATE TABLE `issue_details` (
  `Book_Id` varchar(6) NOT NULL,
  `Student_Id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_details`
--

INSERT INTO `issue_details` (`Book_Id`, `Student_Id`) VALUES
('isn001', 'usn001'),
('isn002', 'usn002'),
('isn004', 'usn006'),
('isn001', 'usn002'),
('isn005', 'isn004'),
('isn002', 'isn004'),
('isn003', 'isn004'),
('isn001', 'isn005');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `Student_Id` varchar(6) NOT NULL,
  `Name` varchar(111) NOT NULL,
  `Contact` varchar(111) NOT NULL,
  `Course` varchar(111) NOT NULL,
  `Year` varchar(111) NOT NULL,
  `Semester` varchar(111) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`Student_Id`, `Name`, `Contact`, `Course`, `Year`, `Semester`, `password`) VALUES
('isn004', 'larry', '647879874', 'BCA', '2015', 'III sem', 'asd'),
('isn005', 'leo', '809678567', 'M.Sc', '2020', 'VII sem', 'jkl'),
('isn006', 'ferry', '647879459', 'M.Tech', '2018', 'V sem', 'fgh'),
('isn009', 'leo', '809678567', 'M.Sc', '2018', 'VI sem', 'mnb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books_details`
--
ALTER TABLE `books_details`
  ADD PRIMARY KEY (`Book_Id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`Student_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
