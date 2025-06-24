-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 08:30 AM
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
  `customerID` varchar(100) NOT NULL,
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
('10', 'Lisa Wong', 'lisa.wong@example.com', '987-789-6543', '505 Poplar Blvd', 'en', '2025-06-06 20:00:00', '2025-06-06 20:00:00'),
('11', 'James Taylor', 'james.taylor@example.com', '222-444-6666', '606 Magnolia Drive', 'en', '2025-06-06 20:00:00', '2025-06-06 20:00:00'),
('12', 'Sophie Martin', 'sophie.martin@example.com', '333-555-7777', '707 Sycamore Street', 'en', '2025-06-07 20:00:00', '2025-06-07 20:00:00'),
('13', 'Thomas Nguyen', 'thomas.nguyen@example.com', '888-999-0000', '808 Laurel Avenue', 'en', '2025-06-07 20:00:00', '2025-06-07 20:00:00'),
('14', 'Olivia Patel', 'olivia.patel@example.com', '555-666-7777', '909 Chestnut Lane', 'en', '2025-06-08 20:00:00', '2025-06-08 20:00:00'),
('15', 'William Garcia', 'william.garcia@example.com', '111-333-5555', '1010 Hazel Road', 'en', '2025-06-08 20:00:00', '2025-06-08 20:00:00'),
('2', 'Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Avenue', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('3', 'Bob Johnson', 'bob.johnson@example.com', '555-123-4567', '789 Pine Road', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('4', 'Alice Brown', 'alice.brown@example.com', '222-333-4444', '321 Cedar Lane', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('5', 'Charlie Wilson', 'charlie.wilson@example.com', '999-888-7777', '654 Birch Blvd', 'en', '2025-06-04 03:50:02', '2025-06-04 03:50:02'),
('6', 'Emma Davis', 'emma.davis@example.com', '111-222-3333', '101 Elm Street', 'en', '2025-06-04 20:00:00', '2025-06-04 20:00:00'),
('7', 'Michael Lee', 'michael.lee@example.com', '444-555-6666', '202 Spruce Avenue', 'en', '2025-06-04 20:00:00', '2025-06-04 20:00:00'),
('8', 'Sarah Kim', 'sarah.kim@example.com', '777-888-9999', '303 Willow Road', 'en', '2025-06-05 20:00:00', '2025-06-05 20:00:00'),
('9', 'David Chen', 'david.chen@example.com', '123-321-4567', '404 Ash Lane', 'en', '2025-06-05 20:00:00', '2025-06-05 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_interactions`
--

CREATE TABLE `customer_interactions` (
  `interactionID` varchar(100) NOT NULL,
  `customerID` varchar(100) NOT NULL,
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
  `employeeID` varchar(100) NOT NULL,
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
('1056', 'pass11', 'sales', 'staff', '2025-06-15 02:00:00'),
('1057', 'pass12', 'IT', 'staff', NULL),
('1058', 'pass13', 'human resources', 'manager', '2025-06-14 06:30:00'),
('1059', 'pass14', 'customer service', 'supervisor', NULL),
('1060', 'pass15', 'sales', 'analyst', '2025-06-13 01:00:00'),
('1061', 'pass16', 'IT', 'staff', NULL),
('1062', 'pass17', 'human resources', 'supervisor', '2025-06-16 03:45:00'),
('1063', 'pass18', 'customer service', 'manager', NULL),
('1064', 'pass19', 'sales', 'staff', '2025-06-12 08:00:00'),
('1065', 'pass20', 'IT', 'staff', NULL),
('1066', 'pass21', 'human resources', 'staff', '2025-06-15 00:30:00'),
('1067', 'pass22', 'customer service', 'manager', NULL),
('1068', 'pass23', 'sales', 'analyst', '2025-06-14 04:00:00'),
('1069', 'pass24', 'IT', 'staff', NULL),
('1070', 'pass25', 'human resources', 'supervisor', '2025-06-13 07:00:00'),
('1071', 'pass26', 'customer service', 'manager', NULL),
('1072', 'pass27', 'sales', 'staff', '2025-06-16 01:00:00'),
('1073', 'pass28', 'IT', 'staff', NULL),
('1074', 'pass29', 'human resources', 'staff', '2025-06-15 05:30:00'),
('1075', 'pass30', 'customer service', 'analyst', NULL),
('1076', 'pass31', 'sales', 'staff', '2025-06-14 02:00:00'),
('1077', 'pass32', 'IT', 'staff', NULL),
('1078', 'pass33', 'human resources', 'manager', '2025-06-13 03:00:00'),
('1079', 'pass34', 'customer service', 'supervisor', NULL),
('1080', 'pass35', 'sales', 'manager', '2025-06-16 06:00:00'),
('1081', 'pass36', 'IT', 'staff', NULL),
('1082', 'pass37', 'human resources', 'analyst', '2025-06-15 01:30:00'),
('1083', 'pass38', 'customer service', 'supervisor', NULL),
('1084', 'pass39', 'sales', 'staff', '2025-06-14 08:00:00'),
('1085', 'pass40', 'IT', 'staff', NULL),
('1086', 'pass41', 'human resources', 'supervisor', '2025-06-13 04:30:00'),
('1087', 'pass42', 'customer service', 'manager', NULL),
('1088', 'pass43', 'sales', 'staff', '2025-06-16 02:00:00'),
('1089', 'pass44', 'IT', 'staff', NULL),
('1090', 'pass45', 'human resources', 'analyst', '2025-06-15 03:00:00'),
('1091', 'pass46', 'customer service', 'manager', NULL),
('1092', 'pass47', 'sales', 'staff', '2025-06-14 05:00:00'),
('1093', 'pass48', 'IT', 'supervisor', NULL),
('1094', 'pass49', 'human resources', 'manager', '2025-06-13 06:30:00'),
('1095', 'pass50', 'customer service', 'staff', NULL),
('1096', 'pass51', 'sales', 'staff', '2025-06-16 00:00:00'),
('1097', 'pass52', 'IT', 'analyst', NULL),
('1098', 'pass53', 'human resources', 'manager', '2025-06-15 01:00:00'),
('1099', 'pass54', 'customer service', 'staff', NULL),
('1100', 'pass55', 'sales', 'supervisor', '2025-06-14 02:30:00'),
('1101', 'pass56', 'IT', 'manager', NULL),
('1102', 'pass57', 'human resources', 'supervisor', '2025-06-13 03:30:00'),
('1103', 'pass58', 'customer service', 'staff', NULL),
('1104', 'pass59', 'sales', 'staff', '2025-06-16 04:00:00'),
('1105', 'pass60', 'IT', 'analyst', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` varchar(100) NOT NULL,
  `customerID` varchar(100) NOT NULL,
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
  `inventoryID` varchar(100) NOT NULL,
  `productID` varchar(100) NOT NULL,
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
  `recordID` varchar(50) NOT NULL,
  `productID` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `supplierID` varchar(50) NOT NULL,
  `receivedBy` varchar(100) NOT NULL,
  `receivedDate` datetime NOT NULL,
  `batchNo` varchar(100) DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(100) DEFAULT NULL,
  `poID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logistics`
--

CREATE TABLE `logistics` (
  `trackingID` varchar(100) NOT NULL,
  `orderID` varchar(100) NOT NULL,
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
  `orderID` varchar(100) NOT NULL,
  `orderDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `status` enum('Pending','Processing','Shipped','Delivered','Cancelled') NOT NULL,
  `customerID` varchar(100) NOT NULL,
  `productID` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `trackingID` varchar(100) DEFAULT NULL,
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
-- Table structure for table `procurement`
--

CREATE TABLE `procurement` (
  `poID` varchar(50) NOT NULL,
  `supplierID` varchar(50) NOT NULL,
  `orderDate` datetime NOT NULL,
  `orderedBy` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Open',
  `remarks` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procurement_items`
--

CREATE TABLE `procurement_items` (
  `poItemID` int(11) NOT NULL,
  `poID` varchar(50) NOT NULL,
  `productID` varchar(50) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `quantityReceived` int(11) NOT NULL DEFAULT 0,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `supplierID` varchar(100) DEFAULT NULL,
  `isCanceled` tinyint(1) NOT NULL DEFAULT 0,
  `createTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `description`, `price`, `supplierID`, `isCanceled`, `createTime`) VALUES
('03553d22-8709-40f8-86b0-d6f6fc7ae222', '333', '', 333.00, NULL, 1, NULL),
('1', 'Teddy Bear', 'Soft and cuddly plush teddy bear', 24.99, 'SUP1', 0, NULL),
('114f8240-4457-4020-8006-bd5b5bbb1dd7', 'asdasd', 'sadsadasdas', 456.00, NULL, 0, NULL),
('13250230-4660-4fb1-8e1d-c6737545de19', '333', '333', 333.00, NULL, 0, NULL),
('174e89e9-766e-4d46-9a88-99eb512fc079', '333', '', 333.00, NULL, 1, NULL),
('2', 'Remote Control Car', 'Fast RC car with rechargeable battery', 49.99, 'SUP2', 0, NULL),
('21a97a80-b778-41f7-a2e5-49b9e8fc3952', '333', '333', 333.00, NULL, 0, '2025-06-18 22:02:01'),
('3', 'Building Blocks Set', 'Colorful interlocking blocks for creative play', 34.99, 'SUP1', 0, NULL),
('3295c6b6-9dad-4497-b762-94f3128874f6', 'sadas', 'sadsadas', 3.00, NULL, 0, NULL),
('4', 'Dollhouse', 'Multi-story dollhouse with furniture accessories', 79.99, 'SUP3', 0, NULL),
('4e49d72b-ccac-4105-8029-d4636ecf16e8', '1111', '', 1111.00, NULL, 0, NULL),
('5', 'Puzzle Game', 'Challenging puzzle set for brain exercise', 19.99, 'SUP2', 1, NULL),
('5597e6b0-10b8-438a-9fe2-27585cbb2d7e', '333', '', 33.00, NULL, 1, NULL),
('6', 'saddasdsa', 'sadsasadasdas', 120.00, NULL, 1, NULL),
('e2f8d22a-6f60-47ac-8e30-064557a37400', '333', '333', 33.00, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `productionID` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`productionID`, `productName`, `quantity`, `status`) VALUES
(1, 'Sample Product', 100, 'ready to ship'),
(3, 'tyuty', 123, 'pending'),
(4, 'test', 789, 'pending'),
(5, 'qwe', 123, 'in production'),
(6, 'asd', 123, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `production_schedule`
--

CREATE TABLE `production_schedule` (
  `scheduleID` varchar(100) NOT NULL,
  `orderID` varchar(100) NOT NULL,
  `productID` varchar(100) NOT NULL,
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
  `Status` varchar(32) NOT NULL,
  `AssignedTo` varchar(100) DEFAULT NULL,
  `AttachmentPath` varchar(255) DEFAULT NULL,
  `Comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicerequest`
--

INSERT INTO `servicerequest` (`Id`, `Customer`, `Date`, `Description`, `Status`, `AssignedTo`, `AttachmentPath`, `Comments`) VALUES
(1, 'Alice', '2025-06-03', 'Complaint about product', 'Pending', 'Charlie', 'C:\\Users\\ILVANE\\Desktop\\g.jpeg', 'hi'),
(2, 'Bob', '2025-06-04', 'Request for repair', 'In Progress', NULL, NULL, NULL),
(3, 'Charlie', '2025-06-05', 'General inquiry', 'Completed', NULL, NULL, NULL),
(4, 'Diana', '2025-06-02', 'Follow-up on previous service', 'Pending', NULL, NULL, NULL),
(5, 'Edward', '2025-06-01', 'Warranty information request', 'Completed', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` varchar(100) NOT NULL,
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
  `logID` varchar(100) NOT NULL,
  `userID` varchar(100) DEFAULT NULL,
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
  `trainingID` varchar(100) NOT NULL,
  `employeeID` varchar(100) NOT NULL,
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
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `fk_inward_goods_poID` (`poID`),
  ADD KEY `fk_inward_goods_productID` (`productID`);

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
-- Indexes for table `procurement`
--
ALTER TABLE `procurement`
  ADD PRIMARY KEY (`poID`),
  ADD KEY `fk_procurement_supplierID` (`supplierID`);

--
-- Indexes for table `procurement_items`
--
ALTER TABLE `procurement_items`
  ADD PRIMARY KEY (`poItemID`),
  ADD KEY `fk_procurement_items_poID` (`poID`),
  ADD KEY `fk_procurement_items_productID` (`productID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `supplierID` (`supplierID`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`productionID`);

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
-- AUTO_INCREMENT for table `procurement_items`
--
ALTER TABLE `procurement_items`
  MODIFY `poItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `productionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `inward_goods`
--
ALTER TABLE `inward_goods`
  ADD CONSTRAINT `fk_inward_goods_poID` FOREIGN KEY (`poID`) REFERENCES `procurement` (`poID`),
  ADD CONSTRAINT `fk_inward_goods_productID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

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
-- Constraints for table `procurement`
--
ALTER TABLE `procurement`
  ADD CONSTRAINT `fk_procurement_supplierID` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`);

--
-- Constraints for table `procurement_items`
--
ALTER TABLE `procurement_items`
  ADD CONSTRAINT `fk_procurement_items_poID` FOREIGN KEY (`poID`) REFERENCES `procurement` (`poID`),
  ADD CONSTRAINT `fk_procurement_items_productID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

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
