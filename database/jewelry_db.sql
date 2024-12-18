-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 04:29 AM
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
-- Database: `jewelry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `ip_address`, `date_created`) VALUES
(4, 2, 2, 1, 2, 1, 3500, '', '2020-11-12 17:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `date_created`) VALUES
(2, 'Necklace', '								<font color=\"#000000\">Best of the best.</font>							', '0000-00-00 00:00:00'),
(3, 'Earrings', 'Best of the best.', '0000-00-00 00:00:00'),
(4, 'Bangles', 'Best of the best.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `color` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `product_id`, `color`, `date_created`) VALUES
(6, 6, 'White', '2024-11-18 06:48:22'),
(7, 6, 'Orange', '2024-11-18 06:48:22'),
(8, 7, 'Silver', '2024-11-18 06:49:24'),
(9, 7, 'White', '2024-11-18 06:49:24'),
(10, 7, 'Multi Color', '2024-11-18 06:49:24'),
(11, 8, 'Multi Color', '2024-11-18 06:50:00'),
(12, 9, 'Multi Color', '2024-11-18 06:50:58'),
(13, 10, 'Multi Color', '2024-11-18 06:51:24'),
(14, 11, 'Multi Color', '2024-11-18 06:51:49'),
(15, 12, 'Multi Color', '2024-11-18 06:52:20'),
(16, 13, 'Multi Color', '2024-11-18 06:53:13'),
(17, 14, 'Multi Color', '2024-11-18 06:54:49'),
(18, 15, 'Multi Color', '2024-11-18 06:57:29'),
(19, 16, 'Multi Color', '2024-11-18 06:58:39'),
(20, 17, 'Multi Color', '2024-11-18 06:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `user_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_id`, `user_id`, `delivery_address`, `status`, `date_created`) VALUES
(3, 'scvqan75DeJlBSw8', 1, 'Unjha\r\n', 0, '2024-11-18 07:00:00'),
(4, 'nu5GCPZoBRD6xafH', 1, 'Unjha', 0, '2024-12-10 08:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `colour_id` int(30) NOT NULL,
  `size_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `colour_id`, `size_id`, `qty`, `price`, `date_created`) VALUES
(4, 3, 8, 11, 17, 1, 150, '2024-11-18 07:00:00'),
(5, 4, 8, 11, 17, 1, 150, '2024-12-10 08:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `item_code` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `item_code`, `price`, `date_created`) VALUES
(6, 4, 'Bangle', 'Best.', '7nUIJQuiRNT5rmaF', 450, '2024-11-18 06:48:22'),
(7, 4, 'Bangle1', 'Best.', 'ztOCA3cpIElxPS4X', 500, '2024-11-18 06:49:24'),
(8, 3, 'Earring', '								Best.							', 'TKn7XcC5wazDQfAR', 150, '2024-11-18 06:50:00'),
(9, 3, 'Earring1', 'Best.', 'WcntzSdYwr8HNQuU', 350, '2024-11-18 06:50:58'),
(10, 2, 'Chokers ', 'Best.', 'MULZYuzSN72jfhCp', 500, '2024-11-18 06:51:24'),
(11, 2, 'Chokers1', 'Best.', 'a9LwJqYcHUZSW3n8', 450, '2024-11-18 06:51:49'),
(12, 2, 'Chokers2', 'Best.', 'Zb8OQvnlW6Y7xtf5', 350, '2024-11-18 06:52:20'),
(13, 4, 'Bangle2', 'Best.', 'SdGu3wD7E0HkL18t', 600, '2024-11-18 06:53:13'),
(14, 4, 'Bangle3', 'Best.', 'orzKYCs4aPTlwRjJ', 500, '2024-11-18 06:54:49'),
(15, 3, 'Earring3', '								Best.							', 'U4A0ZGbT6lJ2nhiu', 150, '2024-11-18 06:57:29'),
(16, 3, 'Earrings4', 'Best.', 'MzuYKRd8G0tihPQb', 250, '2024-11-18 06:58:39'),
(17, 2, 'Chokers4', 'Best.', 'Yy2oGZaCFqOBgJtA', 400, '2024-11-18 06:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `product_id`, `size`, `date_created`) VALUES
(9, 6, '4.0', '2024-11-18 06:48:22'),
(10, 6, '4.4', '2024-11-18 06:48:22'),
(11, 6, '4.2', '2024-11-18 06:48:22'),
(12, 6, '4.6', '2024-11-18 06:48:22'),
(13, 7, '4.0', '2024-11-18 06:49:24'),
(14, 7, '4.4', '2024-11-18 06:49:24'),
(15, 7, '4.2', '2024-11-18 06:49:24'),
(16, 7, '4.6', '2024-11-18 06:49:24'),
(17, 8, '-', '2024-11-18 06:50:00'),
(18, 9, '-', '2024-11-18 06:50:58'),
(19, 10, '', '2024-11-18 06:51:24'),
(20, 11, '-', '2024-11-18 06:51:49'),
(21, 12, '-', '2024-11-18 06:52:20'),
(22, 13, '4.0', '2024-11-18 06:53:13'),
(23, 13, '4.4', '2024-11-18 06:53:13'),
(24, 13, '4.2', '2024-11-18 06:53:13'),
(25, 13, '4.6', '2024-11-18 06:53:13'),
(26, 14, '4.0', '2024-11-18 06:54:49'),
(27, 14, '4.4', '2024-11-18 06:54:49'),
(28, 14, '4.2', '2024-11-18 06:54:49'),
(29, 14, '4.6', '2024-11-18 06:54:49'),
(30, 15, '-', '2024-11-18 06:57:29'),
(31, 16, '-', '2024-11-18 06:58:39'),
(32, 17, '-', '2024-11-18 06:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+12354654787', 'Sample', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '', '2020-11-11 15:35:19'),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
