-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql312.infinityfree.com
-- Generation Time: Jun 30, 2025 at 06:39 AM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39183935_kunjani`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '$2y$10$xfVKEeTTmthtzgY3Y6R4KetGAHYUkDJunkTitHIEFk08Pw8cClvA2');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `buyer_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`buyer_id`, `user_id`, `address`, `profile_photo`) VALUES
(1, 'mathew@gmail.com', '32 Downer Street', 'uploads/buyers/6842f75f7f8b1_blacMan2.png'),
(6, 'other@gmail.com', '44 Cecil Road', 'uploads/buyers/6861dbc4b44f3_asianMan1.png'),
(7, 'register@gmail.com', '67 Bellmoore Crescent', 'uploads/buyers/68625a00cd533_blacMan2.png'),
(8, 'john@gmail.com', 'Unknown De Bron Road Stellenryk', 'uploads/buyers/68625e11b72d4_cape flats lower tower.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `buyer_id`, `order_date`, `total_amount`) VALUES
(11, 1, '2025-06-29 20:50:56', '600.00'),
(12, 6, '2025-06-29 21:03:51', '350.00'),
(13, 7, '2025-06-30 05:34:40', '240.00'),
(14, 8, '2025-06-30 05:54:19', '250.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `seller_id`, `price`) VALUES
(13, 11, 29, 11, '600.00'),
(14, 12, 10, 2, '50.00'),
(15, 12, 31, 2, '300.00'),
(16, 13, 32, 2, '240.00'),
(17, 14, 23, 11, '250.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_sold` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `seller_id`, `category`, `name`, `description`, `price`, `image`, `is_sold`) VALUES
(10, 2, 'Health & Lifestyle', 'Toy blocks', 'Building blocks', '50.00', 'uploads/products/68423731ccdc2_toy1.png', 1),
(22, 11, 'Fashion', 'School bag', 'Grey Sketchers Backpack', '200.00', 'uploads/products/6861dc18cdf8c_bag1.png', 0),
(23, 11, 'Fashion', 'Cartoon Shirt', 'Funky holiday shirt', '250.00', 'uploads/products/6861dc62cf068_shirt1.png', 1),
(24, 11, 'Fashion', 'Silk Shirt', 'Soft sage green formal shirt', '450.00', 'uploads/products/6861dd1c2b8c2_dressShirt.png', 0),
(26, 11, 'Fashion', 'checked Jacket', 'Black and White Checked jacket', '600.00', 'uploads/products/6861ddb54c84f_jacket.png', 0),
(27, 11, 'Sports & Fitness', 'Multifunction Bench', 'Steel Gym Bench', '1800.00', 'uploads/products/6861de4619d6d_gym.png', 0),
(28, 11, 'Health & Lifestyle', 'Order Me', 'For order demo purposes', '300.00', 'uploads/products/6861debda2761_orderMe.png', 0),
(29, 11, 'Health & Lifestyle', 'Order Me', 'For order demo purposes', '600.00', 'uploads/products/6861dee31d270_orderMe.png', 1),
(30, 11, 'Electronics', 'Order Me', 'For order demo purposes', '200.00', 'uploads/products/6861df3e1de38_orderMe.png', 0),
(31, 2, 'Lekker Food', 'Order Me 2', 'Order demo ', '300.00', 'uploads/products/6861e060aa11d_orderMe2.png', 1),
(32, 2, 'Fashion', 'Order Me 2', 'Order demo ', '240.00', 'uploads/products/6861e07db14a4_orderMe2.png', 1),
(33, 2, 'Electronics', 'Headphones', 'Premium Bluetooth Headphones', '250.00', 'uploads/products/6861e0c56a5bf_headphones1.png', 0),
(34, 2, 'Garden & Outdoor', 'Outdoor Spade', 'Builder\'s Quality spade', '100.00', 'uploads/products/6861e0f8df8e4_spade1.png', 0),
(35, 2, 'Health & Lifestyle', 'Face cleanser', 'Salicylic face cleanser', '300.00', 'uploads/products/6861e129745d4_skinProduct1.png', 0),
(36, 2, 'Health & Lifestyle', 'Shower rack', 'Corner aluminum shower rack', '80.00', 'uploads/products/6861e18146f0a_home1.png', 0),
(37, 2, 'Lekker Food', 'Pronutro', 'The best flavour!', '50.00', 'uploads/products/6861e1bb96745_food1.png', 0),
(38, 2, 'Home & Braai', 'Braai', 'Charcoal Braaier', '300.00', 'uploads/products/6861e1dd3f829_braai1.png', 0),
(39, 2, 'Home & Braai', 'Toy block set', 'Set of wooden building blocks', '70.00', 'uploads/products/6861e2b2675a5_toy1.png', 0),
(40, 12, 'Lekker Food', 'Stanley Flask', 'Maroon Stanley Hot & Cold Flask', '1200.00', 'uploads/products/6861e3a6943f6_drink.png', 0),
(42, 13, 'Fashion', 'K-way Jacket', 'Blue Insulated Jacket XL', '1200.00', 'uploads/products/68626074707cd_jacket.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `user_id`, `address`, `profile_photo`) VALUES
(2, 'mathew@gmail.com', '67 Bellmoore Crescent', 'uploads/6841d6c1007e5_asianMan1.png'),
(11, 'other@gmail.com', '44 Cecil Road', 'uploads/6861dbfd77758_asianMan1.png'),
(12, 'another@gmail.com', '32 Downer Street', 'uploads/6861e326e898a_whiteWoman1.png'),
(13, 'john@gmail.com', 'Unknown Goede Hoop Avenue Morgenster Heights', 'uploads/68625f2ed56f7_cape flats outside link between 2 radio sites.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `email`, `password`) VALUES
('Another', 'User', 'another@gmail.com', '$2y$10$lN4YUo3ldDQ/yZN/VmfiIetA46aTt3vyxSQL1CSlwfptVrCB2H.zK'),
('Promote', 'Buyer', 'buyer@gmail.com', '$2y$10$rJyFHEpa6jS429OLND6DEe9l5byXaV60tBOQdFu8JmMT7gV1WqF7m'),
('Delete', 'Me', 'delete@gmail.com', '$2y$10$cKBphg2IskVGKwmYa5q45edJ/nCSXEA/GeXwxURvLIxD9z9xbFNIe'),
('John', 'Steenhuisen', 'john@gmail.com', '$2y$10$ZNfAt8GdV0E7nfOramynOevxEtyuZXehRzBLOkfavAH/U8lyhBaZ2'),
('Mathew', 'Steenkamp', 'mathew@gmail.com', '$2y$10$mUkl8jkx.kHz6/7Yzg/wM.1f4.3nS0ra/mN0j2e3/jeFUPiHJLx8q'),
('Other', 'User', 'other@gmail.com', '$2y$10$E5Wd45wcHWvsLt504ir0W.pv0kZGj8Gb2hbcrwXffrYAzRqP314ey'),
('Register', 'Me', 'register@gmail.com', '$2y$10$eqo.3goLXPh.Jzpdz.68cufr1e0HwQTUXSAjqqWLSPN4.p8Q1IlZm'),
('Promote', 'Seller', 'seller@gmail.com', '$2y$10$DLg/rrnGK09mCYtA51ztuu4RlS7UEnRvr7Kb4jmy7gj6JBewX7KnW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`buyer_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `buyer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyers`
--
ALTER TABLE `buyers`
  ADD CONSTRAINT `buyers_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_fk_buyer` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`buyer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`buyer_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_fk_seller` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_fk_seller` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`) ON DELETE CASCADE;

--
-- Constraints for table `sellers`
--
ALTER TABLE `sellers`
  ADD CONSTRAINT `sellers_fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
