-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 09:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

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
(126219, '2018-07-31 17:20:16', 'Barcelona Home 18/19', 'XL:2,XXL:3,', '1', '650.00', '650', 1),
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
(123686, '2018-08-01 14:35:18', 'Chelsea Away 18/19', 'XL:4,', '1', '700.00', '700', 0),
(582168, '2019-01-20 16:24:55', 'Jenechi Ondhokar Dehe', 'XL:8,', '3', '150.00', '450', 0),
(661608, '2019-01-20 16:25:16', 'Jenechi Ondhokar Dehe', 'XL:8,', '3', '150.00', '450', 0),
(721529, '2019-01-20 16:26:20', 'Jenechi Ondhokar Dehe', 'XL:8,', '3', '150.00', '450', 0),
(514491, '2019-01-20 16:32:21', 'Jenechi Ondhokar Dehe', 'XL:8,', '3', '150.00', '450', 0),
(397110, '2019-01-20 17:16:10', 'Jenechi Ondhokar Dehe', 'XL:8,', '3', '150.00', '450', 0),
(397110, '2019-01-20 17:16:10', 'Shonkhonil Karagar', '', '2', '550.00', '1100', 0),
(832629, '2019-01-20 17:20:08', 'Jenechi Ondhokar Dehe', 'XL:8,', '3', '150.00', '450', 0),
(832629, '2019-01-20 17:20:08', 'Shonkhonil Karagar', '', '2', '550.00', '1100', 0),
(448224, '2019-01-20 17:21:29', 'valobasho Bacho', '', '3', '250.00', '750', 0),
(911865, '2019-01-20 17:43:18', 'valobasho Bacho', '', '3', '250.00', '750', 0),
(911865, '2019-01-20 17:43:18', 'Ami Topu ', '', '1', '250.00', '250', 0),
(496301, '2019-01-20 18:19:57', 'Devdas', '', '3', '250.00', '750', 1),
(892893, '2019-01-30 18:37:52', 'valobasho Bacho', '', '1', '250.00', '250', 0),
(167173, '2019-01-30 19:14:31', 'Shonkhonil Karagar', '', '1', '550.00', '550', 1),
(167173, '2019-01-30 19:14:31', 'Gabbu', '', '1', '250.00', '250', 1),
(247361, '2019-01-30 19:19:02', 'Shonkhonil Karagar', '', '1', '550.00', '550', 0),
(247361, '2019-01-30 19:19:02', 'Ami Topu ', '', '3', '250.00', '750', 0),
(598597, '2019-01-30 19:19:23', 'Shonkhonil Karagar', '', '1', '550.00', '550', 0),
(598597, '2019-01-30 19:19:23', 'Ami Topu ', '', '3', '250.00', '750', 0);

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
(29, 'Publications', 0),
(30, 'Anyaprokash', 29),
(31, 'Anannya', 29),
(36, 'Catagory', 0),
(37, 'Novel', 36),
(38, 'Poem', 36),
(40, 'Others', 0),
(41, 'Science', 40),
(51, 'Mixed', 40),
(53, 'Authors', 0),
(54, 'Humayun Ahemed', 53),
(55, 'Muhammad Zafor Iqbal', 53);

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
(9, 496301, '750', '2019-01-21 00:19:57', 'msk9', 'Mesbah Khan', 'hh', '35669844', 'cash', 1),
(10, 892893, '250', '2019-01-31 00:37:52', 'msk9', 'Mesbah Khan', 'khulna', '35669844', 'cash', 0),
(11, 167173, '800', '2019-01-31 01:14:31', 'preya54', 'Preya C', 'Dhanmopndi', '7786655', 'cash', 1),
(12, 598597, '1300', '2019-01-31 01:19:23', 'preya54', 'Preya C', 'hj', '7786655', 'cash', 0);

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
(13, 'Jenechi Ondhokar Dehe', '150.00', '250.00', 5, '38', '/onlinebookshop/images/products/jonaki cover.jpg', 'Product Name: Jenechi Ondhokar Dehe\r\nAuthor: Narayan Gupta\r\nPublication: Srity boi\r\n', 1, 'XL:8,', 0),
(14, 'Barcelona Away 18/19', '650.00', '750.00', 5, '38', '/offsidetrap/images/products/6c465fb8208a3942fa920b03cfa8eccc.jpg', 'Product Type: Barcelona Away Jersey\r\nColor: Light Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(15, 'Madrid Home 18/19', '650.00', '750.00', 5, '39', '/offsidetrap/images/products/d359f99cd86948e102faa651ce5ddb7d.png', 'Product Type: Madrid Home Jersey\r\nColor: White and Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(16, 'Madrid Away 18/19', '650.00', '750.00', 5, '39', '/offsidetrap/images/products/f9984c19817f4e234a08acae6169080a.png', 'Product Type: Madrid Away Jersey\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(17, 'Hero || Iniesta Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/a7a9ae1a8e690f175ddf0cb136e4b818.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(18, 'Hero || Iniesta Away 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/7967a24aac5a94c42cdeb53b6d05c811.jpg', 'Product Type: Barcelona Hero\r\nColor: Brown\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(19, 'Hero || Messi Away 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/a91c0412b3cc5a195fb724b3df8a98fe.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:12,', 1),
(20, 'Hero || Suarez Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/44918785dff73585573103669d7c75f9.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(21, 'Hero || Coutinho Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/c979f464526d07d71419412388ff0b11.png', 'Product Type: Barcelona Hero\r\nColor: Blue and Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(22, 'Barcelona Third 18/19', '650.00', '750.00', 5, '38', '/offsidetrap/images/products/6267f675639433e692de4d604cffea98.png', 'Product Type: Barcelona Third\r\nColor: Green\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(23, 'Hero || Ramos Away 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/55f0867102a676a5836e4021b464b976.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(24, 'Hero || Ronaldo Away 17/18', '650.00', '750.00', 5, '39', '/offsidetrap/images/products/759c3e6f5e3d3f02585af73ec07338a8.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(25, 'Hero || Bale Away 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/94aae2491964942f2d028fa8992e8796.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 1),
(26, 'Hero || Modric Away 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/8c962b20c5014e73ed03e7cc038933b4.jpg', 'Product Type: Madrid Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'Xl:4,', 1),
(27, 'Shonkhonil Karagar', '550.00', '750.00', 5, '37', '/onlinebookshop/images/products/karagar.jpg', 'Product Name: Shonkhonil Karagar\r\nAuthor: Humayun Ahmed\r\nPbliaion: Red Roses Publication\r\n', 0, 'XL:3,', 0),
(28, 'valobasho Bacho', '250.00', '350.00', 5, '37', '/onlinebookshop/images/products/valobasho bacho by Anisul Hoque.jpg', 'Product name: Valobasho Bacho\r\nAuthor : Anisul Hoque\r\nPublication : Jewel prokash', 1, '', 0),
(29, 'Devdas', '250.00', '350.00', 5, '37', '/onlinebookshop/images/products/devdas.jpg', 'Product Type: Devdas\r\nColor: Shree Sorot Chondro\r\nPublication : Mayajal Prokashoni', 0, 'XL:4,', 0),
(30, 'Hero || Ronaldo Third 17/18', '850.00', '950.00', 5, '39', '/offsidetrap/images/products/7858cb808329e5a5cc1196f5ed77b1f5.jpg', 'Product Type: Madrid Hero\r\nColor: Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 1),
(31, 'Hero || Griezmann Away 17/18', '850.00', '950.00', 5, '37', '/offsidetrap/images/products/06d87c638abdaede0c5f5c9e6afbda32.jpg', 'Product Type: Atletico Hero\r\nColor: Black\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(32, 'OTIKROM', '200.00', '300.00', 4, '30', '/onlinebookshop/images/products/OTIKROM.jpg', 'Product Name: Otikrom\r\nAuthor : Sayed Samsul Haque\r\nPublication : Anyaprokash\r\n', 0, 'XL:7,', 0),
(33, 'Uponnash Shomogro', '750.00', '1000.00', 4, '30', '/onlinebookshop/images/products/upnash.jpg', 'Product Name: Uponnash Shomogro\r\nAuthor: Zahir Raihan\r\nPublication : Anyaprokashoni', 1, '', 0),
(34, 'Ayena, Tomar Shonge ', '90.00', '150.00', 4, '30', '/onlinebookshop/images/products/ayna.jpg', 'Product Name: Ayena, Tomar Shonge \r\nAuthor: Emdadul Haque Milon\r\nPublication : Annyaprokash', 0, 'XL:7,', 0),
(38, 'Himu Mama', '150.00', '250.00', 4, '30', '/onlinebookshop/images/products/himu.JPG', 'Product Name : Himu Mama\r\nAuthor: Humayun Ahmed\r\nPublication : Annayprokash\r\n', 0, 'XL:7,', 0),
(39, 'Hero || Zlatan Home 17/18', '850.00', '950.00', 4, '30', '/offsidetrap/images/products/e077d368f0a3c194820b352f254761cf.jpg', 'Product Type: United Home\r\nColor: Red\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(40, 'Argentina Home', '700.00', '800.00', 7, '47', '/offsidetrap/images/products/d44aa62bbd86c7dad4b57f1f056eb0ae.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 1),
(41, 'Argentina Away', '700.00', '800.00', 7, '47', '/offsidetrap/images/products/1d191f98199d561e7956de33b057d5ad.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:20,', 1),
(42, 'Hero || Messi Argentina', '850.00', '950.00', 7, '47', '/offsidetrap/images/products/4ba59b78e950818ff77658c33a7fd7ce.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 1),
(43, 'Brazil Away', '700.00', '800.00', 7, '48', '/offsidetrap/images/products/28129cac644e4e1f81cc43c3cf3be0ec.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:12,', 1),
(44, 'Brazil Home', '700.00', '800.00', 7, '48', '/offsidetrap/images/products/7b405f88b58d484e8b2fe8465baef747.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:20,', 1),
(45, 'Hero || Neymar Brazil', '850.00', '950.00', 7, '48', '/offsidetrap/images/products/70e97e8ab65393d7bed1978f953cf14a.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:11,', 1),
(46, 'Portugal Home', '700.00', '800.00', 7, '50', '/offsidetrap/images/products/7b8ffcd1ab458b42128c543c8d6e80d3.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 1),
(47, 'Hero || Ronaldo Porugal', '700.00', '800.00', 7, '50', '/offsidetrap/images/products/7b9eee9810a90f8086dd163bc646dfed.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 1),
(48, 'Uruguay Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/8b884e44595cc9b2e459eab1c7c2429d.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(49, 'Hero || Salah Egypt', '850.00', '950.00', 7, '52', '/offsidetrap/images/products/37c22de83154d97c101b62c606a93687.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(50, 'Croatia Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/f8882098d5d54d2a315af384701dd1a3.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 1),
(51, 'Germany Home', '700.00', '800.00', 7, '49', '/offsidetrap/images/products/e4c2bca68968b37aea9f817405e54d8e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:12,', 1),
(52, 'Hero || Ramos Spain', '850.00', '950.00', 7, '52', '/offsidetrap/images/products/e2336465e71e51f69a5c47a2d7481f26.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(53, 'Germany Away', '700.00', '800.00', 7, '49', '/offsidetrap/images/products/8341c1e1ac5e9bcd6d0aa1925cd9b49d.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 1),
(54, 'France Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/d8207419d7c174e1134b4f0f05257d09.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(55, 'Belgium Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/a11a7f4bea75756925d399ed02cfda34.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 1),
(56, 'Hero || Ozil Germany', '850.00', '950.00', 7, '49', '/offsidetrap/images/products/6bde213a28b0f661c697c95e90b92bae.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(57, 'Portugal Away', '700.00', '800.00', 7, '50', '/offsidetrap/images/products/30a2d1c703275055d2b35d48c2d687a4.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 1),
(58, 'Belgium Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/c8152cf0652ed857059276247c1a377e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 1),
(59, 'Spain Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/33a27232c4343b64932d372be42a598e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(60, 'France Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/78c8318e877f5789f49582c1498d6791.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:6,', 1),
(61, 'England Away', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/4c742e78721d9467c3b5d0caf2f2be98.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(62, 'England Home', '700.00', '800.00', 7, '52', '/offsidetrap/images/products/a679fb43d35f3614ffa9284c3b99c4e5.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(63, 'Liverpool Home 18/19', '700.00', '800.00', 4, '34', '/offsidetrap/images/products/edfe3f7579d6bf2462c7cb3e31f161d5.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:8,', 1),
(64, 'Liverpool Away 18/19', '700.00', '800.00', 4, '34', '/offsidetrap/images/products/ae8598e9cfabc22d638b68b8a0065288.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(65, 'Hero || Salah Home 18/19', '850.00', '950.00', 4, '34', '/offsidetrap/images/products/75bad4d7b5d7bc47161585260c7031a8.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(66, 'Hero || Firmino Home 18/19', '850.00', '950.00', 4, '34', '/offsidetrap/images/products/2900b66156d82ab26d3a2803b043663a.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:3,', 1),
(67, 'Chelsea Home 18/19', '700.00', '800.00', 4, '32', '/offsidetrap/images/products/33cd0afc0d70ef1fa9432366c40b8e1c.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 1),
(68, 'Chelsea Away 18/19', '700.00', '800.00', 4, '32', '/offsidetrap/images/products/f9b94c2bcc690e9cd31ede36c121435c.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(69, 'Bigganer Bismoy', '300.00', '350.00', 6, '41', '/onlinebookshop/images/products/science.jpg ', 'Product Name: Bigganer Bismoy\r\nAuthor : Abdullah AL Muti\r\nPublication : Gyan Somahar', 0, 'XL:4,', 0),
(70, 'The Mayan Secrets ', '550.00', '650.00', 6, '41', '/onlinebookshop/images/products/mayan.jpg', 'Product Name: The Mayan Secrets \r\nAuthor : Thomas Pery\r\nPublication : Merry Quinn Publication', 1, 'XL:13,', 0),
(71, 'A Brief History of Time', '1550.00', '175.00', 6, '41', '/onlinebookshop/images/products/kaal.jpg', 'Product Name : A Brief History of Time\r\nAuthor : Stephen Hawking\r\nTranslate : Prof. Sakhawat Hossain\r\nPublication : The Sky Publishers ', 0, 'XL:5,', 0),
(72, 'Milan Home 18/19', '700.00', '800.00', 6, '42', '/offsidetrap/images/products/6861cf932f0b776ba6694c06331bb685.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(73, 'Milan Away 18/19', '650.00', '750.00', 6, '42', '/offsidetrap/images/products/7ecfe6c22c6842eef2f22f1e8c748389.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(74, 'PSG Home 18/19', '650.00', '750.00', 6, '43', '/offsidetrap/images/products/8e6a2695ed94245721a47aba9909f99e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(75, 'PSG Away 18/19', '650.00', '750.00', 6, '43', '/offsidetrap/images/products/5d4297b523c2956b64f6ab1b8d1d3e7a.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(76, 'Hero || Neymar Home 17/18', '850.00', '950.00', 6, '43', '/offsidetrap/images/products/9cd0f50319a81320cb5f5a8c4547988e.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:6,', 1),
(77, 'Inter Home 18/19', '650.00', '750.00', 6, '51', '/offsidetrap/images/products/d194246cf44b27b34e74e255f8da9443.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(78, 'Bayern Home 18/19', '650.00', '750.00', 6, '44', '/offsidetrap/images/products/7790a371f4367bd19b8086174ae9e46d.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(79, 'Bayern Away 18/19', '650.00', '750.00', 6, '44', '/offsidetrap/images/products/ba67bbd095598b907ce4dc6513b81df1.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(80, 'Dortmund Home 18/19', '650.00', '750.00', 6, '45', '/offsidetrap/images/products/d5489a0971cd45faa95df32bf00303ab.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(81, 'Dortmund Away 18/19', '650.00', '750.00', 6, '45', '/offsidetrap/images/products/0d8f06518ff14c66c2a3720fce3af263.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:2,', 1),
(82, 'Hero || Zlatan Home 18/19', '1000.00', '1200.00', 6, '51', '/offsidetrap/images/products/f24a1fe94b3203260f988e0881afa6de.jpg', 'Product Type: LA Galaxy Home (Hero Zlatan)\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 1),
(83, 'Hero || Zlatan Away 18/19', '1000.00', '1200.00', 6, '51', '/offsidetrap/images/products/4f725adb0e18eb93bd69bccbd973d1a8.jpg', 'Product Type: LA Galaxy Away (Hero Zlatan)\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:10,', 1),
(84, 'Arsenal Home 18/19', '700.00', '800.00', 4, '33', '/offsidetrap/images/products/f8378bd0e73761acadcd3cf30cf02ed1.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:5,', 1),
(85, 'Arsenal Away 18/19', '700.00', '800.00', 4, '33', '/offsidetrap/images/products/228631486dec8b48d6c4e70063ebf37e.png', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:4,', 1),
(86, 'Sreshtho Kobita', '300.00', '400.00', 4, '31', '/onlinebookshop/images/products/mamud.jpg', 'Product Name : Sreshtho Kobita\r\nAuthor : Al Mamud\r\nPublication : Anannya', 0, 'XL:5,', 0),
(87, 'Prachin Prithibir Khoje', '150.00', '200.00', 4, '31', '/onlinebookshop/images/products/ali.jpg', 'Product Type: Prachin Prithibir Khoje\r\nAuthor : Ali Emam\r\nPublication : Anannya', 0, 'XL:4,', 0),
(88, 'Bangladesher Ful', '150.00', '200.00', 4, '31', '/onlinebookshop/images/products/ful.jpg', 'Product Name : Bangladesher Ful\r\nAuthor : M A Taher\r\nPublication : Anannya', 0, 'XL:5,', 0),
(89, 'Spurs Home 18/19', '700.00', '800.00', 4, '35', '/offsidetrap/images/products/4555bc52d3e4f4aabcb6e8b32a142c1f.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:8,', 1),
(90, 'Spurs Away 18/19', '700.00', '800.00', 4, '35', '/offsidetrap/images/products/027b7ac437f1ccd451b0d07ec41fa04f.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:6,', 1),
(91, 'Hero || Kane Away 18/19', '850.00', '950.00', 4, '35', '/offsidetrap/images/products/ebe53637a9340a3c2dcc8893996b1ec5.jpg', 'Product Type: Shirt\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:7,', 1),
(92, 'Hero || Messi Home 17/18', '850.00', '950.00', 5, '38', '/offsidetrap/images/products/77cb34023ff0214f414cdeb85210f22a.jpg', 'Product Type: Barcelona Hero\r\nColor: Red and Blue\r\nMain Material: Polyester\r\nGender: Men\r\nSleeve: Short Sleeve', 0, 'XL:15,', 1),
(93, 'Shonkhonil Karagar', '550.00', '650.00', 5, '54', '/onlinebookshop/images/products/karagar.jpg', 'nive', 0, '5:2,', 0),
(94, 'Himur Rupali Ratri ', '250.00', '350.00', 6, '54', '/onlinebookshop/images/products/Himur-rupali.png', 'Product Name: Himur Rupali Ratri \r\nAuthor : Humayun Ahemd\r\nPublication : AnnyaProkashoni', 0, '5:5,', 0),
(95, 'The Exorcist', '350.00', '450.00', 6, '54', '/onlinebookshop/images/products/exorcist.jpg', 'Product Name: The Exorcist\r\nAuthor: Humayun Ahmed\r\nPublication : Annyaprokashoni', 0, '5:2,', 0),
(96, 'Chader Pahar', '550.00', '750.00', 6, '31', '/onlinebookshop/images/products/3e6e602852ec5539d2f68f159f6e6437.jpg', 'Product Name: Chader Pahar\r\nAuthor : Bivuti Bhuson Bondhopadhay\r\nPublication : Anannya', 0, '6:3,', 0),
(97, 'Ami Topu ', '250.00', '350.00', 6, '55', '/onlinebookshop/images/products/925495ee848aafabf28d98bb28c9b646.jpg', 'Product Name: Ami Topu\r\nAuthor: Muhammad Zafor Iqbal\r\nPublication : Jaggriti Prokash', 0, '4:2,', 0),
(98, 'Gabbu', '250.00', '300.00', 6, '55', '/onlinebookshop/images/products/33daabd805e5396f3face82e9beeb7ff.jpg', 'Product Name: Gabbu\r\nAuthor: Muhammad Zafor Iqbal\r\nPublication : Vasa Prokashoni', 0, '7:1,', 0),
(99, 'Jannater Bornona', '475.00', '500.00', 6, '51', '/onlinebookshop/images/products/jannat.jpg', 'Product Name: Jannater Bornona\r\nAuthor : Muhammad Iqbal Kilani\r\nTranslate: Al Yousuf\r\nPublication : Maktaba Publications\r\n', 0, '2:2,', 0),
(100, 'Ruposi Bangla', '750.00', '850.00', 6, '38', '/onlinebookshop/images/products/bangla.jpg', 'Product Name: Ruposi Bangla\r\nAuthor :  Jibanananda Das\r\nPublication : Chayanir Prokashoni\r\n', 0, '2:1,', 0),
(101, 'Ami Ki Choto', '100.00', '175.00', 6, '51', '/onlinebookshop/images/products/choto.jpg', 'Product Name: Ami Ki Choto\r\nAuthor : Philip Winterburg\r\nTranslate : Motahaar Chowdhury\r\nPublication : Ballokal Publication', 0, '5:1,', 0),
(102, 'Fotiker Kolkata', '255.00', '300.00', 6, '51', '/onlinebookshop/images/products/66a97c34345e5b6201eddc4952b8a28a.jpg', 'Product Name: Fotiker Kolkata\r\nAuthor : Robindronath Thakur\r\nPublication : Angel Books', 0, '2:2,', 0),
(103, 'Sesher Kobita ', '300.00', '400.00', 6, '38', '/onlinebookshop/images/products/c884b9f1aaa2898d201a9cbeed48c0e0.jpg', 'Product Name: Sesher Kobita\r\nAuthor : Robindronath Thakur\r\nPublication : Shama Publications\r\n', 0, '4:2,', 0);

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
(4, 'zahid', 'zahid@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'Mesbah Khan', 'abc@example.com', '827ccb0eea8a706c4c34a16891f84e7b');

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
(2, 'zahid88', 'zahid@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '58, Green Road (Farmgate)', 1799946516, 'Zahidul Islam'),
(3, 'msk9', 'abc@example.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Dhaka', 35669844, 'Mesbah Khan'),
(4, 'preya54', 'abc@example.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Dhaka', 7786655, 'Preya C');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
