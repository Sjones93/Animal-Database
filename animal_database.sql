-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2019 at 11:36 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `orderNum` int(6) UNSIGNED NOT NULL,
  `productNum` int(6) UNSIGNED NOT NULL,
  `userNum` int(6) UNSIGNED NOT NULL,
  `orderDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`orderNum`, `productNum`, `userNum`, `orderDate`) VALUES
(1, 1, 1, '2018-11-05'),
(2, 5, 4, '2018-11-01'),
(3, 3, 3, '2018-09-02'),
(4, 4, 5, '2018-11-08'),
(5, 2, 2, '2018-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productNum` int(6) UNSIGNED NOT NULL,
  `productName` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productNum`, `productName`, `price`, `image`, `description`) VALUES
(1, 'Phoenix', '4.99', '\r\nhttps://images.pexels.com/photos/9291/nature-bird-flying-red.jpg?cs=srgb&dl=animal-beak-bird-9291.jpg&fm=jpg, https://www.pexels.com/photo/bird-flying-zoo-beak-9291/\r\n', 'The Phoenix is a long-lived bird that cyclically regenerates or is otherwise born again.'),
(2, 'Capybara', '2.99', 'https://images.pexels.com/photos/160583/capybara-group-eat-meadow-160583.jpeg?cs=srgb&dl=animals-capybara-close-up-160583.jpg&fm=jpg, https://www.pexels.com/photo/photo-of-3-capybara-standing-near-wooden-branch-and-grass-160583/', 'The capybara is the largest rodent in the world. A stocky, somewhat pig-like animal, it is characterized by a large, blunt head, heavy muzzle, short, robust legs and rudimentary tail'),
(3, 'Kangaroo', '2.99', '\r\nhttps://images.unsplash.com/photo-1520655052451-d173e1fe5f85?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&dl=marcus-byrne-590033-unsplash.jpg&s=011951efb0198f22d3fd32ae4fed3e62, \r\n', 'Kangaroos have large, powerful hind legs, large feet adapted for leaping, a long muscular tail for balance, and a small head. The females of the species have a pouch used to carry their babies.'),
(4, 'Gambian', '2.99', '\r\nhttps://images.pexels.com/photos/301448/pexels-photo-301448.jpeg?cs=srgb&dl=animal-apodemus-sylvaticus-brown-301448.jpg&fm=jpg, https://www.pexels.com/photo/animal-cute-little-mouse-301448/\r\n', 'The Gambian also referred to as the Gambian pouched or African giant pouched rat, is among the largest rat in the family Muridae with an average length of 3 feet including the tail.'),
(5, 'Aye-aye', '3.99', '\r\nhttps://lemur.duke.edu/wordpress/wp-content/uploads/2017/03/Screen-Shot-2018-04-03-at-2.54.24-PM.png, https://www.google.com/\r\n', 'The aye-aye lives primarily on the east coast of Madagascar. Its natural habitat is rain forest or deciduous forest, but many live in cultivated areas due to deforestation.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userNum` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userNum`, `firstname`, `lastname`, `username`, `password`, `role`) VALUES
(1, 'Mick', 'Jager', 'MJager', 'MJager', 2),
(2, 'Steve ', 'Lukather', 'SLukather', 'SLukather', 2),
(3, 'Colin', 'Hay', 'CHay', 'CHay', 2),
(4, 'Hawkeye', 'Pierce', 'HPierce', 'HPierce', 2),
(5, 'Frank', 'Burns', 'FBurns', 'FBurns', 2),
(6, 'Admin', 'Admin', 'Admin', 'Password', 1),
(10, 'p', 'p', 'p', 'p', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`orderNum`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productNum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `orderNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
