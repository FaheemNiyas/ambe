-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 12:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts_module`
--

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `credit_amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `credit_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `customer_name`, `credit_amount`, `description`, `credit_date`, `due_date`, `payment_type`) VALUES
(32, 'testtt11', 25450.00, 'Debt test', '2023-12-24', '2023-12-26', 'cheque'),
(36, 'testtt11', 5600.00, 'Debt test', '2023-12-19', '2023-12-27', 'bank_deposit'),
(37, 'testtt11', 950.00, 'Debt test', '2023-12-28', '2024-01-04', 'bank_deposit'),
(38, 'Cust', 2500.00, 'credCust', '2023-12-28', '2024-01-05', 'cheque'),
(39, 'Cust', 2500.00, 'credCust', '2023-12-28', '2024-01-05', 'cheque'),
(40, 'Cust', 2500.00, 'credCust', '2023-12-28', '2024-01-05', 'cheque'),
(41, 'test', 10000.00, 'Debt testtest', '2023-12-28', '2023-12-29', 'cash'),
(42, 'test', 1500.00, 'Final Test', '2024-01-07', '2024-01-09', 'cash'),
(43, 'Cust', 25000.00, 'credCust', '2024-01-17', '2024-01-19', 'cash'),
(44, 'test', 25000.00, 'test', '2024-01-17', '2024-01-18', 'cash'),
(45, 'test', 2500.00, 'test', '2024-01-18', '2024-01-20', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `credit_income`
--

CREATE TABLE `credit_income` (
  `id` int(11) NOT NULL,
  `credit_date` date DEFAULT NULL,
  `repayment_amount` decimal(10,2) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_income`
--

INSERT INTO `credit_income` (`id`, `credit_date`, `repayment_amount`, `customer_name`) VALUES
(7, '2023-12-26', 1600.00, 'testtt11'),
(8, '2023-12-28', 1000.00, 'testtt11'),
(9, '2023-12-28', 1000.00, 'testtt11'),
(10, '2023-12-28', 1000.00, 'testtt11'),
(13, '2023-12-28', 2500.00, 'Cust'),
(14, '2023-12-28', 1000.00, 'Cust'),
(15, '2023-12-28', 5000.00, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `cus_name` varchar(255) DEFAULT NULL,
  `cus_email` varchar(255) DEFAULT NULL,
  `cus_mob` varchar(20) DEFAULT NULL,
  `cus_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `cus_name`, `cus_email`, `cus_mob`, `cus_code`) VALUES
(2, 'testtt11', 'test@test.com', '123456789', 'tet21'),
(4, 'test', 'test@testmail.com', '123456789', 'test1122'),
(5, 'Cust', 'cust@custmail.com', '123456', 'cust123');

-- --------------------------------------------------------

--
-- Table structure for table `daily_balance`
--

CREATE TABLE `daily_balance` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `balance_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_balance`
--

INSERT INTO `daily_balance` (`id`, `date`, `balance_amount`) VALUES
(28, '2024-01-14', 85142.15),
(29, '2024-01-18', 32327.15),
(35, '2024-01-15', 85142.15),
(40, '2024-01-16', 56642.15),
(44, '2024-01-17', 47327.15),
(77, '2023-12-18', 3162.15),
(79, '2023-11-18', 18182.15),
(81, '2023-11-12', 0.00),
(83, '2023-11-13', 3000.00),
(85, '2023-11-14', 7000.00),
(87, '2023-11-15', 8200.00),
(89, '2023-11-16', 9200.00),
(91, '2023-11-17', 8908.00),
(94, '2023-11-19', 18182.15),
(96, '2023-11-20', 14682.15),
(98, '2023-11-21', 4162.15),
(100, '2023-11-22', -75837.85),
(102, '2023-11-23', -48837.85),
(104, '2023-11-24', -48837.85),
(106, '2023-11-25', 3162.15),
(108, '2023-11-26', 3162.15),
(110, '2023-11-27', 3162.15),
(112, '2023-11-28', 3162.15),
(114, '2023-11-29', 3162.15),
(116, '2023-11-30', 3162.15),
(118, '2023-12-01', 3162.15),
(120, '2023-12-02', 3162.15),
(122, '2023-12-03', 3162.15),
(124, '2023-12-04', 3162.15),
(126, '2023-12-05', 3162.15),
(128, '2023-12-06', 3162.15),
(130, '2023-12-07', 3162.15),
(132, '2023-12-08', 3162.15),
(134, '2023-12-09', 3162.15),
(136, '2023-12-10', 3162.15),
(138, '2023-12-11', 3162.15),
(140, '2023-12-12', 3162.15),
(142, '2023-12-13', 3162.15),
(144, '2023-12-14', 3162.15),
(146, '2023-12-15', 3162.15),
(148, '2023-12-16', 3162.15),
(150, '2023-12-17', 3162.15),
(153, '2023-12-19', 3162.15),
(155, '2023-12-20', 18162.15),
(157, '2023-12-21', 18162.15),
(159, '2023-12-22', 83162.15),
(161, '2023-12-23', 83162.15),
(163, '2023-12-24', 89662.15),
(165, '2023-12-25', 89662.15),
(167, '2023-12-26', 89662.15),
(169, '2023-12-27', 89662.15),
(171, '2023-12-28', 89662.15),
(173, '2023-12-29', 89662.15),
(175, '2023-12-30', 89662.15),
(177, '2023-12-31', 89662.15),
(179, '2024-01-01', 89662.15),
(181, '2024-01-02', 89662.15),
(183, '2024-01-03', 89662.15),
(185, '2024-01-04', 89662.15),
(187, '2024-01-05', 89662.15),
(189, '2024-01-06', 89662.15),
(191, '2024-01-07', 85142.15),
(193, '2024-01-08', 85142.15),
(195, '2024-01-09', 85142.15),
(197, '2024-01-10', 85142.15),
(199, '2024-01-11', 85142.15),
(201, '2024-01-12', 85142.15),
(203, '2024-01-13', 85142.15),
(210, '2024-01-19', 22327.15),
(212, '2024-01-20', 22327.15);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `date`, `description`, `amount`) VALUES
(2, '2023-11-18', 'donation', 200.00),
(4, '2023-11-17', 'Driller', 160.00),
(5, '2023-11-17', 'tgdhv', 132.00),
(6, '0000-00-00', 'Expanse', 17.50),
(7, '2023-11-18', 'test', 15.00),
(8, '2023-11-18', 'testt11', 502.50),
(9, '2023-11-18', 'test3', 102.35),
(10, '2023-11-18', 'testt', 150.00),
(11, '2023-11-20', 'testt', 1500.00),
(12, '2023-11-20', 'test1', 500.00),
(13, '2023-11-20', 'test20', 1000.00),
(14, '2023-11-20', 'faheem', 500.00),
(15, '2023-11-21', 'testuu', 520.00),
(16, '2023-11-21', 'expense', 10000.00),
(17, '2023-11-22', 'expense', 80000.00),
(18, '2023-11-23', 'puchas', 8000.00),
(19, '2023-12-20', 'expense', 15000.00),
(20, '2023-12-22', 'Expense', 25000.00),
(21, '2024-01-07', 'FinalTest', 1000.00),
(22, '2024-01-07', 'FinalTest2', 3520.00),
(23, '2023-11-15', 'test', 300.00),
(24, '2023-11-16', 'test', 1500.00),
(25, '2023-11-13', 'intest', 2000.00),
(26, '2023-11-14', 'intest', 1000.00),
(27, '2023-11-19', 'closed', 0.00),
(29, '2023-11-24', 'closed', 0.00),
(30, '2023-11-25', 'intest', 8000.00),
(31, '2024-01-16', 'testout', 30000.00),
(32, '2024-01-17', 'expense', 25000.00),
(33, '2024-01-18', 'testtt', 15000.00),
(34, '2024-01-19', 'ttt', 10000.00),
(35, '2024-01-16', 'jv to im', 27000.00);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `date`, `description`, `amount`) VALUES
(2, '2023-11-16', 'test1', 2500.00),
(9, '2023-11-18', 'test', 10244.00),
(19, '2023-11-23', 'Income', 10000.00),
(20, '2023-11-23', 'intes', 25000.00),
(21, '2023-12-22', 'income', 90000.00),
(23, '2023-12-20', 'Income', 30000.00),
(24, '2023-12-24', 'testttt', 6500.00),
(27, '2023-11-15', 'test', 1500.00),
(28, '2023-11-13', 'intest', 5000.00),
(29, '2023-11-14', 'testin', 5000.00),
(30, '2023-11-19', 'closed', 0.00),
(32, '2023-11-24', 'closed', 0.00),
(33, '2023-11-25', 'intest', 60000.00),
(34, '2024-01-16', 'testin', 1500.00),
(35, '2024-01-17', 'test', 15685.00),
(36, '2024-01-16', 'jv to wa', 27000.00);

-- --------------------------------------------------------

--
-- Table structure for table `lenders`
--

CREATE TABLE `lenders` (
  `id` int(11) NOT NULL,
  `lender_name` varchar(255) DEFAULT NULL,
  `lender_email` varchar(255) DEFAULT NULL,
  `lender_phone` varchar(20) DEFAULT NULL,
  `lender_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lenders`
--

INSERT INTO `lenders` (`id`, `lender_name`, `lender_email`, `lender_phone`, `lender_code`) VALUES
(1, 'Test', 'test@testmail.com', '123456789', 'test1'),
(4, 'Faheem', 'faheemniyas11@gmail.com', '777782751', 'fhm');

-- --------------------------------------------------------

--
-- Table structure for table `lender_repayment`
--

CREATE TABLE `lender_repayment` (
  `id` int(11) NOT NULL,
  `repayment_date` date DEFAULT NULL,
  `repayment_amount` decimal(10,2) DEFAULT NULL,
  `lender_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lender_repayment`
--

INSERT INTO `lender_repayment` (`id`, `repayment_date`, `repayment_amount`, `lender_name`) VALUES
(1, '2024-01-02', 1000.00, 'Test'),
(2, '2024-01-09', 1000.00, 'Test'),
(3, '2024-01-11', 1000.00, 'Test'),
(4, '2024-01-03', 150.00, 'Faheem');

-- --------------------------------------------------------

--
-- Table structure for table `lending`
--

CREATE TABLE `lending` (
  `id` int(11) NOT NULL,
  `lender_name` varchar(255) DEFAULT NULL,
  `lend_amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lend_date` date DEFAULT NULL,
  `repayment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lending`
--

INSERT INTO `lending` (`id`, `lender_name`, `lend_amount`, `description`, `lend_date`, `repayment_date`, `payment_type`) VALUES
(11, 'Test', 9500.00, 'Lend Test', '2024-01-03', '2024-01-10', 'bank_deposit'),
(12, 'Faheem', 500.00, 'Lend Fah', '2024-01-02', '2024-01-09', 'cash'),
(13, 'Test', 15000.00, 'tesstt', '2024-01-17', '2024-01-19', 'cheque'),
(15, 'Test', 1200.00, 'tessst', '2024-01-17', '2024-01-18', 'cash'),
(16, 'Test', 15203.00, 'lend test', '2024-01-17', '2024-01-23', 'cash'),
(17, 'Test', 1500.00, 'test', '2024-01-17', '2024-01-22', 'cash'),
(18, 'Test', 3000.00, 'test', '2024-01-17', '2024-01-28', 'cash'),
(19, 'Test', 6552.00, 'Lend Test', '2024-01-15', '2024-01-23', 'cheque');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `repassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `repassword`) VALUES
(21, 'admin', 'tajalkenz@gmail.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_income`
--
ALTER TABLE `credit_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_balance`
--
ALTER TABLE `daily_balance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lenders`
--
ALTER TABLE `lenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lender_repayment`
--
ALTER TABLE `lender_repayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lending`
--
ALTER TABLE `lending`
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
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `credit_income`
--
ALTER TABLE `credit_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_balance`
--
ALTER TABLE `daily_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `lenders`
--
ALTER TABLE `lenders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lender_repayment`
--
ALTER TABLE `lender_repayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lending`
--
ALTER TABLE `lending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
