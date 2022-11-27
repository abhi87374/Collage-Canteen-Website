-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2022 at 06:51 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test` (`user_id`),
  KEY `test2` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`, `p_id`) VALUES
(78, 5, 'Jeera Rice', 45, 1, 'JeeraRice.jpg', 13),
(93, 1, 'Badam Milk', 75, 1, 'badam-milk.jpg', 12),
(94, 1, 'Kadhai Paneer', 120, 1, 'kadai-paneer.jpg', 11),
(95, 1, 'Bhindi Fry', 70, 1, 'Bhindi_Fry.jpg', 16),
(96, 1, 'Roti', 7, 1, 'Roti.jpg', 15),
(97, 1, 'Navaratan Dal', 70, 1, 'Dal.jpg', 20),
(98, 1, 'Paneer Butter Masala', 130, 1, 'Paneer-butter-masala.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(12, 1, 'xyz', 'abc@def', '1234567890', 'qwertyuiop'),
(13, 1, 'gyt', 'ahsgdga@hsbcjsh.com', '12345678', 'xyz'),
(14, 1, 'A', 'ABCDE@E', '1223', 'SDFG');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(11) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `order_status`) VALUES
(12, 1, 'Deepanshu', '1234567890', 'abcd@efg.com', 'cash on delivery', 'Room No.. B-201', ', Badam Milk (1) , Kadhai Paneer (1) ', 195, '08-Oct-2022', 'completed'),
(14, 1, 'Deepanshu', '1234567890', 'abcd@efg.com', 'cash on delivery', 'Room No.. B-201,hsaguydwhefjsdlk', ', Kadhai Paneer (1) , Jeera Rice (2) ', 210, '08-Oct-2022', 'completed'),
(15, 1, 'Deepanshu', '1234567890', 'abcd@efg.com', 'cash on delivery', 'Room No.. B-201,Vivekanand Hostel', ', Kadhai Paneer (2) , Badam Milk (1) ', 315, '09-Oct-2022', 'completed'),
(16, 1, 'Deepanshu', '1234567890', 'AB@CD.com', 'cash on delivery', 'Room No.. B-201,Vivekanand Hostel', ', Kadhai Paneer (2) , Jeera Rice (1) ', 285, '12-Oct-2022', 'completed'),
(17, 1, 'fjnsfgm', '1234567890', 'abc@def', 'paytm', 'Room No.. B-201,Vivekanand Hostel', ', Kadhai Paneer (1) ', 120, '12-Oct-2022', 'completed'),
(18, 5, 'Abhikumar', '1234567890', 'abhikumar@iiitdmj.ac.in', 'paytm', 'Room No.. B-201,Vivekanand Hostel', ', Bhindi Fry (1) , Roti (4) ', 98, '12-Oct-2022', 'completed'),
(20, 5, 'Abhikumar', '123456789', 'abhikumar@iiitdmj.ac.in', 'credit card', 'Room No.. B-201,Vivekanand Hostel', ', Kadhai Paneer (1) ', 120, '12-Oct-2022', 'pending'),
(21, 5, 'Abhikumar', '1234567890', 'abhikumar@iiitdmj.ac.in', 'cash on delivery', 'Room No.. B-201,Vivekanand Hostel', ', Jeera Rice (1) ', 45, '12-Oct-2022', 'pending'),
(22, 1, 'Deepanshu', '1234567890', 'abcd@efg.com', 'credit card', 'Room No.. B-201,Vivekanand Hostel', ', Burger (1) , Paneer Butter Masala (3) , Roti (1) ', 452, '13-Oct-2022', 'completed'),
(23, 1, 'Deepanshu', '1234567890', 'abcd@efg.com', 'cash on delivery', 'Room No.. B-201,vivekanndknkf', ', Kadhai Paneer (2) , Badam Milk (1) , Chole Bhatura (2) ', 415, '15-Oct-2022', 'completed'),
(24, 1, 'Deepanshu', '1234567890', 'abcd@efg.com', 'cash on delivery', 'Room No.. B-201,vivekanndknkf', ', Kadhai Paneer (3) , Jeera Rice (2) , Navaratan Dal (1) ', 520, '16-Oct-2022', 'completed'),
(26, 10, 'abhikumar', '88829323', 'abc@123', 'cash on delivery', 'Room No.. C-419,vufbhdfuhn', ', Aalloo Paratha (4) ', 160, '26-Nov-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(11, 'Kadhai Paneer', 120, 'kadai-paneer.jpg'),
(12, 'Badam Milk', 75, 'badam-milk.jpg'),
(13, 'Jeera Rice', 45, 'JeeraRice.jpg'),
(14, 'Paneer Butter Masala', 130, 'Paneer-butter-masala.jpg'),
(15, 'Roti', 7, 'Roti.jpg'),
(16, 'Bhindi Fry', 70, 'Bhindi_Fry.jpg'),
(17, 'Chilli Paneer', 110, 'chilli-paneer.jpg'),
(18, 'Cold Drink', 45, 'cold-drink.jpg'),
(19, 'Burger', 55, 'Burger.jpg'),
(20, 'Navaratan Dal', 70, 'Dal.jpg'),
(21, 'Aalloo Paratha', 40, 'Aloo-Paratha.jpg'),
(22, 'Chole Bhatura', 50, 'CholeBhature.jpg'),
(23, 'Masala-Dosa', 50, 'masala-dosa.jpg'),
(25, 'Jeera Aallo', 60, 'Jeera-Aloo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Deepanshu', 'abcd@efg.com', '25f9e794323b453885f5181f1b624d0b', 'user'),
(2, 'Deepanshu', 'abc@def', '25f9e794323b453885f5181f1b624d0b', 'admin'),
(3, 'ABCD', 'AB@CD.com', '25f9e794323b453885f5181f1b624d0b', 'user'),
(4, 'Akshay', 'akshay@iiitdmj.ac.in', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(5, 'Abhikumar', 'abhikumar@iiitdmj.ac.in', 'ed4310cd310d84eb0106eb2261dc2577', 'user'),
(6, 'deepranjan', '21bcs072@iiitdmj.ac.in', '25f9e794323b453885f5181f1b624d0b', 'user'),
(10, 'abhikumar', 'abc@123', '25f9e794323b453885f5181f1b624d0b', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
CREATE TABLE IF NOT EXISTS `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `name`, `salary`, `position`, `image`) VALUES
(11, 'Amar', 12000, 'cleaner', 'author-1.jpg'),
(12, 'Shubham', 12000, 'cook', 'author-5.jpg'),
(13, 'Maria', 15000, 'Head cook', 'author-2.jpg'),
(14, 'Shobit', 25000, 'Manager', 'author-3.jpg'),
(15, 'Sania', 10000, 'Sweeper', 'author-6.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test2` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `test1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
