-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 03:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `MerchantRequestID` varchar(255) DEFAULT NULL,
  `CheckoutRequestID` varchar(255) DEFAULT NULL,
  `ResponseCode` int(11) DEFAULT NULL,
  `ResponseDescription` varchar(255) DEFAULT NULL,
  `CustomerMessage` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `order_id`, `MerchantRequestID`, `CheckoutRequestID`, `ResponseCode`, `ResponseDescription`, `CustomerMessage`) VALUES
(1, '661be1a6e12c5', '', '', 0, '', ''),
(2, '661be2d69d026', '', '', 0, '', ''),
(3, '661be2d69dd3f', '', '', 0, '', ''),
(4, '661be2d69da88', '', '', 0, '', ''),
(5, '661bf0339a107', '', '', 0, '', ''),
(6, '661bf03819579', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Samsung J7', 'The phone has versions with 1.5 GB of RAM and 16GB internal storage that can be expanded with a MicroSD card up to 128GB.', 14000.00, 'android-1814556_640.jpg'),
(2, 'Samsung Galaxy Tab A 9.7', 'The Galaxy Tab A 9.7 equipped models are available in WiFi-only and 4G/LTE & WiFi variants. Storage ranges from 16 GB to 32 GB depending on the model, with a microSDXC card slot for expansion up to 512 GB. ', 16589.00, 'black-4766996_640.jpg'),
(3, 'Samsung Galaxy A5', 'Samsung Galaxy A5 is based on Android 4.4 and packs 16GB of inbuilt storage that can be expanded via microSD card (up to 64GB)\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\noptio, eaque rerum! ', 23649.00, 'mobile-2104351_640.jpg'),
(4, 'Samsung Galaxy S5', 'The S5 includes a 16 megapixel (5312×2988) rear-facing camera, which offers 4K (2160p) video recording at 30 fps, phase detection autofocus (which Samsung claims to be able to focus in around 0.3 seconds), real-time HDR photos and video', 32799.00, 'phone-1231122_640.jpg'),
(5, 'Samsung Galaxy S6 EDGE+', 'Best described as a \"super-sized\" Galaxy S6 edge, the Samsung Galaxy S6 edge+ differs with a bigger, 5.7-inch display (a 0.6 inch increase), larger 3000mAh battery (a 400mAh increase), and bigger overall size', 53199.00, 'phone-3460802_640.jpg'),
(6, 'Samsung Galaxy S3  Mini', 'The Galaxy S III Mini technological specifications include a 4-inch Super AMOLED display, a dual-core processor running at 1 GHz with 1 GB of RAM, a 5-megapixel rear camera, and a front-facing VGA camera for video calls or selfies.', 24899.00, 'pink-791315_1280.jpg'),
(7, 'Samsung Galaxy S4', '5 inch Full HD Super, 441 ppi, AMOLED (1920 x 1080) display\r\n13 Mega pixel Auto Focus camera with Flash & Zero Shutter Lag.New features include: ‘Dual Camera’: so you can take simultaneous photos and videos using both the rear and front cameras, then blend the pictures together', 29999.00, 'samsung-1899839_640.jpg'),
(8, 'Samsung Galaxy S10', 'The Galaxy S10s sensors are embedded beneath the display, so it has more room for a wider screen, with a 19:9 aspect ratio. Push your viewing experience to the edge with the Galaxy S10', 41299.00, 'samsung-4721539_640.jpg'),
(9, 'Samsung Galaxy Note 3', 'The phone comes with a 5.70-inch touchscreen display offering a resolution of 1080x1920 pixels. Samsung Galaxy Note 3 is powered by a 1.9GHz octa-core processor. It comes with 3GB of RAM', 45099.00, 'samsung-4721546_640.jpg'),
(10, 'Samsung Galaxy Book 3', 'The 15.6\" display features a Full HD 1920 x 1080 resolution. The built-in Wi-Fi 6 (802.11ax) support allows you to connect to compatible high-speed wireless networks for smooth video streaming and file transfer experiences', 116000.00, 'samsung-4721550_640.jpg'),
(11, 'Samsung Galaxy Note 9', 'Details ; Design. Stunning 6.4-inch display. Bright yellow S-Pen on Blue variant not for everybody. Heavy for a smartphone, but sleek. ; Camera. AI shooting modes', 48139.00, 'samsung-4728704_640.jpg'),
(12, 'Samsung Galaxy Note Edge', 'The Galaxy Note Edge is a phablet at heart: it packs a 5.6-inch 1440 x 2560-pixel (Quad HD) display. It also got a powerful Snapdragon 805 system chip and a 16-megapixel OIS camera.', 42919.00, 'samsung-galaxY NOTE EDGE.jpg'),
(13, 'Samsung Galaxy S3', 'Samsung Galaxy S3 features a 4.8-inch Super AMOLED capacitive touchscreen with 720 x 1280 pixel resolution (306 ppi ). Samsung Galaxy S3 comes with 16/32/64 GB storage versions and runs on the Exynos 4412 quad core processor. Samsung Galaxy S3 runs on Android 4.0.', 17539.00, 'smartphone-325479_640.jpg'),
(14, 'Samsung Galaxy S7', 'Specifications ; CPU Speed 2.3GHz, 1.6GHz ; Size (Main Display) 5.1\" (129.2mm) ; Main Camera - Resolution Dual Pixel 12.0 MP ; Weight (g) 152 ;', 57129.00, 'smartphone-5056431_640.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_order`
--

CREATE TABLE `products_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_order`
--

INSERT INTO `products_order` (`id`, `order_id`, `product_id`, `product_name`, `product_description`, `product_price`, `product_image`, `quantity`) VALUES
(1, '661be1a6e12c5', 1, 'Product 1', 'Description of Product 1', 10.99, 'product1.jpg', 2),
(2, '661be1a6e12c5', 2, 'Product 2', 'Description of Product 2', 19.99, 'product2.jpg', 1),
(3, '661be2d69d026', 1, 'Product 1', 'Description of Product 1', 10.99, 'product1.jpg', 2),
(4, '661be2d69d026', 2, 'Product 2', 'Description of Product 2', 19.99, 'product2.jpg', 1),
(5, '661be2d69dd3f', 1, 'Product 1', 'Description of Product 1', 10.99, 'product1.jpg', 2),
(6, '661be2d69dd3f', 2, 'Product 2', 'Description of Product 2', 19.99, 'product2.jpg', 1),
(7, '661be2d69da88', 1, 'Product 1', 'Description of Product 1', 10.99, 'product1.jpg', 2),
(8, '661be2d69da88', 2, 'Product 2', 'Description of Product 2', 19.99, 'product2.jpg', 1),
(9, '661bf0339a107', 1, 'Product 1', 'Description of Product 1', 10.99, 'product1.jpg', 2),
(10, '661bf0339a107', 2, 'Product 2', 'Description of Product 2', 19.99, 'product2.jpg', 1),
(11, '661bf03819579', 1, 'Product 1', 'Description of Product 1', 10.99, 'product1.jpg', 2),
(12, '661bf03819579', 2, 'Product 2', 'Description of Product 2', 19.99, 'product2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '1234567890', '$2y$10$Cn/do2TCrg/Slash1H9bBurogaxN588Z8uedfyN54oqicIFhRsKmW', 'admin'),
(2, 'Stacy Nafula', 's.stacyotwoma50@gmail.com', '254746377813', '$2y$10$Adf9e65fF4Cs3MCE8PMVvu0BV.MwPPnn60Jo2V/L3iKkmJe0JCKPS', 'user'),
(3, 'Stacy Nafula', 's.stacyotwoma50@gmail.com', '254746377813', '$2y$10$nhBT6NPOgERyKZ0qu/ONoe.HT/RbeuRLf4QgT.vhu//sVLQrUB7h6', 'user'),
(4, 'Stacy Nafula', 's.stacyotwoma50@gmail.com', '254746377813', '$2y$10$f.eW61oV5D0y1JNhnkVYVe3/UUU78pU82jOOdZ/fDrbTWh52cQ/M6', 'user'),
(5, 'Stacy Nafula', 's.stacyotwoma50@gmail.com', '254746377813', '$2y$10$3kWVKc1l0IXfkPPWH52QoeQw0snC2pJjCEpag6VIm9qQEAFy5tKWO', 'user'),
(6, 'Stacy Nafula', 's.stacyotwoma50@gmail.com', '254746377813', '$2y$10$TozqLA3AOUdDQCog5pPph.zhQlt73WnMrLzPLI7AYKS982AHbjH72', 'user'),
(7, 'Stafula', 's.stacyotwoma50@gmail.com', '+254746377813', '$2y$10$xTEmrX6NKyW4QdM/7onKQ.sieSVTehofz65vmbAAPJtJIhtYjow7W', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_order`
--
ALTER TABLE `products_order`
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
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_order`
--
ALTER TABLE `products_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
