-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 05:40 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodemvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_dtm` date NOT NULL,
  `post_author` varchar(100) NOT NULL,
  `post_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`_id`, `post_title`, `post_detail`, `post_dtm`, `post_author`, `post_status`) VALUES
(1001, 'Title', 'Lorem ipsum dolor sit amet, cons ectetur adipis cing elit. In iaculis eros ex, quis pellent esque enim elemen tum vel. Etiam mo llis at nisl eu fermentum.', '2019-12-17', 'JAME', 1),
(1002, 'title', 'Lorem ipsum dolor sit amet, cons ectetur adipis cing elit. In iaculis eros ex, quis pellent esque enim elemen tum vel. Etiam mo llis at nisl eu fermentum.', '2019-12-17', 'JAME', 1),
(1004, 'Title', 'Lorem ipsum dolor sit amet, cons ectetur adipis cing elit. In iaculis eros ex, quis pellent esque enim elemen tum vel. Etiam mo llis at nisl eu fermentum.', '2019-12-17', 'JAME', 1),
(1006, 'Title', 'Lorem ipsum dolor sit amet, cons ectetur adipis cing elit. In iaculis eros ex, quis pellent esque enim elemen tum vel. Etiam mo llis at nisl eu fermentum.', '2019-12-17', 'JAME', 1),
(1009, '', 'Lorem ipsum dolor sit amet, cons ectetur adipis cing elit. In iaculis eros ex, quis pellent esque enim elemen tum vel. Etiam mo llis at nisl eu fermentum.', '2019-12-17', 'JAME', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
