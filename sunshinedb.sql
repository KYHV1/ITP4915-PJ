-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2025 at 09:15 AM
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
-- Database: `sunshinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(20) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `preferredLanguage` varchar(10) DEFAULT 'en',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerName`, `email`, `phone`, `address`, `preferredLanguage`, `createdAt`, `updatedAt`) VALUES
('1', 'John Doe', 'john.doe@example.com', '123-456-7890', '123 Maple Street', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('2', 'Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Avenue', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('3', 'Bob Johnson', 'bob.johnson@example.com', '555-123-4567', '789 Pine Road', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('4', 'Alice Brown', 'alice.brown@example.com', '222-333-4444', '321 Cedar Lane', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('5', 'Charlie Wilson', 'charlie.wilson@example.com', '999-888-7777', '654 Birch Blvd', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `customer_interactions`
--

CREATE TABLE `customer_interactions` (
  `interactionID` varchar(20) NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `interactionType` enum('Email','Phone','Meeting','SocialMedia','SupportTicket') NOT NULL,
  `interactionDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_interactions`
--

INSERT INTO `customer_interactions` (`interactionID`, `customerID`, `interactionType`, `interactionDate`, `details`) VALUES
('INT1', '1', 'Email', '2025-06-04 03:50:03', 'Customer inquired about Teddy Bear availability'),
('INT2', '2', 'SupportTicket', '2025-06-04 03:50:03', 'Issue with RC Car delivery');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(50) NOT NULL,
  `role` varchar(50) DEFAULT 'staff',
  `lastLogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `password`, `department`, `role`, `lastLogin`) VALUES
('1001', 'pass1', 'sales', 'staff', NULL),
('1002', 'pass2', 'IT', 'staff', NULL),
('1003', 'pass3', 'haman resources', 'staff', NULL),
('1004', 'pass4', 'customer service', 'staff', NULL),
('1055', 'pass5', 'sales', 'staff', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` varchar(20) NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `feedbackType` enum('Survey','Review','SocialMedia') NOT NULL,
  `feedbackDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `content` text NOT NULL,
  `rating` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackID`, `customerID`, `feedbackType`, `feedbackDate`, `content`, `rating`) VALUES
('FB1', '3', 'Review', '2025-06-04 03:50:03', 'Loved the Building Blocks Set!', 5),
('FB2', '4', 'Survey', '2025-06-04 03:50:03', 'Satisfied with the delivery process', 4);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventoryID` varchar(20) NOT NULL,
  `productID` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `lowStockThreshold` int(10) DEFAULT 10,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventoryID`, `productID`, `quantity`, `lowStockThreshold`, `lastUpdated`) VALUES
('1', '1', 100, 10, '2025-06-04 03:50:02'),
('2', '2', 200, 20, '2025-06-04 03:50:02'),
('3', '3', 300, 30, '2025-06-04 03:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `inward_goods`
--

CREATE TABLE `inward_goods` (
  `recordID` varchar(16) NOT NULL,
  `productID` varchar(16) NOT NULL,
  `quantity` int(11) NOT NULL,
  `supplierID` varchar(16) NOT NULL,
  `receivedBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logistics`
--

CREATE TABLE `logistics` (
  `trackingID` varchar(20) NOT NULL,
  `orderID` varchar(20) NOT NULL,
  `currentLocation` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `estimatedDelivery` date DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logistics`
--

INSERT INTO `logistics` (`trackingID`, `orderID`, `currentLocation`, `status`, `estimatedDelivery`, `lastUpdated`) VALUES
('TRK102', '102', 'Warehouse B', 'In Transit', '2025-06-12', '2025-06-04 03:50:03'),
('TRK103', '103', 'Customer Address', 'Delivered', '2025-06-15', '2025-06-04 03:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` varchar(20) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `status` enum('Pending','Processing','Shipped','Delivered','Cancelled') NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `productID` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `trackingID` varchar(20) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `orderDate`, `requiredDate`, `status`, `customerID`, `productID`, `quantity`, `trackingID`, `updatedAt`) VALUES
('101', '2025-06-01', '2025-06-10', 'Pending', '1', '1', 3, NULL, '2025-06-04 03:50:02'),
('102', '2025-06-02', '2025-06-12', 'Shipped', '2', '2', 5, 'TRK102', '2025-06-04 03:50:02'),
('103', '2025-06-03', '2025-06-15', 'Delivered', '3', '3', 2, 'TRK103', '2025-06-04 03:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` varchar(20) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplierID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `description`, `price`, `supplierID`) VALUES
('1', 'Teddy Bear', 'Soft and cuddly plush teddy bear', 24.99, 'SUP1'),
('2', 'Remote Control Car', 'Fast RC car with rechargeable battery', 49.99, 'SUP2'),
('3', 'Building Blocks Set', 'Colorful interlocking blocks for creative play', 34.99, 'SUP1'),
('4', 'Dollhouse', 'Multi-story dollhouse with furniture accessories', 79.99, 'SUP3'),
('5', 'Puzzle Game', 'Challenging puzzle set for brain exercise', 19.99, 'SUP2');

-- --------------------------------------------------------

--
-- Table structure for table `production_schedule`
--

CREATE TABLE `production_schedule` (
  `scheduleID` varchar(20) NOT NULL,
  `orderID` varchar(20) NOT NULL,
  `productID` varchar(20) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `resourcesAssigned` text NOT NULL,
  `status` enum('Planned','InProgress','Completed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `production_schedule`
--

INSERT INTO `production_schedule` (`scheduleID`, `orderID`, `productID`, `startDate`, `endDate`, `resourcesAssigned`, `status`) VALUES
('SCH1', '101', '1', '2025-06-02', '2025-06-08', 'Machine A, 2 Workers', 'Planned'),
('SCH2', '102', '2', '2025-06-03', '2025-06-10', 'Machine B, 3 Workers', 'InProgress');

-- --------------------------------------------------------

--
-- Table structure for table `servicerequest`
--

CREATE TABLE `servicerequest` (
  `Id` int(11) NOT NULL,
  `Customer` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Description` text DEFAULT NULL,
  `Status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` varchar(20) NOT NULL,
  `supplierName` varchar(100) NOT NULL,
  `contactEmail` varchar(100) NOT NULL,
  `contactPhone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `productCategories` text DEFAULT NULL,
  `performanceRating` decimal(3,1) DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `supplierName`, `contactEmail`, `contactPhone`, `address`, `productCategories`, `performanceRating`) VALUES
('SUP1', 'ToyWorld Inc.', 'contact@toyworld.com', '111-222-3333', '100 Industrial Way', 'Plush Toys, Building Blocks', 4.5),
('SUP2', 'TechToys Ltd.', 'info@techtoys.com', '444-555-6666', '200 Tech Park', 'RC Toys, Puzzles', 4.2),
('SUP3', 'PlayHaven Co.', 'support@playhaven.com', '777-888-9999', '300 Play Lane', 'Dollhouses', 4.0);

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `logID` varchar(20) NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`logID`, `userID`, `action`, `logDate`, `details`) VALUES
('LOG1', '1001', 'Login', '2025-06-04 03:50:03', 'Employee logged in successfully'),
('LOG2', NULL, 'Low Stock Alert', '2025-06-04 03:50:03', 'ProductID 1 quantity below threshold');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `trainingID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `trainingType` enum('Online','InPerson','Blended') NOT NULL,
  `trainingDate` date NOT NULL,
  `description` text NOT NULL,
  `completionStatus` enum('NotStarted','InProgress','Completed') DEFAULT 'NotStarted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`trainingID`, `employeeID`, `trainingType`, `trainingDate`, `description`, `completionStatus`) VALUES
('TRN1', '1001', 'Online', '2025-06-10', 'Inventory Management Course', 'NotStarted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer_interactions`
--
ALTER TABLE `customer_interactions`
  ADD PRIMARY KEY (`interactionID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `inward_goods`
--
ALTER TABLE `inward_goods`
  ADD PRIMARY KEY (`recordID`);

--
-- Indexes for table `logistics`
--
ALTER TABLE `logistics`
  ADD PRIMARY KEY (`trackingID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `trackingID` (`trackingID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `supplierID` (`supplierID`);

--
-- Indexes for table `production_schedule`
--
ALTER TABLE `production_schedule`
  ADD PRIMARY KEY (`scheduleID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `servicerequest`
--
ALTER TABLE `servicerequest`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`),
  ADD UNIQUE KEY `contactEmail` (`contactEmail`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`trainingID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servicerequest`
--
ALTER TABLE `servicerequest`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_interactions`
--
ALTER TABLE `customer_interactions`
  ADD CONSTRAINT `customer_interactions_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE;

--
-- Constraints for table `logistics`
--
ALTER TABLE `logistics`
  ADD CONSTRAINT `logistics_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`trackingID`) REFERENCES `logistics` (`trackingID`) ON DELETE SET NULL;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`) ON DELETE SET NULL;

--
-- Constraints for table `production_schedule`
--
ALTER TABLE `production_schedule`
  ADD CONSTRAINT `production_schedule_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE,
  ADD CONSTRAINT `production_schedule_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Constraints for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD CONSTRAINT `system_logs_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `employee` (`employeeID`) ON DELETE SET NULL;

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `training_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
