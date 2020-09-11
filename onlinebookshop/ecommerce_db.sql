-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2018 at 05:00 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(4, 'Premier League'),
(5, 'La Liga'),
(6, 'Other Leagues'),
(7, 'National Team');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pname` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `psize` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `pquantity` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `pprice` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `tprice` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `time`, `pname`, `psize`, `pquantity`, `pprice`, `tprice`, `deleted`) VALUES
(147763, '2018-07-30 14:20:24', 'Madrid Home', 'XL:6,', '3', '600.00', '1800', 0),
(147763, '2018-07-30 14:20:24', 'Mancherster United Home', 'XL:7,', '2', '600.00', '1200', 0),
(79354, '2018-07-30 14:20:45', 'Madrid Home', 'XL:6,', '3', '600.00', '1800', 0),
(79354, '2018-07-30 14:20:45', 'Mancherster United Home', 'XL:7,', '2', '600.00', '1200', 0),
(966650, '2018-07-30 14:22:01', 'Barcelona Away', 'XL:3,', '3', '600.00', '1800', 1),
(966650, '2018-07-30 14:22:01', 'dortmund home', 'XXL:2,', '3', '500.00', '1500', 1),
(776297, '2018-07-30 14:33:00', 'Madrid Home', 'XL:6,', '2', '600.00', '1200', 1),
(776297, '2018-07-30 14:33:00', 'dortmund home', 'XXL:2,', '3', '500.00', '1500', 1),
(763701, '2018-07-31 17:20:06', 'Barcelona Home 18/19', 'XL:2,XXL:3,', '1', '650.00', '650', 0),
(126219, '2018-07-31 17:20:16', 'Barcelona Home 18/19', 'XL:2,XXL:3,', '1', '650.00', '650', 0),
(688668, '2018-08-01 11:48:09', 'Madrid Home 18/19', 'XL:5,', '1', '650.00', '650', 0),
(688668, '2018-08-01 11:48:09', 'Hero || Ronaldo Home 18/19', 'XL:13,', '2', '850.00', '1700', 0),
(958419, '2018-08-01 11:48:26', 'Madrid Home 18/19', 'XL:5,', '1', '650.00', '650', 0),
(958419, '2018-08-01 11:48:26', 'Hero || Ronaldo Home 18/19', 'XL:13,', '2', '850.00', '1700', 0),
(788803, '2018-08-01 11:50:38', 'United Home 18/19', 'XL:12,', '1', '700.00', '700', 0),
(960670, '2018-08-01 11:50:48', 'United Home 18/19', 'XL:12,', '1', '700.00', '700', 0),
(327358, '2018-08-01 11:55:42', 'United Home 18/19', 'XL:12,', '1', '700.00', '700', 0),
(420320, '2018-08-01 12:04:17', 'United Home 18/19', 'XL:12,', '1', '700.00', '700', 0),
(420320, '2018-08-01 12:04:18', 'Barcelona Home 18/19', 'XL:8,', '1', '650.00', '650', 0),
(555271, '2018-08-01 12:21:13', 'United Home 18/19', 'XL:12,', '1', '700.00', '700', 1),
(555271, '2018-08-01 12:21:14', 'Barcelona Home 18/19', 'XL:8,', '1', '650.00', '650', 1),
(921961, '2018-08-01 14:14:16', 'Argentina Away', 'XL:20,', '1', '700.00', '700', 0),
(454566, '2018-08-01 14:29:09', 'Argentina Away', 'XL:20,', '1', '700.00', '700', 0),
(404727, '2018-08-01 14:29:17', 'Argentina Away', 'XL:20,', '1', '700.00', '700', 0),
(123686, '2018-08-01 14:35:18', 'Chelsea Away 18/19', 'XL:4,', '1', '700.00', '700', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent`) VALUES
(29, 'Premier League', 0),
(30, 'Manchester United', 29),
(31, 'Manchester City', 29),
(32, 'Chelsea', 29),
(33, 'Arsenal', 29),
(34, 'Liverpool', 29),
(35, 'Tottenham', 29),
(36, 'La Liga', 0),
(37, 'Atletico Madrid', 36),
(38, 'Barcelona', 36),
(39, 'Real Madrid', 36),
(40, 'Other Leagues', 0),
(41, 'Juventus', 40),
(42, 'A.C. Milan', 40),
(43, 'Paris Saint-Germain', 40),
(44, 'Bayern Munich', 40),
(45, 'Borussia Dortmund', 40),
(46, 'National Team', 0),
(47, 'Argentina', 46),
(48, 'Brazil', 46),
(49, 'Germany', 46),
(50, 'Portugal', 46),
(51, 'Mixed', 40),
(52, 'Mixed', 46);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `subtotal` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `odate` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `saddress` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderid`, `subtotal`, `odate`, `username`, `fullname`, `saddress`, `phone`, `payment`, `deleted`) VALUES
(1, 79354, '3000', '2018-07-30 20:20:45', 'zahid88', 'Kazi Nihal', '55, Green Corner, ', '1734035498', 'cash', 1),
(2, 966650, '3300', '2018-07-30 20:22:01', 'zahid88', 'Kazi Nihal', 'fgfgf', '1734035498', 'card', 1),
(3, 776297, '2700', '2018-07-30 20:33:00', 'zahid88', 'Kazi Nihal', '55, Green Corner, Green Road (Panthapath)', '1734035498', 'cash', 1),
(4, 126219, '650', '2018-07-31 23:20:16', 'nihal88', 'Kazi Nihal', 'jujuju', '1734035498', 'cash', 0),
(5, 555271, '1350', '2018-08-01 18:21:13', 'nihal88', 'Kazi Nihal', '68 North Road', '1734035498', 'cash', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `brand` int(11) NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `sizes` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `list_price`, `brand`, `categories`, `image`, `description`, `featured`, `sizes`, `deleted`) VALUES
(13, 'Barcelona Home 18/19', '650.00', '750.00', 5, '38', '/offsidetrap/images/products/b7c3207e7f582789f56d69cb7ebee756.png', 'Product Type: Barcelona Home Jersey\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:8,', 0),
(14, 'Barcelona Away 18/19', '650.00', '750.00', 5, '38', '/offsidetrap/images/products/6c465fb8208a3942fa920b03cfa8eccc.jpg', 'Product Type: Barcelona Away Jersey\r\nColor: Light Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(15, 'Madrid Home 18/19', '650.00', '750.00', 5, '39', '/offsidetrap/images/products/d359f99cd86948e102faa651ce5ddb7d.png', 'Product Type: Madrid Home Jersey\r\nColor: White and Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:5,', 0),
(16, 'Madrid Away 18/19', '650.00', '750.00', 5, '39', '/offsidetrap/images/products/f9984c19817f4e234a08acae6169080a.png', 'Product Type: Madrid Away Jersey\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(17, 'Hero || Iniesta Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/a7a9ae1a8e690f175ddf0cb136e4b818.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(18, 'Hero || Iniesta Away 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/7967a24aac5a94c42cdeb53b6d05c811.jpg', 'Product Type: Barcelona Hero\r\nColor: Brown\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(19, 'Hero || Messi Away 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/a91c0412b3cc5a195fb724b3df8a98fe.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:12,', 0),
(20, 'Hero || Suarez Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/44918785dff73585573103669d7c75f9.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(21, 'Hero || Coutinho Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/c979f464526d07d71419412388ff0b11.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(22, 'Barcelona Third 18/19', '650.00', '750.00', 5, '38', '/offsidetrap/images/products/6267f675639433e692de4d604cffea98.png', 'Product Type: Barcelona Third\r\nColor: Green\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(23, 'Hero || Ramos Away 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/55f0867102a676a5836e4021b464b976.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(24, 'Hero || Ronaldo Away 17/18', '650.00', '750.00', 5, '39', '/offsidetrap/images/products/759c3e6f5e3d3f02585af73ec07338a8.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(25, 'Hero || Bale Away 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/94aae2491964942f2d028fa8992e8796.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 0),
(26, 'Hero || Modric Away 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/8c962b20c5014e73ed03e7cc038933b4.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'Xl:4,', 0),
(27, 'Atletico Home 18/19', '650.00', '750.00', 5, '37', '/offsidetrap/images/products/4317d16395e3693348d28c904f52f384.png', 'Product Type: Atletico Home\r\nColor: Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 0),
(28, 'Atletico Away 18/19', '650.00', '750.00', 5, '37', '/offsidetrap/images/products/9bc3276ae62cfcdc35782f85660f00e9.jpg', 'Product Type: Atletico Away\r\nColor: Navy Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(29, 'Atletico Third 18/19', '650.00', '750.00', 5, '37', '/offsidetrap/images/products/96062fb2c74d962e36db63218cea3044.jpg', 'Product Type: Atletico Third\r\nColor: Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(30, 'Hero || Ronaldo Third 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/7858cb808329e5a5cc1196f5ed77b1f5.jpg', 'Product Type: Madrid Hero\r\nColor: Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 0),
(31, 'Hero || Griezmann Away 17/18', '850.00', '950.00', 5, '37', '/offsidetrap/images/products/06d87c638abdaede0c5f5c9e6afbda32.jpg', 'Product Type: Atletico Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(32, 'United Away 18/19', '700.00', '800.00', 4, '30', '/offsidetrap/images/products/e6faa9c7ec8f0ada7ab5a245d2eca871.png', 'Product Type: United Away\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(33, 'United Home 18/19', '700.00', '800.00', 4, '30', '/offsidetrap/images/products/5921465d8a94d95a404674b3d5e9fb8a.jpg', 'Product Type: United Home\r\nColor: Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:12,', 0),
(34, 'Hero || Lukaku Away 17/18', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/0a2e68904d4dc9e697fab562efe5e693.jpg', 'Product Type: United Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(35, 'Hero || Pogba Away 17/18', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/5ab3d114a29aa13b2e4cd5583674081b.jpg', 'Product Type: United Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 0),
(36, 'Hero || Lingard Away 17/18', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/3f172e4eee9fb8e72413defeb58a15d3.jpg', 'Product Type: United Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(37, 'Hero || Sanchez Away 17/18', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/bd26920dfd1f20dab692d237f964489d.jpg', 'Product Type: United Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(38, 'Hero || Lukaku Home 18/19', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/d3ed05f9a21594a4826749226f5521fd.jpg', 'Product Type: United Hero\r\nColor: Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(39, 'Hero || Zlatan Home 17/18', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/e077d368f0a3c194820b352f254761cf.jpg', 'Product Type: United Home\r\nColor: Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(40, 'Argentina Home', '700.00', '800.00', 7, '47', '/offsidetrap/images/products/d44aa62bbd86c7dad4b57f1f056eb0ae.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 0),
(41, 'Argentina Away', '700.00', '800.00', 7, '47', '/offsidetrap/images/products/1d191f98199d561e7956de33b057d5ad.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:20,', 0),
(42, 'Hero || Messi Argentina', '850.00', '950.00', 7, '47', '/offsidetrap/images/products/4ba59b78e950818ff77658c33a7fd7ce.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 0),
(43, 'Brazil Away', '700.00', '800.00', 7, '48', '/offsidetrap/images/products/28129cac644e4e1f81cc43c3cf3be0ec.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:12,', 0),
(44, 'Brazil Home', '700.00', '800.00', 7, '48', '/offsidetrap/images/products/7b405f88b58d484e8b2fe8465baef747.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:20,', 0),
(45, 'Hero || Neymar Brazil', '850.00', '950.00', 7, '48', '/offsidetrap/images/products/70e97e8ab65393d7bed1978f953cf14a.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:11,', 0),
(46, 'Portugal Home', '700.00', '800.00', 7, '50', '/offsidetrap/images/products/7b8ffcd1ab458b42128c543c8d6e80d3.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 0),
(47, 'Hero || Ronaldo Porugal', '700.00', '800.00', 7, '50', '/offsidetrap/images/products/7b9eee9810a90f8086dd163bc646dfed.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(48, 'Uruguay Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/8b884e44595cc9b2e459eab1c7c2429d.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(49, 'Hero || Salah Egypt', '850.00', '950.00', 7, '52', '/offsidetrap/images/products/37c22de83154d97c101b62c606a93687.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(50, 'Croatia Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/f8882098d5d54d2a315af384701dd1a3.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 0),
(51, 'Germany Home', '700.00', '800.00', 7, '49', '/offsidetrap/images/products/e4c2bca68968b37aea9f817405e54d8e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:12,', 0),
(52, 'Hero || Ramos Spain', '850.00', '950.00', 7, '52', '/offsidetrap/images/products/e2336465e71e51f69a5c47a2d7481f26.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(53, 'Germany Away', '700.00', '800.00', 7, '49', '/offsidetrap/images/products/8341c1e1ac5e9bcd6d0aa1925cd9b49d.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 0),
(54, 'France Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/d8207419d7c174e1134b4f0f05257d09.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(55, 'Belgium Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/a11a7f4bea75756925d399ed02cfda34.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(56, 'Hero || Ozil Germany', '850.00', '950.00', 7, '49', '/offsidetrap/images/products/6bde213a28b0f661c697c95e90b92bae.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(57, 'Portugal Away', '700.00', '800.00', 7, '50', '/offsidetrap/images/products/30a2d1c703275055d2b35d48c2d687a4.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(58, 'Belgium Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/c8152cf0652ed857059276247c1a377e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(59, 'Spain Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/33a27232c4343b64932d372be42a598e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(60, 'France Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/78c8318e877f5789f49582c1498d6791.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:6,', 0),
(61, 'England Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/4c742e78721d9467c3b5d0caf2f2be98.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(62, 'England Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/a679fb43d35f3614ffa9284c3b99c4e5.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(63, 'Liverpool Home 18/19', '700.00', '800.00', 4, '34', '/offsidetrap/images/products/edfe3f7579d6bf2462c7cb3e31f161d5.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:8,', 0),
(64, 'Liverpool Away 18/19', '700.00', '800.00', 4, '34', '/offsidetrap/images/products/ae8598e9cfabc22d638b68b8a0065288.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(65, 'Hero || Salah Home 18/19', '850.00', '950.00', 4, '34', '/offsidetrap/images/products/75bad4d7b5d7bc47161585260c7031a8.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(66, 'Hero || Firmino Home 18/19', '850.00', '950.00', 4, '34', '/offsidetrap/images/products/2900b66156d82ab26d3a2803b043663a.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 0),
(67, 'Chelsea Home 18/19', '700.00', '800.00', 4, '32', '/offsidetrap/images/products/33cd0afc0d70ef1fa9432366c40b8e1c.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:7,', 0),
(68, 'Chelsea Away 18/19', '700.00', '800.00', 4, '32', '/offsidetrap/images/products/f9b94c2bcc690e9cd31ede36c121435c.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(69, 'Juventus Home 18/19', '700.00', '800.00', 6, '41', '/offsidetrap/images/products/5986fb7d83e9e2bea8f6c13ee175d209.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(70, 'Hero || Ronaldo Home 18/19', '850.00', '950.00', 6, '41', '/offsidetrap/images/products/0193b54c67534dbac8725dff3eea91c0.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:13,', 0),
(71, 'Hero || Dybala Home 17/18', '850.00', '950.00', 6, '41', '/offsidetrap/images/products/b16074d4c0e32376978fbb2024f466b9.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(72, 'Milan Home 18/19', '700.00', '800.00', 6, '42', '/offsidetrap/images/products/6861cf932f0b776ba6694c06331bb685.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(73, 'Milan Away 18/19', '650.00', '750.00', 6, '42', '/offsidetrap/images/products/7ecfe6c22c6842eef2f22f1e8c748389.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(74, 'PSG Home 18/19', '650.00', '750.00', 6, '43', '/offsidetrap/images/products/8e6a2695ed94245721a47aba9909f99e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(75, 'PSG Away 18/19', '650.00', '750.00', 6, '43', '/offsidetrap/images/products/5d4297b523c2956b64f6ab1b8d1d3e7a.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(76, 'Hero || Neymar Home 17/18', '850.00', '950.00', 6, '43', '/offsidetrap/images/products/9cd0f50319a81320cb5f5a8c4547988e.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:6,', 0),
(77, 'Inter Home 18/19', '650.00', '750.00', 6, '51', '/offsidetrap/images/products/d194246cf44b27b34e74e255f8da9443.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(78, 'Bayern Home 18/19', '650.00', '750.00', 6, '44', '/offsidetrap/images/products/7790a371f4367bd19b8086174ae9e46d.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:4,', 0),
(79, 'Bayern Away 18/19', '650.00', '750.00', 6, '44', '/offsidetrap/images/products/ba67bbd095598b907ce4dc6513b81df1.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(80, 'Dortmund Home 18/19', '650.00', '750.00', 6, '45', '/offsidetrap/images/products/d5489a0971cd45faa95df32bf00303ab.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(81, 'Dortmund Away 18/19', '650.00', '750.00', 6, '45', '/offsidetrap/images/products/0d8f06518ff14c66c2a3720fce3af263.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 0),
(82, 'Hero || Zlatan Home 18/19', '1000.00', '1200.00', 6, '51', '/offsidetrap/images/products/f24a1fe94b3203260f988e0881afa6de.jpg', 'Product Type: LA Galaxy Home (Hero Zlatan)\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 1, 'XL:10,', 0),
(83, 'Hero || Zlatan Away 18/19', '1000.00', '1200.00', 6, '51', '/offsidetrap/images/products/4f725adb0e18eb93bd69bccbd973d1a8.jpg', 'Product Type: LA Galaxy Away (Hero Zlatan)\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 0),
(84, 'Arsenal Home 18/19', '700.00', '800.00', 4, '33', '/offsidetrap/images/products/f8378bd0e73761acadcd3cf30cf02ed1.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(85, 'Arsenal Away 18/19', '700.00', '800.00', 4, '33', '/offsidetrap/images/products/228631486dec8b48d6c4e70063ebf37e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(86, 'City Home 17/18', '700.00', '800.00', 4, '31', '/offsidetrap/images/products/044956d7248f4032ab55e3208b4c5ad2.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(87, 'City Away 17/18', '700.00', '800.00', 4, '31', '/offsidetrap/images/products/9ffbea83ace18bebf655e9628999a8ef.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 0),
(88, 'Hero || Aguero Home 17/18', '850.00', '950.00', 4, '31', '/offsidetrap/images/products/fb3629ff6521520dc42b2d19b7df7be9.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 0),
(89, 'Spurs Home 18/19', '700.00', '800.00', 4, '35', '/offsidetrap/images/products/4555bc52d3e4f4aabcb6e8b32a142c1f.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:8,', 0),
(90, 'Spurs Away 18/19', '700.00', '800.00', 4, '35', '/offsidetrap/images/products/027b7ac437f1ccd451b0d07ec41fa04f.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:6,', 0),
(91, 'Hero || Kane Away 18/19', '850.00', '950.00', 4, '35', '/offsidetrap/images/products/ebe53637a9340a3c2dcc8893996b1ec5.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 0),
(92, 'Hero || Messi Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/77cb34023ff0214f414cdeb85210f22a.jpg', 'Product Type: Barcelona Hero\r\nColor: Red and Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:15,', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(3, 'nihal', 'nihal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'zahid', 'zahid@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `fullname` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`id`, `username`, `email`, `password`, `address`, `phone`, `fullname`) VALUES
(1, 'nihal88', 'nihal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '55, Green Corner, Green Road (Panthapath)', 1734035498, 'Kazi Nihal'),
(2, 'zahid88', 'zahid@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '58, Green Road (Farmgate)', 1799946516, 'Zahidul Islam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
