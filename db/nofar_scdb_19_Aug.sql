-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2019 at 03:07 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nofar_scdb`
--
CREATE DATABASE IF NOT EXISTS `nofar_scdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `nofar_scdb`;

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'lF2q71Qd8lowUMR3M5EsLWJDCF9mbVSX8jkSBtyUMMRqeoMHw8BxQG6kUAV2ol8N0u0sk2jf9M0m8CKF7Z6WONr2KUGKz68QvQXv4GmucFQuoohki3IVjVOG1xtl4w2fuYCZQku8VpO5Kb41KCc5KhkLqJ9R2pQxZaplOMHfDDPMpvswgQQsjzB6S4ivyB58Ng3fYblxuKNUYC1Bx4IWw7klJsZ5H8whOuyLrAg9tl4vyXscJbY6HBJPBBNLdzFJ', 1, '2019-08-08 07:26:44', '2019-08-08 07:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(1, 2, 'Description'),
(1, 3, 'Description');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Home-Slideshow', 1),
(9, 'SlideShow', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(222, 7, 3, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', '', 0),
(223, 7, 3, 'MacBookAir', '', '', 0),
(221, 7, 3, 'Orchid Plant', 'index.php?route=product/product&amp;path=25&amp;product_id=50', '', 0),
(220, 7, 3, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', '', 0),
(217, 7, 1, 'Flying Birds Art Decor', 'https://stickerscenter.org/index.php?route=product/product&amp;product_id=50', 'catalog/slides/blue-Flowers-butterfly8.jpg', 0),
(218, 7, 1, 'Colorful Multi-size Stars', 'https://stickerscenter.org/index.php?route=product/product&amp;path=20_27&amp;product_id=78', 'catalog/slides/colorful-stars3.jpg', 1),
(219, 7, 1, 'Glow in The Dark Stars for Ceiling or Wall Stickers', 'https://stickerscenter.org/index.php?route=product/product&amp;path=18_46&amp;product_id=71', 'catalog/slides/glowing-stars7.jpg', 2),
(171, 9, 3, 'Mint Green', '', '', 0),
(172, 9, 3, 'Orchid Plant', 'index.php?route=product/product&amp;path=25&amp;product_id=50', '', 0),
(168, 9, 1, 'Classic Blue', '', '', 0),
(169, 9, 1, 'Mint Green', '', '', 0),
(170, 9, 3, 'Classic Blue', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/wall-sticker-orchid-plant.png', 0, 1, 1, 9, 1, '2009-01-31 01:04:25', '2019-08-18 08:56:23'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2019-08-11 08:42:51'),
(20, 'catalog/livingroom-wall-design-classic-blue.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2019-08-11 08:19:08'),
(18, 'catalog/bedroom-wall-design-for-mint-green3.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2019-08-11 08:21:19'),
(28, 'catalog/elephant-nordic1.png', 20, 0, 0, 1, 1, '2009-02-02 13:11:12', '2019-08-11 08:42:00'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2019-08-18 08:58:20'),
(64, '', 20, 0, 1, 0, 1, '2019-08-11 08:49:04', '2019-08-11 08:53:31'),
(71, '', 18, 0, 1, 0, 1, '2019-08-11 08:57:02', '2019-08-11 08:57:02'),
(62, '', 20, 0, 1, 0, 1, '2019-08-11 08:47:12', '2019-08-11 08:47:12'),
(61, '', 20, 0, 1, 0, 1, '2019-08-11 08:46:10', '2019-08-18 09:19:04'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2019-08-11 08:19:44'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2019-08-11 08:18:26'),
(65, '', 20, 0, 1, 0, 1, '2019-08-11 08:49:47', '2019-08-11 08:50:05'),
(59, '', 34, 0, 1, 0, 1, '2019-08-11 08:37:15', '2019-08-11 08:38:51'),
(60, '', 34, 0, 1, 0, 1, '2019-08-11 08:39:56', '2019-08-11 08:39:56'),
(73, '', 18, 0, 1, 0, 1, '2019-08-11 08:59:08', '2019-08-11 08:59:08'),
(45, 'catalog/pineapple1.png', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2019-08-10 16:45:49'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2019-08-10 16:39:02'),
(75, '', 18, 0, 1, 0, 1, '2019-08-14 10:21:15', '2019-08-18 09:00:16'),
(70, '', 18, 0, 1, 0, 1, '2019-08-11 08:55:22', '2019-08-11 08:55:22'),
(72, '', 18, 0, 1, 0, 1, '2019-08-11 08:58:00', '2019-08-11 08:58:00'),
(66, '', 20, 0, 1, 0, 1, '2019-08-11 08:51:08', '2019-08-11 08:51:08'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2019-08-11 08:38:14'),
(74, '', 18, 0, 1, 0, 1, '2019-08-11 09:00:18', '2019-08-11 09:00:18'),
(76, '', 20, 0, 1, 0, 1, '2019-08-15 08:09:39', '2019-08-18 09:07:29'),
(77, '', 20, 0, 1, 0, 1, '2019-08-15 08:16:36', '2019-08-15 08:16:36'),
(78, '', 20, 0, 1, 0, 1, '2019-08-15 08:18:00', '2019-08-15 08:18:00'),
(79, '', 80, 0, 1, 0, 1, '2019-08-15 08:25:56', '2019-08-15 08:27:25'),
(80, '', 0, 1, 1, 5, 1, '2019-08-15 08:27:03', '2019-08-15 08:33:36'),
(81, '', 20, 0, 1, 0, 1, '2019-08-15 16:42:39', '2019-08-15 16:42:39'),
(82, '', 20, 0, 1, 0, 1, '2019-08-17 11:38:30', '2019-08-17 11:38:50'),
(83, '', 18, 0, 1, 0, 1, '2019-08-17 12:01:18', '2019-08-17 12:01:18'),
(84, '', 0, 1, 1, 8, 1, '2019-08-17 12:07:09', '2019-08-18 08:56:08'),
(85, '', 46, 0, 1, 0, 1, '2019-08-17 12:27:53', '2019-08-17 12:27:53'),
(86, '', 46, 0, 1, 0, 1, '2019-08-17 12:28:22', '2019-08-17 12:28:22'),
(87, '', 20, 0, 1, 0, 1, '2019-08-17 19:27:29', '2019-08-17 19:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, '3D', '', '3D', '3D', '3D'),
(71, 2, 'חדר-שינה', '', 'חדר-שינה', '', ''),
(71, 1, 'Bedroom', '', 'Bedroom', '', ''),
(64, 1, 'Nature', '', 'Nature', '', ''),
(64, 2, 'טבע', '', 'טבע', '', ''),
(20, 1, 'Shop by Theme', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Shop by Theme', 'Shop by Theme', 'Shop by Theme'),
(73, 1, 'Dining-Room', '', 'Dining-Room', '', ''),
(60, 2, 'לבית', '', 'לבית', '', ''),
(60, 1, 'Home', '', 'Home', '', ''),
(59, 2, 'תינוקות', '', 'תינוקות', '', ''),
(59, 1, 'Babies', '', 'babies', 'Babies', 'Babies'),
(34, 1, 'Gift Ideas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Gift Ideas', 'Gift Ideas ', 'Gift Ideas '),
(34, 2, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(45, 2, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Kids', '', 'Kids', '', ''),
(60, 3, 'Home', '', 'Home', '', ''),
(73, 3, 'Dining-Room', '', 'Dining-Room', '', ''),
(71, 3, 'Bedroom', '', 'Bedroom', '', ''),
(74, 1, 'Living-Space', '', 'Living-Space', '', ''),
(56, 1, 'Kids', '', 'Kids', 'Kids', 'Kids'),
(56, 2, 'ילדים', '', 'ילדים', '', ''),
(28, 2, 'Monitors', '', 'Monitors', '', ''),
(62, 1, 'Glowing', '', 'Glowing', '', ''),
(62, 2, 'זוהרים', '', 'זוהרים', '', ''),
(45, 1, 'Teens', '', 'Teens', 'Teens', 'Teens'),
(25, 1, 'Sale', '', 'Sale', 'Sale', 'Sale'),
(81, 1, 'Cartoon', '', 'Cartoon', 'Cartoon', 'Cartoon'),
(20, 2, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(27, 1, 'Stars', '', 'Stars', '', ''),
(27, 2, 'כוכבים', '', 'כוכבים', '', ''),
(73, 2, 'פינת-אוכל', '', 'פינת-אוכל', '', ''),
(66, 2, 'משפטים', '', 'משפטים', '', ''),
(65, 1, 'Trees', '', 'Trees', '', ''),
(65, 2, 'עצים', '', 'עצים', '', ''),
(66, 1, 'Sentences', '', 'Sentences', '', ''),
(70, 1, 'Babies', '', 'Babies', '', ''),
(33, 1, 'Best Sellers', '', 'Best Sellers', 'Best Sellers', 'Best Sellers'),
(33, 2, 'Cameras', '', 'Cameras', '', ''),
(70, 2, 'תינוקות', '', 'תינוקות', '', ''),
(18, 2, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(64, 3, 'Nature', '', 'Nature', '', ''),
(46, 2, 'Macs', '', 'Macs', '', ''),
(59, 3, 'Babies', '', 'babies', 'Babies', 'Babies'),
(20, 3, 'Shop by Theme', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Shop by Theme', 'Shop by Theme', 'Shop by Theme'),
(28, 3, '3D', '', '3D', '3D', '3D'),
(74, 2, 'חלל הבית', '', 'חלל הבית', '', ''),
(72, 2, 'סלון', '', 'סלון', '', ''),
(72, 1, 'Living-Room', '', 'Living-Room', '', ''),
(18, 1, 'Shop by Room', '&lt;p&gt;The ideal solution for designing your room wall stickers, because by means of wall stickers for the bedroom you can create an atmosphere where we want in the room space.&lt;/p&gt;&lt;p&gt;You can choose the wall stickers for the bedroom to suit and fit with the existing bedroom furniture in both color and style.&lt;/p&gt;&lt;p&gt;Bedroom wall stickers are stickers that can be easily pasted or removed without damage to the wall. In addition, the solution of using wall decals for the bedroom design is an inexpensive solution compared to other solutions and the use of wall decals for the bedroom even gives the result of a rich, elegant and inviting bedroom.&lt;/p&gt;&lt;p&gt;Wall stickers for bedroom are stickers made of high quality vinyl material that can be cleaned with a damp rag when needed.&lt;/p&gt;&lt;p&gt;All in all, the bedroom design using wall stickers for the bedroom is an ideal design solution, very impressive and with a wide variety of choices to choose from.&lt;/p&gt;&lt;p&gt;Choosing wall decals for the bedroom design is an intelligent and smart choice, and even with very high costs, which allows for a large number of choices in how to design the bedroom and compare the home to a rich and modern look.&lt;/p&gt;\r\n', 'Shop by Room', 'Shop by Room', 'Shop by Room'),
(34, 3, 'Gift Ideas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Gift Ideas', 'Gift Ideas ', 'Gift Ideas '),
(46, 3, 'Kids', '', 'Kids', '', ''),
(74, 3, 'Living-Space', '', 'Living-Space', '', ''),
(56, 3, 'Kids', '', 'Kids', 'Kids', 'Kids'),
(61, 1, 'Animals', '&lt;p&gt;&lt;span style=&quot;text-align: center; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;A wonderful selection of animals for your wall! Select out of the many categories such as butterflies, owls, pets, horses, predators or sea life.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Animals', 'Animals, animals, birds, dogs, cats, butterflies', 'Animals, animals, birds, dogs, cats, butterflies'),
(62, 3, 'Glowing', '', 'Glowing', '', ''),
(26, 1, 'Flowers', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;&lt;font color=&quot;#aaaaaa&quot; face=&quot;Open Sans, Arial, Helvetica, sans-serif&quot;&gt;Trees in the wind, blossoms or wonderful flowers. Here you will find many wall stickers&amp;nbsp;with plants and trees. From dandelions to trees, from blossoms to branches.&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Flowers', '', ''),
(45, 3, 'Teens', '', 'Teens', 'Teens', 'Teens'),
(25, 3, 'Sale', '', 'Sale', 'Sale', 'Sale'),
(27, 3, 'Stars', '', 'Stars', '', ''),
(65, 3, 'Trees', '', 'Trees', '', ''),
(66, 3, 'Sentences', '', 'Sentences', '', ''),
(70, 3, 'Babies', '', 'Babies', '', ''),
(33, 3, 'Best Sellers', '', 'Best Sellers', 'Best Sellers', 'Best Sellers'),
(72, 3, 'Living-Room', '', 'Living-Room', '', ''),
(18, 3, 'Shop by Room', '&lt;p&gt;The ideal solution for designing your room wall stickers, because by means of wall stickers for the bedroom you can create an atmosphere where we want in the room space.&lt;/p&gt;&lt;p&gt;You can choose the wall stickers for the bedroom to suit and fit with the existing bedroom furniture in both color and style.&lt;/p&gt;&lt;p&gt;Bedroom wall stickers are stickers that can be easily pasted or removed without damage to the wall. In addition, the solution of using wall decals for the bedroom design is an inexpensive solution compared to other solutions and the use of wall decals for the bedroom even gives the result of a rich, elegant and inviting bedroom.&lt;/p&gt;&lt;p&gt;Wall stickers for bedroom are stickers made of high quality vinyl material that can be cleaned with a damp rag when needed.&lt;/p&gt;&lt;p&gt;All in all, the bedroom design using wall stickers for the bedroom is an ideal design solution, very impressive and with a wide variety of choices to choose from.&lt;/p&gt;&lt;p&gt;Choosing wall decals for the bedroom design is an intelligent and smart choice, and even with very high costs, which allows for a large number of choices in how to design the bedroom and compare the home to a rich and modern look.&lt;/p&gt;\r\n', 'Shop by Room', 'Shop by Room', 'Shop by Room'),
(75, 1, 'Kitchen', '&lt;p&gt;&lt;span style=&quot;text-align: center;&quot;&gt;&lt;font color=&quot;#aaaaaa&quot; face=&quot;Open Sans, Arial, Helvetica, sans-serif&quot;&gt;Give your kitchen a wonderful wall sticker to create a warm family feeling. A wonderful quote, recipe, or a nice wall sticker&amp;nbsp;with flowers, food or vegetables. Bon Appetit!&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen', '', ''),
(76, 1, 'Quotes', '&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.38;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Quote wall stickers and motivational sentences can be used in offices to inspire the working staff, encourage and increased activity and productivity.&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.38;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Quote wall stickers and motivational sentences can also be used to inspire creative thinking and out-of-the-box thinking and convey a message we want to our children and the people around us.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span id=&quot;docs-internal-guid-ff5a229e-7fff-ca15-a9a5-13ff71f2c47b&quot;&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.38;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Quote wall stickers and motivational sentences allow us to see the message regularly in front of our eyes.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.38;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;line-height:1.38;margin-top:0pt;margin-bottom:0pt;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;text-align: center;&quot;&gt;&lt;font face=&quot;Arial&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Large selection of Quotes in our online wall art shop. Select your size and one of our 35 vivid colors. Combine with glow in the dark elements, 3D butterflies and more!&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', 'Quotes', '', ''),
(77, 1, 'Shapes', '&lt;p&gt;stars, hearts, butterflies&lt;br&gt;&lt;/p&gt;', 'Shapes', '', ''),
(77, 3, 'Shapes', '', 'Shapes', '', ''),
(78, 1, 'Geometric', '', 'Geometric', '', ''),
(78, 3, 'Geometric', '', 'Geometric', '', ''),
(79, 3, 'Door Decal', '', 'Door Decal', '', ''),
(79, 1, 'Door Decal', '', 'Door Decal', '', ''),
(80, 3, 'Home Accessories', '', 'Home Accessories', '', ''),
(80, 1, 'Home Accessories', '&lt;p&gt;&lt;span id=&quot;docs-internal-guid-661991b4-7fff-cfae-118e-1215c1a953a7&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;&quot;&gt;It can be so much fun to decorate your home and to make it cozy and comfortable where you can relax after a long day. At stickers-center you\'ll find wall decorations, for your best home design. And because we deliver right to your door, decorating could not be more fun and easy!&lt;/span&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Home Accessories', '', ''),
(81, 3, 'Cartoon', '', 'Cartoon', '', ''),
(82, 1, 'Birds', '', 'Birds', 'Birds', 'Birds'),
(82, 3, 'Birds', '', 'Birds', '', ''),
(83, 1, 'Bathroom', '', 'Bathroom', '', ''),
(83, 3, 'אמבטיה', '', 'אמבטיה', '', ''),
(84, 1, 'Businesses', '', 'Businesses', '', ''),
(85, 1, 'Girls', '', 'Girls', '', ''),
(85, 3, 'Girls', '', 'Girls', '', ''),
(86, 1, 'Boys', '', 'Boys', '', ''),
(86, 3, 'Boys', '', 'Boys', '', ''),
(87, 1, 'Butterflies', '', 'Butterflies', '', ''),
(87, 3, 'פרפרים', '', 'פרפרים', '', ''),
(84, 3, 'Businesses', '', 'Businesses', '', ''),
(26, 3, 'פרחים', '&lt;p style=&quot;direction: rtl; text-align: right;&quot;&gt;&lt;font color=&quot;#aaaaaa&quot; face=&quot;Open Sans, Arial, Helvetica, sans-serif&quot;&gt;עצים ברוח, פורחים או פרחים נהדרים. כאן תוכלו למצוא מדבקות קיר רבות עם צמחים ועצים. החל משן הארי לעצים, מפריחה לענפים ועלים.&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 'פרחים', 'פרחים', 'פרחים'),
(75, 3, 'מטבח', '&lt;p style=&quot;direction: rtl; &quot;&gt;הוסיפו למטבח שלכם מדבקת קיר נפלאה כדי ליצור תחושה משפחתית חמימה. ציטוט נפלא, מתכון או מדבקת קיר נחמדה עם פרחים, אוכל או ירקות. בתאבון!&lt;br&gt;&lt;/p&gt;', 'מטבח', '', ''),
(76, 3, 'ציטוטים', '&lt;p style=&quot;direction: rtl; &quot;&gt;&lt;font face=&quot;Arial&quot;&gt;מבחר גדול של ציטוטים בחנות המקוונת לאמנות הקיר שלנו. בחר את הגודל שלך ואחד מ- 35 הצבעים החיים שלנו. שלב עם זוהר באלמנטים הכהים, פרפרי תלת מימד ועוד!&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 'ציטוטים', '', ''),
(61, 3, 'חיות', '&lt;p style=&quot;direction: rtl; &quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;מבחר בעלי חיים נפלא לקיר שלכם! בחר מבין הקטגוריות הרבות כמו פרפרים, ינשופים, חיות מחמד, סוסים, טורפים או חיי ים.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 'חיות', 'חיות, בעלי חיים, ציפורים, כלבים, חתולים, פרפרים', 'חיות, בעלי חיים, ציפורים, כלבים, חתולים, פרפרים');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 28, 1),
(28, 20, 0),
(66, 66, 1),
(66, 20, 0),
(60, 34, 0),
(60, 60, 1),
(59, 34, 0),
(59, 59, 1),
(65, 20, 0),
(65, 65, 1),
(64, 64, 1),
(71, 18, 0),
(62, 20, 0),
(62, 62, 1),
(61, 20, 0),
(61, 61, 1),
(20, 20, 0),
(27, 27, 1),
(27, 20, 0),
(26, 26, 1),
(26, 20, 0),
(75, 75, 1),
(18, 18, 0),
(45, 45, 1),
(45, 18, 0),
(46, 46, 1),
(46, 18, 0),
(74, 74, 1),
(33, 33, 0),
(34, 34, 0),
(79, 80, 0),
(81, 20, 0),
(81, 81, 1),
(82, 82, 1),
(79, 79, 1),
(80, 80, 0),
(78, 20, 0),
(78, 78, 1),
(77, 20, 0),
(77, 77, 1),
(76, 20, 0),
(76, 76, 1),
(87, 20, 0),
(87, 87, 1),
(86, 46, 1),
(86, 86, 2),
(85, 85, 2),
(86, 18, 0),
(85, 18, 0),
(85, 46, 1),
(83, 83, 1),
(84, 84, 0),
(74, 18, 0),
(73, 73, 1),
(73, 18, 0),
(64, 20, 0),
(70, 18, 0),
(70, 70, 1),
(71, 71, 1),
(72, 18, 0),
(72, 72, 1),
(82, 20, 0),
(83, 18, 0),
(56, 56, 1),
(56, 34, 0),
(75, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(45, 0, 0),
(25, 0, 0),
(33, 0, 0),
(20, 0, 0),
(18, 0, 0),
(46, 0, 0),
(28, 0, 0),
(34, 0, 0),
(56, 0, 0),
(59, 0, 0),
(60, 0, 0),
(27, 0, 0),
(26, 0, 0),
(61, 0, 0),
(62, 0, 0),
(71, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(73, 0, 0),
(72, 0, 0),
(70, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(33, 0),
(34, 0),
(45, 0),
(46, 0),
(56, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(64, 0),
(65, 0),
(66, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2019-08-18 19:43:08'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00'),
(4, 'Israeli Shekel', 'ILS', '₪', '₪', '', 3.48000000, 1, '2019-08-08 16:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'Test1', 'Test1', 'test1@gmail.com', '8888', '', 'e7f88b81a99a8d43b2582d2545bc3a8038c8003d', '7vwVyL0ig', NULL, NULL, 0, 0, '', '109.67.1.168', 1, 0, '', '', '2019-08-08 07:38:33'),
(2, 1, 0, 1, 'Test2', 'Test2', 'nofaralfasi@gmail.com', '2222', '', 'afcff0ebce69a4635c12a4a3de8232d0a647f91a', 'ICCIzhFUZ', NULL, NULL, 1, 0, '', '109.67.1.168', 1, 0, '', '', '2019-08-08 07:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '109.67.1.168', '2019-08-08 07:38:33'),
(2, 2, '109.67.1.168', '2019-08-08 07:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(140) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'fraud', 'fraudlabspro'),
(44, 'analytics', 'google'),
(45, 'module', 'bestseller'),
(46, 'module', 'html'),
(47, 'module', 'pp_braintree_button'),
(48, 'module', 'store'),
(49, 'payment', 'bank_transfer'),
(50, 'module', 'special'),
(52, 'feed', 'google_sitemap');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_fraudlabspro`
--

CREATE TABLE `oc_fraudlabspro` (
  `order_id` varchar(11) NOT NULL,
  `is_country_match` char(2) NOT NULL,
  `is_high_risk_country` char(2) NOT NULL,
  `distance_in_km` varchar(10) NOT NULL,
  `distance_in_mile` varchar(10) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ip_country` varchar(2) NOT NULL,
  `ip_continent` varchar(20) NOT NULL,
  `ip_region` varchar(21) NOT NULL,
  `ip_city` varchar(21) NOT NULL,
  `ip_latitude` varchar(21) NOT NULL,
  `ip_longitude` varchar(21) NOT NULL,
  `ip_timezone` varchar(10) NOT NULL,
  `ip_elevation` varchar(10) NOT NULL,
  `ip_domain` varchar(50) NOT NULL,
  `ip_mobile_mnc` varchar(100) NOT NULL,
  `ip_mobile_mcc` varchar(100) NOT NULL,
  `ip_mobile_brand` varchar(100) NOT NULL,
  `ip_netspeed` varchar(10) NOT NULL,
  `ip_isp_name` varchar(50) NOT NULL,
  `ip_usage_type` varchar(30) NOT NULL,
  `is_free_email` char(2) NOT NULL,
  `is_new_domain_name` char(2) NOT NULL,
  `is_proxy_ip_address` char(2) NOT NULL,
  `is_bin_found` char(2) NOT NULL,
  `is_bin_country_match` char(2) NOT NULL,
  `is_bin_name_match` char(2) NOT NULL,
  `is_bin_phone_match` char(2) NOT NULL,
  `is_bin_prepaid` char(2) NOT NULL,
  `is_address_ship_forward` char(2) NOT NULL,
  `is_bill_ship_city_match` char(2) NOT NULL,
  `is_bill_ship_state_match` char(2) NOT NULL,
  `is_bill_ship_country_match` char(2) NOT NULL,
  `is_bill_ship_postal_match` char(2) NOT NULL,
  `is_ip_blacklist` char(2) NOT NULL,
  `is_email_blacklist` char(2) NOT NULL,
  `is_credit_card_blacklist` char(2) NOT NULL,
  `is_device_blacklist` char(2) NOT NULL,
  `is_user_blacklist` char(2) NOT NULL,
  `fraudlabspro_score` char(3) NOT NULL,
  `fraudlabspro_distribution` char(3) NOT NULL,
  `fraudlabspro_status` char(10) NOT NULL,
  `fraudlabspro_id` char(15) NOT NULL,
  `fraudlabspro_error` char(3) NOT NULL,
  `fraudlabspro_message` varchar(50) NOT NULL,
  `fraudlabspro_credits` varchar(10) NOT NULL,
  `api_key` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 51, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 52, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 53, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 55, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 56, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 57, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 58, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 59, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 60, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 61, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 62, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 63, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 64, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 65, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 66, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 67, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 68, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 69, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 70, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 71, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 72, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 73, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 74, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 75, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 76, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 77, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 78, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 79, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 80, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 81, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL,
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL,
  `country` varchar(2) NOT NULL,
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 1, 'About Us', '&lt;p&gt;Stickers-Center is an online shopping website selling quality wall-stickers at a fair price. &lt;/p&gt;&lt;p&gt;The owner of the business, Dvir Elimelech, is engaging in the flag of the business about the fairness of the price to the customer as well as the supply of good and high quality wall stickers that meet high standards of design and made of high quality materials. &lt;/p&gt;&lt;p&gt;Our love for wall stickers began a long time ago when we first had to decorate our own home, while we were searching for a comfortable yet&amp;nbsp; satisfying solution.&lt;/p&gt;&lt;p&gt;We soon realized that each room at our house looks and feel so much better if we add it a couple of wall stickers.&amp;nbsp;&lt;/p&gt;&lt;p&gt;This choice was such a success for us that we knew that we had to share this with more people.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;And here we are, 7 years later, serving hundreds of customers all over the world, helping you to make your living spaces look as you wish at an affordable cost.&lt;/p&gt;\r\n', 'About Us', 'about us, wall stickers shop, wall stickers store, wallpaper, wallpapers, wall decor, 3d wall stickers, kids room wall stickers', 'about us, wall stickers shop, wall stickers store, wallpaper, wallpapers, wall decor, 3d wall stickers, kids room wall stickers'),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 3, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 3, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 3, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 3, 'About Us', '&lt;p&gt;Stickers-Center is an online shopping website selling quality wall-stickers at a fair price. &lt;/p&gt;&lt;p&gt;The owner of the business, Dvir Elimelech, is engaging in the flag of the business about the fairness of the price to the customer as well as the supply of good and high quality wall stickers that meet high standards of design and made of high quality materials. &lt;/p&gt;&lt;p&gt;Our love for wall stickers began a long time ago when we first had to decorate our own home, while we were searching for a comfortable yet&amp;nbsp; satisfying solution.&lt;/p&gt;&lt;p&gt;We soon realized that each room at our house looks and feel so much better if we add it a couple of wall stickers.&amp;nbsp;&lt;/p&gt;&lt;p&gt;This choice was such a success for us that we knew that we had to share this with more people.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;And here we are, 7 years later, serving hundreds of customers all over the world, helping you to make your living spaces look as you wish at an affordable cost.&lt;/p&gt;\r\n', 'About Us', 'about us, wall stickers shop, wall stickers store, wallpaper, wallpapers, wall decor, 3d wall stickers, kids room wall stickers', 'about us, wall stickers shop, wall stickers store, wallpaper, wallpapers, wall decor, 3d wall stickers, kids room wall stickers');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(3, 'Hebrew', 'he-il', 'Hebrew,he-il', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(68, 6, 'account', 'column_right', 1),
(90, 1, 'featured.28', 'content_top', 1),
(75, 3, 'banner.30', 'column_left', 2),
(74, 3, 'category', 'column_left', 1),
(89, 1, 'slideshow.27', 'content_top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(54, 3, 0, 'product/category'),
(60, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Centimeter', 'cm'),
(2, 3, 'Millimeter', 'mm'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"7\",\"width\":\"182\",\"height\":\"182\",\"status\":\"0\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"100\",\"height\":\"90\",\"status\":\"0\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"58\",\"50\",\"57\",\"64\",\"66\",\"75\",\"61\",\"62\",\"60\",\"59\",\"78\",\"69\",\"76\",\"68\",\"80\",\"73\",\"67\",\"55\"],\"limit\":\"20\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"900\",\"height\":\"400\",\"status\":\"1\"}'),
(37, 'Wall Stickers', 'special', '{\"name\":\"Wall Stickers\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(40, 'BestSellers', 'bestseller', '{\"name\":\"BestSellers\",\"limit\":\"10\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(1, 3, 'Radio'),
(2, 3, 'Checkbox'),
(4, 3, 'Text'),
(6, 3, 'Textarea'),
(8, 3, 'Date'),
(7, 3, 'File'),
(5, 3, 'Select'),
(9, 3, 'Time'),
(10, 3, 'Date &amp; Time'),
(12, 3, 'Delivery Date'),
(11, 3, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL,
  `tracking_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(17, 1, 'Fraud'),
(18, 1, 'Fraud Review'),
(2, 3, 'Processing'),
(3, 3, 'Shipped'),
(7, 3, 'Canceled'),
(5, 3, 'Complete'),
(8, 3, 'Denied'),
(9, 3, 'Canceled Reversal'),
(10, 3, 'Failed'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 3, 'Chargeback'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired'),
(17, 3, 'Fraud'),
(18, 3, 'Fraud Review');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(50, 'Wall sticker', 'DA1906-09-89', '', '', '', '', '', '', 1, 6, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies1.jpg', 0, 1, '49.0000', 0, 0, '2019-08-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 127, '2019-08-08 15:52:14', '2019-08-18 14:26:54'),
(51, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/belive-in-yourself2.png', 0, 1, '11.0000', 0, 0, '2019-08-18', '0.90000000', 1, '0.90000000', '0.90000000', '0.90000000', 1, 1, 1, 1, 1, 1, '2019-08-11 11:25:48', '2019-08-11 11:47:39'),
(52, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/dreams-and-investment-are-equal-to-success1.png', 0, 1, '11.0000', 0, 0, '2019-08-18', '0.90000000', 1, '0.90000000', '0.90000000', '0.90000000', 1, 1, 1, 1, 1, 0, '2019-08-11 11:25:48', '2019-08-11 11:25:48'),
(53, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/dance-in-the-rain2.png', 0, 1, '12.0000', 0, 0, '2019-08-11', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 96, '2019-08-11 11:32:32', '2019-08-11 11:39:39'),
(55, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/never-stop-dreaming2.png', 0, 1, '13.0000', 0, 0, '2019-08-11', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 154, '2019-08-11 11:35:36', '2019-08-17 10:05:38'),
(56, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/love-your-life1.png', 0, 1, '13.0000', 0, 0, '2019-08-11', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 240, '2019-08-11 11:35:36', '2019-08-11 11:37:16'),
(57, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/Kids/pineapples2.jpg', 0, 1, '19.0000', 0, 0, '2019-08-14', '0.45000000', 1, '0.15000000', '0.21000000', '0.00000000', 1, 1, 1, 1, 1, 87, '2019-08-14 09:41:59', '2019-08-17 20:50:03'),
(58, 'Wallpaper', '', '', '', '', '', '', '', 1, 6, 'catalog/wallpapers/marble4.jpg', 0, 1, '24.0000', 0, 0, '2019-08-14', '0.00000000', 1, '60.00000000', '100.00000000', '0.00000000', 1, 1, 1, 1, 1, 23, '2019-08-14 10:09:26', '2019-08-17 20:51:42'),
(59, 'Wall sticker', 'DA1907-03-35', '', '', '', '', '', '', 1, 6, 'catalog/birds/branch-birds1.png', 0, 1, '19.0000', 0, 0, '2019-08-18', '0.90000000', 1, '0.90000000', '0.90000000', '0.90000000', 1, 1, 1, 1, 1, 0, '2019-08-14 10:48:06', '2019-08-17 16:56:10'),
(60, 'Wall sticker', 'DA1907-02-67', '', '', '', '', '', '', 1, 6, 'catalog/birds/black-birds-on-branch1.jpg', 0, 1, '17.0000', 0, 0, '2019-08-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-14 10:48:06', '2019-08-17 17:19:29'),
(61, 'Wall sticker', 'DA1907-03-35', '', '', '', '', '', '', 1, 6, 'catalog/birds/colorful-birds-and-leaves-flowers1.jpg', 0, 1, '23.0000', 0, 0, '2019-08-14', '0.45000000', 1, '0.15000000', '0.21000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2019-08-14 10:48:06', '2019-08-18 12:35:47'),
(62, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/trees/big-size-tree-wall-stickers4.png', 0, 1, '32.0000', 0, 0, '2019-08-11', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 9, '2019-08-14 10:48:06', '2019-08-17 11:53:35'),
(63, 'Wall sticker', 'DA1907-04-84', '', '', '', '', '', '', 1, 6, 'catalog/Animals/puupies-pink-ballons1-min.jpg', 0, 1, '24.0000', 0, 0, '2019-08-18', '0.00000000', 1, '50.00000000', '70.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-14 10:48:06', '2019-08-18 12:20:42'),
(64, 'Wall sticker', 'DA1907-03-79', '', '', '', '', '', '', 1, 6, 'catalog/birds/flower-baskets-and-birds1.png', 0, 1, '27.0000', 0, 0, '2019-08-11', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-14 10:48:06', '2019-08-18 13:54:57'),
(65, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/Kids/Girls/cute-princess4.png', 0, 1, '24.0000', 0, 0, '2019-08-14', '0.00000000', 1, '60.00000000', '100.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-14 10:48:06', '2019-08-17 12:12:30'),
(66, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/Animals/cartoon-cat2.png', 0, 1, '15.0000', 0, 0, '2019-08-11', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-14 10:48:06', '2019-08-17 12:15:16'),
(67, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/Kids/hearts9.jpg', 0, 1, '9.0000', 0, 0, '2019-08-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 55, '2019-08-14 12:31:38', '2019-08-17 20:52:20'),
(68, 'Wall sticker', 'DA1907-03-62', '', '', '', '', '', '', 1, 6, 'catalog/plants/tropical-watercolor-leaf-flower1.png', 0, 1, '23.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-17 12:19:05', '2019-08-18 14:51:11'),
(69, 'Wall sticker', 'DA1907-03-71', '', '', '', '', '', '', 1, 6, 'catalog/birds/black-birds-flying-flowers-art2.jpg', 0, 1, '27.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-17 12:22:43', '2019-08-18 13:14:17'),
(70, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/cartoon/fairies-painted2.png', 0, 1, '18.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2019-08-17 12:27:04', '2019-08-17 12:27:04'),
(71, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/Kids/Girls/fairy-pink3.png', 0, 1, '22.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-17 12:33:23', '2019-08-17 12:33:23'),
(72, 'Wall sticker', 'DA1907-01-96', '', '', '', '', '', '', 1, 6, 'catalog/kitchen/smiling-cartoon-kitchenwares1.jpg', 0, 1, '14.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.30000000', '0.45000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-17 12:36:00', '2019-08-17 13:57:09'),
(73, 'Wall sticker', 'DA1907-02-69', '', '', '', '', '', '', 1, 6, 'catalog/kitchen/cartoon-kitchenwares1.jpg', 0, 1, '13.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2019-08-17 12:38:00', '2019-08-18 09:15:47'),
(74, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/cartoon/unicorn1.jpg', 0, 1, '17.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-17 13:59:37', '2019-08-17 14:48:01'),
(75, 'Wall sticker', 'DN1908-05-31', '', '', '', '', '', '', 1, 6, 'catalog/Animals/map-kids-room2.jpg', 0, 1, '27.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2019-08-17 14:16:09', '2019-08-17 19:35:04'),
(76, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/stars/mini-silver-stars1.jpg', 0, 1, '19.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2019-08-17 14:22:08', '2019-08-18 15:06:26'),
(77, 'Wall sticker', 'DA1907-01-91', '', '', '', '', '', '', 1, 6, 'catalog/food/summer-ice-cream-wall-sticker1.jpg', 0, 1, '22.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-17 14:56:47', '2019-08-17 14:59:05'),
(78, 'Wall sticker', 'DA1907-01-98', '', '', '', '', '', '', 1, 6, 'catalog/stars/multi-colors-mini-stars1.jpg', 0, 1, '26.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2019-08-17 15:08:54', '2019-08-18 12:54:11'),
(79, 'Wall sticker', 'DA1907-04-95', '', '', '', '', '', '', 1, 6, 'catalog/Animals/wall-sticker-3d view-elephants1.jpg', 0, 1, '26.0000', 0, 0, '2019-08-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-17 15:25:33', '2019-08-17 15:27:35'),
(80, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/glowing/glowing-in-the-dark-mini-dots1.jpg', 0, 1, '9.0000', 0, 0, '2019-08-18', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-17 20:03:44', '2019-08-18 13:31:10'),
(81, 'Wall sticker', '', '', '', '', '', '', '', 1, 6, 'catalog/glowing/glowing-in-the-dark-mini-stars1.jpg', 0, 1, '9.0000', 0, 0, '2019-08-18', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2019-08-17 20:07:22', '2019-08-18 13:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(53, 2, 'לרקוד בגשם', '&lt;p&gt;לרקוד בגשם&lt;br&gt;&lt;/p&gt;', '', 'לרקוד בגשם', 'לרקוד בגשם', 'לרקוד בגשם'),
(51, 1, 'Believe in Yourself', '&lt;p&gt;Believe in Yourself&lt;br&gt;&lt;/p&gt;', 'Dreams, Believe', 'Believe in Yourself', 'Believe in Yourself', 'Believe in Yourself'),
(51, 2, 'תאמין בעצמך', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: Roboto, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;div id=&quot;translation&quot; style=&quot;color: rgb(37, 37, 37); font-family: Roboto, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline;&quot;&gt;&lt;div class=&quot;gtx-body&quot; style=&quot;display: inline; font-size: 18px; margin: 5px auto; padding: 5px 0px;&quot;&gt;תאמין בעצמך&lt;/div&gt;&lt;br&gt;&lt;/div&gt;', '', 'תאמין בעצמך', 'תאמין בעצמך', 'תאמין בעצמך'),
(52, 1, 'Dreams &amp; Investment are Equal to Success', '&lt;p&gt;Dreams &amp;amp; Investment are Equal to Success&lt;br&gt;&lt;/p&gt;', 'Dreams', 'Dreams &amp; Investment are Equal to Success', 'Dreams &amp; Investment are Equal to Success', 'Dreams &amp; Investment are Equal to Success'),
(52, 2, 'חלומות והשקעה שווים להצלחה', '&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: Roboto, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;div id=&quot;translation&quot; style=&quot;color: rgb(37, 37, 37); font-family: Roboto, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline;&quot;&gt;&lt;div class=&quot;gtx-body&quot; style=&quot;display: inline; font-size: 18px; margin: 5px auto; padding: 5px 0px;&quot;&gt;חלומות והשקעה שווים להצלחה&lt;/div&gt;&lt;br&gt;&lt;/div&gt;', '', 'חלומות והשקעה שווים להצלחה', 'חלומות והשקעה שווים להצלחה\r\n', 'חלומות והשקעה שווים להצלחה\r\n'),
(55, 3, 'Never Stop Dreaming', '&lt;p&gt;Never Stop Dreaming&lt;br&gt;&lt;/p&gt;', 'dream', 'Never Stop Dreaming', 'Never Stop Dreaming', 'Never Stop Dreaming'),
(56, 2, 'לעולם אל תפסיק לחלום', '&lt;p&gt;לעולם אל תפסיק לחלום&lt;br&gt;&lt;/p&gt;', '', 'לעולם אל תפסיק לחלום', 'לעולם אל תפסיק לחלום', 'לעולם אל תפסיק לחלום'),
(56, 1, 'Love Your Life', '&lt;p&gt;Love Your Life&lt;br&gt;&lt;/p&gt;', 'dream', 'Love Your Life', 'Love Your Life', 'Love Your Life'),
(53, 1, 'Dance In The Rain', '&lt;p&gt;Dance In The Rain&lt;br&gt;&lt;/p&gt;', 'Dance, rain', 'Dance In The Rain', 'Dance In The Rain', 'Dance In The Rain'),
(51, 3, 'Believe in Yourself', '&lt;p&gt;Believe in Yourself&lt;br&gt;&lt;/p&gt;', 'Dreams, Believe', 'Believe in Yourself', 'Believe in Yourself', 'Believe in Yourself'),
(52, 3, 'Dreams &amp; Investment are Equal to Success', '&lt;p&gt;Dreams &amp;amp; Investment are Equal to Success&lt;br&gt;&lt;/p&gt;', 'Dreams', 'Dreams &amp; Investment are Equal to Success', 'Dreams &amp; Investment are Equal to Success', 'Dreams &amp; Investment are Equal to Success'),
(55, 1, 'Never Stop Dreaming', '&lt;p&gt;Never Stop Dreaming&lt;br&gt;&lt;/p&gt;', 'dream', 'Never Stop Dreaming', 'Never Stop Dreaming', 'Never Stop Dreaming'),
(56, 3, 'Love Your Life', '&lt;p&gt;Love Your Life&lt;br&gt;&lt;/p&gt;', 'dream', 'Love Your Life', 'Love Your Life', 'Love Your Life'),
(53, 3, 'Dance In The Rain', '&lt;p&gt;Dance In The Rain&lt;br&gt;&lt;/p&gt;', 'Dance, rain', 'Dance In The Rain', 'Dance In The Rain', 'Dance In The Rain'),
(58, 1, 'Modern 3D Marble Texture Wallpaper', '&lt;p&gt;Comes with adhesive on the back, remove the backing paper, can be directly paste, easy to operate.&lt;/p&gt;&lt;p&gt;PVC environmental protection material, waterproof, easy to clean.&lt;/p&gt;&lt;p&gt;high temperature resistant, not easy to fade.&lt;/p&gt;&lt;p&gt;Use scope: bathroom, dining table, TV setting wall, bathroom, etc.&lt;/p&gt;', '', 'Modern 3D Marble Texture Wallpaper', '', ''),
(58, 3, 'Marble Paper Granite Gray/White Roll', '', '', 'Marble Paper Granite Gray/White Roll', '', ''),
(62, 1, 'Big Size Elegant Bright Tree', '&lt;p&gt;Dance In The Rain&lt;br&gt;&lt;/p&gt;', 'tree, elegant', 'Big Size Elegant Bright Tree', 'Big Size Elegant Bright Tree', 'Big Size Elegant Bright Tree'),
(62, 3, 'Big Size Elegant Bright Tree', '&lt;p&gt;Dance In The Rain&lt;br&gt;&lt;/p&gt;', 'Dance, rain', 'Big Size Elegant Bright Tree', 'Big Size Elegant Bright Tree', 'Big Size Elegant Bright Tree'),
(71, 1, 'Pink Fairy Playing With Butterflies', '&lt;p&gt;Pink Fairy Playing With Butterflies&lt;br&gt;&lt;/p&gt;', '', 'Pink Fairy Playing With Butterflies', '', ''),
(71, 3, 'Pink Fairy Playing With Butterflies', '', '', 'Pink Fairy Playing With Butterflies', '', ''),
(73, 3, 'מדבקת קיר- כלי מטבח', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מדבקת קיר- כלי מטבח&amp;nbsp;העשוי נייר אלומיניום מיוחד.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;90x60 ס&quot;מ.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקת קיר- כלי מטבח', '', ''),
(72, 3, 'Happy Pan Kitchen Wall Stickers', '&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: center; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;div style=&quot;text-align: left; font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;&lt;div style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Product&amp;nbsp; receive size : 45cm * 30cm&amp;nbsp;&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left; font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;Size is for reference only. The size you can paste freely.&lt;/span&gt;&lt;/div&gt;&lt;div data-spm-anchor-id=&quot;2114.12057483.0.i10.137875bc7nuhCW&quot; style=&quot;text-align: left; font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Material: PVC&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Environmentally friendly&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;Removable,&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;&amp;nbsp;waterproof,&amp;nbsp;&lt;/span&gt;&lt;/span&gt;mildew proof&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;Double-sided visual patterns;&lt;/span&gt;&lt;/div&gt;&lt;div data-spm-anchor-id=&quot;2114.12057483.0.i13.137875bc7nuhCW&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;No marks will be left&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Can be applied to any smooth and clean surfaces&lt;/span&gt;&lt;/span&gt;&amp;nbsp;such as walls, doors, windows, closet, etc.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Decorate your home, make it more romantic&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 18px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Try not to paste again and again.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div data-spm-anchor-id=&quot;2114.12057483.0.i14.137875bc7nuhCW&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 18px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 18px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;NOT suitable for dirty or rough surface&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;', '', 'Kitchen ', '', ''),
(65, 3, 'Cute Princess', '', '', 'Cute Princess', '', ''),
(70, 1, 'Colorful Painted Art Fairies', '&lt;p&gt;Colorful Painted Art Fairies&lt;br&gt;&lt;/p&gt;', '', 'Colorful Painted Art Fairies', '', ''),
(70, 3, 'Colorful Painted Art Fairies', '', '', 'Colorful Painted Art Fairies', '', ''),
(65, 1, 'Cute Princess', '&lt;p&gt;Cute Princess&lt;br&gt;&lt;/p&gt;', '', 'Cute Princess', '', ''),
(66, 3, 'Cartoon Cats', '&lt;p&gt;Cartoon Cats&lt;br&gt;&lt;/p&gt;', 'dream', 'Cartoon Cats', 'Cartoon Cats', 'Cartoon Cats'),
(66, 1, 'Cartoon Cats', '&lt;p&gt;Cartoon Cats&lt;br&gt;&lt;/p&gt;', 'dream', 'Cartoon Cats', 'Cartoon Cats', 'Cartoon Cats'),
(67, 1, 'Small Hearts Wall Stickers Decal', '', '', 'Small Hearts Wall Stickers Decal', '', ''),
(67, 3, 'Small Hearts Wall Stickers Decal', '', '', 'Small Hearts Wall Stickers Decal', '', ''),
(72, 1, 'Happy Pan Kitchen Wall Stickers', '&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: center; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;div style=&quot;text-align: left; font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;&lt;div style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Product&amp;nbsp; receive size : 45cm * 30cm&amp;nbsp;&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left; font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;Size is for reference only. The size you can paste freely.&lt;/span&gt;&lt;/div&gt;&lt;div data-spm-anchor-id=&quot;2114.12057483.0.i10.137875bc7nuhCW&quot; style=&quot;text-align: left; font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;Material: PVC&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Environmentally friendly&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;Removable,&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;&amp;nbsp;waterproof,&amp;nbsp;&lt;/span&gt;&lt;/span&gt;mildew proof&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 30px; vertical-align: baseline;&quot;&gt;Double-sided visual patterns;&lt;/span&gt;&lt;/div&gt;&lt;div data-spm-anchor-id=&quot;2114.12057483.0.i13.137875bc7nuhCW&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;No marks will be left&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Can be applied to any smooth and clean surfaces&lt;/span&gt;&lt;/span&gt;&amp;nbsp;such as walls, doors, windows, closet, etc.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Decorate your home, make it more romantic&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 18px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;Try not to paste again and again.&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div data-spm-anchor-id=&quot;2114.12057483.0.i14.137875bc7nuhCW&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; overflow-wrap: break-word;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 18px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 18px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: 27px; vertical-align: baseline;&quot;&gt;NOT suitable for dirty or rough surface&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;', '', 'Happy Pan Kitchen Wall Stickers', 'Sunnyys Happy Pan Creative Wall Sticker Kitchen Refrigerator Cabinet Waterproof Wall', 'Sunnyys Happy Pan Creative Wall Sticker Kitchen Refrigerator Cabinet Waterproof Wall'),
(75, 3, 'Animals of The World', '', '', 'Animals of The World', '', ''),
(75, 1, 'Animals of The World', '&lt;p&gt;&lt;span style=&quot;font-size: small; font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;Animals of the World Wall Stickers&lt;/span&gt;&lt;span style=&quot;font-size: small; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;This is the latest edition of our &quot;&quot;Animal World Map&quot;&quot;.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;This wonderful children\'s educational wall sticker, exclusive to Decowall, is sure to add a burst of vibrant and beautiful colours to any wall in your family home.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;The new must-have &quot;&quot;Animal World Map&quot;&quot; gives you the chance to learn with your child showing them the natural world; including the oceans, continents, and wildlife that live in the region.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;All our Decowall stickers are environmentally friendly, non-toxic and do not leave any sticky residue when removed as they come with water-based adhesive.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Product Code:&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&amp;nbsp;DL-1815&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Dimensions:&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;2 sheets of 74cm(w) x 44cm(h) (29.5&quot;&quot; x 17.3&quot;&quot;)&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;World map overall size : 127.3cm(w) X 82.1cm(h) (50.1&quot;&quot; x 32.3&quot;&quot;) approx&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Material:&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&amp;nbsp;Transparent Film (Eco-friendly, Repositionable, Removable, Water-borne Adhesive)&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Application:&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&amp;nbsp;Can be applied to any flat surfaces such as painted walls or ceiling, wallpaper, cupboard, furniture, glass, metal, even in the bathroom.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Features:&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&amp;nbsp;Finest quality film, eco-friendly, removable, repositionable, can be wiped clean, easy to apply.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;* Please note that some nations and islands may not be included in the map due to the nature of the product. Please contact directly for more information.&lt;/span&gt;&lt;span style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 20px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Animals of The World', 'Decowall DL-1815 Animals of The World Kids Wall Stickers Wall Decals Peel and Stick Removable Wall Stickers for Kids Nursery Bedroom Living Room\r\n\r\n', 'Decowall DL-1815 Animals of The World Kids Wall Stickers Wall Decals Peel and Stick Removable Wall Stickers for Kids Nursery Bedroom Living Room\r\n\r\n'),
(76, 3, 'מדבקות קיר כוכבים כסופים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;גדלים:&lt;/strong&gt;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;45 כוכבים לפי החלוקה הבאה (25 כוכבים של 3 ס&quot;מ, 10 כוכבים 4 ס&quot;מ, 10 כוכבים 5 ס&quot;מ)&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;24 כוכבים לפי החלוקה הבאה (18 כוכבים של 3 ס&quot;מ, 6 כוכבים של 10 ס&quot;מ)&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;ויניל איכותי&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקות קיר כוכבים כסופים', '', ''),
(57, 1, 'Cartoon Pineapples Wall Stickers', '&lt;p&gt;100% New Brand And High Quality&lt;/p&gt;&lt;p&gt;Cartoon Children Room Nursery DIY Wall Sticker&lt;/p&gt;&lt;p&gt;Waterproof And Removable Furniture Stickers&lt;/p&gt;&lt;p&gt;No Irritant Smell/ Waterproof /Easy To Paste&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Material:Eco-friendly waterproof PVC&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Note: Applies on walls(Any dry,smooth,dust free surface)&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Features:This product comes with self-adhensive vinyl sheet only,you just need to peel and stick it onto the wall.No tools needed,easy for handle.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Perfect decoration for your bedroom or living room.Will give your room a refreshing look and create a charming atmosphere,It will give you a stunning touch of your in terio&lt;/span&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br&gt;&lt;br&gt;Layout Size&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;A5(14.8x21cm)x6sheets&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;A5(5.8x8.2inch)x6sheets&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Each Decal on wall&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;approx 10x5cm x 18pcs (3.94x1.97inch x 18pcs)&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;font-weight: 700; color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br&gt;Package&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;6 x PVC stickers&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cartoon Pineapples Wall Stickers', 'Cartoon Pineapples Wall Stickers', 'Cartoon Pineapples Wall Stickers'),
(74, 3, 'Unicorn', '', '', 'Unicorn', '', ''),
(77, 3, 'Ice Cream Sweet Wall Art Sticker', '', '', 'Ice Cream Sweet Wall Art Sticker', '', ''),
(74, 1, 'Creative Cute Rainbow Unicorn With Colorful Hearts', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Material: PVC&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Color: Colorful(as pictures show)&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Size: 36 x 60cm/14.0 x 24.0 inches&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Product Description:&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Cartoon Style Wall Stickers for Home Decoration.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Beautiful pink wall decals feature a animal pattern and stars design.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Easy to apply and remove without leaving any residue. Not suitable for dirty or rough surface.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Suitable for bedrooms, living rooms, playing rooms, nurseries and home decor.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Creative Cute Rainbow Unicorn With Colorful Hearts', 'Unicorn', ''),
(77, 1, 'Ice Cream Sweet Wall Art Sticker', '&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-none&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Completed Reference Size: 60*70 CM; Package Size: 30*90 CM (DIY Collage)&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;High Quality Material---Decals made of high quality PVC/Vinyl Material; Odor-free environment; Harmless; Please feel at ease to use&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Easy to Install and Removable---No need to cut, can be tear off directly then pasted; this decal is no the white side, so you can paste it on any color surface; Imported green plastic, easy to remove and not to hurt the wall&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Applicable Surface---Painted walls, Tile, Metal, Polished Wood, Plastic and other Smooth Surfaces. Not available in severe peeling off the gray walls, obviously uneven walls&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Wide Range Of Applications --- Living Room, Sofa, TV Wall, Children\'S Room, Bedroom, Study, Entrance Hallway, Closet Doors, Glass Windows Doors etc. Fine quality, full color pattern which give bring the different visual feeling in room, not the blank wall again&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', '', 'Ice Cream Sweet Wall Art Sticker', '', ''),
(78, 1, 'Colorful Multi-size Stars', '&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-none&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px;&quot;&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Material: Self Adhesive Vinyl.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Set of 123 white stars- 2.2&quot;- 27 stars; 1.8&quot;- 30 stars; 1&quot;- 60 stars 4.4&quot;-6 stars&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Safe and removable on painted wall or any smooth, flat, dry and dust free surface so you don’t need to worry about damaging wall paints&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Easy to peel and stick vinyl wall decals, no tools required to install the stars wall decals&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Works great for decorating apartments, kids rooms or nursery and so on.&lt;/font&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', '', 'Colorful Multi-size Stars', '', ''),
(78, 3, 'מדבקת קיר כוכבים צבועים בשלל צבעים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מדבקת קיר כוכבים צבועים בשלל צבעים צבעוניים.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;כמות כוכבים:&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;67 כוכבים (34 כוכבים גדולים של 6 ס&quot;מ ו 33 כוכבים קטנים של 3 ס&quot;מ)&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקת קיר כוכבים צבועים בשלל צבעים', 'מדבקת קיר כוכבים צבועים בשלל צבעים', 'מדבקת קיר כוכבים צבועים בשלל צבעים');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(79, 3, 'מדבקת קיר מראה תלת מימד- פילים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מדבקת קיר מראה תלת מימד- פילים.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;גודל מומלץ 70x50 ס&quot;מ&amp;nbsp;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PMMA&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקת קיר מראה תלת מימד- פילים', 'מדבקת קיר מראה תלת מימד- פילים', 'מדבקת קיר מראה תלת מימד- פילים'),
(79, 1, 'Elephant Mirror 3D Art Sticker', '&lt;p style=&quot;margin: 10px; font-size: 14px; line-height: 24.7619px; font-family: sans-serif; border-radius: 0px;&quot;&gt;&lt;span style=&quot;font-family: arial; font-size: 11pt;&quot;&gt;As clear as a mirror&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul style=&quot;list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px;&quot;&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Brand new and high quality&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;good viscidity, water resistant, suitable for most flat smooth surfaces without leaving residue, however a pre-test is highly recommended&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;This product can stick onto most hard surfaces such as painted and wallpapered walls, vehicle bodywork, windows, tiles,mirrors,fridge etc.&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;DIY for your lovely and elegant Room, it will be beautiful, dream house and love house&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;You can easily become your home decoration designers.&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin: 10px; font-size: 14px; line-height: inherit; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif, Heiti; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14pt; font-weight: 700; font-family: arial;&quot;&gt;Specifications:&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px;&quot;&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Finish Size : according to your design, please refer our photo&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Pattern: Elephant&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Material: Acrylic&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Size: 15 x 25 cm&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin: 10px; font-size: 14px; line-height: inherit; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif, Heiti; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 12pt; font-weight: 700; font-family: arial;&quot;&gt;How to use the sticker:&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif, Heiti; font-size: 14px;&quot;&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Step 2:Rub over the surface of the sticker.&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Step 3:Put sticker stick to wall sticker and place onto surface.&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p data-spm-anchor-id=&quot;a2g0o.detail.1000023.i0.7684565d01KkIU&quot; style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;Step 1:Make sure the surface you apply it to is clean.&lt;/span&gt;&lt;/p&gt;&lt;p data-spm-anchor-id=&quot;a2g0o.detail.1000023.i0.7684565d01KkIU&quot; style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p data-spm-anchor-id=&quot;a2g0o.detail.1000023.i0.7684565d01KkIU&quot; style=&quot;margin: 10px; line-height: inherit; border-radius: 0px;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 11pt; font-family: arial;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-none&quot; style=&quot;margin-right: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 13px;&quot;&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;CHARACTER:Light weight, easy to install, good mirror effect&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;EASY TO STICK : Easily removable without damaging your wall.No harm to the environment and health.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;ENJOY the FUN of DIY :You can design the position and size of the clock as you like,at the same time,you will enjoy the fun of DIY with your family and friends&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;GOODWILL ADVICE:You can use TV backdrops, rooms, children\'s rooms, ceilings, bathrooms or more&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;REFUND GUARANTEE:Quality problems and damage caused by transit, 100% fast full refund, you will not have any money loss&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;', '', 'Elephant Mirror 3D Art Sticker', ' 3D Mirror Love Elephant', ' 3D Mirror Love Elephant'),
(68, 3, 'מדבקת קיר צמחים טרופיים', '&lt;p dir=&quot;rtl&quot;&gt;&lt;strong&gt;מדבקת קיר - פיל נורדיק סגנון תלת מימד.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot;&gt;&lt;u&gt;&lt;strong&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot;&gt;מומלץ: 62x62 ס&quot;מ, או בפיזור חופשי ורחב יותר.&lt;/p&gt;&lt;p dir=&quot;rtl&quot;&gt;&lt;strong&gt;זמן אספקה:&lt;/strong&gt; מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot;&gt;&lt;strong&gt;תכונות:&lt;/strong&gt; רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br&gt;&lt;strong&gt;סוג החומר:&lt;/strong&gt; PVC ויניל איכותי.&lt;/p&gt;', '', 'מדבקת קיר צמחים טרופיים', 'מדבקת קיר צמחים טרופיים', 'מדבקת קיר צמחים טרופיים'),
(63, 3, 'מדבקת קיר- קריקטורת כלבים עם בלון', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מדבקת קיר- קריקטורת כלבים עם בלון&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מצב סגור: 70x50 ס&quot;מ.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מצב פתוח: מומלץ כמופיע בתמונה או בכל פיזור חופשי אחר.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', 'Dreams', 'מדבקת קיר- קריקטורת כלבים עם בלון', 'מדבקת קיר- קריקטורת כלבים עם בלון', 'מדבקת קיר- קריקטורת כלבים עם בלון'),
(69, 3, 'מדבקת קיר ציפורים אומנות', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מדבקת קיר ציפורים אומנות.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מצב סגור: 70x50 ס&quot;מ.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מצב פתוח: מומלץ: 120x110 ס&quot;מ, או בפיזור חופשי .&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקת קיר ציפורים אומנות', 'מדבקת קיר ציפורים אומנות', 'מדבקת קיר ציפורים אומנות'),
(61, 3, 'מדבקת קיר- ציפורים ופרחים צבעוניים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מדבקת קיר- ציפורים ופרחים צבעוניים&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;צבע: צבעוני&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;60x45&amp;nbsp; ס&quot;מ.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקת קיר- ציפורים ופרחים צבעוניים', '', ''),
(59, 1, 'Branch Birds', '&lt;p style=&quot;font-size: medium;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;100% Brand new and high quality&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: medium;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Made of high quality material, more durable.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: medium;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Non-toxic, environmental protection, waterproof.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: medium;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Easy to install and easy to remove.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: medium;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Suitable for most flat and smooth surfaces such as walls, doors, windows, closets, plastics, metals, tiles, etc.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;', 'Dreams, Believe, Branch, Birds', 'Branch Birds', 'Branch Birds', 'Branch Birds'),
(59, 3, 'ציפורים שחורות על ענף עם פרחים וורודים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;ציפורים שחורות על ענף עם פרחים וורודים- אפקט 3D&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;38x11 ס&quot;מ&amp;nbsp;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', 'Dreams, Believe', 'ציפורים שחורות על ענף עם פרחים וורודים', 'Believe in Yourself', 'Believe in Yourself'),
(60, 3, 'ציפורים שחורות יושבות על ענף', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;ציפורים שחורות יושבות על ענף.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;38x11 ס&quot;מ&amp;nbsp;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', '', 'ציפורים שחורות יושבות על ענף', '', ''),
(60, 1, 'Black Birds Sitting on a Branch', '&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-none&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;&quot;&gt;&lt;li style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Material:Vinyl&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;DIY on the wall size approx:38 cm * 11 cm &amp;amp; 15&quot; * 4&quot;(All product outward appearance, the size color take the material object as, the picture only supply the reference.)&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;This birds style wall decal is sure to bring your living room with a feeling of cool and peace. Gather your families here and have fun.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Special birds design for this is decorative and make your room special. It will give an amazing touch to your home interior.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;A beautiful wall art wall decal for your home or office will give your room a refreshing look, create an enchanting atmosphere.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-bottom: 0px; color: rgb(17, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; list-style: disc; overflow-wrap: break-word;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Receive Size: 11x38cm.&lt;/span&gt;&lt;/p&gt;', '', 'Black Birds Sitting on a Branch', 'Black Birds Sitting on a Branch', 'Black Birds Sitting on a Branch'),
(64, 3, 'אדניות פרחים ציפורים ופרפרים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;עדניות פרחים ציפורים ופרפרים.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מצב סגור: 70x50 ס&quot;מ.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מצב פתוח: מומלץ&amp;nbsp; 160x100 כמופיע בתמונה או כל פיזור חופשי אחר.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', 'dream', 'אדניות פרחים ציפורים ופרפרים', 'Flower Boxes &amp; Birds', 'Flower Boxes &amp; Birds'),
(81, 3, 'מדבקות קיר זוהרות בחשיכה - כוכבים כחולים וירוקים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;מדבקות קיר זוהרות בחשיכה -&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;כוכבים בצבע כחול זוהר וירוק זוהר&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;קטגוריות: מדבקות קיר כוכבים, מדבקות קיר זוהרות בחושך, כוכבים זוהרים לחדר ילדים, מדבקות קיר כוכבים נוצצים בחושך.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;חומר :&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;ויניל זוהר&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;u style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;גודל צבע וכמות לבחירה&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;:&lt;/strong&gt;&lt;/u&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;99&lt;/strong&gt;&amp;nbsp;כוכבים בצבע&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;כחול&lt;/strong&gt;&amp;nbsp;זוהר בחשיכה - גודל כל כוכב -&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;2.6 ס&quot;מ&lt;/strong&gt;.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;99&amp;nbsp;&lt;/strong&gt;כוכבים בצבע ירוק זוהר בחשיכה - גודל כל כוכב -&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;2.6 ס&quot;מ&lt;/strong&gt;.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;104&lt;/strong&gt;&amp;nbsp;כוכבים בצבע&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;כחול&lt;/strong&gt;&amp;nbsp;זוהר בחשיכה - גודל כל כוכב -&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;1.8 ס&quot;מ&lt;/strong&gt;.&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;96&lt;/strong&gt;&amp;nbsp;כוכבים בצבע&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;ירוק&lt;/strong&gt;&amp;nbsp;זוהר בחשיכה - גודל כל כוכב -&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;1.8 ס&quot;מ.&lt;/strong&gt;&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקות קיר זוהרות בחשיכה - כוכבים כחולים וירוקים', '', ''),
(81, 1, 'Glow in The Dark Stars for Ceiling or Wall Stickers', '&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;SUPER BRIGHT NIGHT GLOWING STARS - Long Lenght of Glow, Self - Adhesive Stars &amp;amp; Dots - Turn Your Nursery into a Magic Galaxy. Shine brighter and last longer. No more plastic look in kids bedding room&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;BEST KIDS GIFT – Glow-in-the-Dark stars enchanting room space decorations - Ideal for Boys or Girls. Easy way to turn a dull room into a romantic ambience of Glowing Universe full of stars.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;FAIRYTALE REALM – Many children are not comfortable falling asleep in the dark. Luminescent starts transform children’s playroom into fairy glossy realm. Let your kids gaze at an illuminated stars.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;EASY TO APPLY &amp;amp; EASY TO REMOVE – Our self-adhesive wall murals stickers could be easily peel and stick to any flat, clean and non-textured surface &amp;amp; can be removable without damaging the surface.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;ENHANCE CHILDREN\'S EDUCATIONAL NEEDS &amp;amp; INTERESTS - Use out stickers as educational toys. Begin study constellations, astronomy, planets, moon. Grow their imagination of undiscovered inhabited planets&lt;/span&gt;&lt;/p&gt;', '', 'Glow in The Dark Stars for Ceiling or Wall Stickers', '', ''),
(68, 1, 'Tropical Watercolor Leaf Flowers Wall Stickers', '&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;NON TOXIC ENVIRONMENTAL AND HEALTH: PVC translucent materials, which can be pasted on walls, tiles, glass, furniture and other smooth surface material of any background. They are non-toxic, durable, waterproof, easy to clean.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;EASY TO INSTALL: Self adhesive backing, very easy to apply, remove, reposition and reuse, just peel and stick.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;BEST VISUAL EFFECTS: The decor looks very stylish, matte finish for an elegant, painted look on your wall.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;BEAUTIFUL AND USEFUL DECORATION: It could decorate every corner of the room. Bright colors, creative design, highlight your life let you full of personality. Make the original bare space full of vitality. Let your family member to enjoy the fun of DIY 3D wall decal, you can also more easily to change your interior decoration style and house Atmosphere. To create your unique, warm and romantic home.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;SERVICE: If you have any questions about this product, you can contact us by email and we will answer you within 24 hours. If the purchase has some quality defect, we offer a 30 day money back guarantee&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Main Material: PVC&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Item Size: Approx.(L*W)70*50cm&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Net weight: Approx.110g&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', '', 'Tropical Watercolor Leaf Flowers Wall Stickers', 'Home Wall Stickers Tropical Watercolor Leaf Flowers Wall Stickers Waterproof Wall Decal Stickers Washable Removable Windows Wall Decoration', 'Home Wall Stickers Tropical Watercolor Leaf Flowers Wall Stickers Waterproof Wall Decal Stickers Washable Removable Windows Wall Decoration'),
(50, 3, 'מדבקת קיר דקורטיבית ואומנותית פרפרים ופרחים כחולים', '&lt;pre data-hook=&quot;description&quot; class=&quot;_28cEs&quot; style=&quot;margin-bottom: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: inherit; white-space: pre-wrap; word-break: break-word; text-overflow: ellipsis; color: rgb(89, 89, 74); font-size: 14px; text-align: right;&quot;&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מדבקת קיר דקורטיבית אומנתותית ומקסימה&amp;nbsp;פרחים ופרפרים כחולים.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;מידות המדבקה:&lt;/strong&gt;&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;90x60 ס&quot;מ, מדבקה גדולה.&lt;/strong&gt;&lt;/p&gt;&lt;p dir=&quot;rtl&quot; style=&quot;margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit; white-space: normal;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;זמן אספקה:&lt;/strong&gt;&amp;nbsp;מיידי.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;תכונות:&lt;/strong&gt;&amp;nbsp;רחיץ, עמיד ללחות, אקוסטי, דוחה כתמי עישון.&lt;br style=&quot;font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;סוג החומר:&lt;/strong&gt;&amp;nbsp;PVC ויניל איכותי.&lt;/p&gt;&lt;/pre&gt;', '', 'מדבקת קיר דקורטיבית ואומנותית פרפרים ופרחים כחולים', '', ''),
(57, 3, 'Cartoon Rainbow Wall Stickers', '', '', 'Cartoon Rainbow Wall Stickers', '', ''),
(63, 1, 'Puppies With Balloons', '&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-none&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Comes with adhesive tape: It is made of high-quality and environment-friendly PVC and comes with adhesive tape. It is easy to stick after tearing off the film.The glue can be removed without residue left and cause no damage to the wall.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Waterproof and moistureproof:It is waterproof, moistureproof, colorfast, environmentally friendly and non-toxic. You can feel rest assured to use it.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Easy to clean: the surface comes with oilproof and soil-release layer.Just gently wipe it with towel or tissue when it is dirty.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;Our products are of stylish shape for you to dress up your room while protecting your walls,making your life more colorful. It is a ideal choice in your life.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;This product is removable and waterproof, green and environmental wall sticker.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;translucent PVC material, can be pasted into any background color of the walls, tiles, glass, furniture and other smooth surface materials&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;&amp;nbsp;Glue is a removable adhesive backing, which can be repeated and pasted many times.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;&amp;nbsp;No need to transfer film, paste it directly.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;Use reference:&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;(1). Make sure the surface is set to a smooth surface with bumps and creases. Not stick&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;(2). Select the location of the paste, wipe the dust and stains on the surface to make sure the surface is dry and clean.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;(3). Performs simple plans in order of stuck. Of course, you can do it according to your own creativity.&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin-bottom: 0px;&quot;&gt;(4). Attach the sticker and gently remove the base paper without hitting the film. When you paste, paste the first center and paves the left and right plane.&lt;/p&gt;', 'Dreams', 'Puppies With Balloons', 'Puppies With Balloons', 'Puppies With Balloons');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(64, 1, 'Flower Boxes &amp; Birds', '&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Wall stickers is made of 100% new high quality PVC material is very environmentally friendly material 丨【 FEATURES 】- Safety and environmental protection, non-toxic odor-free, suitable for family safe home space , Free DIY, easy self-adhesive design, installation, casual collage, arbitrarily cut , simple and modern style .&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;Size:A,C,D:70x50 cm/27.5x19.6in,B:45x60 cm/17.7x23.6in,Easy to apply, removable, durable, pressure resistance, shock resistance, moisture resistance , use in TV setting wall , bedrooms, living rooms, playing rooms, study room and home decorations.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;wall decor sticker chalk board sticker for wall vans off the wall sticker wall mirror sticker sticker for wall decoration window view wall sticker wall sticker for kitchen wall sticker for bedroom wall sticker quotes wall sticker tree wall sticker clock wall sticker decal wall sticker art wall sticker for kids sticker for wall wall mural removable sticker wall mural sticker wall decorations for living room sticker sticker decorations for wall elephant wall sticker black board wall sticker&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;sticker mirrors for wall wall decor sticker for girls sticker wall world map wall sticker chalkboard wall sticker bedroom sticker wall decor road wall sticker map wall sticker wall26 wall mural removable sticker paris decor wall sticker feather wall sticker anime wall sticker mandala wall sticker brick wall sticker buddha wall sticker fake wall outlet sticker wall frame sticker iron man wall sticker nike wall sticker barcelona fc wall sticker new york wall sticker&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;wall mount sticker white board wall sticker extra large chalkboard decal wall sticker jordan sticker for wall dream catcher wall sticker sticker names for wall decor diy mirror wall sticker large chalkboard decal black wall sticker adhes world map wall decal family tree wall decal tree wall decal paris wall decal always kiss me goodnight wall decal cherry blossom wall decal marylin monroe wall decal palm tree wall decal birch tree wall decal eiffel tower wall decal wall clock decal&lt;/span&gt;&lt;/p&gt;', 'dream', 'Flower Boxes &amp; Birds', 'Flower Boxes &amp; Birds', 'Flower Boxes &amp; Birds'),
(73, 1, 'Kitchen Tools', '&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;100% Brand New And High Quality.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;Material: PVC.\r\nThis SIZE is for your reference only, you can DIY according to the size of the room.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;\r\nHow to use:&lt;/span&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;\r\n1. Clean the place you want to paste, making sure there is no oil ,otherwise, glue is effectless.\r\n2. Measure the size of the wall , cut what you required size or the whole stickers.\r\n3. Spray a little water at the paste location and paste the glued side to the wall.\r\n4 .After sticking, use hard paper to squeeze the water out until no bubbles.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;\r\nNotes :\r\nAffixed to a clean and flat wall, you can not paste off the gray surface or a uneven surface.\r\nType : Transparent Pattern Kitchen Fume Stickers.\r\nMaterial : PVC\r\nSize : 60cm*90cm\r\nStyle : Happyplate, Bowl and Vegetable\r\nFeature : Easily Cleaning , Decoration&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;How to use:\r\n1.Clean the surface which you are going to apply the sticker to \r\n Make sure the surface is completely smooth;otherwise,it may fall off easily.\r\n2.Peel the sticker off from the sheet slowly.\r\n3.Stick the sticker where desired.\r\n4.Wipe down the sticker gently in a wiping motion to eliminate air bubbles.\r\nPlease allow 1-2CM differs due to manual measurement.?\r\nIf you confused about anything, pls contact us.\r\n&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.8); font-family: Roboto, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, &amp;quot;\\\\6587泉驛正黑&amp;quot;, &amp;quot;WenQuanYi Zen Hei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;\\\\5137黑Pro&amp;quot;, &amp;quot;LiHei Pro&amp;quot;, &amp;quot;Heiti TC&amp;quot;, &amp;quot;\\\\5FAE軟正黑體&amp;quot;, &amp;quot;Microsoft JhengHei UI&amp;quot;, &amp;quot;Microsoft JhengHei&amp;quot;, sans-serif; font-size: 14px; white-space: pre-wrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Kitchen Tools', 'New kitchen cartoon self adhesive oil proof sticker stove aluminum foil high temperature resistant oil proof sticker ceramic', ''),
(61, 1, 'Birds &amp; Colorful Flowers', '&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;100% New Brand And High Quality&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Cartoon Children Room Nursery DIY Wall Sticker&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Waterproof And Removable Furniture Stickers&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;No Irritant Smell/ Waterproof /Easy To Paste&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul style=&quot;list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;&quot;&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;New high quality!&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Type: wall sticker&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Material: PVC&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Color: as shown in the figure&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Size (LxW) :70x50 cm&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Occasion: bedroom, living room, office, etc&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Quantity: 1 PCS&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; font-size: 14px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: medium; line-height: normal;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Note:&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul style=&quot;list-style: none; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;&quot;&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; line-height: normal;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; line-height: normal;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Please allow 1-2cm for measurement error. Please make sure you don\'t mind before you bid.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;li style=&quot;margin-left: 0px;&quot;&gt;&lt;p align=&quot;left&quot; data-spm-anchor-id=&quot;a2g0o.detail.1000023.i0.5d323257xokIiO&quot; style=&quot;margin: 10px; line-height: inherit;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; line-height: normal;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; line-height: normal;&quot;&gt;&lt;span style=&quot;max-width: 100%; word-break: break-word; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Color may have different display, please understand.&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;', '', 'Birds &amp; Colorful Flowers', 'Mobile Creative Wall Affixed With Decorative Wall Window Decoration muurstickers Wallpapers ', 'Mobile Creative Wall Affixed With Decorative Wall Window Decoration muurstickers Wallpapers '),
(69, 1, 'Flying Birds Art Decor', '&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;A beautiful art wall decal for your home or office and make your room a refreshing look, create an enchanting atmosphere.&lt;/span&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Function: Mothproof, Mildew Proof, Anti-Fouling, Landscaping Decoration, Waterproof, High Color Fastness. Beautification Adornment&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Size: 70x50 cm, 1.Please allow 1-2cm for measurement error. Please make sure you don\'t mind before you bid. 2.Color may have different display, please understand.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Applicable Scene: Living Room, Bedroom, Corridor Murals, Entrance Study, Restaurant, Hotel, Coffee Shop, Cabinet Wall Stickers,Student Bedroom Dress Wallpaper Stickers,Etc.&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Wall Sticker Decals Wall Sticker Decor Wall Sticker Decorations Wall Sticker Quotes Wall Sticker Art Wall Sticker For Kids Wall Stickers Quotes Wall Sticker For Bedroom Wall Sticker Bedroom Wall Sticker Tree Wall Sticker For Living Room Wall Sticker For Kitchen Wall Stickers For Bathrooms Wall Sticker Mural Wall Stickers For Boys Bedroom Wall Sticker 3d Wall Sticker Paper Wall Sticker Picture Frames&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px 0px 6px 14px; line-height: 17px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;Material:PVC----Wall Sticker Home Decor Wall Sticker Vinyl Wall Sticker Letters Wall Sticker Art Decor Wall Sticker Art For Kids Wall Stickers Decorations Wall Stickers For Bedroom Wall Stickers For Kids Wall Stickers For Living Room/ Decoration/ Quotes/ 3d/ Flowers/ Tree/ Large/ In White/ Window Wall Stickers For Kids Bedroom Girls/ Bedroom Boys/ Room/ Cars/ Animals Wall Stickers For Bedroom Women/ Love Inspirational/ Men/ Tree Wall Stickers For Nursery Room Wall Paper Art Decals&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;', '', 'Flying Birds Art Decor', 'Flying Birds Wall Sticker Peel and Stick Removable Wall Sticker for Kids Nursery Bedroom Living Room Office Home Wall Decor Beautification Adornment ', 'Flying Birds Wall Sticker Peel and Stick Removable Wall Sticker for Kids Nursery Bedroom Living Room Office Home Wall Decor Beautification Adornment '),
(80, 1, 'Glow in The Dark Dots Stars Wall Stickers', '&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;FEELS LIKE BEING UNDER THE STARS LIGHT- with this fluorescent glow in the dark galaxy set ,it adds the look of a real night sky . No more plastic synthetic look. In the morning it\'s white clean look, the dots merge with the wall ,and in the dark the room become to starry shiny bedroom.Suit for any bedroom, lovely space decoration for kids room.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;EASY TO APPLY &amp;amp; stays on the wall or ceiling until it needs to be removed. The luminous decals less visible during the day blending with the white wall, create clean look. &amp;amp; glow when it is dark&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;STARS LIGHT LONG LENGTH OF GLOW - just place on any clean, flat surface ,turn on the light for 5 minutes then darken the room and enjoy your nighttime view.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;PERFECT FOR A GIFT or ROMANTIC DECORATIONS -twinkle stars for ceiling set makes a special gift for Christmas or Halloween as it comes wrapped in a lovely package .&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;RESPECTED QUALITY – providing wall decor for children boys and girls and adult luminescent dots murals , this educational toy decals comes with Liderstar\'s 100% satisfaction guarantee.&lt;/span&gt;&lt;/p&gt;', '', 'Glow in The Dark Dots Stars Wall Stickers', '', ''),
(80, 3, 'מדבקת קיר זוהרות - עיגולים בגדלים שונים זוהרים בחושך', '&lt;ul dir=&quot;rtl&quot; style=&quot;margin-right: 1em; margin-bottom: 0px; margin-left: 0px; padding: 0px 40px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: circle; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; font-family: futura-lt-w01-light, sans-serif; line-height: inherit; color: rgb(89, 89, 74); text-align: right;&quot;&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;מדבקת קיר זוהרות בחושך של עיגולים בגדלים שונים.&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;4 סוגי גליונות לפי הפירוט:&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;120 עיגולים&lt;/strong&gt;&amp;nbsp;זוהרים - קוטר כל עיגול&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;1 ס&quot;מ&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;60 עיגולים&lt;/strong&gt;&amp;nbsp;זוהרים - קוטר כל עיגול&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;1.5 ס&quot;מ&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;32 עיגולים&lt;/strong&gt;&amp;nbsp;זוהרים - 20 עיגולים קוטר&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;2.2 ס&quot;מ&lt;/strong&gt;&amp;nbsp;+ 12 עיגולים קוטר&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;1.5 ס&quot;מ&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;8 עיגולים&lt;/strong&gt;&amp;nbsp;זוהרים - קוטר כל עיגול&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;&quot;&gt;4 ס&quot;מ&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;מדבקה עשויה מחומר ויניל איכותי זוהר&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;קל ונוח להדבקה/ הסרה&lt;/li&gt;&lt;li style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font: inherit;&quot;&gt;על מנת שהמדבקה תהיה זוהרת במיטבה יש לחשוף את המדבקה לאור למשך דקה&lt;/li&gt;&lt;/ul&gt;', '', 'מדבקת קיר זוהרות - עיגולים בגדלים שונים זוהרים בחושך', '', ''),
(50, 1, 'Decorative and Artistic Wall Sticker Butterflies and Blue Flowers', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;font-variant-numeric: inherit; font-variant-east-asian: inherit; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-size: 14px;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Blue Flowers Butterfly Wall Stickers Home Decor Headboard Wall Board Mural Poster Background Wallpaper Decorative Art Decals.&lt;/span&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;/span&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Artistic decorative wall sticker and adorable blue flowers and butterflies.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Sticker dimensions: 90x60 cm, large sticker.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Features: Washable, Moisture Resistant, Acoustic, Smudge Repellent.&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;/font&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Material Type: PVC High Quality Vinyl.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 data-spm-anchor-id=&quot;2114.12057483.0.i9.69423ef3eaowa9&quot; style=&quot;margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;&lt;/span&gt;&lt;/font&gt;&lt;/span&gt;&lt;/h3&gt;', '', 'Decorative and Artistic Wall Sticker Butterflies and Blue Flowers', 'Blue Flowers Butterfly Wall Stickers Home Decor Headboard Wall Board Mural Poster Background Wallpaper Decorative Art Decals', 'Blue Flowers Butterfly Wall Stickers Home Decor Headboard Wall Board Mural Poster Background Wallpaper Decorative Art Decals'),
(76, 1, 'Mini Silver Stars', '&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;Make sure this fits by entering your model number.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;Vinyl&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;Total Contain: Set of 132pcs Silver/Gold stars stickers includes 36pcs - 3” silver star stickers; 36pcs - 2” silver star stickers; 60 - 1” silver star stickers&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;Safe and removable on painted wall or any smooth, flat, dry and dust free surface so you don’t need to worry about damaging wall paints&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;list-style: disc; overflow-wrap: break-word; margin: 0px;&quot;&gt;&lt;span class=&quot;a-list-item&quot; style=&quot;font-size: 14px;&quot;&gt;Easy to peel and stick vinyl wall decals, no tools required to install the silver stars wall decals&lt;/span&gt;&lt;/p&gt;', '', 'Mini Silver Stars', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2372, 56, 'catalog/love-your-life3.png', 0),
(2371, 56, 'catalog/love-your-life2.png', 0),
(2410, 55, 'catalog/never-stop-dreaming1.png', 0),
(2374, 53, 'catalog/dance-in-the-rain3.png', 0),
(2378, 51, 'catalog/belive-in-yourself3.png', 0),
(2613, 57, 'catalog/Kids/pineapples3.jpg', 2),
(2616, 58, 'catalog/wallpapers/marble1.jpg', 0),
(2615, 58, 'catalog/wallpapers/marble2.jpg', 0),
(2657, 61, 'catalog/birds/colorful-birds-and-leaves-flowers3.jpg', 3),
(2706, 64, 'catalog/birds/flower-baskets-and-birds6.png', 5),
(2447, 65, 'catalog/Kids/Girls/cute-princess2.png', 1),
(2451, 66, 'catalog/Animals/cartoon-cat3.png', 0),
(2620, 67, 'catalog/Kids/hearts1.jpg', 0),
(2619, 67, 'catalog/Kids/hearts2.jpg', 0),
(2618, 67, 'catalog/Kids/hearts8.jpg', 0),
(2617, 67, 'catalog/Kids/hearts1.jpg', 0),
(2563, 59, 'catalog/birds/branch-birds3.png', 2),
(2562, 59, 'catalog/birds/branch-birds2.png', 1),
(2570, 60, 'catalog/birds/birds2.png', 1),
(2569, 60, 'catalog/birds/birds1.png', 0),
(2656, 61, 'catalog/birds/colorful-birds-and-leaves-flowers4.jpg', 2),
(2655, 61, 'catalog/birds/colorful-birds-and-leaves-flowers5.jpg', 1),
(2435, 62, 'catalog/trees/big-size-tree-wall-stickers6.png', 4),
(2434, 62, 'catalog/trees/big-size-tree-wall-stickers5.png', 3),
(2433, 62, 'catalog/trees/big-size-tree-wall-stickers2.png', 5),
(2432, 62, 'catalog/trees/big-size-tree-wall-stickers3.png', 1),
(2436, 62, 'catalog/trees/big-size-tree-wall-stickers1.png', 2),
(2705, 64, 'catalog/birds/flower-baskets-and-birds5.jpg', 4),
(2704, 64, 'catalog/birds/flower-baskets-and-birds4.jpg', 3),
(2703, 64, 'catalog/birds/flower-baskets-and-birds3.jpg', 2),
(2643, 63, 'catalog/Animals/puupies-pink-ballons4-min.jpg', 2),
(2642, 63, 'catalog/Animals/puupies-pink-ballons3-min.jpg', 1),
(2448, 65, 'catalog/Kids/Girls/cute-princess3.png', 2),
(2449, 65, 'catalog/Kids/Girls/cute-princess1.png', 3),
(2450, 65, 'catalog/Kids/Girls/cute-princess5.png', 4),
(2452, 66, 'catalog/Animals/cartoon-cat1.png', 0),
(2736, 68, 'catalog/plants/tropical-watercolor-leaf-flower3.png', 0),
(2735, 68, 'catalog/plants/tropical-watercolor-leaf-flower2.jpg', 0),
(2687, 69, 'catalog/birds/black-birds-flying-flowers-art5.jpg', 3),
(2459, 70, 'catalog/cartoon/fairies-painted4.png', 0),
(2460, 70, 'catalog/cartoon/fairies-painted1.png', 0),
(2461, 70, 'catalog/cartoon/fairies-painted3.png', 0),
(2462, 71, 'catalog/Kids/Girls/fairy-pink1.png', 0),
(2463, 71, 'catalog/Kids/Girls/fairy-pink2.png', 0),
(2464, 71, 'catalog/Kids/Girls/fairy-pink4.png', 0),
(2478, 72, 'catalog/kitchen/smiling-cartoon-kitchenwares6.jpg', 0),
(2477, 72, 'catalog/kitchen/smiling-cartoon-kitchenwares8.jpg', 0),
(2639, 73, 'catalog/kitchen/cartoon-kitchenwares2.jpg', 0),
(2638, 73, 'catalog/kitchen/cartoon-kitchenwares5.jpg', 0),
(2476, 72, 'catalog/kitchen/smiling-cartoon-kitchenwares7.jpg', 0),
(2475, 72, 'catalog/kitchen/smiling-cartoon-kitchenwares2.jpg', 0),
(2474, 72, 'catalog/kitchen/smiling-cartoon-kitchenwares4.jpg', 0),
(2588, 75, 'catalog/Animals/map-kids-room6.jpg', 0),
(2587, 75, 'catalog/Animals/map-kids-room8.jpg', 0),
(2586, 75, 'catalog/Animals/map-kids-room1.jpg', 0),
(2585, 75, 'catalog/Animals/map-kids-room7.jpg', 0),
(2584, 75, 'catalog/Animals/map-kids-room3.jpg', 0),
(2583, 75, 'catalog/Animals/map-kids-room5.jpg', 0),
(2754, 76, 'catalog/stars/mini-silver-stars4.jpg', 0),
(2753, 76, 'catalog/stars/mini-silver-stars3.jpg', 0),
(2752, 76, 'catalog/stars/mini-silver-stars2.jpg', 0),
(2508, 74, 'catalog/cartoon/unicorn7.jpg', 0),
(2507, 74, 'catalog/cartoon/unicorn5.jpg', 0),
(2506, 74, 'catalog/cartoon/unicorn2.jpg', 0),
(2505, 74, 'catalog/cartoon/unicorn4.jpg', 0),
(2504, 74, 'catalog/cartoon/unicorn3.jpg', 0),
(2515, 77, 'catalog/food/summer-ice-cream-wall-sticker3.jpg', 0),
(2514, 77, 'catalog/food/summer-ice-cream-wall-sticker4.jpg', 0),
(2513, 77, 'catalog/food/summer-ice-cream-wall-sticker2.jpg', 0),
(2516, 77, 'catalog/food/how-to-use.jpg', 0),
(2677, 78, 'catalog/stars/multi-colors-mini-stars-and-dots1.png', 7),
(2676, 78, 'catalog/stars/multi-colors-mini-stars8.jpg', 6),
(2675, 78, 'catalog/stars/multi-colors-mini-stars7.jpg', 5),
(2674, 78, 'catalog/stars/multi-colors-mini-stars6.jpg', 4),
(2531, 79, 'catalog/Animals/wall-sticker-3d view-elephants2.jpg', 0),
(2686, 69, 'catalog/birds/black-birds-flying-flowers-art3.jpg', 2),
(2654, 61, 'catalog/birds/colorful-birds-and-leaves-flowers2.jpg', 0),
(2561, 59, 'catalog/birds/black-birds-on-branch5.jpg', 0),
(2560, 59, 'catalog/birds/black-birds-on-branch3.jpg', 0),
(2568, 60, 'catalog/birds/black-birds-on-branch4.jpg', 0),
(2571, 60, 'catalog/birds/birds3.png', 2),
(2688, 69, 'catalog/birds/black-birds-flying-flowers-art6.jpg', 4),
(2685, 69, 'catalog/birds/black-birds-flying-flowers-art1.jpg', 1),
(2695, 80, 'catalog/glowing/glowing-in-the-dark-mini-dots3.jpg', 0),
(2699, 81, 'catalog/glowing/glowing-in-the-dark-mini-stars3.jpg', 2),
(2698, 81, 'catalog/glowing/glowing-in-the-dark-mini-stars2.jpg', 1),
(2731, 50, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies7.jpg', 0),
(2730, 50, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies6.jpg', 0),
(2614, 57, 'catalog/Kids/pineapples1.jpg', 1),
(2702, 64, 'catalog/birds/flower-baskets-and-birds2.jpg', 1),
(2640, 73, 'catalog/kitchen/anti-oil-kitchen-tools-and-jars-on-shelf-cabinet-decoration1.jpeg', 0),
(2641, 73, 'catalog/kitchen/anti-oil-kitchen-tools-and-jars-on-shelf-cabinet-decoration.jpeg', 0),
(2644, 63, 'catalog/Animals/puupies-pink-ballons5-min.jpg', 3),
(2645, 63, 'catalog/Animals/puupies-pink-ballons2-min.jpg', 4),
(2646, 63, 'catalog/Animals/puupies-pink-ballons7-min.jpg', 5),
(2647, 63, 'catalog/Animals/puupies-pink-ballons6-min.jpg', 6),
(2658, 61, 'catalog/birds/colorful-birds-and-leaves-flowers6.jpg', 4),
(2659, 61, 'catalog/birds/colorful-birds-and-leaves-flowers7.jpg', 5),
(2660, 61, 'catalog/birds/colorful-birds-and-leaves-flowers8.jpg', 6),
(2678, 78, 'catalog/stars/multi-colors-mini-stars-and-dots2.png', 8),
(2673, 78, 'catalog/stars/multi-colors-mini-stars4.jpg', 3),
(2672, 78, 'catalog/stars/multi-colors-mini-stars5.jpg', 2),
(2671, 78, 'catalog/stars/multi-colors-mini-stars2.jpg', 1),
(2670, 78, 'catalog/stars/multi-colors-mini-stars3.jpg', 0),
(2689, 69, 'catalog/birds/black-birds-flying-flowers-art7.jpg', 5),
(2690, 69, 'catalog/birds/black-birds-flying-flowers-art8.jpg', 6),
(2691, 69, 'catalog/birds/black-birds-flying-flowers-art9.jpg', 7),
(2694, 80, 'catalog/glowing/glowing-in-the-dark-mini-dots2.jpg', 0),
(2696, 80, 'catalog/glowing/glowing-in-the-dark-mini-dots6.jpg', 0),
(2697, 80, 'catalog/glowing/glowing-in-the-dark-mini-dots4.jpg', 0),
(2700, 81, 'catalog/glowing/glowing-in-the-dark-mini-stars4.jpg', 3),
(2701, 81, 'catalog/glowing/glowing-in-the-dark-mini-stars5.jpg', 4),
(2707, 64, 'catalog/birds/flower-baskets-and-birds7.png', 6),
(2729, 50, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies5.jpg', 0),
(2728, 50, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies4.jpg', 0),
(2727, 50, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies2.jpg', 0),
(2726, 50, 'catalog/flowers/blue-decorative-art-flowers-and-butterflies3.jpg', 0),
(2737, 68, 'catalog/plants/tropical-watercolor-leaf-flower4.jpg', 0),
(2738, 68, 'catalog/plants/tropical-watercolor-leaf-flower5.jpg', 0),
(2739, 68, 'catalog/plants/tropical-watercolor-leaf-flower6.png', 0),
(2755, 76, 'catalog/stars/mini-silver-stars5.jpg', 0),
(2756, 76, 'catalog/stars/mini-silver-stars6.jpg', 0),
(2757, 76, 'catalog/stars/mini-silver-stars7.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(50, 61),
(50, 62),
(50, 64),
(50, 69),
(51, 52),
(51, 53),
(51, 55),
(51, 56),
(52, 51),
(52, 53),
(52, 55),
(52, 56),
(53, 51),
(53, 52),
(53, 56),
(55, 51),
(55, 52),
(56, 51),
(56, 52),
(56, 53),
(57, 67),
(57, 68),
(57, 70),
(57, 76),
(59, 60),
(59, 61),
(59, 62),
(59, 63),
(59, 64),
(59, 68),
(60, 59),
(60, 61),
(60, 62),
(60, 64),
(60, 66),
(60, 69),
(61, 50),
(61, 59),
(61, 60),
(61, 61),
(61, 63),
(61, 66),
(61, 69),
(62, 50),
(62, 59),
(62, 60),
(62, 64),
(62, 69),
(63, 59),
(63, 61),
(63, 65),
(63, 66),
(63, 68),
(63, 70),
(63, 71),
(64, 50),
(64, 59),
(64, 60),
(64, 62),
(65, 63),
(65, 70),
(65, 71),
(66, 60),
(66, 61),
(66, 63),
(66, 70),
(67, 57),
(67, 76),
(67, 78),
(68, 57),
(68, 59),
(68, 63),
(68, 73),
(69, 50),
(69, 60),
(69, 61),
(69, 62),
(69, 71),
(70, 57),
(70, 63),
(70, 65),
(70, 66),
(70, 71),
(71, 63),
(71, 65),
(71, 69),
(71, 70),
(72, 73),
(73, 68),
(73, 72),
(76, 57),
(76, 67),
(76, 78),
(76, 81),
(78, 67),
(78, 76),
(78, 81),
(80, 81),
(81, 76),
(81, 78),
(81, 80);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 25),
(50, 26),
(50, 33),
(50, 60),
(50, 71),
(50, 72),
(50, 74),
(50, 87),
(51, 25),
(51, 33),
(51, 34),
(51, 60),
(51, 66),
(52, 33),
(52, 60),
(52, 66),
(52, 72),
(53, 33),
(53, 60),
(53, 66),
(55, 56),
(55, 60),
(55, 66),
(56, 34),
(56, 56),
(56, 60),
(56, 66),
(56, 71),
(57, 33),
(57, 46),
(57, 56),
(57, 59),
(57, 60),
(57, 70),
(57, 71),
(58, 33),
(58, 60),
(58, 72),
(58, 74),
(58, 75),
(58, 80),
(59, 60),
(59, 61),
(59, 71),
(59, 72),
(59, 74),
(59, 82),
(60, 60),
(60, 71),
(60, 72),
(60, 74),
(60, 82),
(61, 26),
(61, 60),
(61, 65),
(61, 71),
(61, 72),
(61, 74),
(61, 82),
(62, 33),
(62, 60),
(62, 71),
(62, 72),
(62, 74),
(63, 33),
(63, 46),
(63, 56),
(63, 59),
(63, 60),
(63, 70),
(63, 72),
(63, 74),
(63, 75),
(63, 79),
(63, 83),
(64, 26),
(64, 34),
(64, 56),
(64, 60),
(64, 61),
(64, 66),
(64, 71),
(64, 82),
(65, 46),
(65, 56),
(65, 71),
(66, 34),
(66, 60),
(66, 61),
(66, 74),
(67, 33),
(67, 45),
(67, 46),
(67, 56),
(67, 59),
(68, 33),
(68, 45),
(68, 60),
(68, 72),
(68, 73),
(68, 74),
(68, 75),
(69, 26),
(69, 33),
(69, 60),
(69, 71),
(69, 72),
(69, 74),
(69, 79),
(69, 82),
(69, 84),
(70, 46),
(70, 56),
(70, 59),
(70, 70),
(70, 81),
(71, 33),
(71, 46),
(71, 56),
(71, 59),
(71, 70),
(71, 85),
(72, 75),
(73, 75),
(74, 56),
(74, 59),
(74, 70),
(74, 81),
(74, 85),
(75, 33),
(75, 46),
(75, 56),
(75, 60),
(75, 61),
(75, 74),
(75, 84),
(75, 85),
(75, 86),
(77, 75),
(78, 27),
(78, 46),
(78, 56),
(78, 59),
(78, 70),
(78, 71),
(78, 80),
(79, 46),
(79, 56),
(79, 59),
(79, 61),
(79, 70),
(79, 85),
(79, 86),
(80, 45),
(80, 46),
(80, 56),
(80, 62),
(80, 80),
(80, 85),
(80, 86),
(81, 27),
(81, 33),
(81, 45),
(81, 46),
(81, 56),
(81, 62),
(81, 80);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(55, 0, 4),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 1),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(862, 0, 1, 'category_id=20', 'shop-by-theme'),
(883, 0, 2, 'category_id=27', 'כוכבים'),
(847, 0, 1, 'information_id=4', 'about_us'),
(861, 0, 1, 'category_id=34', 'gift-ideas'),
(874, 0, 1, 'category_id=59', 'babies'),
(865, 0, 1, 'category_id=18', 'shop-by-room'),
(858, 0, 1, 'category_id=45', 'teens'),
(889, 0, 2, 'category_id=62', 'זוהרים'),
(879, 0, 1, 'category_id=28', '3d'),
(888, 0, 1, 'category_id=62', 'glowing'),
(934, 0, 1, 'category_id=61', 'animals'),
(901, 0, 2, 'category_id=66', 'משפטים'),
(864, 0, 1, 'category_id=33', 'best-sellers'),
(930, 0, 1, 'category_id=26', 'flowers'),
(913, 0, 2, 'category_id=71', 'חדר-שינה'),
(912, 0, 1, 'category_id=71', 'bedroom'),
(900, 0, 1, 'category_id=66', 'sentences'),
(899, 0, 2, 'category_id=65', 'עצים'),
(898, 0, 1, 'category_id=65', 'trees'),
(870, 0, 1, 'category_id=56', 'kids'),
(875, 0, 1, 'category_id=60', 'home'),
(876, 0, 2, 'category_id=60', 'לבית'),
(928, 0, 1, 'category_id=81', 'cartoon'),
(882, 0, 1, 'category_id=27', 'stars'),
(929, 0, 1, 'category_id=25', 'sale'),
(910, 0, 1, 'category_id=70', 'babies-room'),
(909, 0, 2, 'category_id=64', 'נושא-טבע'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(853, 0, 1, 'category_id=46', 'kids-bedroom'),
(914, 0, 1, 'category_id=72', 'living-room'),
(911, 0, 2, 'category_id=70', 'חדר-תינוקות'),
(908, 0, 1, 'category_id=64', 'nature-theme'),
(915, 0, 2, 'category_id=72', 'סלון'),
(916, 0, 1, 'category_id=73', 'dining-room'),
(917, 0, 2, 'category_id=73', 'פינת-אוכל'),
(918, 0, 1, 'category_id=74', 'living-space'),
(919, 0, 2, 'category_id=74', 'חלל-הבית'),
(932, 0, 3, 'category_id=75', 'מטבח'),
(931, 0, 1, 'category_id=75', 'kitchen'),
(933, 0, 1, 'category_id=76', 'quote wall stickers, motivational sentences, text'),
(923, 0, 1, 'category_id=77', 'stars, hearts, butterflies'),
(926, 0, 1, 'category_id=80', 'home accessories');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('0013293bce724c89afbb60f4a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nATxa4snoqtY3BjR4ZB9Ol09SJgxj0oR\"}', '2019-08-12 19:12:49'),
('002689c80cf280766e02eeebf8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:00:28'),
('004ed31d8476da1466e049b5b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:36:13'),
('004ee063bd89c96d02507f6c89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:38:32'),
('00578034b1fee5fa839d75c240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:38:13'),
('006262d8541edac03fedad3631', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:27:41'),
('0073e9d2f08be77b28519ef446', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:49'),
('00765e998523b8be5634c7b230', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 21:21:29'),
('007c7b9ed9679a3aeae3576dfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:49:28'),
('00c1c849e8bef9185fd33baa8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:37:28'),
('00d286504c6a6b54927e11a63e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:03:14'),
('00efe7baf59b1f0d35b4d1e291', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:01'),
('00f6c34a57c64e5ce194db2e4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:08:44'),
('017619b75d6abaa6731954cfac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:39:26'),
('0199f06a5124fe8119237b6ed9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:44'),
('01affa01f36ea2f2770cc97f9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:48'),
('01b774f06fbf8ef2a49fa81c0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:28:41'),
('01ce98fc989dcf9a3414b59d28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:38:10'),
('01e64b6f9674aab7ad0055f82a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:03'),
('02050832ff97a6c696d246f4bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 22:37:32'),
('0218bb2b5ac0c8dcbce82956d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:01:11'),
('0237a0811eb9830437cdcaeb5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:38:10'),
('0243de7bf5bf0e7a7aaaaa0206', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:24:24'),
('025fed4ea29d52bd7aa6f3579e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:07:38'),
('02666ea01eb0150863647b362c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:33:49'),
('027630bc267cb6bc7b4d9b0593', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:33'),
('027c4134b63612f01324156b3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:39'),
('028895dbff6ed15e19caa75145', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:43:34'),
('02aa63b7de292796e35127e16b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:54:26'),
('02aa82b861f5cc5bec251427b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:31:29'),
('02ae5d3d339d5de6ce7661cf78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:40'),
('02bc7d05280074d034ec3f5792', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:58:32'),
('02c58373111b54887daea5256e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:47'),
('02e76a6ef723063a7e6aefbdab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 08:20:59'),
('02eda1819ddce8d43bf6b7aa66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:34:31'),
('02f9992411379be0cb6e2d7212', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:42'),
('03050b3da30bef60d98b19e06b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:34:11'),
('0318313fb41ee2de5545ba1ceb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:34:06'),
('03236f4dedd1bded29a015c06d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 04:22:01'),
('03286d4374f265d178e02c53da', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:32:18'),
('03357e6773cd75ac0b578a69dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 07:35:21'),
('035c05a708f6acf1e9214be27f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:39:52'),
('038468df97b0e2c7ce1614064f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7K72pdYXYolm4xpQWvfJ9S1NfaNoXZwR\"}', '2019-08-18 02:17:08'),
('038bc5913e6dc184c826582ca6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 05:33:28'),
('03e07d26d4663abadbaad664b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:52:29'),
('03f0949d7136983034f7e8da06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:35:05'),
('03f59aab271497df18c8fde763', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 03:57:03'),
('0405b5d009079ff0d7d7e1bde0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 22:13:27'),
('0422bd8392e4941edf6294fb28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:46:16'),
('0452a623dc2fa58a6fc25ae527', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:02:13'),
('045d6dbac8ca3c0c3667c8dc3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:51:28'),
('045ef47fe6688a57f038d14c4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:13:28'),
('04647eedfbeffcb2f7e1a28bc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:28:17'),
('049fea1f24757fcf28022d9542', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:44:37'),
('051920d1b1048ca6180bba17bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HCGQdGo4lZdGR00wcavzcWROMe3wsQzR\"}', '2019-08-18 03:24:53'),
('05514e7302a01d96575aa5f846', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:46'),
('05651f503a791f59431a1621de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 08:29:19'),
('0592b46a098f8e2f5d8ea6c402', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:55:32'),
('0594c686aca281bbf320b7ad09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:20'),
('05962e8b5cdd33ca082dcbd08a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:12:20'),
('05a5bc2b06ad6b9457085ba18b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:52:44'),
('05a71d8f943f7af27631d9131d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:53:56'),
('05ce3ded432a106d61b12b827c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:58:19'),
('05d8fa34f908f2c542ba347811', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:42:03'),
('05f0fd7ac29327ef694f6710c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:07'),
('060a3f2b4e5f17536ddfd51932', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:50:19'),
('060d6ddb87aae45b1048785271', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:37'),
('06126dcefb97715f15965c6a79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:13'),
('06187a6ce9f2c80346f8b48cf5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:22:47'),
('063d9886bfb6ff39ab0309448f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:44:13'),
('064058c11ac0ecabde175964df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:47'),
('06414772f9c20bda70564cde81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 09:39:05'),
('0644f53361bc337475a9a0fa39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:26:43'),
('0652931923a90929e0dd264f7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:54'),
('066df9d0b22da541feb6421daf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:30:16'),
('068ea940d1d8b5d7001fb4b911', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:09'),
('06a294832de8cedf45d22a6948', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:35:04'),
('06be27b51493d2429d4e6f66e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:53:57'),
('06c425e300acdd6323af72c2ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:11:24'),
('06c90129ad918242fa3adaf075', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:28:36'),
('06dbb8d903fbba7d45f14d13bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:55:28'),
('06eb2a5886a393737836ac3e57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:47:13'),
('06eedb4218bce4f2e696ff817a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 07:37:23'),
('070b2c66d56ecad99a805f54b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:18'),
('07132624766ffff2ace720908a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:14:48'),
('071f9e31d2d56b52351377328b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:24:24'),
('077f4a668f7bc3d0e6f7532b26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:36:00'),
('07841c6f9c33ef2645ec559510', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 02:23:44'),
('079c61347a5c51dca7f959072b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:58:27'),
('07c5a0824c8752c24099baa95e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:23'),
('07c6e2cebcc1b300f2a7a3d3e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:50'),
('081917a84393d5a7b0a273860f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:36:22'),
('081a5bd09f48d337f13c77f01b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:44'),
('082d7bc0fdfb3115801a228efd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:00:40'),
('083004a3de888d128c5a08970e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:06'),
('085d3be44abadc2031ba41f355', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:13'),
('08660cf3a711178483099f7560', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 16:37:22'),
('086f3ea00310875441937d3aa4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:06:16'),
('087aef7efdf1cbebdbae2f1740', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:47:18'),
('08ac6b40db5829ae4a8e4a22f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:50:17'),
('08e757fe66f3259dc0eb15f91a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:34:05'),
('08f18f20cb305e26924e7a1a06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:23:05'),
('0903398ca44e86ed4a49b4f532', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:54:35'),
('09102cd5821924164b53f79d1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:59:04'),
('09207a1a3b95c9f9af3ddbe61d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:39:22'),
('0940713be8f309daf3934ba334', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:39:50'),
('0981dcbfec030e6019b2863b0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:16:10'),
('09aabbf402ffdd56a205b6e71a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:16'),
('09ba9c430ee9d6720d89a7e923', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:06:16'),
('09cf8583a91f2c2fc1bcf64c97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:58:26'),
('09dca4ccd9db2f13f141cf1b9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:33:10'),
('09e6e977e51b4ad58fee504b24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:14:37'),
('09f15b365e0ddb1eb2ff53d918', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:35:33'),
('0a5b579cf453179436a6e490ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:49:28'),
('0a5c8540b072fb3c91f5444a3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:09:21'),
('0a89178ec3e1c89b7ac197e80c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:13'),
('0a8a2b882eba25df8a1b0abe8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:35:04'),
('0a92266ef63bbd3803a4e39889', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:25:06'),
('0a9eaf60e3de463cef2b70366a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:14:47'),
('0aa1259ccc3b5f2e288fe72200', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:39:35'),
('0ad0e26e424523afa55bd32283', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:50:31'),
('0adcffc9cf9ab96b18e7d38ff3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:47:31'),
('0ae7972492ac2e62ebcb05177a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:02:31'),
('0ae8d6d86663fcf74f3b5d0697', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:05:36'),
('0aedd412d9c5a16d070382930c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:50:30'),
('0afa32ca62f67f596af21ac6a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:30:16'),
('0b00a969afc52a895310637eb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:34:20'),
('0b07243e5e4d595a54305a25db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:43'),
('0b6bbf29a9db34f1d8d41c5522', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:02'),
('0b757f982656d26ccde332adbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:53:10'),
('0b85802e736868235ccbde871c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:30:46'),
('0b90be0c0151cbe63e0c0777a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:30:51'),
('0b9fe730be747f5aacc6119ff2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:54:50'),
('0bab41e7fa059412185a8bbd90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:59:48'),
('0baf57b0317860ff99d874cc6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:34'),
('0bb0f02acd92bd1f91debc0757', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:25:12'),
('0bbfc1a81c44976a077a54f677', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:38:05'),
('0c5d4e0b094b39b0aecacb7a9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:41:32'),
('0c70f946b5f098320903fc04c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 06:30:21'),
('0cc4ff05e521285b44fefa314c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:30:25'),
('0cf13d296b8bb92307d33da35e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:35:17'),
('0cf38503e2e5377b2b40f1b24e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:03:18'),
('0cfa58d074a64005c62999aade', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:19:38'),
('0d365cd10f86525c52ee02815a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:27:35'),
('0d67789086219687b60b0fd855', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:30'),
('0d86133573e4311ca8157aa0f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:23'),
('0db427150d43992f43d6b2a400', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:39'),
('0dbef8d50b03171b207530a8f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:25:28'),
('0dcad251e90b1eddf2941c646c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:24'),
('0dccc0e8a04bad408caf53dcd6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:23:35'),
('0e13897796f7ca70525476dc70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 11:04:48'),
('0e1b1f0a130d0f7ac3a3b73d85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:01'),
('0e4bf9817bd7248dd7ce6219ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:22:43'),
('0e65ef098f9f5b63e6fb93f05a', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-12 05:13:26'),
('0e83b660e1a47c757a77af4b9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:44:27'),
('0e99da77a263560ad92cc1cb81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:22:32'),
('0ea57c1890e6115318c91eda43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:08'),
('0eb13d3ac3476f3302e3eaf2cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:42:59'),
('0f1661e768bfa2a43790763a94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:49:11'),
('0f38fae4a4c7c2fff843fa74fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:59:30'),
('0f408ad7d05686d58f2e486c01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:03:05'),
('0f612ae89306aee59b84e959dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:16:56'),
('0f78ab06f016083944bdb48fa5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:20'),
('0f88aed5d5ee6d29c509408648', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 11:50:40'),
('0f8df059c1fc029e759eaa7ba6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:31:09'),
('0fc249b43fbe7988095d984503', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:03:52'),
('0fc6541c8e405c13558bf296c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:18:43'),
('0fcb634946785ab48bc69965f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:47:04'),
('101ff129b2edcfe586b9351494', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 08:55:14'),
('10369f7c9ebcf410db94bb2c0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:38'),
('103ab50cf600c81ed95bdd0390', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:44:40'),
('103cd9e56e904ac2edea65a5a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 03:12:57'),
('106296f90eeccf52b2730d17c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:03:51'),
('106707193b5e32e5ca21c36907', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:29:49'),
('10981bc28f8df501e3ee9f533a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:23'),
('109f53cedc2bdc2a44692371ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:50:33'),
('10c2aea0917f50afa3ba3856e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:50:26'),
('10d159437989d95d06cabaf93d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:34:18'),
('10e5f1dfb196d33d4a9ee033fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 07:55:27'),
('110a52261c78a22b20d371a83b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:42:24'),
('110f1f70a6b146034d41948cec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:50:45'),
('1158d3f29c153e3662742d6905', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:38:28'),
('116bd0f727fca96ab40c0864aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:32:40'),
('1170e0942f4e865ef67d3e1983', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:23:05'),
('11dcc561995569bd6d314e9667', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:06:16'),
('11f1ba2c85905e509edb67c7bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:40:58'),
('1204c2f289e90e2ed0e0f41819', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:00'),
('124573b7d1af01acbabc29bf4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:57'),
('1245f75522a2a91b4df4acac87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:47:18'),
('124849b2a7e42a0c428a72a6ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:05:12'),
('124954263ec39f4e329837d863', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:30'),
('1256d9049b676306ff74f0e1bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 11:53:13'),
('125c207c74890def44fd415d92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:38:58'),
('1273945aa897811308d973b90d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:04:59'),
('128752d13f9bdacc8845c1eb28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"OlTyETqMkjhhAlhkRRNqFguMlaBdTGpI\"}', '2019-08-18 03:29:54'),
('129c4be98e290cab98c77b7b68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 17:42:33'),
('12bc0bef1e951a31bef03622f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:18:28'),
('12cb95bf696c2b0762dc33ba75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:34:46'),
('12fe8d3656f4afad106f547102', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:13:28'),
('1340d06f463aab731fe40c15d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:08:23'),
('134337d403732abb73445280f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:14:48'),
('1358c497ab29203c4fc2bd475d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:15:53'),
('1367a30d0fa197c894185b3cce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:31:04'),
('136a4127876a922165e8595054', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:12:19'),
('13b62e12b0db1ff4051c39cda7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:18'),
('13bfacebc51df044a704e9c02c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:27:37'),
('13ce89e310c147a9ce56e5e8d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:33:03'),
('13dab5da447f596d2bfb0396a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:19'),
('13e81d1b8064b91431c03dba56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:28:19'),
('141a354c2e1a3f3df4e40dc991', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:49:31'),
('141c11518da775aca4e69f065e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:48'),
('144abc9419718d552565117ed3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 07:56:08'),
('146b90de66164df4ea82f6aaa4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:49'),
('14d062b7581f4ad69d87fa55f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:44:02'),
('14d889eab7fc8be938e956bc6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:28:04'),
('153197ca4873b7cbcbfe311e89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:30:16'),
('154cbef9f0d4e9e01c731b8805', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:57:33'),
('1595a3c9ea5741388e0903c5b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 07:59:45'),
('159eb522ab8e2e4084091915f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:32'),
('15b9068ed2db3da00b306c2d9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:05:32'),
('15b97e26cb8d4e39b774c48f7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:24:20'),
('15cc08098672dfa1844ffd14e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:08'),
('15ceb8bc1b2f575f61b1c62c50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:13:46'),
('15dd82b09c9a36a2459f60dec2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 16:08:30'),
('15fd789df666b63f355438c56c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:37'),
('160f2e3b54aeff8adcaae879a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:37:59'),
('163467fc6090033edcacc71d8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:47:09'),
('165d7ae65aa14e33442e2d259a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:33:23'),
('165dbc2e82b5f8875c158b7534', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('168d4b4aac9ff91a6b60e50e2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:55'),
('16b8d1c5a704469011bc194c09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:36'),
('16cc24ccaeddd1f155fd4c7ef3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:21'),
('16d309c2054a480e0ba8e06382', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:09'),
('16e6a8e051add42764cb870649', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:10'),
('1702dfebdc7ce63612c4377671', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:37'),
('173120e43bb415ca2ff8d08bb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:39:59'),
('1767ed10c028537a37f61e904c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:23:30'),
('1767f9d834f93ead83229833d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:45:56'),
('177cd04a1349a02766c6e47a4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:33:50'),
('17b6976d33e53d396d2aa9c025', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:18:16'),
('17d46a1d5ffc695cdbdfa95465', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:43'),
('180413bb3eb73f366a05d99395', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:43:48'),
('181770be50e01f4001537ffd85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 03:39:31'),
('18666b67a2d645ed2de329abf6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:29'),
('187d79334c5798e8cb90a8a45f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:49:58'),
('187e2ee7cef83a08a4e627a7e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:43:44'),
('18a3d01a0de54ef1fa6dbc0297', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:48'),
('18ae315d7e1d0955aea28dd263', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:43:28'),
('18b59e165e2602ee8725dc53a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:25:29'),
('18b93e24d8e8261c726db5209e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:06'),
('18d7e8ce1079d315f322b376e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:03:52'),
('18edcdc4d5f7ec94e73e376702', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:34:15'),
('19270e67f6388b2eb3d9649ae5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 05:15:11'),
('1938e62bbb9c7789905008ba91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 02:03:43'),
('194b37df6a789b45ba7188f8c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 12:27:52'),
('198f4f0d91f0bf36df9e30eb38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:15:35'),
('19b10a0797c7fa1e9d5dcdc2c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:39:52'),
('19c05b859fa482fe9671177c1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:04:54'),
('19d641a850045879d7d6546660', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:22:08'),
('1a0896ad18c1a565684e931ca0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:13:12'),
('1a0b9fe47690f7fb75965152eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:43'),
('1a3979b18bc945a602bba0ddee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 16:55:49'),
('1a4398547acc81d77e129f4214', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:55:11'),
('1a5a181e85fee41c5ca1525868', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:27:52'),
('1a6d22bdd6f2cb90af6a4fe145', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:49:40'),
('1a78257379815f8d15c5232bb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:35:04'),
('1afc12ecf59e6d443188c4cf4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:28:11'),
('1b472fe7f9fe82abaac4e05c1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:28:07'),
('1b58d0086ab6416f3289fc1ee0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:58:47'),
('1b812015d4769d2278673655b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:00'),
('1bab5f9095b1487ebfe156812d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:51:05'),
('1bb65dd665e32fef8660848251', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"57\",\"50\",\"67\"],\"compare\":[\"57\",\"58\"]}', '2019-08-15 12:04:47'),
('1bc1a6ca094ef0ade70c941492', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:33'),
('1bd83d733b35e7f4260d0ae531', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:47'),
('1be3d7eef250592964afbe7e19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:49:30'),
('1c094724fe2329ed0f1d3e1d1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:38:24'),
('1c481fe8bde1f4384f535c8728', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:47'),
('1c7dff665ee211d108672597b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:38'),
('1c810e551054e89310a7920b26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:02'),
('1c9865518a8a0414e20ab2e59c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:36'),
('1c9b2b875b7de8d9d740c1925b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:22:09'),
('1cb66aac344a96c888103afd49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:50:12'),
('1cc9ecfa01369e02dd65f06f6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:37'),
('1cd93ba55a71f5d26df58797b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:18:56'),
('1cdc3468effb2b1cbc07d46460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:34:13'),
('1cf9f74893138e1dfec24d05cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-16 07:06:12'),
('1d01ce4ab3ec0b9a33a0aa0273', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:02:28'),
('1d0dadc733f2115cf3989b0a03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:15:35'),
('1d11d2e0b03d304d86d1c06a29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:10'),
('1d135812e420aff2caf09ccbfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:14'),
('1d244c6accba03bb5e2c17e11e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:49:19'),
('1d32202d9df818be3f5f4a475d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:38'),
('1d5cf647374718bec70267c7ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:58:43'),
('1d5da1c2b696295dac745ae03a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:19:55'),
('1d7a02b810af9d4bd2cb53857c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:24:45'),
('1dcaf513675a41af666022d8a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:50:20'),
('1dd4fb107f1318423b5d9a3b75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:56'),
('1deb4cba49bd0b30053dc5eeb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:05:56'),
('1df176182be11bf0b4bb023ef5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:58:26'),
('1e366fe50f4aa5dca50dcccb6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:13'),
('1e53e733318dcd8e4725e857e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:16:09'),
('1e5cf4ddb1bd9a33a8dffdef92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:49:28'),
('1e75cc8b76be0997120a6af3bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:01:08'),
('1e9b496493e85ac38a06a84bf4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:44:17'),
('1ea589c5858ab30b2ee18f5faf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:12:28'),
('1eb1c744876659d383a1595188', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:55:56'),
('1ec51371541ffaa6df1487e014', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:41:14'),
('1ec536b6033b94ae5c150b76bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:42:37'),
('1ee044fb38bad9e08c7ce28353', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:46'),
('1eeb455fa8a9d0092f589f832c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:16:02'),
('1eeefe1999c05945e68d3a64bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:18:07'),
('1ef1cea290d0e8e6b81798cdfe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:27:52'),
('1f04d782376da6b44163e5758e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:28'),
('1f0c2108b9bc827c0a221f5c02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:07:16'),
('1f38e985980afa7c6676bf60d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:02:26'),
('1f4fef872042baedcc37cb888c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:09:59'),
('1f505e5dd5a7f17813ce2a67f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 11:45:05'),
('1fa90631d7d8dcf72f8a02fc73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:03:52'),
('1fb098a68413b633b54f72dc3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:40'),
('1fd745d706fd0be8474dd9b0dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:04'),
('1fec95a6a92803ea3b5ae45152', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:46:03'),
('2001cc70669ea065478fe50174', '{\"language\":\"en-gb\",\"currency\":\"ILS\"}', '2019-08-18 18:04:15'),
('2055a1c64c1041019b9ea75c2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:49'),
('208c482e6272ccda7ca8aa1b1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 11:07:42'),
('20fe89c3b94a200b2f31ef5ce0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:37:21'),
('212c51595a1e1d2a391917490e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:01:02'),
('218a71ce2c488f9947bc8eb881', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:43:41'),
('21b327073dae5370b0077bfa30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:41:35'),
('21d721c896202dcf09971237ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:39'),
('21e479226dc23efdc430bd4b87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:17'),
('21e7516907e902a01da86ef8bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:12:39'),
('220b3ae61f60e8b5c57f3741cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:33:30'),
('22168ae0756241b8445a3463aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:10:14'),
('222b4d63efe17b6add1655b9fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:39'),
('2234770c962307316df6c19e44', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:48:27'),
('228038dd8ec1c5088f99aefe27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:35:04'),
('22b244bd61fa9050a6b7ada95f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LZU3JapDu3MGvv0RJLZmccX05OKkURkf\"}', '2019-08-18 20:30:27'),
('22b7adcdae4c2a3e94133b2d33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:52'),
('22ce5414c9aae6987c7c2b1746', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:50:52'),
('23133ce4fcf8c842b900319048', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:03:31'),
('234193b99cd5fbb7135fae571a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:07'),
('2359e9677b342bb6b4b574c0f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:05'),
('2365f603560c0841dcd468031c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:08:06'),
('239d5cd27fb02cd94082bd0f78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:09:14'),
('23c230ac23db7f3ca842b88df7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:09'),
('2401e191f7b584725cbeca5aa8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:24:21'),
('24b4c0ba09044a6eca236e3914', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:49:28'),
('24b54b4d96ae479f3ee79b224d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"n9xgBqIGiIwWhFaSE8o2sM6lRjWDbmX6\",\"vouchers\":[]}', '2019-08-09 00:38:22'),
('24cf0b99213ce5c1f320d2e209', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:45:29'),
('24d6a64a8d716ed9d76899b496', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-18 16:57:11'),
('24d94cde78e63c655c0d0b8875', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:02:20'),
('250df1d12ff9fddd791da12101', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 02:05:04'),
('2520e3db8c717349d9b5de7c28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 22:44:59'),
('253eb985ad71746873552aa2b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:42:59'),
('258d1a6e85612d8d718d6bbd56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 01:01:48'),
('258f470e29da5e7602b61180df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:06:50'),
('25936f2faba19fc73167b64920', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:13:28'),
('25a0725930eba5568cb3248280', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:49:19'),
('25a0f8a83bf7a0a6740e8c0eec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:43:03'),
('25cc929ffba7b09e352733b960', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:34'),
('25dabf8c7cad4779fda585cbec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:26'),
('25e481030150565a3e2bb70d5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:22'),
('25fc4c3640d53760a9bbeb49c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:40:29'),
('25fc8493b2bd14627f90c6b616', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:29:14'),
('261bb6e9fcc1a586def6f4da74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:29:24'),
('263c7a6c39a3373b37eff06a90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('264ddbbfcdd1c0e91a97dea718', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:24:30'),
('266042ec4bcbc04308041d17d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:31:53'),
('26992cbb5adb5bc72ffb11c1e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 04:48:02'),
('26bbef96d28efb116ac3e93c69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:52:57'),
('26d2f1b2a5390724cc7070907a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:44'),
('26d91631ada4d4b498130c83dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:18:23'),
('26da446ee906c67f82009cbf9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:55:21'),
('26ee50bdec2299f3d02f2decd0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IKTPMb4SybM1qzYFOZUcfOfHAEWpp3BG\"}', '2019-08-10 23:37:04'),
('26f888b22b7ac50281b71e036a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:18'),
('27049833f89bf15b79f737090f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:38'),
('270e37794f0739e473473dbe24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:18'),
('27266e5f661192e894515a2650', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:52'),
('274ec0e1a96a361d78d5646f53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:23:07'),
('275465ad00795264111d3b64fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:42:57'),
('2757fb7eabbe3c564a541c2314', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 19:21:16'),
('27618e3011abd661185b52ad42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:32:02'),
('27748c82397aff3d75598d30ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:59'),
('27779ecff20b83749514a95c08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:42:05'),
('278b0435e33b0c3d07f746ef71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('278b69d7739f57a9f85b05d65e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:15:35'),
('279c892762fd510b0773a1b87d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:20:41'),
('27a011024c070ad443b2e94776', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:49:05'),
('27a47864ecd035765996f385b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:04:44'),
('27a55a38cc12d1dbf9984ace2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:05:07'),
('27a71d8c1acec74a1f2cf5a204', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:43'),
('27bad83f561242358eec6bc872', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:38:19'),
('27c6c48e2eb7508c0ab0db700d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:39:39'),
('27cc5d43c887c946b942528f1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:20:40'),
('2807bbada5ff994b92bf3dba87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:22:00'),
('283f3fe5ebc1d65f18e55f6726', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:41'),
('287248e3593c5301d25d2ff4f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:19:58'),
('28800ed35fc108a4fe031cbc1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:01'),
('293369d6f3621e259ab6567cc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:52:39'),
('293d7c7e9e0752245596e78051', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:08:23'),
('29587a6eb13f502751d27f68ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:27'),
('298b3be6aec6e7b97df6bd9ab6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:02:12'),
('29aca4cb1fab4201df0c0b000d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:58:40'),
('29b9653962f4d30d5098af48af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:14'),
('29e3f0e18e4dd2ec5d6433bf8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:08:40'),
('29e55fed17c464b7a6d33c1b50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:32'),
('29e6fe66c5c4de87d561d7f99f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hFVm9XWjHFjhzn6JnhYj43CQK014cxWi\"}', '2019-08-17 22:51:04'),
('29e740988ee13a50587f0e9bab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:04:54'),
('29e918d6de45bbe1167a8aaaec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:06:10'),
('2a1f27c756cf521872c0f24757', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:36:34'),
('2a3a51707f70ea26ab2290b9b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:18:16'),
('2a4c3397ceebeb8b07a04a99f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:39:23'),
('2a6cbc2ac32e95d62dc908847a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('2a897331071151cf274a804206', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:49:13'),
('2aa5b6201d0331e30778ad7df3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:23:41'),
('2ab7764bb188e5cf49aed0d46f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:54'),
('2b15c3fc81ea6add2a5f7e9db5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:02:03'),
('2b247a01d8ef2ad90a2040cd94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:10:49'),
('2b2c4b7fa273fd4b89c9041cf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:51:37'),
('2b67577c805ddb545fdd8ed5a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:48'),
('2b6939fa788109cfcbc3956896', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:03:44'),
('2b7a3df5e4399f46ade736c2fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:53'),
('2bb7b2ef0f1426b3de61052e19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:30'),
('2bda91e4f23aa7ec4702fc9460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:51:11'),
('2c15242891ac10df3d42e61cbe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:29:26'),
('2c1970cdc6a72044567b976621', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:57'),
('2c24bcbe206e1a2d0ee04841cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:13:04'),
('2c4dc405bdba8a8529b88a9f1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:34:00'),
('2c99c5b7b382e9142da6e41fe0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:45:36'),
('2cae4537ed7a5e7b63596a07f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:44:07'),
('2cb6e585abf6d064fb7ed773d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:18:25'),
('2cb8e3036bf506e475dbd9c21a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:20:40'),
('2cd18dc91ffd434c8706401618', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:09:41'),
('2d014f75be90982866dd62460f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:57:38'),
('2d06b559387bfdc0785a8a80b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:09:17'),
('2d47c207d04b93e4f03e381cb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:35:11'),
('2d4882755f1433990bc8e5713b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:05:20'),
('2d546cb24a158202b4caab009c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:15:41'),
('2d72fbeef3e67d9bd8fdf3897b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:57'),
('2d744a8146cc6393ba647b2698', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:38:34'),
('2d9da373e64bbefea0163d178b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:36:15'),
('2de68db2f08ab4928d325614b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:35'),
('2df780657c77d1caf2b57a6c2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:13'),
('2dff504c345e116c103b84b9c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:31:40'),
('2e237efe32b13bf534e60713d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:19:34'),
('2e448de8e72339aca4dd70d3d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:29:44'),
('2e484acc05e1ecde2c1a92e8e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:49'),
('2e4a67be9fba140bf5d92b6d63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:03:07'),
('2e5cb1ce74c874b660c3bdb11a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 03:40:38'),
('2e690100428a72dc825457a789', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:48:22'),
('2e6962920b79a22991f733cceb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:25'),
('2e6d6f7b48e1979708f21bc80d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:23'),
('2e8a76436b2257d7fd0679275c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:49:11'),
('2e8ae3ea176801045e0e2712ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:45:17'),
('2e9524e3bf72ac72a3ecc5da76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:39:35'),
('2ea39cdba15cdfd0d6bce8a4e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:30:35'),
('2eab93888224b8209b154f3326', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:03:31'),
('2ec0a4fac1ccaac4078315332a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:03:32'),
('2ec2839d150dd80bb727af8b8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:40:24'),
('2ee2889ce08be41445558f5c16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:45:48'),
('2f04bddb505ee788aaab7ba7f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:29'),
('2f177314c8b6258389018fc672', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 13:23:02'),
('2f23f5cefd7fd5b1896bd4409a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:40'),
('300f526036786d317d9d928e2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:43:06'),
('300f8277dc781d799c70d16762', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:29:59'),
('3023cea425749c5b641790b5dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 03:31:53'),
('303ae4656cec31339b399063e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:14'),
('30635c18fa61dc2772d3de5818', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:30:12'),
('3092b134a775d828e9bdd00d67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:12:14'),
('3094beca4276669ce51138b7f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:19:35'),
('30ac8981032a5c6c1c26175fda', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:00:32'),
('30ad3003e828867b382d987c4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:51:15'),
('30c4f604f75f5badd7e2e9a407', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:17:26'),
('310a03bdc6f0dd57c4c735ecb4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:12:53'),
('311b428903bf5e46c9dda5e341', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:28:32'),
('311e59162abc00d9fc7f7c90e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:04:08'),
('313fa77c704bd863257603dd4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:08:07'),
('314de5b49d4feb8f9ac77f1b72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 02:14:46'),
('31626676e1eca147da052d2b19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 07:55:23'),
('316445737ef1f10ab405185558', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:41:37'),
('3179584459a8ad5505fffa78b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:52:35'),
('31b6761b1b878dec09553bdc51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:38:09'),
('31cba19a22341c8a10be4b759e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:28:17');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('31f7b0adea4ade46dd0fa01858', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:42:59'),
('320c00ad77c282cfb6556020be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:20:40'),
('322d78f0a5eb4b565f15616569', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:19'),
('32443b8e3cb6fcf0c904938538', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:14:39'),
('32600f243294aeaac159e84740', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:05:58'),
('326549a0fce42e0f6825cb106e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:57:59'),
('32bc6a37de505858bf70e50500', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:47:35'),
('33290ed36776e362bd5ac6292d', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-09 15:49:36'),
('33501cca41f254f79d42995495', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:15'),
('3358e2a2bd68ccf508ab3fc192', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:03:53'),
('339af37bbb7f3758dee732d26e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:19:24'),
('33a9df36374867a6b1192717e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:49:45'),
('33c0ab8fba49b959b79903a8e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:26'),
('33fea2a5b9cedc0bdb8c72a1cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:13:33'),
('3405753ec4cd3f9f3a409aa5c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 05:23:49'),
('341ded38e755b3ed9856ab1df9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 05:52:11'),
('34297f91e7b5a8017a6bb272ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:52'),
('3430f913be0d799e6a4eb4e036', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:11'),
('344e9eb5a25dbf42f1e4718571', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:03:52'),
('346cf659d75af2fedee33ef3b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:39'),
('347f72da5e560b28c871f4d79e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:20:03'),
('348ef255094abae2c5ed6aaee6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:06:28'),
('34e00e2efab28bc8cf976c1a83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:40'),
('34e9b86ede696e155f04fbc24d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:27:52'),
('34fbd1da609243098feedae350', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:27:34'),
('3505a18c502f96d1ede20fc8c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:42'),
('350b5df24e5adb61b92f07790b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:39:54'),
('3510858620bf32e5e67f6e04bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:33'),
('3514222921bbe43ca0ec356bb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:08:35'),
('3537d4e40ab5a5b43d820873f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:20:57'),
('354e8aeb1678d12631af8665f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:11:08'),
('357c83202ef32047b23348d3e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 22:31:54'),
('35914fac41ae9e592500e5b714', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:23:05'),
('35af8acea4c31df57a80be6e68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:06:33'),
('35c5b6c1e5549677f0ac668f48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:20:35'),
('35db7e7439e7fa4ea60734cdf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:32:46'),
('35e3cbbddd00b51014e4a8aaca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:06'),
('35ee55d75e6a31500192f35406', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:40'),
('3605c14634d0b85eb26b7ce016', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:33:51'),
('364c8040a3b9f424e912387264', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:01:38'),
('36593a018dc5ab9b555fcef097', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:22:12'),
('366cd5b5dcc7d1e73b8daff1d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:19'),
('3682706a27c342051fff1e3a7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:38:11'),
('369fbcb8f141a68d405116ca51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:59:40'),
('36a9139eaae26671871b310dda', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QK2dqMHlKStE1CGL2Ng99YiOTGbQMW9p\",\"customer_id\":\"2\"}', '2019-08-08 15:41:09'),
('36b7cd47abbe61a702db840da5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:49:28'),
('36cccfd77917a6dbc23071c2d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:25'),
('36de94b19fc5706476bc6f37e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:32'),
('36df6094efa655acd2227bb6ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:38'),
('36ff63a605fac783fd4a3b5662', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:16'),
('3701d25f4c38cc9594f84f5ed9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:34:57'),
('371922e7cd188739ae4ab26885', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 03:15:07'),
('371c834e96d18c712c31d025c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:37:28'),
('3731bfbfadbcfd445aee568e09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:19:05'),
('3743848407e1ae879c2bb7b9c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:02'),
('375586be9edaa8d7629d73f15d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:01:11'),
('375cdf9b871e756c5214a83f0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:26'),
('377751d767c09ba9cd89fffe51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:42:37'),
('37794da5fc7029669c5fba95d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:13'),
('3786d4ef0517d6e095f73a100b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:29:32'),
('3788468c4d07c871722fc1da39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:38'),
('3794aecc971d3fc4c2662b8cff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:31:52'),
('37abb0558c64b13ab52f7a9285', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:30:18'),
('37b2d291d84ce8ec1fd525119d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:46:05'),
('37cb13d8c0cafde56c5ce0fb40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:59'),
('37d1760af5a5abec666362dadb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:39'),
('37fc533f9946d4970d818167d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:36:47'),
('380b1e8b516e0eec90795742e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:23:56'),
('38ae92c02177578d32e8c749f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:01:38'),
('39082ba99ffbea4be02ec89b1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:54:16'),
('390f902b0bc50ef19566c3a214', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:38:24'),
('3912a61b267f2e1485637944cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:22'),
('391aab677a3220d088bdb0d0d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:39'),
('39329096fed352e6a3660a1c8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:30:16'),
('39391e060cea3948fc7bd74ebf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:58:53'),
('394364af9057b8c7349b0ca6d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:27'),
('39455db6bf0ea80f5f68ec8a19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:38'),
('3945752294e3ff8d32efcc30dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:02'),
('395e04758fb54cadf8e1d332b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:24'),
('397e004e89cac20f53476ed4f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:44:41'),
('39905d602c77d26d3e5f3c4896', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:06:16'),
('3994989f998810e336e005f954', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:09:08'),
('399ab1d9cdbb653bbc21bb92ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:52:53'),
('399e464e22d97e1e265cdd5fce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:38'),
('39a21d690c2d422aa9231f681c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:07:56'),
('39bea56750ec0a4bf481715e31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:00'),
('39f4cb5601a1a0f46d9718007c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:09'),
('39fe20d894863190c8f0669978', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:58:25'),
('3a3aad1539f4e821d681913f77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:13:44'),
('3a5346856dcef19cc7da1bdd54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:00:32'),
('3a5b7acaa70e10e9dc305fc948', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:39:52'),
('3a70974feb34cf098bd0dec137', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:24'),
('3a7d3cefe974895644c8077f04', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:25'),
('3aaa2e27cbb37e222fea811223', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:27'),
('3aad3064561e9cc1aac7cc54c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:57:17'),
('3ab462540c9bdbcf8bf07be800', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:43:43'),
('3af413c9f031ec663e2e8a7268', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 05:14:50'),
('3af86369f82bddf7dc30ffd32b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:58:28'),
('3b03220046ea8de36be617db5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:38'),
('3b042eb70879f151a78422ecf8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:09:28'),
('3b1170de2378c111b4fc088180', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:30:26'),
('3b13d60f2c710b6aefae4163b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:59:04'),
('3b1c5107345ff3029b31f52796', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:23:37'),
('3b48bc7811bd4679d5e69d4e1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:07:21'),
('3b4c7d0cf6cabcc7614527dbca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:37'),
('3b7a937c9d7cdc8ec7ec90febe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:50'),
('3b8f3800662193f746c25d23ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:28'),
('3b92be53f1d832ec53ddf25b5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:04'),
('3b96d71342c07f8432b6f43517', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:01:24'),
('3b9b8801d5ea838125931a698e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:19:46'),
('3bc693e18efd7b47042a59cc72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:33'),
('3bd9592869016d3063419b6a01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:16:58'),
('3c041cdcf0f64ac419997c3911', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:56:50'),
('3c2f8220dea3d08ef314fed74e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:18:57'),
('3c31eb9b2e40d5e6c501c58122', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:42'),
('3c558eb6b3621c24db128112a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:44:40'),
('3c6abc3be01a25867c5d4127f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:23:04'),
('3cb2ad970ae55494a72c8bafa9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:20'),
('3cbe3f595f0248132043e35110', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:24:14'),
('3cc885cd0e3bb9f9c86b4f885f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:27:57'),
('3ce2787caec9773108a590ae6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:55:47'),
('3d135d5a3256d79408fd74d896', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:53:59'),
('3d565a6485bd51d00307de0cb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:17:31'),
('3d73e9a69f7f7980947b5d4a58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:17'),
('3d8462228a7abbad5ec8d25491', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:24:23'),
('3d8b63efa2f7ef7510656ba60f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:25:44'),
('3d8ce515e48ef8bc6fd9d03aa3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:06'),
('3d9e8d7b61ea4583ec785984b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:09:15'),
('3da95073ee411b892a6b5a443b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:24:53'),
('3db1365163a86aa5e9973e4bf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:37:45'),
('3dba83a01620067042b8caf0fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:53:59'),
('3dc3c27978f4729091b1bba809', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:13:28'),
('3dd069e26667194360e7cfca79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:37:38'),
('3dd92ddd74b4171c8b427e947a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:51:55'),
('3dfd2c242172cd8bc5cd8bb4ed', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-17 19:03:27'),
('3e292e40b631cce82379583fb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:23:37'),
('3e2b8226fbed6cd2839ee344c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 06:40:26'),
('3e42631ed709b15a5456d0acc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:35'),
('3e44b5b1d3fee8c09efc4fef3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:13:28'),
('3e52d4abc7527520264c92ce15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:22:50'),
('3e6e8f517ecdf1e4ed0b4ecf1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:23:59'),
('3e80ac148b4362cf39d88e8067', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:12:00'),
('3e8dd6169d2e9ef96277ae040a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('3e94ca8094020dd3fee622f6d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:48'),
('3e9f5d455c8904a8e2cb836209', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:17:54'),
('3ea7d30cdb45ccbddcc7706147', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:59:04'),
('3eaf7d1d23634723fe7e6e26bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:47'),
('3eb68e3dab6b916919f35ba7f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:59'),
('3ee2810f428e0b9b0a94d31681', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:29:59'),
('3f1cd3b6e40ef2606f7f02f506', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:37:02'),
('3f78899da4ece91b0b56768c65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:22'),
('3ffb1f8f979e3931f0b04092e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:28'),
('401759316569a9e8567d86984c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:17:27'),
('401f629c1c53e7847f226a34ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 06:32:27'),
('402d99248f2239564b059eb53b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:38:21'),
('404ea642763579712a69f76cd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:08:40'),
('40827cb77e86c9bc6d7e7c0e4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:34:47'),
('408490f7a0361427b734a19222', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:42:16'),
('40a11cbe00990ecd5a50499feb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:38'),
('40ac7c310e05e963a6233a0e52', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:07:29'),
('4106a1e5953bd45200e5e988bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:28:32'),
('410c337dabba6422cd7d0c6fec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:52:49'),
('410efcc7c173de29fcc2c2e67c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:08:40'),
('4115652e5e3209ffc51ce9a809', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:00:39'),
('41280061855c48171eb4f0d0f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:10:21'),
('413ce1db0b710a405878ba8b33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:10:30'),
('414ef1e0e1e7dc51ee3a2d7913', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:47:24'),
('415af0c1cca19bf75eff4336bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:46:09'),
('4163a348e956f19af60416e456', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:02'),
('41a08ed5d6d3b3f22f9526ed4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:43:51'),
('41a3dd0f7dd0b3d3de4c8eba82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:01:11'),
('41bc7e665894944a67827b1960', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:59'),
('41ef75b51cfbb0939cbad16cbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:59:07'),
('424e2bf328d5471f69a5abb9c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:14'),
('4252e6a069c677af57a2a376d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:41'),
('425ced971690662104d90ac78d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:18:16'),
('4262284d4b02e79a1651386894', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:25:28'),
('427417b2bf78a762cdf4f10aca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:53'),
('42744c74347ee6ed3d01574915', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:21:57'),
('4288822c414286d34e6d327e20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:56:20'),
('42a1fe138bd9d1d7de1f1c0572', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:40'),
('42b84e9a5682ce3661aef606d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:44'),
('42cfd848b1e98e8f375d964710', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:49:54'),
('42d779ad92ae0f2b58402556ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:15:52'),
('42e73bd3c5c5d2daa741938459', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:57:08'),
('42e9e35ff895752e0c7b24df15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:59:04'),
('43346ca0e7d6ca719cd888e8b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:52:51'),
('4335b34c211d09cabd3a1c7dd7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:11'),
('43439a5d7c35add721b59f329f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:14:47'),
('4369abdd40b1e8cd9a11fd8c6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:50:51'),
('43bd38e68bf274b77e937ead34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:56:27'),
('43c08f0e97fb7aafe043be516d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:34:47'),
('43db8e269e49e21d343a8439b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:11:04'),
('43e07595b118d6100c69099585', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:14'),
('43e696f5551e396b1a86fb832f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 11:19:49'),
('44125caf431d9ba3fada9209b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:54:16'),
('4427b461402c96f4aae59ee99d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:22:36'),
('4452daa7d08b81217b9438625a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:42:59'),
('44580102036f0698b4eac345f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:08:40'),
('445a6817628079afa3392b7546', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:03:52'),
('44642a430d41ac8e2639b964ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:24'),
('450d73742ae1082192908094d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:06'),
('451bd608bab1eeb2c00c235012', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:15:52'),
('453ec168d80f26c33ef7b67de6', 'false', '2019-08-15 14:38:35'),
('4563f298939010b24c56d257d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:20:23'),
('45b6455e91e7b9f03caba0e8fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:06:16'),
('45ef706e1efbb2febfd01f7440', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 06:52:26'),
('45f23616693fdda0bfa1946f01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:51:52'),
('45f7660e7e18bd679ff06ecdcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:31:46'),
('466d13c6b9d2e233e2b7680b42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:28:33'),
('46879fe6009572999ad3427b9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:03'),
('469a92249918aa68aaba53e4a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:29'),
('469c76c3393b7d6e0cd34ae400', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:12'),
('46b3a5defdbcaa47d47d0a17c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 06:52:43'),
('46d56a3e7486df518d7aa31f42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:31:49'),
('46e2eb9d9ab7abf39903088971', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"JioqAMIdxrJTFxeNfo2k1PTsGbgIlwxW\",\"install\":\"XV0dDiIzFn\"}', '2019-08-14 23:37:33'),
('46eb96c7d6d03e6d72db5d09de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:57:01'),
('46f1a05886a408cea11b539cb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:32:40'),
('4702dd8514ed948de613170d3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:16:52'),
('4711c1246ed662e396112c6dde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:14:13'),
('47151316abd00ca1c85710684b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:05:25'),
('4722e20d668d840558702641d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 17:55:15'),
('473460c73fc94ee45fff4a45aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:50:32'),
('473fbb572f5827f6e2224f7d88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:56:38'),
('47467bf37bffca5b8be3aeed73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:37'),
('474b92fd10a8105ae2e7108853', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:10:47'),
('47650ab0fef76e406dd4a00c6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:49:29'),
('47840ddfe7a2c2afa98c36eece', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:27:52'),
('478da4ad56a3395af3baa31cc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:22:07'),
('47bd0448295acd0b6aedb21ca5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:15:52'),
('47c2cb052a5c2a5a59cb10b93c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:05:57'),
('47e0deaf7287839b2a00db9d15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:56'),
('4840ee8658fb2ae21cf328b761', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:34'),
('485db07bf97b36376134c5772e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:40:37'),
('485ebba728d19b75150aa321bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:00'),
('48756174ad79c4c8fdd79c061d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:17:43'),
('488e763691a1cd0c8a812712be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:43:00'),
('48d7341912636df290fefbbd77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:53:59'),
('48e149e8d4114d1abf588c8d2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:30:16'),
('4922191aee6151e24da7042b8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('49492ab208cf4bbeb434529d7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:08:40'),
('4963cac13e08e8810ad5de639a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:51:50'),
('496defccbc00615fbe738c7def', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:26:28'),
('497c9f553bfc03226daf6a76c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:27'),
('498b650812723b7109af47ee2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 11:31:40'),
('49a3d2abebbb486082a13d1b87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:44:18'),
('49bd0e275c982f4f7c7a0ae5e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:24:34'),
('49ea02b5de1d8cb577f3a68d8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:21:03'),
('4a21f0d41d51fdf01c1520350f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:17'),
('4a22f1f62fa72dec942ddae780', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 03:14:55'),
('4a4400e5672c008028d5ac0f40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:32:52'),
('4a813697ab3acad32dfd554890', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:38:17'),
('4ab2a3dba803bd6e8f0f8da645', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:47'),
('4ab9c2968a70ecb8678177e73f', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-18 18:29:56'),
('4ae7440dad4b6585bb2c08bc2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:54:08'),
('4ae85264b6e0e3edabf7882beb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:36:38'),
('4b001f6204682db49bad620b1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:50:37'),
('4b18896ec986dc09277dfd76e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:24:20'),
('4b2416a002a9622474564526b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:23:33'),
('4b559db5c131366a7284390568', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 04:23:29'),
('4b59d4373b5dc4cabc5a74f10e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:35:57'),
('4b970dcaf10b1c2b3292bd28c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 16:27:26'),
('4bd448d7b43a048e942e195dfb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:09:36'),
('4bdab3a056cb1a3ec36fcfed96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:47:00'),
('4c1f3734b2ba1815402dece9cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:14:53'),
('4c36f6e3b76199a27c39e48f55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:20:40'),
('4ca37d49bf07153bdeadd0e82e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:33:06'),
('4cab0be105e055e5d4a6a6ead0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:57:02'),
('4cdc795f990214086939f07dfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:19:38'),
('4ce6b009dd51a3e164d8f112d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:40:37'),
('4d21dcab1ee32267642561ff15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 22:48:28'),
('4d288ec76ff7b249b82a3dc585', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 22:21:39'),
('4d4cd606c1152c78f4c7d858f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 08:17:14'),
('4d5a32324a9cd72fb8032fd25b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:31'),
('4d62e23bd6ff06713ef98b1205', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:59'),
('4d640cef4ec14beba2a50575e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:47:58'),
('4d651c670b89e6d20f9afae293', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:48'),
('4d73357b10cee365e9d1aec534', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:11'),
('4d75e3b04f25b6083e04d2b2d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:21'),
('4dc6f3ea639711fd8bd1df7aa5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:25:28'),
('4e40ea4451a79175d3587254de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:19:06'),
('4e502ffc2ff0d49dd3e2de77bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:26:15'),
('4e8c96d6aef25e144b5a1e8d9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:00'),
('4e923278231deb05c4a39fb1f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:23'),
('4e95e2de8794b7d5aa3bd47e23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:05:59'),
('4ebe108f988a2fc89b93f97b55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:13:28'),
('4ed0a55fa318187a9737bb150a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:56:22'),
('4ee2b942a0644a4f06c326d580', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:34:45'),
('4f1ca52e7d9920d05228ad1007', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:49:07'),
('4f444288142942b8a35c99cca6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:24:24'),
('4f5169947de064ef13bb7a934d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:27:53'),
('4f5f4b955160f9ee217e0ab15e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('4f73eae8d8fd5253029290dc85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:51:30'),
('4f8fbe34a50410aee3cf885994', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:32:51'),
('4fe4a5edbecab232d8ca3bdebe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:41'),
('50143fe3d824d6bcc7fd59d93a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:37:17'),
('5016477b3d3470333c26a3b510', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:44:47'),
('505f12fb5222b0041dab859a22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:03:21'),
('506c1bb91c2253e3d4c84d1ce9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:32:12'),
('5070071174619ff9adb6d5fff3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 20:15:32'),
('50af93d7924be6d4d0fbdc8b7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:24:13'),
('50dc0e17a0844cdc38d2e87086', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:28:41'),
('50e6de66e119140339ae61b9f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:50:46'),
('50e8983e2288d5315d5cafed09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:40:18'),
('50fd9228d135219c19694d1c17', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:47:04'),
('5120c81d352067465f468bd930', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:11'),
('51232fd057cf0499f09a27859d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:11'),
('5132131bfaf2f025bae6d4f669', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:59:36'),
('5137e76850690d503f1ab51787', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:31:48'),
('513f79968ed61568230911fa40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:27:02'),
('51591cb6f8c6103c7c43106c8a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:40'),
('515a8696b3f972a5fd68fa6a4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 02:16:52'),
('5170510a45abf75191a697fcb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:41:19'),
('517c2fd1e83fbfa740f0d47e2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:06:59'),
('51850f1afbc477b655f54acf77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:10:08'),
('51b630caf1c1bad2ad485ebe29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:28'),
('51c6d581af882a59ec42d7651e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:33:42'),
('51cb7d5744e5708dd9ddff8a63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:44'),
('51e2373f3a05a497469cf414ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:31'),
('51fcab4469199adb32dccbc4a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:38:42'),
('520ea4c3285fdc4530f325fab0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:53'),
('52193bdabb9ca916f90fba304f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:02'),
('52619f8bf141a86b669c9d57d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 09:15:34'),
('5268784a109cdf5c5e57b1faed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:22'),
('526bd4795e72a5e999a6ba1081', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:18:14'),
('5295c8e127b18b831a9667c9ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:03:10'),
('52a4c2cbce1333d50640bfba7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:59:55'),
('52c2a34966639ca9c8a97f701c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:50:53'),
('52c4b642f78adb711b1930d870', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 04:22:02'),
('52e0946b05aa0f186235854013', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:32:40'),
('52e61a4b891164ca3c1fb5ae64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:54:45'),
('52fdaf4691b7280be600b09644', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:19'),
('531251a974cc9c7c61cc6bf665', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:13:53'),
('5333ad0ec26e693794e7f9ce81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:28'),
('53614a04f7babd51eabea72be9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:18:16'),
('53626be4eacd0dd1f1afa27d9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:27'),
('536442d4d5923656e487adef21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:23:34'),
('5387a692711e0f0f4fa05a4617', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:31:08'),
('5393c8a5ad37bc7c96de3b617c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:37:28'),
('53a7e840a7487cc007ea9cab85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:00:50'),
('53a946db68264bde9de0164b94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:56:42'),
('53bf5fd9a17d9e899ae358c9c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:56:26'),
('53c2ce12cd87c5e8e18c6f901c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:01:57'),
('53c36289451817826150251d27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:59:32'),
('53c87237def8307362a3efa765', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:13'),
('53fc666ea98c3f4b8dce0ff04d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:34'),
('541669e384ae4c215b1eb76d3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 17:56:33'),
('54175f4d760432e2970f05b26a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:50:04'),
('541f3b15e7404133f951fca94d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:43'),
('54313ca39db04aaafda63e2acd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:23'),
('5437a54ad5d5a400cda278bd82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 21:18:55'),
('549d2b05d40554f8d9bac3c805', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:31:46'),
('54a0b728f02d0235e7abac3ac5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:00:08'),
('54b3c0e539335a626a739a4475', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:27:29'),
('54de504fcfd419984e552dfdbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:41:03'),
('54efac9b1fec7b61678de24126', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:10:18'),
('55097a299654a1c0ed74d9bdd5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:45'),
('556227d825a85580a798d524f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:25:22'),
('556a6db324b9e47ad16691ed17', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:10:50'),
('5587eef96e9ae59befbca8d4e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:32:04'),
('559ab917bba5311e372fc1edfc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:22:57'),
('55a4fc2de732918963df5bbb9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:16:39'),
('55f678c29a72fbc5619d4d72b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:57:49'),
('55ffde19192e40546e4c2c3f71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:32:40'),
('5605b2cc750d514b340ca66a35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:27:52'),
('5627f082768fec15fe4086c0d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:22:07'),
('5629677800095493376e53cd6a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-12 12:29:15'),
('5633ae794efc65b5155d4ba8c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:42:57'),
('566f30c1b7431dc175d00f626c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:41'),
('5699e2334ce17a91ff430fb95b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:23'),
('56d8a1a187a9899b7944219ecb', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-09 15:48:28'),
('56defa1b281e787fc52acc14a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:57:23'),
('56e08decda1cad530dce52d064', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:50'),
('56ee58e245a95bb33ac720fc24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:25'),
('5722df4f112b5902a8360fd46f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:53'),
('572b30c0bb289c42343289cc7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:07:26'),
('57350bc51be49d2a8cb90cedfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:30:50'),
('573f0d58ddec76f45812893bb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:03:50'),
('577c6245e4d10d6ad8acc191bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:20'),
('577f50573cfa314da1fb7dc7de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('5782449adc7c0c24e329bcc924', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:31'),
('5791a8ebf55bf7df5fabc924ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 02:12:37'),
('57da185b36f96b73098f2001ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:23:39'),
('582207463ef21c18f410113a06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:22:47'),
('5897cf0ebfd9baad39cd3d045a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:04:25'),
('58a9ca3414e2eb65c09591c64b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:20:43'),
('58b3ce36bdd5416bb7ac54ae5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:35'),
('5930997b5d6f128e7be2272b05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:26:28'),
('5953da6d94e6f7e7207dfda770', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:53:59'),
('595e174afed0ccf5585533e24a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:34:55'),
('59731bcae12cb541c3076371a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:10'),
('5976a63cb30b8e9494e783aa0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:28:32'),
('59b17129c0bab8229fdbc57402', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:08'),
('59b193ad1acff4716bdb7bbeb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:15:35'),
('59cedb27f6caae55646bd9ab47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:36:39'),
('5a0a5d724e36f1bb91814eb858', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:51:52'),
('5a1f76e7b0ee14da653c4a8298', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:25:11'),
('5a31a62f63ddb308aa205b0ab0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:11:04'),
('5a32fe02dd15df7ea9f0d3b33a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:14'),
('5a86e7e8bfbc80c93ff4669b6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 07:18:15'),
('5abb7451ce93a3a977c524d4f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:56:35'),
('5ac0f54713d4faa8aad6e5cb8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:06'),
('5ad0a463848bad5413e17313bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 19:42:50'),
('5af3b86b5210b4eab3f6dff58c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:30'),
('5b0c425e7300232531f70ea653', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 05:04:52'),
('5b0d4a90e6462686b7df90e12b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:35:04'),
('5b2f976492e22cecbdefdde35d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:21:09'),
('5b6ba4052b054f8725a67ce213', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:25'),
('5b97e59f3148188ce18d2b216c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:39:13'),
('5bf993ea819ed8b2b209f27f0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:41:24'),
('5c027f9469659e57735a1203c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:35'),
('5c1b0b0b3c21e7f8c1edcb7c26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:22:06'),
('5c3c3240934329bc54d4544566', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:54:02'),
('5c498459e99f55be17c990f831', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('5cb27b944ac82f4bbdacee31ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:32:41'),
('5cbb59160ac80cb38d4ed49b1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:35'),
('5ce757a8af499b83bbb171978c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:13:37'),
('5ce7a3ee9ef951b967ef457f19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:02'),
('5cfc6a6e0d01b5709671593bc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:37:39'),
('5d18e02ff3427a8539d9be5984', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:42'),
('5d30c140721f02a8599cdefae1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:27'),
('5d3a950232ff51301e45a53df6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:38'),
('5d50c10b25a957d5bda3b7c3ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:55:32'),
('5d6d9471c095121d5eb2174918', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:36:08'),
('5d7883fdfa2b43fe39e06ffa1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:28:33'),
('5d9c052f556469e875e1dd004a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:11:04'),
('5da6f9a354ec9468982252b479', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:45'),
('5da73af5fe534e2f972dd1424b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:09:53'),
('5dba40abc877ae1cafdeebd3ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:03'),
('5dcdda40f28be8ba0c00aca6d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:13:36'),
('5dfa97909f245913aba2bdf6e2', '{\"user_id\":\"1\",\"user_token\":\"qet9lJ3ykCrjb6IRSOv7yZkksm2D0Jt9\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:32:05'),
('5e0bd40a123b4e01e4eab4c312', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:47:05'),
('5e1652ca32d6c56db8a822c5cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:00:36'),
('5e2d64cf840a9271ea3be1097d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:20:40'),
('5e393bb7f1fd6195c797ea28d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:44'),
('5e463e037a37ebb3d0de967450', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 05:35:02'),
('5e53b8562d73ed3ee94767db3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:28:32'),
('5e7defface84723a4b9132dffc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 17:47:22'),
('5e931f372d6a6cf2c6bcc2fa86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:11:20'),
('5ea1d540b620d2d7cf8f729ce5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 17:48:41'),
('5ea37d94d645b7e4b403732d1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:24'),
('5eab71df6c7955e45e4574fb0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:44:58'),
('5eba8b3db9980fce7e987df63a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:29'),
('5ed42b18a55a1ec0613a750d1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 21:20:58'),
('5eec01df6becf17ea56ad930a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:17:28'),
('5effddd08d4e327b5ea5d0fb00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('5f10ab4c111f46aa9cbec72bfb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:49:09'),
('5f146476e420f06468ff5ee3df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:25'),
('5f2071e1a2c047a862492cdd02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:15:04'),
('5f2182c905709cedd674065d3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:23:49'),
('5f339cb0b8e9e504364b7fc1c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 06:13:41'),
('5f38861662984c19b1926fb271', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:52:46'),
('5f6348b7522ee71c32912a1399', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:21:04'),
('5f640beb3141e16a7391f0a85f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:44:40'),
('5f774fbb7a31777cf7cae3e908', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:47:57'),
('5f84fd39a4f209fa2293ac4931', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:13:21'),
('5f8ee2f6ce18f77b99542e64f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 05:33:16'),
('5fada8b9504e8a441a3f1aa9be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('5fd690b3f23f9cd7328141e427', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:13:11'),
('5fe1d78d9ac70733dee7f0122c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:42:51'),
('60092c21e3680f78c014481581', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:39:31'),
('6029974d2f1bcdf119962fcac9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:01'),
('6048ed6d001adeb8fdc3b96560', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:20:23'),
('605ef82cecfeb195616df4a12a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:25:37'),
('609cfc2793399a9f320802b9ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:14:01'),
('609d7c1aefe1e90e22143060fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:00'),
('60a3c6d3193886b19d481ebe0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:45'),
('60a809ea5915f2961c1de917b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:38:19'),
('60b706a04bf130455cf03dee06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:19:09'),
('60f470f947c07864bb5d3becc8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:49:51'),
('6100ec52315a1f880daf11cb0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:47:22'),
('61080e54fb8e9a782d604730f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:53:17'),
('611782a9b97337f69643377e66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 16:17:58'),
('616ab9ffd349e3032c31653bd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:10'),
('618f07b64760296e47a79ea66f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:38'),
('619e4f7014a338a189bb330af7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:47:48'),
('61a83eb69fb684c1fce2f5a77d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:54:12'),
('61ec5cbc552b3ea60cbf9988a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:43:22'),
('61f4473e2d6c1fd28338ca9983', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:58:49'),
('620bf035427ba98272f9a7d720', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('6211add6bff1e75b414d15e851', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:26:46'),
('621b5c5d527199ea972ca95782', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:18:16'),
('624da7379447b72cf3f7cf7c04', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:46'),
('6255d248f3c1c1283e9bcc97b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:25:28'),
('62825b398a46d9a89a8e9c028f', '{\"language\":\"he-il\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"e9mtS5yBpNHfgyirldkyD6wWr1QQn5Ue\"}', '2019-08-18 19:51:24'),
('62829540a81c5f3ea8e85db860', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:06:59');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('62a4400daeb2db475a1e10261b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:26'),
('62b3cfdd172349e69562270e5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:21:33'),
('62df2699d49bbb33a508350425', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:53:58'),
('62fb7eef5fa4e3452739fc4276', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:43'),
('630a4ba3882e7089158e8024af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:10:34'),
('6326e890c28c0f90e47ce57587', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:20'),
('636ac34e91cb8528254b22cfba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:18'),
('637b4a08b99be0c17ff24aca6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:49:05'),
('6398018eea4ededc5768a575ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 13:33:18'),
('63d046c9cb8e827089b35d80cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:28'),
('63d150a25728e636cd2b730d32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:17:19'),
('63e4e554c3bc1d568a91c413eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:00:31'),
('63e8443c8451f09d5250fb7cb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:05:06'),
('6422984cdd8f642fc3fb2c0ae5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 21:43:06'),
('6427fb3252fdb9dfdd20857883', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:15:53'),
('642cb457edc214a2f2ecfdc16c', 'false', '2019-08-15 14:52:02'),
('643a8e591a13cb85daac205e6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:03:35'),
('6440edd02f62ecf4c75974665c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:59:25'),
('6447e7c8ec7803afa5e2e7eded', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 20:53:24'),
('644e12bf90a1733359504c9bf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:20:52'),
('64521486435b95ecf462db634f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:50:03'),
('647ed84b9115bd3e63c10db516', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:31:16'),
('648ee48802f17966db3f928c08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:23:06'),
('64a02d6ffde628b6811ec47135', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:11:04'),
('64acf06d1c39d4f2e8a1aa9444', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:40'),
('64b8ac146cb99589b87539e9a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:01:04'),
('64d1fd2a76cefc814aefe3122b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:58:58'),
('64fecdb43244c2cef4a780cf1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:09'),
('651dd37edaa4abed4e412f508b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:59:52'),
('65713a0341ecd4cdc7b65d5600', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:10:10'),
('659e9dba7f4312d8853488a947', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:27:52'),
('659fd45f38628a58c9479df418', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:02'),
('65a6a46b82fd2be4a850f48b8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 20:25:00'),
('66039ab780268b7a7dcd99ff65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:32'),
('6606f9cf2a1718a39dba629681', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:58:47'),
('660fc59e712df238a57702f74f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:14'),
('6615e46007f6cc360959e9b042', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:54'),
('66256db0d5a76fd604bde5bdc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:32:34'),
('6630f3779efc154728b2f72934', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:31'),
('66474a79f92606721ea85b1ba9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 05:23:47'),
('66a045112f2b66a074df2c9cce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:03'),
('66bdcc0550b7b2b8e8a608edc2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:31:47'),
('66e6ffd74370f3bfad3fcce9ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:52:51'),
('671142e50b4387ab8d036f04c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:59:21'),
('672806be09c47fe57268d24e9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:53:59'),
('6729ce29347e2fc93d7ccfb3aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:54:16'),
('672d669c7cffc608ff6b23c03a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:44:08'),
('67340b3d460f2c22c35f8d8ff1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:50:36'),
('6737d53a16f7f05be9c0d6f2cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:18'),
('6755c0ec04cb8c52d09143d030', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:36:04'),
('678d8bd03096b8f1ccaade3bc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:59'),
('67d13dbee929ef888d0579633a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:33:11'),
('688265472ca2f3bd0535740dec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:38:17'),
('6885de32d505cc5301c511e864', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:38:04'),
('6890599bf1f7a07ac64f441dc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:39:08'),
('68a8c17d030ef701cf0c5d1736', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:51:58'),
('68b021dc232307e4fd49552c63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:14:11'),
('68c709b11eff40c1ff16a704ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:03:34'),
('68dd3df2549123a5e23c157b0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:22:00'),
('68dea9a3d44ef95995e2c47530', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:54:17'),
('68f610963e512b8aa2714c8b6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:49:35'),
('6906464bfa846cd85daae792b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:50:01'),
('69298fbde9a3871d2a7b1c9d77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:05'),
('692c3144397a625789f1d613a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 02:21:38'),
('6944ac13b9e0dfaa49e712d8f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:14:42'),
('695a3b0f465c216116c8a1a85d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 03:41:46'),
('6971c92bf3967a1cf8e8d01afa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:13:01'),
('69af23528c9df56b24ca06bd82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 20:34:28'),
('69d5215d14f6bdf583f3db3fda', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:30'),
('69ea41c76613d248b172bcb2dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:09:00'),
('6a232e5b1fad6ec93e03cc7c49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:46'),
('6a37c98feca95ca60985c47ff5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:22'),
('6a4f0981ee9fc2390da4197eba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:07:55'),
('6a596c649b8e053a961332bdaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:26'),
('6a63f8a98cc4cf7d505458c103', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:02:38'),
('6aa530da5d927673c068f3c45c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:57:37'),
('6aa7fd08e74b0c707e26a7ff11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:25:28'),
('6aec2155350a48accb3944a768', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:13'),
('6b1c153fbe7cfa7bc428fcdbba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:36'),
('6b5033578abc0c681009f78e33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:54:36'),
('6b9b03f4deb05ca213934724de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:26:00'),
('6bc6ffb74bd5085709f4eb3ea0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:47'),
('6bfc6c5581dc4dbb25590514fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:11:07'),
('6c29823d4a5e49475b7e942226', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 03:17:43'),
('6c51da019f5bc45127b36f8da0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:55'),
('6c79d5c1cd5566f4b6d0b4f3e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:34'),
('6cc7d9d152099e6ac65931b8e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:52'),
('6cd019d04deaf35e81f0e5bb5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:47'),
('6cf85ab1efc68bc8998d7fcf2a', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-15 21:00:06'),
('6d168228cd0dae6e7fa72479df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:58:08'),
('6d54fa243ac3e418834805f9c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:30:16'),
('6d7b5ca248c805587e409a7838', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:23:04'),
('6d80a0663ccd2fcb897e890a20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:17:59'),
('6db550ae2af8cd254248b259a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:57:21'),
('6dee4783ecd119a3fe06bb3531', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nRGR5LfJyF4v0jcbxp7FUqIsIizfzDOn\"}', '2019-08-15 22:06:40'),
('6e14403708357694a7bcdce6af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:02:38'),
('6e1b334dac15d79a1bb88db903', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:20:50'),
('6e57ed5ea702971552800ceae7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:22:09'),
('6e736b6eccea47fe454a3857c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:20:57'),
('6e7a264355fbf350122e2ef91f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:40:52'),
('6e8ccc8d9c644009243aeff159', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:52:11'),
('6ecdeb97796575773781b8a94a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:32:40'),
('6ef3e4a04a3031cd6b9aaeb189', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:06'),
('6ef7dd2079b5c98325336f8bd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:11:06'),
('6f0c7eaf6d0dfa74c88a841e1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:37:28'),
('6f11be96140f9273b041da3d1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:52'),
('6f122875635f5ead9e2f735702', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:34:34'),
('6f208b6db845fc3afd6a43b508', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:45'),
('6f259b0325291e43900b23cff7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:23:03'),
('6f30cc7f94c22fe050ad1d762d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:37:28'),
('6f3a8b2174d861b62f17dddb30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 21:51:08'),
('6f4e06887132f343e8f44f979c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:53:59'),
('6f66329a62413165e48fd94295', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-09 10:46:55'),
('6f6d91ca1aa4e81138edf2439e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:07'),
('6f710ae9aa9b988b380343c7bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 05:06:14'),
('6f7beda667b03b0a511f6a9cc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:37:29'),
('6f8b6888d62344dc8263d9c40f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:57:12'),
('6fabb2722bf64287394dacb866', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:12'),
('6fb42586b9d54b47c1e6e03cc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:44:40'),
('6fbd38939518d2b90d30e02d3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:08:23'),
('6fc87292fa4d8f34d783ac1a71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:18:04'),
('6fd99df0e82419ae371743a95d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:01:32'),
('7000d711032db5c79337a9c41c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:17:31'),
('700174a336241469f0c8082c48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:55:54'),
('7015b0ebe9f9c3a2410ac01118', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:53:46'),
('701ea26bfe2ba5a9dffa5d16b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:15:52'),
('7081f77362f54e02377476f7e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:06:16'),
('708dd4ee1b40b2dbbe575cd0b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('709da7604c3d255626c08858f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:25:28'),
('70e3393e5ab02bea03e0897916', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:40:22'),
('7128a32e9f3a98be54e7c03672', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:59:04'),
('7154b58c5583f1ec2c5f76dcb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:59:01'),
('717337731c8bada94eb3ac5238', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:08'),
('7188b23194b71a0e5f026b5ed0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:39'),
('718e204d0416250c24f694cb0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:48'),
('7191e502ee4e47e7ef30748cf4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:15:03'),
('71a1aaa064c315a4d6a8e667b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:11:06'),
('71c898cea7b45742dc3dad2a30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 14:57:15'),
('71de965e329cdbd4b255ce161b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:39'),
('71f4e46aa8926e490e840fe27a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:16'),
('7200c1eb57f2042a004f3f670c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:58:34'),
('7201fd0ee2bf71bc3cb58bbb51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:42:17'),
('72150bf2d65431a30e7de40d4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:32:25'),
('722f2e7abd8495008e77dc23a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:29:07'),
('7252d87f3d958b169487965da6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:30:30'),
('725cfd86fffc415bb610d10c66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 12:48:09'),
('725d1733ad28ac4ccfe62ea01d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:37:08'),
('726063c2fe8a72476a7f6ac7f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:14'),
('7260ef64a7f0bcadebbe183475', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:08'),
('728079de7cfd6e4079fcaabada', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:52:50'),
('729eed77ec4f38466cc02fcc70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:58:21'),
('72d8d867173f812d58b2a65df9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:30:56'),
('72ddce88503ed850cf146af7a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:30'),
('72facff5ec23dc2da353ae1bad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:15:38'),
('7312b6868039466ade8d8a0da6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:54'),
('732497310f059d6b6b8186a3bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 06:32:37'),
('7364edbd8e94ae284bd340088b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:46:52'),
('73762d38a45b082d98089f07ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:23'),
('738d8f0b8dd154aebbbaeb7498', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:11:08'),
('73a2c84e7165722b6f07d5025d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:52:56'),
('73ba9357a212b4dba21086c988', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:27:28'),
('73c6f8d5b61fa700ef3dd7b1a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:34:01'),
('73ec968340eb258f5b8d63e97c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:05:51'),
('73eef6daccdd96916d777d4b57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:54:53'),
('7412cc607ed4f7ad8a51ff706f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 20:08:23'),
('7412f95be19e8cf97c2482c5c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:59:04'),
('741aab27f58966d744cabcc7be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:29:07'),
('746e459b803d64bff00511e9e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:49:28'),
('747c1e60c6dd088c77cb98b4b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:34:36'),
('748a0393e1e85f9a20fe2a468d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 16:51:11'),
('7552cd50942c389c975297e795', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:41'),
('75538fc0aefccfe985a884a5e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:53:53'),
('75624393048023d87e85b371f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:13:54'),
('7573dadda151c048375e8041bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:46'),
('75b7516d908ac287e183c8d2b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:00'),
('75c8eae2946c7329da788c0124', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:18:45'),
('75cd715f4a807418737f7b4a45', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:45'),
('75da10177a603f687fde037d36', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:21:11'),
('75efa28b9c9a4ccb5d0a039835', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:04'),
('760dbd0c2f6b2ae10f420ebd90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:59:13'),
('762910a94f2187a0e7ca506fe7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:18'),
('76a4cc11c662fd6dcde6d66fc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:37'),
('76bc240dfcbe77ef8ff95a653f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 06:23:09'),
('76bd7cee0aee24d05c262d8d4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:13:12'),
('76e71805a5d876a9435c7262d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:48:38'),
('771890a0336aa18995e0bc69a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:49:14'),
('771dc8297eaad55d04f971fb90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:01:11'),
('772d4d020e3644bc090f76b81d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 03:29:53'),
('774a874e5f9b46eab682a82539', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-15 10:51:03'),
('774e7b3ef022c7062806bc8e88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:25:11'),
('775ca5c6834a473f3fe528d629', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:01:41'),
('7796f875dd6bf602c4a4156847', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:20:50'),
('77bbb82a75c0e7b1a4a079d219', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2019-08-15 21:00:10'),
('77dbc5b8c9ea2a31100ca66b07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 07:33:15'),
('77ea6e69ac6b4a610d5ffc2905', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 03:50:50'),
('781d0826c9cc8eef0440f7c132', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:33'),
('7837333475461c540f5218b496', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:05'),
('788895386ace16badfaa34c18f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 22:23:45'),
('78cde0857ac672433ea41090e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:32:50'),
('78dee05e27190fd6e9b9286d6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:24'),
('7916f4e98e0d5d54947064d95e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:28:14'),
('792d2a00bbc71f87a1bcd66029', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:01:57'),
('795b1bd1b6e13d73fc9ff65f2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:50'),
('7964d95a3a3165211fdea58516', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 20:06:04'),
('7976f123da0ec6ad2af398e7ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:28'),
('7979b826053b7c027fdbd95f0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:12:32'),
('799064ed3a9ed9d776d85122d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:18:09'),
('7996d6854195cf824238f7b1c7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"5sOev5WdA1AUjfPtTWCHdJh2CKfZJTob\"}', '2019-08-18 03:57:42'),
('799fe704d75226765a1b338729', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:43'),
('79d9a509e52a619d0b7e9f2259', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:35:04'),
('79e6a4083369892103a5c0e3a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:16'),
('7a0255db32dd9d24de01004d02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 15:21:48'),
('7a2a973f476bcb358795eb3f9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:54'),
('7a6f3f973101c9bec25a7af117', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 08:07:44'),
('7a6ff1bc4beeadcb41d93f7e51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:36:49'),
('7a83c8b6724937184ab0d6e355', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:59:04'),
('7a9640eb045ec303beb5381f39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:30'),
('7b17f3f2052499ceb5d424fdd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 04:54:55'),
('7b2bf43d00ae0c5530a489c826', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:34:54'),
('7b4ec8bdcfce7fb72dc9127dc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:53:09'),
('7b72dd8eb0d4f5e786f5b7714c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:35:20'),
('7b905d3a3e3594b9d5f7eff91a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 05:24:39'),
('7bc44fc837119d907a90559b69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:02:42'),
('7bcc107dfb412fc257acc79264', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:22:39'),
('7bebe69bdcb1291884628e794b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:39:25'),
('7c08b0321ae708d4610e480b06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:37:45'),
('7c0d487967d4f3ca72e24b452a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:53'),
('7c4d1bb8f0a4fb4a9484c0bee9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:05'),
('7ccae149e8cac60f76b591d6a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:12:12'),
('7ccfc3ee9682d5cab38439e11b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:27:00'),
('7cd53c8c0ad171731338a0d10e', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-11 12:25:37'),
('7cf9df4d0003875a1874d4d0dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:33:26'),
('7d0c762b54c6007ba8448e76a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:26:56'),
('7d0ef21d5b81a8bdadf50aae8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:25:11'),
('7d1169a364725ce4c03a72d80e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:44:40'),
('7d1d1db8b02fc2e817268233ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:22:14'),
('7d3fbc667acdf63473d3dbc360', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:44:07'),
('7d4020bf6394ddffed9c2f1710', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:11:29'),
('7d5bdadf456cbbc9ebb12c51bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('7d6326c9f6f8d46945e81b4b48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 02:05:48'),
('7d7363981b5e1d68748e707931', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:46:13'),
('7d8aa2989acc5404aac93a94b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:29'),
('7dc927f3d480539428d88736b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:21'),
('7dcd649bc45b1ea961fc3b768b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:34'),
('7e12ec05bff8bcbf5352f18cd2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:38'),
('7e560d2b375a5ff78bb887386a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 03:31:58'),
('7e84f2f6536147bf21d175b9ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:26:31'),
('7eb991134176b13224ffe3320e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:28:10'),
('7eca60d151807fb296be9cf261', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:34'),
('7ecaa6b5b9b284f56a0ebc7bb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:17'),
('7ecba5d50bac451624b03967c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:17'),
('7f4e94cdb929442221698ce948', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:48:02'),
('7f6d4cb43524e2c6464154d9c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:42:37'),
('7fca0c3ab926375a7d777173b1', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-16 19:01:03'),
('7ff4579ada177fcd518e9878ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 03:22:26'),
('7ffdee3b42a230355320e51cd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:12:39'),
('8013605e790a6773ee6438620a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:32'),
('80205abee25f3603a959065516', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:58:24'),
('808ce846c9b34bf6b43620d705', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:14'),
('809fa080bdd5aec8f317d66672', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CNALjDR8ExYBBlzuF67V1hOGfjPyeaZj\"}', '2019-08-12 11:43:35'),
('80a88c05b45875387cb11563be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:15:52'),
('80c1a88762efcd82feee50eb6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:00:14'),
('80dd9e19c009f5dbb50673e571', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:52'),
('80e61fb65948a9e27f252f4951', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:06:00'),
('80ea8de4cca2e039e54646a7f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 12:46:35'),
('80fc74cf688622243bbc8ff7ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:13'),
('80ff42eab2972ba41ab6acd2c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:04'),
('813270dd8c2d17dc806f36a607', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:10'),
('8155434dea6c180e1d2ed9f529', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:21'),
('815eba95098977288e120642d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:01:08'),
('8167dfcf07d22510c3e74c782f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:18:38'),
('8171519d8856c3b558bda34269', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:05'),
('81727e7476c12c7bcdfbbeaebd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 02:30:55'),
('8178aec183f8b53c62a6452986', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:55'),
('8181d24cedb74a013677efc9f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:31:17'),
('818747cacb445b139ca0b52f2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:21'),
('81c0788d3f6f5465476b712cfc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:57'),
('81c71ecd5390635bfd6ee9f2d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:21:59'),
('82149083e71baa7d81b30ad0ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:54'),
('8214a9cc17a74223d010f733ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:07:30'),
('8229248d0687220239e5a7b6ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:17'),
('822b118dba7727738574be8bbc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:09'),
('8249c86abe0eabe5698e5d5ca4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:12:49'),
('82808ea2a814b9bb487e824201', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:33:21'),
('82a37c01a4c6c97826da01a26a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:21:34'),
('82e8003ad81a72074018b9907a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:28:41'),
('82f661eaaa3e6a9c4f1e1d18e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:48:03'),
('8303656c5e9a6ee7932c424ad5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:21:15'),
('8306e7e86175de70dcb8e64f93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 01:03:19'),
('831365480309a9a89525144fb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:20:40'),
('83562ede17468dd8f0f7788976', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:26:07'),
('837ce72756531f1fd58dc9cffa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:35:04'),
('83909f50f9d48afe2bd5626a83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:28:13'),
('83a50bc74784afab6e32b58d2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 17:13:59'),
('83b257081f47e8e088421fc117', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:25:11'),
('83ba3d1f034e3a143b5a3c8202', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:36:52'),
('83bc005c6ad16cd584a4878fdb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:49:46'),
('83cc590f936177d63ae9ed605d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:54:50'),
('84651eedc80bf066c3744a49c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:30'),
('847ffecdef36acb524b64db0e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:52:32'),
('84ab03d05e2052e9103574867a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:59:59'),
('85431210c0d741e08af8b465a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:59'),
('858c2f452ba741503b6ad2afe3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:32:40'),
('85969f9f6c5f8041398abf5ce1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 20:06:16'),
('85a351d3406572ebedd7be6e85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 00:40:48'),
('85a56c6df1830301108aa7371d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:02:27'),
('85f17af73e78485dbe5a8b43a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:36'),
('86260707fa74b4bbdb1edf2ca6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 20:18:57'),
('8662ef7714c82c5ff7f6182d8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:40'),
('86667ab457bdeac7c45c2e3733', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:20:34'),
('867cd97258e265c7600df8f33f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:19:12'),
('8695f5cdc905442d8849c605d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:30:37'),
('86b3ed5c1ecb837680967757fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:12:49'),
('86bc6ecdfbf688847398ac2db6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 07:55:18'),
('86f4bc7d3684fdf8b7790e0bb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:59:13'),
('86f5007b4c1213a0d3c0fc8f2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:54:12'),
('86fcb3f5910619bb13d2c91b43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:20:24'),
('870207dc0956da2d70cf1f746d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:33:56'),
('870f640ec37f79d7f65e941f73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('8774b0c8532c53ef76ee913c5f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:14:57'),
('87b00c916054d7fe73e3ce7add', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:32:47'),
('87e939cd850e6ff7192dff1ca7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:25'),
('880c80c8f77bba9517508bb460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 05:23:00'),
('882bb2a20a1cd43e9103172cc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:29:43'),
('882bf4e36f2a9a3a91b659b3f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:14'),
('8837266d66e4443ed7f00429c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:07'),
('883f820cda0d34a5bcca914c77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:14:51'),
('889068ba124b99e65a2870b3fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:51:21'),
('8892a8d744307dd4947ef91fc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:39:51'),
('88ac109f572bbbbef246bcc551', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:22'),
('88b24e6fe8bfc53b7e149aee91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 08:38:07'),
('88c238f320c4f1c505a7b18769', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:12'),
('88c47b16aeef3a012a00febec4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:55:44'),
('88c5a6301aff28bc683102ad01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:34'),
('88c90dbd8c87b4c2b58d4cf4dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:03:52'),
('88cd7ca14f7ad5f3879c93851c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:43'),
('88d57c388f90c810f773a923d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 15:32:30'),
('890b15a5e57472695e56d59a79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:56:02'),
('89417ad6b000bfd87f2f213fae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:54:17'),
('89496f1d4d7c1dbd9ca8390f88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:39:02'),
('894d9104b33287e25434286a3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 23:10:26'),
('8984f61ed7867ee33718e2982b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:03:52'),
('899c0ac83a28948c8c442bcdf4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:57:44'),
('89a059223bb9e4018c4d1abe6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:47'),
('89ad4862e5f26e2a4deef92deb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:20:40'),
('89bbe3edebc3f77b3d85c654be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:48:24'),
('89fe053ac89fdde2d3b9302beb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 13:23:01'),
('8a00e4d952c0741421500c0189', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 22:45:51'),
('8a112b8e720f949594892608d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:23:46'),
('8a17ca5a75a36a8c8594741b7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:40:33'),
('8a232ca1c5e57317e6d7cf8197', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:12'),
('8a3624681db76a64b823708221', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:44:40'),
('8a36f3d1300113f94d352be0f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 21:53:44'),
('8a399c88ca4402b9c664bb49a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 00:08:46'),
('8a6d9747036183d9103a36cbcf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:36:08'),
('8a6dde6c6e60742a3e2e72642c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:13:28'),
('8a6ee96408dd1a6ce79d4647bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:55:31'),
('8a795b6cbafec5d581b510a648', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:25'),
('8aab55d1ba095742fcd23786b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:37'),
('8acab7231061a32aeabc217356', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:34'),
('8af392a445f572450e1c766973', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:12:04'),
('8afda3da2f24e32dd8dba5f193', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:15:25'),
('8b08b50b9a8ae50228085bbfc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 07:47:16'),
('8b1ef6cc0ead179811801a9858', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:44:23'),
('8b57a4b64e2c52c21302fa7da3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 15:30:24'),
('8b64c4e5ea99cd31727fee0d25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 09:01:32'),
('8b8026ddd55167006db0253b29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:27:11'),
('8ba7fe945cedb9f4c4030ddef2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('8be8c6d923a5f1f7695a06b71f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 12:48:29'),
('8bf4b633d8cf16e10ef63d9606', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:32'),
('8c090b685326b477727ee3a212', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:38:04'),
('8c50052f295d6551f1562f936b', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-09 21:52:28'),
('8c5d69b3dea279401fc74b6d81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:05:27'),
('8cbf1863231242df843cb5e795', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:15:53'),
('8cc410956d89d21197fc4c082c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:00:06'),
('8d176c88e5ba6caac6d04d0588', 'false', '2019-08-15 14:11:13'),
('8d714303f969b43497516a7a9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:36'),
('8d87d29aea4d9385cf867feb8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:59:06'),
('8dab98e91352bc0dd130df6639', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:46'),
('8dbbf2daf9044fc03def9b966e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:47:32'),
('8dd908ea4f4424ca50aaa08a9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:53:41'),
('8de2f79b1e235e7f9f171bb4c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:20:40'),
('8de7cc8f43bd9181193db73fe3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:15:17'),
('8deecb59de66a727b112558230', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:56:15'),
('8df05deac01be66e9f529fc873', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:17'),
('8e2311243cdfd8708f86a0993c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:59'),
('8e3154b3e3f3722aa66160523a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:51:56'),
('8e6609130955019c3b3bfe6464', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:17:10'),
('8e7b25ddb4d8ef5af2e3db93a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:36:18'),
('8e91301d3a94ae7fd9a0bc942a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:31:49'),
('8e9fffb3b1f8320c99e852d5bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:58:15'),
('8eb45f380014653ee26e3a9edf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:37'),
('8ebe95d41bee75f3ac0d93f7d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:57'),
('8ecf5bf0f5f28cacd7e3b2530a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:20:28'),
('8ed93a5b1ea97e98fe717dc48e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:58:28'),
('8ee33ed09b140e30129d4f0dab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:19:03'),
('8eea6344f3b54668e5f7b88df2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:40:10'),
('8eed2094894196a2c33102399a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:35:30'),
('8f06c668a137a8e6c6e5ede460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:10:35'),
('8f14a3f5ec211dad4378c9282b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:34:22'),
('8f402027dc43bcf9bdf40b29c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:12:26'),
('8f5ab71f018a8df9802e4d7fa5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:36:42'),
('8f75131638c7b1802031ffd26c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:01:39'),
('8f78fcc8deaddea647b49f7b5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:15:49'),
('8f91b3d3137d746cfe2f51364e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:33:38'),
('8fa091b2b174f013f3f421c975', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:44:40'),
('8faae57adf851d1920808ed19f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:45:17'),
('8fff281230a972d3316794bd54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:41:09'),
('9007e8291f9272c35bb3fb171c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:50'),
('900f98fe0e0ec97ac7598df4d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:44:40'),
('901b75b198a05b5c13fbdd9ae9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:32:23'),
('901f8e22029e85dfa8ea313f28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:42:56'),
('902f73c0805e151135c3da1415', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:06:03'),
('903a145916aa15e05c36cc699d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:38:59'),
('903a5b9460db0cfe7192ee4fe4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:19:21'),
('90486dd85bd46c95d5bbc93b42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:43:34'),
('90589715893674b38e083ef592', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:02:45'),
('908a300c0f31798117f189a469', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:15:35'),
('908fdf26643c21d4cb07eded93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:35:04'),
('90c8639db69f57017e2ba34f59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:34:47'),
('90e148b9064e08477b89c2d8c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:59:39'),
('90f6652816476af0e1ad5f7824', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 08:31:47'),
('910a4318910d1426c54b4c8ea9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:11:07'),
('911db17610640a2a31358ac58a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:32'),
('912627482a3705e5d1af4d3822', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:25:28'),
('913293e1735f28957c854aeec3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:37:47'),
('913bcf8967fab7efa09d8c91a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:47:48'),
('915a96b22493f75a5776e9142d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:52'),
('917db220f53b433e1f8a0da6dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 09:46:06'),
('918721a60f33bf18d90936a53b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:55:44'),
('918ec2996c1834ddc9aee6410b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:16'),
('91a441b53b004de43e4edb4e4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:02'),
('91a6676542e89828666d5f6d4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:07'),
('91b82d0e0347326319316d3bb9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:03'),
('91d07c6092ac29203deaa3c986', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:05:50'),
('91df3d07371d26a2cdec0e1951', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:17'),
('91fd63adc0bd049735f6750bbf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:10:25'),
('9203256a8b8910b50590b0901a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:44:41'),
('92129a588ba827bb88f6f0c7f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 11:44:41'),
('921899d3e64602cf5709a7d7a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:16'),
('921ca3d045899caee801567fdb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:05:59'),
('922d9ecf6a97054bf512cbccf4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:49:29'),
('9234ce06315bcdeb6bfc3bcc47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:32:07'),
('92367f6a8591e591b95dc4f124', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:32'),
('923a10a5a4578ae34defe67301', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:58:01'),
('92476520d5a8c404678ff864a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:39:01'),
('928b45adf0072c93bd462657b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:20'),
('92c4a431cd498841fca6455aa0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:17:55'),
('92c4c870551c434123aea90166', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:39'),
('92cb138276d5c80fd673500c9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:00:21'),
('930390be727b927dcbcd868a2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:03:36'),
('93078586aa60cc1e8ed36d8f53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:35'),
('9324cd425472f695b0e53535ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 14:50:40'),
('93515fceafad7300bed45775a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:27:35'),
('9366c98d287f8f6a58885cf01e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:49:22'),
('93860a28d8068d289821df9a34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:05:37'),
('93b10c6a01a467b0436e584f3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 21:55:50'),
('940caa8321a4b79e2cdc39e316', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-15 14:55:33'),
('945e414851470b11ab9a806f15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:44:33'),
('945e523bf2f93f1df904891b09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:28:27'),
('945f867d680dccaf65ff8d9815', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:20'),
('945fc8d8996671acef6aa9aa43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:40'),
('94cff73d29430415a5c53b5a0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:39:35'),
('94d0a1a7900731825946d064b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:03:00'),
('95056c210cd28cc91c8776ea20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:56'),
('95072e94ca646e83bfbc41219b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:19'),
('950a67ef721c572bdce384c3e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:39:10'),
('955d28ba6e059a42df0b1580ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:05:59'),
('95669abe454903175d2b31b0a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:43:17'),
('957261eab307a20d36681657ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:36:39'),
('958380ae116a663904c7dfc0e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:26'),
('9596d769d4cc8c8c6ca47678e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:32:23'),
('95ab224aebe8cafad7c094ab66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 19:22:33'),
('95ad53b443ddefde3c9c28cb37', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:03'),
('95bd2ba6455d0510583a1bc250', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:33'),
('95ce126a30a40c1f3c4b9a428f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:01:44'),
('961632a148c1d275ba47e48963', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:05:44'),
('962bdd9d69706e13100776fa28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:43'),
('965e39752a7283a236f8363f83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:11:26'),
('96914b81e5bf29348efc1e8d59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:00:09'),
('96a28b631c594dec6ac8589d3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 17:40:28'),
('96c94f8dd41833c3bfe04bb2ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:14'),
('96feec96628a89ec6689bfb7c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:10'),
('972b6b6a187973e085eef7058e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:52:34'),
('973bb4768fe031b910aa35f1e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:54:37'),
('974efc395ca0dd7eb9a99763a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:49'),
('9754852bc6a2b3df6291f4ccf5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:52'),
('976a55aba7a531afc8867f39bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:29:15');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('976e6161eebad36e447a0d3746', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:43:04'),
('9770a494ea97198edabaa3d95e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:08:16'),
('977379cfeed0cfc40412813e41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 19:38:05'),
('97875f2ee89b4ba482a3d3788e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:57'),
('9791e49d215f68a3ffb0de9fc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 15:41:47'),
('9793f9ff5b38b75fa764acbc1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:23'),
('9795e24b1fe6d1f0a0824b90f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:04'),
('979793527e1e5610e197ae3ddb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:02'),
('97e0ff3ff78a9be4754c6768f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:38:24'),
('9825acc748f95da1f878f963f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:08:09'),
('9834a84166ebc898c807a78d16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:23:00'),
('984627f57e3e8360b5431cd3f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:43'),
('98579d4a793911d867cd469073', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:33:58'),
('986fbea50a7eaf54250602285a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:27:35'),
('98996c9d41a0ed72445b0c1af1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 11:17:35'),
('98a200cba8296fd8b9e99495e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:10'),
('98b4fa4bca026fbb9d0d3ac81c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:06:53'),
('99283d36fe24c39896e5399156', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:49:24'),
('994f4e987382ffcd303ff1b6c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:21'),
('9963177edc2b885cd61830633b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:28:31'),
('996e7af9386f170d263d1adac8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:33:36'),
('99903f474711aa8902fc82183a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:58:26'),
('9991b5cf14d74d9208ab6db217', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:20:56'),
('99c5b0e78cd3b565916f13e9f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:37:11'),
('99d9b1640c3f4be6640bf3c925', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 05:25:05'),
('99dbb1b9b566cd18ec6b353166', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:32:51'),
('99e9961a9da39b6f98b230983b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 14:02:03'),
('99ea56ba151c9fe8622a01c0d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:43'),
('99fd2f8bd1a0571c76e59dfc86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:20'),
('9a0490b9ebc80a31e4f6ef151d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:42'),
('9a23573f98b1eca123ea0beb70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:44:34'),
('9a58e7019dc083d7ce7f35aaf2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:15:53'),
('9a5bf7df71a90c3c500ac38599', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:35:38'),
('9b0745ba60b1e4983e87757306', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:47:57'),
('9b24db551d7c382afde92dde7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:07:30'),
('9b312d6eb39a06a7abae1fad03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:08:40'),
('9b552f4b39447cce722de1383a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:45:12'),
('9b5f2fdd37292fef8496a85593', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:15:52'),
('9b8431f161cb6970adf1a06b3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:52'),
('9bbf31eb4fc8ebe44876fcc1c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:21:34'),
('9bc40948a47baa44b3844dd1c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:43:28'),
('9bd046b75f10a618bba0400bfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:59:04'),
('9bdb56750208a04b91e34ed2e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:45'),
('9be55853f6a5ba011592b8bd4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:52:27'),
('9be7c8c8d486ddd40b62c26168', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:31:04'),
('9be7df28f98fc83d07a8e42e66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:40'),
('9bf6b0f392f58275d22071800d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:15:22'),
('9bfb4d00c3a4d7add11c875278', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 07:08:47'),
('9c138de6aa73b2dc8763b497f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:06:50'),
('9c2e712fd9f706b3aae23baa3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:35'),
('9c5761bc7be574395bf833c97f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:54:00'),
('9c71d23f1619130bb6269be263', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:13:57'),
('9cc6f161988ffd481321a62956', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:37'),
('9cce7b50221724b33f5096d6c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:36:06'),
('9cdb2b2ffdb3474d3ba2afb763', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:53:03'),
('9ce3d5f406707e3669bffc4dcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:37'),
('9cf031ad0b7db5e431a9d7c8ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:48:01'),
('9d059baf37fc4c20aa3627f42b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:45:14'),
('9d0ccf7f990106d761d666a4c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:30:04'),
('9d4caa5d90afc5be21e6064093', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 17:08:12'),
('9d595569d1ccfb37f8bb30cd15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:23:37'),
('9d5d8461a26677003adc7c4e93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:59:17'),
('9d60cc96ef1fc9cba6e574251a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:09'),
('9d911aaf1866bb1d31fd5f7cf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:17:31'),
('9da87182dd51dac9355b9753b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:39:03'),
('9dcf5ec21660a86197d49c07db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:18'),
('9df797d1d972def4cebe6bc611', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('9e6aaec2e732bbe0ce786c614d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:09'),
('9e744a2b78add089aff9d85432', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:59:03'),
('9e8f70a2f38f5312df5cadeda4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:35:19'),
('9ea700dd8cd530cb470a0da5ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:39:52'),
('9edd05bf3606a7a075e5f12104', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 03:17:57'),
('9ef1cd004434611e350ee8d898', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:55:21'),
('9ef5dbfea089092823d1e3338f', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-16 10:05:01'),
('9f30784b91a749df6685f1553e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:26'),
('9f339d6f5e41a78058f1b24c5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:41'),
('9f64cd85203044b3c69a1ec5dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:38:48'),
('9f6bcd83b5bd7aad02864a1f6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:00'),
('9f8362963f46850ae0617c04e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:23:33'),
('9f8acc6a57ee4a207ea1434f2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 01:03:53'),
('9fa46bb73c10ebf8ea4d8aaa05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('9fd75ae78e8e319cb1275d5d45', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:13:04'),
('9fe97e72eea6c7a02eecdb1050', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:05:59'),
('9fee30dc6492a0acb8a0a6ff01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:43'),
('a000b522cc29e1f1935c83420c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:53:16'),
('a00e516f67b6472ccf35c55dd6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:34'),
('a03adac5311cabc04262d11bbe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:02:45'),
('a046839a0a6e0c7b3781fb0c73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:42'),
('a04d97904cf75dc2778349b45b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:38'),
('a053f0732a349d79cb79f86dcf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"67\",\"58\"]}', '2019-08-17 19:15:04'),
('a06ad63100426fbf5e414a03bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:20:23'),
('a06ca3d94be6f8ab230dd60373', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:59:24'),
('a074ff55bfe439177904616460', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:56:21'),
('a0b25bd10d541acfcd7ef70b7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:00:03'),
('a0cf861ff2b76dde6ada9da2f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:31:49'),
('a0e90626602e9c27f2ac155063', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-08-12 12:34:48'),
('a1e04341ccd4eb5793eafb350f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:59:53'),
('a1ee7fed92f87991ea736a7b75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:35:12'),
('a1f3bb09d0ff3002ac85888907', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:18:02'),
('a2271b515a2182f6f2c93ed0b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:22:59'),
('a260461adc24adacbc7085d17a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:49:11'),
('a26b447f673ad5fdb035cfdf33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:10:00'),
('a27762e9b6d7ddd2e6f17c2719', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:11:06'),
('a2ccc166ed72dbf06ed2945a27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:40:28'),
('a2ce6a0669014981de74c92787', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:52:54'),
('a2f166543fc872891701d36842', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:17:02'),
('a30330238022c2421c1d61cf5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:24:27'),
('a30840b4af91591c53f5e3d7ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:28:56'),
('a3318faa150f054c054b42f1b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:58:25'),
('a3337e34d1581f43123c46e18f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:01:08'),
('a373b0cf676e8ca2e58c32d5d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:35:45'),
('a3c15644c95f8b1e14849ad331', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:38:17'),
('a3d32d3da9e270743ab0b9e549', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:27:38'),
('a3d9cb22ba78dcd51e15b9def5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:21:35'),
('a3fd4f7c049246a812b9f00456', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:03'),
('a40355e1770fd6dfe781519183', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:19:01'),
('a4061043e7835389ba3115b132', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:11:27'),
('a490449ae30a5b0fbc9ceaffda', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:54:28'),
('a491d9519951422a95d9b83cc2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:01:59'),
('a4aa924de45e638a99d8865aad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:05'),
('a5137f6b3a0881a14136982afc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:26'),
('a51581ed2603aa05e4d7f9f0bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:19'),
('a52c3e3bebda8ee2bca07c5748', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:09'),
('a52ecdd1a1527acfd23130e27c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:25:52'),
('a55abb2bd0ba7d8d0e9c79919d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:43:05'),
('a55ed15be2dfdfdad46b46434b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:00:57'),
('a584ad2db25e1781a2506f881f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:32'),
('a5855717b664cde077453ac0ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:01:45'),
('a589f0ce5d96723211e576a668', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:54:35'),
('a5a86d143b5ab1053c7dbfb332', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:08:34'),
('a5c65bc9ab7881d19524307d4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:54:00'),
('a609f2f636e67e45e202a9d811', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:44:23'),
('a61e33dad5fb852413367a8911', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:37'),
('a62c76fd2f4cded1bd1efac2de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:58:17'),
('a63909834982a09985e8154bc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:41'),
('a6412cb1f4c0846a33701dba7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:13:28'),
('a646b889e1ce40b123a62ec457', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:33:19'),
('a646face85b67e2c6aef35c240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:04'),
('a64848878aee75363dfc560206', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:57'),
('a65b775e07db4a98b618c1fbfc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:13:29'),
('a6714cc1e9730be55dcadef895', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:19'),
('a67ce75babffb28182626f92aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:01'),
('a6b6c22e62f23ef4a540320b41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:37:08'),
('a6d146fa6a6abd57c328f1759c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:24:11'),
('a6d821c2715bd9574fd13684c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:32:40'),
('a6f6266c5956cb8ba2d2d576f2', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-15 13:31:23'),
('a7142e5cc40abb2115a502b16d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:28:23'),
('a72e08753e8de792b669e4a9ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:41'),
('a737a9e37597af8d30cf789130', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:15'),
('a739292e73c0e916c1d627b3f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:03:35'),
('a73af29b9aea8a81f3e85669a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:42'),
('a7634f435955b3f36071c219cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('a769fe3ff36614b2516c80c51e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:05'),
('a7701b700a8b7b05182cd20587', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:35:14'),
('a799a4a8b036e5de4f9ac3dee2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:07:49'),
('a7e7d4301b9c7f0022b1e04716', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:51:57'),
('a7ebb340cb7eff7b524e470e3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:14:46'),
('a7eccd61b0df6e48f86f37abd5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:07:37'),
('a7fb67d78e58f79b56c19d4e5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:24'),
('a7ff42c0b5d9e7bae5a8b49350', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:22:00'),
('a810586eea3e06c140fa96d089', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:03'),
('a819e3f5fd334fdf21a690d5e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:03'),
('a81c3ce347e5c6062a4fd370d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:15:43'),
('a8233232b2f8c3ac66a76c2fad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:49:33'),
('a841142a0e4b81ddde84cee368', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:33:48'),
('a860e99de4c370c03e44976bd5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:45:04'),
('a864a7f953b24fe084f5dddba2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:36:23'),
('a86666f61a31cd47f6959a22f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:36:01'),
('a86de0d57aa7a95dbf58fd86d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:58:40'),
('a87300ba99eab59a4796a956ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:00:52'),
('a87f224446d4079d930ae7924f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:29:59'),
('a87fc5568b8bcab3a45381fd61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:56:17'),
('a889cd5f9e4e3f8084ac33f613', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:42:59'),
('a8ca29128ca9387ab6a6aac957', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:15:35'),
('a8eeab5734180bf9c2c736b6b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:27:52'),
('a90b0f2ab4bd2bc219d1fe19a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:34'),
('a91c5d34685526b55e120d9578', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:18:24'),
('a927647e547ab5d7fa40666d19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:31'),
('a95cb5a54288a923db24af35e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:46:12'),
('a97385f0b275c538330a547902', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:00'),
('a984d4cb51f81c31d0c5588235', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:19:54'),
('a99a132e2bddf09de8b6031a13', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:13:17'),
('a9ecf56c17e7332f55617c55d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:38:11'),
('aa1074ccd435d91d8a0b0a4668', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:38:41'),
('aa3581ab217eb67b294df85243', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:34'),
('aa485c816adb41b3a29de3c18f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:07:06'),
('aa6111dc7d93adbce87d44f627', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:37'),
('aa7736aba54c9381ae3de92771', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:31:46'),
('aa87914930a732c785d1034382', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:34:23'),
('aaa0ce9ab71d83eb389fa5892c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:35:30'),
('ab1f3b3f523ca1bc669079d13b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:52'),
('ab426966e922c485b68fb866ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:26:28'),
('ab4b0262c938340058ce99da92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:06:16'),
('ab6122c7209ce17512c1532825', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:12'),
('ab6df336996f50afb60cd2583c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:47'),
('ab93ee7251aac354f19d7941d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:13:31'),
('abbe34869a2acf552b8be7891f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:21:57'),
('abc9aa7f7cef30183c0c3b2ef5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:28:23'),
('abe2443bc11aa9ba9284334c9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 11:44:48'),
('abee09047a13ca10e550b5ee46', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:59:33'),
('ac5a150c0843e4753511e09880', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"bdNV8ONbURTaz5M1wWOmnrikF80kBLnO\"}', '2019-08-17 23:25:50'),
('acf4411767a11c5293d182ef83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:32:41'),
('ad0b8f1e3342f200fa0df4f94b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:33:01'),
('ad0bc229d3c83d96e3c732c67d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:19:25'),
('ad20ae63e30133b9fcb042367e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:59:21'),
('ad2d6626bdecdff60d254eb154', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:27'),
('ad48cdf50b90d56df4bdf77c3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 23:16:17'),
('ad6f3aeff0146b64a8750cddd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:44:08'),
('ad768858d81e3bdea2803c58a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:39:52'),
('adacf1643b633fb01b779f4ad6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:55:32'),
('adba6cd47c179f0efa38599376', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:38:19'),
('adcb38fd7b51b21499091d10cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 05:34:08'),
('adf17633c2da304debd3f70d73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:44:25'),
('ae0d51eabb0c61251a713d68d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:37:11'),
('ae1394c4f10f08c4a300c57c21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 00:00:54'),
('ae5b5e101ac61d41fdea3d935f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:03:52'),
('ae855dc809dc811eaae9f8b768', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:09:45'),
('ae9da11e6f1ca01065055cae44', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:48:12'),
('aece5b508ca637231df4842bc3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"K502HE28MozxhkqUcTpEATxDzWWtRNco\"}', '2019-08-18 03:49:25'),
('aee2e8638420983d8445109444', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('aef3cbef27f416b3202ec93d6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:23:19'),
('aef59135166cfc92733f8af601', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:51'),
('af005664542b315f938e04324d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:43'),
('af05512b741f285a9a706e5680', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:24'),
('af09392fe32b017cf8578a4547', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:41'),
('af1f9a3123bf4620b4c7f37bc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:30:25'),
('af2e61caf88cebca63a58fcf48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:36:06'),
('af345df9880e296d935d7cd484', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:59:40'),
('af54070ff4694542d4939f6cca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:42:12'),
('af70b4ae6de18a9954c2272a2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:30:16'),
('af7784ba54e75b96eee2862950', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:38'),
('af7cbe035fbef6aa7e78cdff21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:08:15'),
('af81a5999a0be4097c1b7fc6ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:01:50'),
('af96d1860c52927a5383dd02f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:36:56'),
('afc0b85c6ab8b8a62a6a76bf4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:54:05'),
('afe7cd40beb49ae144555360e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 16:07:34'),
('b008ca9e6cec0db4246d9130c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:03'),
('b029a6326f16fe5f3a8faf7177', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 07:27:43'),
('b054f4e1567622402d22bf9d08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:10:47'),
('b0779a34f97bd7e3fdee130836', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:05'),
('b07b15707cbf9accaaaf494293', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:32:46'),
('b08b4b74d044a81ac1f7781d4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:23:04'),
('b0a4ab2d4230338e375674305e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:24:13'),
('b128a86f38f2ae7e332106a893', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 03:40:41'),
('b1446893f16ef8854f48bcf39f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:08:40'),
('b1db4d17ef9c4bf09406ae65d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:52:43'),
('b1eaaa6a92d6394a3b3aee42ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:17:46'),
('b1ec24562d215914dcc6fd350b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:23:04'),
('b20578fcceaf055048ed686e98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:07:36'),
('b236725ede0e17b8bc3e113e19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:09:53'),
('b244b67b172db4d3f95b249816', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:51'),
('b254f3613f7f500ac912ded1c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:43:41'),
('b2629eb16c7819dacb3ef4e9be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:32:40'),
('b26d35f27bc5e771330162297d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:37'),
('b29404482e6c0cc315598cce00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:46:39'),
('b295597e30039b17497fbd066a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:51'),
('b2a526930ca4e0e1657bbb72d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:40'),
('b2ab65361b3c9094744e9b001a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:41:54'),
('b2c0057a296d6c1403be90035f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:39:48'),
('b2eee8dcf278a3dd07621166f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:34:01'),
('b3126622a435d4833d8ada12a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:12:12'),
('b32d5486ceec2abd70002eef57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:18:17'),
('b3514a15f0d4e8f78da324af69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:27'),
('b360ad2d182bc5c80246471b9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:27:32'),
('b3d90f0654076acd5ae2c0eba1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:20:40'),
('b420fcc3b485cd9c4f7d3e2716', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:35'),
('b4256daac8bb68c9a2ff8dcf6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:40'),
('b4268bfc2c102942945435a8ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:52:00'),
('b42b9021436c491ca13318990d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:52:26'),
('b440d8c50f2e8772963e1a8165', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:26:57'),
('b453bc40b50dc0a2db7b780c77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:34'),
('b49518258361e468886d962a89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:32'),
('b4ccafd1aa3de01b2ac3a20a01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:30:39'),
('b4d350228107daf535b402e452', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:19:52'),
('b4f4337c5766f07ad05242d181', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:38:11'),
('b4f48e4215f249e5dc4d3c4da8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:11:26'),
('b5138fb3ef99f76d13f8c648b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:47:30'),
('b55187c8495f2b3c375222fc26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:11:21'),
('b565e2c5a1d6ca989c6e798a10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:57:01'),
('b581233878ea3c5c56082ac503', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:54:01'),
('b581caa5ca18c4b5570a2f9b86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:43:23'),
('b584969d1b31fb4c22c1b80647', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:44:23'),
('b5898d20d3a04c669b9ef19e9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:34'),
('b593da54fa542fee38ffdbf6f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:52'),
('b595f07a465db96dd7b64b7826', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:58:36'),
('b59d32e2bebc0384de26903735', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:06:16'),
('b5ba0a619ebfa2dd091270c621', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:04'),
('b5c01df610cdbdd934579efc7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:12:00'),
('b5d9f03467ae5aec38d02b00b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:43'),
('b5ea42a5a1909f0231a80da7a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:58:35'),
('b5edcdade4e8bd8da578fa3ab4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:01'),
('b5f4ba4777509b73981f863e55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:08:22'),
('b5f7e1566c48cd19d5b8aba510', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:17:59'),
('b6004314248ad4d7eb311da2a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:25'),
('b62a0b48f57001b1d5052d9a6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:01'),
('b63a4ae813cdecfc8d59c51e75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:33:56'),
('b6711d5580ae334838c0b0a18b', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-18 04:44:41'),
('b692a712146b862fd75e2fca9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:57:34'),
('b6a2fea872335a6e1a3b5054fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:44:14'),
('b6a958711279f958c20777f92e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:57:03'),
('b6d5e498c876b9e6f277b30b2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 20:10:29'),
('b6ff9e74abcad621b0b35ef8e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:32'),
('b710d2f95640b8f9e1f71ff78a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:54:29'),
('b71e3d7a5a654ca0878bbd264b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:20:38'),
('b742ffd53f6dccac8f351da076', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 08:05:39'),
('b79cdf4157dcec786897181545', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:32'),
('b7ba2b407c436d30e8661755f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:57'),
('b7ce035dc76e09559bf38fe736', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:15'),
('b7cfb94f6729ef7b83274eb3f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:38:47'),
('b7f228699b655b1790c3cf2710', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('b7f93bbca04200786d6dc87d1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:55:25'),
('b8092161bc5fa31b6f3f4f018c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:06:17'),
('b81b05deaa1dd9ff850f492702', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:31:22'),
('b81eac04f6f4ef06ad3160850f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 12:54:16'),
('b82a7b90681c240bac4ad8c08a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-13 01:41:13'),
('b82b6b4a079e9e80a7d32a6b16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:09:31'),
('b82f88d4a2f2dab713251a4592', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 21:25:26'),
('b84d39567ad408bb46e6eefc20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:07'),
('b864eaebefdfd0d62ab446bb58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:39:52'),
('b8799f6c05c2c7b1a33bb07424', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:43:07'),
('b887efbc39a756203ed115eab8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:43:08'),
('b8994edd6148549fab68ea1b14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:12'),
('b8a06ac1a69288f908d8d3b9f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 17:06:58'),
('b8b1c6c99307827d9e3bc43650', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:47:45'),
('b904243769eeda619506f8a803', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:20:19'),
('b904ed438f8f24a997ff165d2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:13'),
('b9058806d95bf1161ce0d33a4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:24:52'),
('b933c9c683e270b85831e87c14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:53:26'),
('b94495706629393db22b37b6ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:30:44'),
('b94d0b4dba4728591036b3a64f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:59'),
('b9611eea0a8891c7a3e5fcc65e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:26:36'),
('b97ca13db7ac767b247ff49b09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:04'),
('b985c946628b6011cbffe534ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:43:04'),
('b9bad0361af7c3a4e1fccc323a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:54:45'),
('b9bc97dfc80ef62d55b42979f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:34'),
('b9be41cb80bd92d04bbccafc63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:52:50'),
('b9c173a82a6d692546e4af8130', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:23'),
('ba05370cc116d160e94ea69599', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:48:20'),
('ba20010c734110a4d543fe1685', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:19'),
('ba5479f79f8b0186610b1ada0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:42:16'),
('ba6548c07fdad0abf6c698cdd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:19:40'),
('ba70a1bc843bbff5349a0689d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:23:04'),
('ba9eb134e27287866cac30630e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:12:55'),
('baa04a911463d35264660ebfaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:07:54'),
('baa16faca530df83264ac1c3c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:15:56'),
('bab7acb19cfd1fcf17b5d58e66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:20:40'),
('bac3393c216fcba018632f7a6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 02:07:09'),
('bad1ba3d3509564fc6efedff86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:41:07'),
('bae9e45b52c3ebf9f9ce17e687', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:53:30'),
('bb273aeccda0af1f670881d650', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:57:05'),
('bb3fbc4a5ca243c52e7f1423c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:45'),
('bb561c24a3c732e47db62620c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:12:21'),
('bb6718ce00f7adb68b088b7ed2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:08:27'),
('bb67e0a35a4067e60f5d834147', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:25:11'),
('bb71395dc36268073b57d92d4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:21:30'),
('bb7c6f72cdf782366e75fb282c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:34:47'),
('bb8f5ae7c0159afe74e26f296c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:36'),
('bb966c2373a51c1cbeedcf8207', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:43'),
('bbc2d1e47837356e3545247010', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:34:37'),
('bbc742d8a07ac74f8b2c929ce3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 05:43:35'),
('bbce506eec931d3024629660c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:09'),
('bbd50209fdc9456831aef1c13f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:03'),
('bbd6c853b6b73906f8e73baf76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:48:31'),
('bbf9cc09e7af2a957518ea1b47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:37:37'),
('bbfe0d9323dee1cd607951ccc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:32'),
('bc315c01c4d7db5f3a9b9b68b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:35:05'),
('bc7a7ed0e766918dddc1cddf3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:52:55'),
('bc9b91d0b217369c187267173f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:25:29'),
('bcc01bc6f1cf7e26ea6db82c38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:46:19'),
('bcc9ec7056e17b0d5f0b68dc3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:20'),
('bcd60ff4f77a77920b3ccf3cdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:53:20'),
('bd1d592b7a07fcfc02fbe1b847', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:58:52'),
('bd3855290402cbf2c4fc3cb9c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:26'),
('bd485f4d87291c4618cd4ba3b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:37:29'),
('bd55b0f7a5b8bf575488e9c179', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:03:29'),
('bd61ea30eb57dd94d224319b49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:02:34'),
('bd7897eb74efcd66c40077448c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:02:11'),
('bd7920aec780a24bf1294f4665', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:57:32'),
('bd851d78043e18cfb856a56766', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:18:19'),
('bd978c1d9c6125cb396f6e31bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:04:01'),
('bdcbf2724976b7f4eccd4c33d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:54:16'),
('bdd5166cf5bf284c6623d03b36', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:18:19'),
('bdef3789920f24e9d3bca0925d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 17:38:23'),
('be074e20cc28d34ebd15e17dd5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:58:43'),
('be1959350c91eefbdf0bd29fd3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:11'),
('be2f6f0f935d34d6c7fc6922f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:40:44'),
('be66a5fc1a9a9f31c99a1f0f1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:11:06'),
('be8a628a0d66c91b55618c964b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:44'),
('be983062389ae76dab525e59bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:28:36'),
('bea132f51662cfe21462a36179', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:49'),
('beb4609b6513211a370c42fa15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:24'),
('beb8140db7f0c215e7c4b98c05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:50:24'),
('beebb95937100b2b866d847440', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:35'),
('bef70b34fbc2ebf8a9dfba8dc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:08:03'),
('bef727b6aa5f5cc3ba04ee5501', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:55:37'),
('bf1ce88751d5511f3f4dc5416c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:48:22'),
('bf2567123d06024443020d8a77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:36'),
('bf3d4ad8f9da84f0cc2a948e1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:43'),
('bf4833457e28ce8d44a38183eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:57:21'),
('bf51e2e021ea9d0191891d001d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:21'),
('bf59c0dd6804f789ef7a5b6c1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:52:20'),
('bf6881fa3c56e989c25782759d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:47'),
('bf8a7a95118e7ca8974e07dcce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:27:37'),
('bf9adce5bef510ba68c9015615', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:17:13'),
('bfb3518d624f9bc47259246709', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:59:47'),
('bfc058dfe893eed0b81e6851d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:52'),
('bfd27f3ca3bfd666844a1d7b05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:40'),
('bff445e4af18b37bc5f42ef304', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:49:20'),
('c01deb5070677306353eef8d2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:55:36'),
('c021a83ff6e6442fbb1ff6ed4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:36:00'),
('c0229f0ce3dd7ec22b2621fc43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:55:28'),
('c06738b30c9625c8181651112b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:20:41'),
('c0a9a5f25a556ae060eecb3665', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:42'),
('c0ae774d75513506e896260200', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:47:03'),
('c0dfb1fe7fcb7a7ada9d198bea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:15:21'),
('c0e08c587f22c83b8bc84f78d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:57'),
('c0f88f7443edcfc772308f3bff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:42:53'),
('c1328299a838253928b6034134', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:22:38'),
('c1366085091de445050de3f30c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('c14ecca904edb14de8e14ee0e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:27:50'),
('c173604e5203cbbfb8ef855775', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:03:44'),
('c175b379c8ae93590eed26634a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:51:52'),
('c176c19d97085b53500dc4f035', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:46:31'),
('c1824bd93c616de666d942a5df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:44'),
('c1a8caab62b2a734fd9928ab22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:18:59'),
('c1a9368614e728319ee7db6b1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:17'),
('c1d18ce8545869e1916c402341', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:10:06'),
('c1d7ed604557eec6d755823edc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:36'),
('c1ea6a487a680f660f4f146761', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:18:17'),
('c1fdb44730ac9de6e86478c2e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:37:21'),
('c2068621d22e17d93708d888cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:22:52'),
('c22a2e1ba2c6ddc43d1631ded8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:35:04'),
('c2348d8fb84530ebced4f29187', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:10:00'),
('c237b93d1a50da0149a589eaf0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:25:15'),
('c23f2363979ff93d8576252c9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:36'),
('c262769b3b4739827970540af2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 23:09:57'),
('c26e8b2e0750ada45d7c6e2d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:03:20'),
('c295e17164705b583304aca226', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:29:20'),
('c2c9f825e189eb2974aac73c90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:26'),
('c2d9253a48f14d66e333239138', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"W2lTjggplRZHZ1A82fHIzOlcEXKlwXWP\"}', '2019-08-18 04:15:22'),
('c30962af98453f83f0fa0a7502', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:17'),
('c30cb71ec123ae46897c4a98b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:21:26'),
('c31334983986e44e47830f81a3', '{\"user_id\":\"1\",\"user_token\":\"42BP4adtTllSJpXC73WBfQsnaovcVLbJ\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:27:59'),
('c313ee5a4e588e22d625ffb01f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:55:36'),
('c31d9b362569497fc58b1518f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:42:52'),
('c327c87b971d78aad7b3995814', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:57:01'),
('c327ea219d32d5f2fea27432ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:56:51'),
('c331b340eea6aa18dad43a7ac7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 14:52:52'),
('c33650515420af995667290114', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:32:40'),
('c35b3078f53ad0439fef71ac7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:06'),
('c35d55930029c9f1a77289261e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:57:26'),
('c3693d02ae0790f83e7994bc5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 09:44:01'),
('c38cd3a0b978530764fccaf7dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:57:14'),
('c3a197aebe20d9d12888b5a721', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:05'),
('c3ad9dfad900048b78ab9681e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:53:46'),
('c3bfe2e7f030ca2ed7c971a0c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:52:44'),
('c3c27487601508757888462d06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:54:06'),
('c3d7e9685ab7dccf5088334f67', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-17 21:27:31'),
('c3f202a0c1d138b6c84a4f9961', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:24:02'),
('c401eeffb03ff1f1481a1738ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:43:00'),
('c402551ba620349be720702af1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:47:01'),
('c40c3fd9ba824f07430a3f713f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:02:04'),
('c41617bf84033713b3130d1674', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:45:40'),
('c4332388257d8f59143731073b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:59:56'),
('c43b59616a86d67f0bd0d96afd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:03:35'),
('c4530491d0d4f9a3fa04501b0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:59:39'),
('c46e7c8e013a8f798af03aca99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:01:11'),
('c4a43a907f89ccc4ae92293c2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:23'),
('c4d67ae3fc59629405f2d96ef7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:56:20'),
('c4f1e7693c584484588d97643e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:11'),
('c4f9aa708840e8ffcbd44fc702', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:10:40'),
('c520e40812f7b5c39acf21f29f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:01'),
('c52b737c91e4629a73fc769cdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:00:25'),
('c52f2aaebb7c50bd327f996d2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:37:55'),
('c53443d79138b86c5a5ae7b3db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:12:58'),
('c5610f4ab8fa6c71d3ae9e04b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:19:59'),
('c5c4894c6a43ead83444804b6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:29:59'),
('c5df41d4694bf2158096e4c0dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:42:36'),
('c5f27f9e1ad3986e5adc28e7c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:51:52'),
('c60a1d4f7adc5c3fc9516594c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:42:17'),
('c6177c4568461af85e38bc7deb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:08:45'),
('c63a70df3d19f5ade95da5ba93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('c641070d461809a825895936a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:47:32'),
('c66e8c3e9bfc6a9ab0f2d2966c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:58:47'),
('c688b3f38c805d8187f517433c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:14:34'),
('c6c90a088e3ec0e58225395d68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:55');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('c6edfb7b35adacaf4581691cd2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:28'),
('c6f975a36244dbd797818e1feb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:21:29'),
('c7091af613390fd056db3deff7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:45:09'),
('c70f91e5ff84eaeef75f1fe73a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:03:35'),
('c75cf56d7e04994f6e67d7118e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 17:10:47'),
('c76975ababc5e088f9023e816f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:47:46'),
('c794029d5d622696f970c49f94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:19:52'),
('c79426ab63d0ecfb0634dda166', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:06'),
('c7c54621d71ed165ce9d871289', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:01:39'),
('c7e0b67852cc686cf14b1fb590', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:14'),
('c7f39f89a08d100209942d0a14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:27:41'),
('c84fa26c8a57915208cd3de295', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:07:21'),
('c85461b9ee566e638c54af15b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:30:16'),
('c867f45094cfb2bfd0f0fe3fc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:47:17'),
('c871cfaf8c76400e291331eb2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:44'),
('c882afdae68a7abb42b6e2d36f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:27:30'),
('c8acb457e8e2eeabc27acad693', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:35:51'),
('c8b5efe37f1567c04ef6da7ab3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:16'),
('c8c56bc8b60d25d6ddc6b87f48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:32'),
('c8e9d6a625104dce5ab0d1abe2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:08:23'),
('c90dc5983ee5e54f9af5f0e679', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:18'),
('c91e03f41a0765f8495f411286', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:09:13'),
('c93603f4a5bfe7d0a7dd9da448', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:10:47'),
('c96648394b402be07799860c52', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:52:09'),
('c96a46301fa4cd325bbd81a03e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:00:39'),
('c9abe5ec89653ce4fb9b01d53b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:45'),
('c9ac29ac72c8689a1d646fc466', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:46'),
('c9b33741ec9615783172fab770', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 02:25:38'),
('c9b4f60b8b22cd724e51724750', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 01:27:58'),
('c9bc37024411b418dc23b95054', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:31'),
('c9d1e76bb6a168df821c000b15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:13:11'),
('c9d7a89512f0b27bd42a7be6d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:13'),
('c9ebf630f19300d826060f9e13', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:43:59'),
('ca2e05d5201ab344e8160b5bd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:47:29'),
('ca6d2d2c4d6edeaecb27be40af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:37'),
('ca80a300fa199e1f146f5b1103', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:13:28'),
('ca88e5ea18a777f11fee49a890', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:24'),
('ca96c7a60406e1e627ab34381a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:57'),
('caf74505abfe05df786e5be742', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:28'),
('caf96619c1127c91f88b9efc48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 17:47:14'),
('cb183486a68c65b69e0152735d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:13:49'),
('cb2279cf301696f9dee1ad2a3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:47:58'),
('cb3f618efb0aaf7276839501b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 20:43:57'),
('cb5a57338691175306e843aeca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 09:37:00'),
('cb9e0c29bdd2e19adee4511ee1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:57:50'),
('cbb884949a8760db8d689e175d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:00'),
('cbc31513da70a02e498348871f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:30'),
('cbca4c289b350cfa3c7dae70a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:28'),
('cbd7df14a76bd09857864e3eaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:35:05'),
('cbf5ba6a6c807bb335d39f9abd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:59'),
('cbf7162e226f4163c2fda7db71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:19:29'),
('cc002de32cdc770851e99c3d07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 06:03:52'),
('cc1320b66fe54b731c0c87951c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 06:05:00'),
('cc376cbb70d9f29ca98d629af0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:29:52'),
('cc816a52c964e7b55512f24884', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:51:00'),
('cc8196079f036c70d30436aa84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:39'),
('cc8dfc9126560defb3cbd0a2fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:53:01'),
('cc94382b683429f40373fb235e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:54:16'),
('cca48ba534eb03b2f1b753ac8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:37:28'),
('cca7a381abeb0dda5701d152c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:14:40'),
('ccafb3d5456afb899a5138af67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:27'),
('ccf9ce8833371f06d22bf0b0bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:50:57'),
('cd038a91c874b4a433e686b2ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:04'),
('cd04ccf00cfb766560d13cf9ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:34:40'),
('cd0524092da759a351eda591f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 05:53:03'),
('cd0a366607db07a31590bd9443', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:02:29'),
('cd2390b847d5e39a1844d8a3ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:30'),
('cd66f2fea70dd44c7016a30255', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 10:03:24'),
('cd81e998f9440c5a6b9638ed87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:18'),
('cd99acf439fd697a74085f0311', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:36'),
('ce2372cc10fd089fc3d534fb23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:12:45'),
('ce244287a3f4af911b7029411a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:42:17'),
('ce29b890bedf615ce17bf41a2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 21:47:51'),
('ce3354a312d02a5de9d9a94e31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:17:17'),
('ce48038f56ecd42b9d50284b0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:21'),
('cebe5f4f333951fa4915e59612', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:43'),
('ced7631a17e8b5482aa31acd22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:12:30'),
('cedaead1a49d080e38c49f9937', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:15:54'),
('cf01f676762a038f5757820b12', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:43:04'),
('cf0d5ced66ee296f2310ef663b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:57:05'),
('cf2a604a113a1685bab79a1db1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 11:13:42'),
('cf32cb343709dea3e2157d3810', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:00'),
('cf3fc7f59e08ee822552c1cab6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:52:11'),
('cf47e53f8fb1cd4dd162b15688', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:17'),
('cfece5b294bdd05e0be77c7424', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:56:16'),
('d0138b934f2da9330810133911', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:08:10'),
('d014f8b2349a2a74be0fc34132', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:11:01'),
('d0157df8a7926a4e28f0707053', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 17:43:10'),
('d09a714a1ad182fa4480405185', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:16'),
('d0bd10fc7697abd25c1407b351', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:40:39'),
('d0cf419eccf6ac0d3e4d5906fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:05'),
('d0db10b45bbea64fbde9ac8830', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:00:18'),
('d0de2a81ff1eb6c20d1f2c3f18', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:11:16'),
('d1143dbb07a07cba18b771631f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:52:05'),
('d12cc04d3641143c67d6e07392', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:31:56'),
('d16d89ef7799b2a78f80222849', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:39:53'),
('d171cd90e629dda3625c95cbab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:58:47'),
('d1b5210e722dfbd6ea1d47e944', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:12'),
('d1c073acd3db3eec257a190328', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:33'),
('d1dd1a7c26c89962d76caa1734', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:37:10'),
('d1f857d42a7dfdb8280a1422bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:44'),
('d1fa7578a27095d5b153ee2e2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:57:43'),
('d22bdcaa5cfc5eb8d1cdba9c46', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:01'),
('d22ef9848204b568a6f44d8909', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:13:28'),
('d23816a92e0875c34c931d4fb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:07:23'),
('d260b266034d1afb45a10e647c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:08:04'),
('d266e40312d48c66b1e3db0619', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:54:05'),
('d277f8ef7df26c217d7377d456', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:39:35'),
('d281508db95347e8a09bf93a1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:18:56'),
('d294dac35d018d2ac8dfbab50c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:29:56'),
('d2b42e95a46c87b9c6a36fa969', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:13:43'),
('d2c1d2a0630f2af437e79c6fa0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:15:18'),
('d2c1df7f6a1d186c89c517cc67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:58:55'),
('d2cd65d8ab6b99fe3902dcf6dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:25:30'),
('d30cee90c78ffe184e1ec04e71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:29'),
('d329e729de38581e7a98cf4a18', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 21:02:53'),
('d332acba9d5ce2d7eb53065fc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 16:01:36'),
('d33314939fff053c9a30b3f677', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-09 17:19:40'),
('d341485b993ac4b6cd78cfa21f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:09'),
('d3488e6eb1562fb7108fbbb4ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:05'),
('d34ec6d68e88189440b9395ebc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:48:39'),
('d36245000961a956ee018b2214', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:15:27'),
('d3841d5f6f2b57a1bfd610eb8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:56:54'),
('d38b7e1b18fef08913bdf6a210', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:45:04'),
('d39ce0f6b17663fea77d505383', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:48'),
('d3c361dcddbbf2242c94f13bd2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:37:55'),
('d3cf0927be3dd000a4d3ee71c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:39:52'),
('d3e412de187915acd9f77e165c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 08:18:54'),
('d40d029cd8a3970d2cd201fd9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 09:52:44'),
('d410ed9000d5346d1b5f203d7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:42'),
('d43704814ff36ff40918be0544', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:46:37'),
('d45a20e2e5a5e1082a88ef55ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:39'),
('d4695fa16367dd20ef25121db6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:01'),
('d4758bdb672491f0047b93bca2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 01:20:56'),
('d496fe98b245b0e08a2fe9b1b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:11'),
('d4a5c75921dc081772d7a46ef2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:58'),
('d4a67e738e7a31aeb4440658e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:52'),
('d4b337e56032560759ecd8ce84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:51:02'),
('d4bfdd5cbc471fbc0cd89dd1ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 22:37:33'),
('d4ca876a079bf03cab55572d16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:42:32'),
('d4ddede8fd5dd0ea41debd125b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:47:37'),
('d509bc4dcfca2d0a56257315df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:45:07'),
('d513bf7b04a4253901dc66bd49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:05:45'),
('d518635f33b54c11c443dadc95', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:52:27'),
('d5456164ed5d49621f42ec8e54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:47'),
('d5695878fb231bef43f63d1d8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:42'),
('d56caa75b0989bd2da2e806bf5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:09'),
('d56e31c19dd87c0fbb14a40bf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:56:01'),
('d57001502231ebe447ddfa9ddc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:48:56'),
('d5b760c59d6535efaad2c011a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:57:22'),
('d5cfbe6657e6c877a6bd7034b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:28:49'),
('d605a076eae79ca26fcc3be8d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('d606989f1ac3a871886c82fc2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:22:08'),
('d60aa61c35b3c53480ab4f372c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:17'),
('d60fd2a37d1073ababd3a5d0ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:13:28'),
('d612cfa19e95c83db978ca159a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:37'),
('d626034211c7351990f3082ee2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 13:38:58'),
('d6286ff1f9cadefecaa2e794b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:16'),
('d6336d05c642e112eb80bb0bb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:48:34'),
('d634928d496032cc5c5c036096', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:20:54'),
('d65764d8438a2761b2c97fdf4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:33:37'),
('d657bf351422ea8e44e8436ab8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:15'),
('d670b939d0201f359c31b7aae3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:51:57'),
('d6792ac3cf98f6b7d229e7036d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:28:28'),
('d67df88fcb3ece5cd0de99dca3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:43:01'),
('d6a6ffa2dc5d293b0745d5ccb9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:54:55'),
('d6cfd9f2ed9bd13213759f4572', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 16:47:24'),
('d6d80f7c941249648acf712279', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:33'),
('d6e0eb75b8e280de2d61c28f6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:38'),
('d6e2124f10389a3338c8a6df5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:11:23'),
('d6ec1942fcc91f821f4623055e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 06:50:41'),
('d72756a72c4749167884735369', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:17:44'),
('d7420ba3a2e484072caf08aa3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:47:18'),
('d750dc1a7330ad1ede8e93b2ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 21:11:04'),
('d77ba8a81efa49cae707187230', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 23:05:57'),
('d79e41e9b355e54d34c969e497', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:08:40'),
('d7df9717bd02ceb23f1ae6623b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:29'),
('d80bcb0638fa71b23730a503ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:50'),
('d8143e6967b8322f93d9421407', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:14'),
('d81f064ea9a89432946803104e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:39:35'),
('d830fa0411fd5ac2a0aae0eea1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:19:03'),
('d832c797996d0fc6bca12e2b18', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:39:28'),
('d84e071d06587c2d2499d839e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 16:10:11'),
('d85c04aa32a9899315dbf3423c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:11'),
('d8e1953f8b2096e7d4e68f1ece', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:16'),
('d8e50a0459f83b91ddc97d7a4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:39:52'),
('d8f37bed371f15d949cb8fff2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:15'),
('d9153ac87c3ac1c224082852b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:48:10'),
('d91c7800dd4c86dcab8f680471', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:09:31'),
('d91fd3047e91e3435d1ede4bf2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:22'),
('d9245eec34e890f1a477e062af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 11:26:09'),
('d92fcd75350d99da4b5206b935', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:22:05'),
('d930fd30869c655c140ad71579', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 08:27:13'),
('d93696e2b35b7e6ff982bbb302', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:04'),
('d939483b23215e53bc1f3e63ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:42'),
('d93aae19a7a0bc3ba0633e897b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:54:16'),
('d94eeaaa78da165171bacc01df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:40:18'),
('d97df22ec0d7cd14d63d47a1f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:11:56'),
('d9d008be7dd0a16760b5304fb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('d9ed9c52243f882b2481003398', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:27:58'),
('da43fd2a8499fbd2c0a157349e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:05:39'),
('da67819bb06ef0908880e80981', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 17:49:28'),
('da7466f0367efcde8e67eed7ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:09:37'),
('da802663e06831903f6f2afd77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:08:40'),
('dabd279246fd4a5d1acf8a81b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:42:11'),
('db10f1267763b2bb296f303255', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:07:22'),
('db153926258fe72cbf8d3a4016', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:28'),
('db3acef1827e0f1275df8a57ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:37:07'),
('db55a7f5deccdc055266ca04be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:01'),
('db898491e4d039cf382dfdc496', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:59:04'),
('db8d7322f898d099811c2b6133', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 02:53:09'),
('db8e1819f722a8667a3bffbbb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:33'),
('db9329b5287728e972113c2626', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:35:52'),
('db9435f3a604ac2ae1179b98a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:20'),
('dba2a0dbf3704813e049aa9be7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:07'),
('dbc80c09815ee36e79ad0606fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 03:03:29'),
('dbcb756149481d49e66c4e93d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 12:17:15'),
('dbe2f1b4d513102e6aa461f693', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 14:45:43'),
('dbfaee07332e379cf3ad2dcf09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 03:57:04'),
('dc3654100864b7560d9322e8bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:38'),
('dc629992ce70f0156a28e0ae14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:35'),
('dc950e91a97cc04d4228f0b2e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:00:05'),
('dcd5d6dae0152af929f98cf260', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:12'),
('dce910d8dc10f96b74820639ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 18:30:31'),
('dce9bc7523f88a02db0ae494af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 07:55:23'),
('dd0287a38bad857ba44b8acd55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 11:35:37'),
('dd0b3e46dde108df97d763f3d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:58'),
('dd5c62374b272de545891804fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:59:04'),
('dd6336323093ddd53f9101205a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:06'),
('dd6a052bbdc954c0cdbf369649', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:26:27'),
('dd6a300db2c9becee4d19895bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:46'),
('dd6acdfa1461d7680df7c38e89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 03:13:15'),
('dd7b0f3ade8dfc18dc4630c531', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:02:15'),
('ddc7a2831a800aa485557ee573', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:00:39'),
('dde7612b31d281824abefcace0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:46'),
('de1d9efd4b6db7bda536296c57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:27:52'),
('de28707709bad3e25913653869', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:16'),
('de2a3e2e4039f438b239f7b20b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:27'),
('de3bcb06a7c4bc3fe091e32b11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:32:32'),
('de3d7cd822d0a746cf1d7b63d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:42:11'),
('de47b57df06ea709ca1e225e25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:36:32'),
('de5ad174eb7e87f898aba554fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:08:54'),
('de716944925575038b01723984', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 00:21:59'),
('de73513737c4aab18463bcb261', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:05:31'),
('de809e6301f6d2e3dc94ee9464', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:18:33'),
('de839a472163b77eea2130db80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 14:04:08'),
('de885b82fd7de31021aaf4da5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:13:28'),
('dea6859d7361fac6973b302a24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 11:54:33'),
('dec458a18cdf5699facb0eb7c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:38:12'),
('dec79ca7110afb13c167ede7ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:03:52'),
('def27a9d52b4f99dfb4f37e38f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:35:04'),
('df18958b26109f782c181ec5a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:03:05'),
('df2479da9f3e0e83ad4f7db59e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:59:04'),
('df293456947db71dc85a401cc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:17:28'),
('df2bf710256818c2cb8b2938be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:49:30'),
('df6d4f84425d13744bb0f68515', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 10:21:33'),
('df9d91c27b03424f7e134925d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:09:54'),
('dfb3a42210d6668a05c71eaeb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:22:27'),
('dfdb4d2f8835f57f4237330c4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:08'),
('dff1e8a1f645d983241e63145e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 01:44:41'),
('dff818db62b6f27186e2cc57ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 11:06:16'),
('e011b6d20a699111827c37b24e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:25'),
('e03235e9fba9c49000547b9313', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:59'),
('e04b3bbed3a8407910da1734e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:50'),
('e05b49f2fa4f9d321d5d9ad84a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 18:47:05'),
('e07112cf6e93fed03421df31f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:57:20'),
('e076171ed1363899c87813c134', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:37'),
('e0816e8502a41402c3976329c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:42:11'),
('e081f21ed9fca33ecdea27dc3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:44:40'),
('e0c03ec660db6f126bf2f1b82b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:18:04'),
('e0c74fe8d9ca235fc9efd4590e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 12:46:12'),
('e0e231cbde1fccb7f2b5ede3fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:56:57'),
('e0e6a53ab20fe7cb13a1236cde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:10'),
('e1556eacb6548a51f343e4e888', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 04:54:17'),
('e1644ebe434aca9980c44ea75b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:35'),
('e1a42f1f23100479da96ce21e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:53:14'),
('e1b2b9460a138758b5e6ddc6cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 01:13:11'),
('e1b30771e0aa234843d4490aa1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 07:57:40'),
('e1db56f85ab48552c41788ece8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 21:20:57'),
('e1e7ec879ba526d7571a38e294', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:36'),
('e216478e70a2275325bd788db3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:17:38'),
('e21d8dd493bebe88222669a14a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:47:31'),
('e228413d636e36935e9592ea10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:37:53'),
('e22db7d3ef7c420079193fac06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:52:59'),
('e23e86272fc81abbc2eb71c55a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:49:28'),
('e25f573989194696fa8c984bec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:42:16'),
('e26f2e690c3b74bf56ed44d194', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:33:16'),
('e27b96610013c62e3c6f4e1acd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:15:05'),
('e28870347c18ef451a3c33f790', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:15:44'),
('e2ba6862164e2ebbc186963cc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:47:24'),
('e2c301b03823753595712b4c0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 16:05:15'),
('e31dc0a7328c1782f5367587d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:03:53'),
('e3254c956201030c467c5c205e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:51:16'),
('e32e157686e85bc237c39c1c9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:15:34'),
('e33863efae63c7399bf86be1d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:47'),
('e34522fcb23190d1f8333c9354', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:06:29'),
('e35fc280a04e6a217adc2331aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:53'),
('e367acf6c6814eb1d450f0a764', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 12:30:54'),
('e37194d829f856459892edab26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 18:47:13'),
('e39ba8c6bd038cd53e935b35d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:30:16'),
('e3be5f51442c1549b162deb377', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 15:03:04'),
('e3cab1bd425bbe764ed66c95d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:35:39'),
('e3da6f74df698d864a54eb0ab6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:25:49'),
('e3da93e722220654a16f153db3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 03:40:35'),
('e3e6fbc9bb15f18db6841e02c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:19'),
('e3e89c22715088c1d117f55e4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:00'),
('e3eb0b6f0e39c2e649b1f65cd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:10:50'),
('e3ebcf7434325b4a8738df40b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:52:13'),
('e401675825b12730f53f4565ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:24:24'),
('e43950052065562f6733214627', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:48:25'),
('e45571b363db9f835cd81e2f7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:12:19'),
('e46f000c8479886f643c9aede9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 21:20:57'),
('e47797d0f6772c36d9f83ef15c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 16:46:28'),
('e48e0d27f568f68888fde631c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 13:03:51'),
('e48f4697479ae7b3aad112e2cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:56:46'),
('e4a564805b2934111715ab9cb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:43:14'),
('e4b06ba526a5ca5e40d2db6999', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:57:22'),
('e4c5aa855f767bf1adb235ae32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:07:49'),
('e4d7d3fa97203a94882ca38002', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:17'),
('e4dfa8a8cdea4f78233b10a36e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:42:20'),
('e512a2d74f920af0d179ebce88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 07:38:02'),
('e524927e2d59692003da626ee0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:29'),
('e52bb6085dc71d72fd19218a03', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-18 12:20:52'),
('e5595277de9a96032715f6c991', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 22:48:27'),
('e578ae319c793b36c4a2ee4dcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:14:25'),
('e5a3f83a497596fda4ab8682d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-12 12:33:45'),
('e5b37a88e98f32ab12a9082722', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 07:20:39'),
('e5bc6ae35ec00ce71a1b8f4b2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:37:31'),
('e5de31ef15d3e200c9d84fadc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:10'),
('e5e0532f1828bc548eddf1fc88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:57:38'),
('e600b7a15e3155ffe292d31c78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:19:52'),
('e610615677cdcb84bd6fafbe9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:46'),
('e61870572ecc45bf24adf29d9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 15:25:29'),
('e63907b3736676c1037d72799a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:24:55'),
('e658ac26b4b7347b13c1ff63b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:22:36'),
('e665d26baee41196ae3aa5ae74', '{\"user_id\":\"1\",\"user_token\":\"0Q9Vi2LllmO0KtJjp7b3wAMFdTjXD3A5\",\"language\":\"he-il\",\"currency\":\"EUR\",\"compare\":[\"58\",\"50\"]}', '2019-08-18 12:37:33'),
('e66b0f470207a17ffd77754c79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:36'),
('e6854d39eba78763c2b648345d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:17'),
('e699147b476e0c9f9f26481ee5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:02'),
('e6c37d302abb7d3d03f49f0096', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:53'),
('e6f5f926d51f9f18c026b648ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 08:27:53'),
('e6f75ab0efe1e44b557a3d4870', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:26:03'),
('e7036b37991736c3c7b0419ddf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:19:13'),
('e73e904fac00aa5dca944f6695', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 20:19:03'),
('e74572dd2c1e5c15f97621a42d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:06:16'),
('e7475884c443164b01642420a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:08:45'),
('e7637edcb1c8664e69a17ab2e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:32:50'),
('e7659249d5f8d20deaadb5fff4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:59'),
('e76b95f6e0db4829d1cc4df488', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:42'),
('e782ab934360f27627957c4e32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:12:42'),
('e79a9cedb18a6697cde018b09b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:37:29'),
('e7b4210e3a2754339c1851ab0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 19:08:41'),
('e7bd596339e322742ac833a36a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:52:08'),
('e7ef5c158b4318ff1a6c2a591a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:24:05'),
('e7fdb53b829e0fa3a9ba3322ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:05:57'),
('e802cb6815c985f1daefde3e1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:10:42'),
('e81e6791b9050d1bae7e680a72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:32:40'),
('e821c8907eb8ee5ed893faddde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:39:03'),
('e839c2f7a6f2e65cf843073dfe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:42'),
('e84b1dd2e75b5a394cd4e3507f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 05:14:19'),
('e84b985f6f314e69fd8ed45932', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 06:15:55'),
('e86d48f973dd1e4042e2e26e7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:11:24'),
('e89ec9b6ef327273328c1a165f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 05:35:49'),
('e8c17324a3686ba4410358f3d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 14:42:17'),
('e8cafd09da455650557a415e52', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:31:03'),
('e8cd1b3e10b2ba933a5443fd61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:08'),
('e8cf43ab54503c583ccc3d03fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('e8e0f57ee6eb3f549f025bffb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:18:22'),
('e8e3e3e7bafc44394f0d4e688a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:31'),
('e8f708bcac613d7ab53e7544f9', '{\"language\":\"en-gb\",\"currency\":\"ILS\",\"vouchers\":[],\"user_id\":\"1\",\"user_token\":\"tvibn3Vls1bPofmlycm3H6YdC3tiyvHB\"}', '2019-08-18 18:40:25'),
('e8fc070b11912d04915f131197', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 23:11:47'),
('e914c5db9819df03c50c5dee40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 01:57:14'),
('e927c06c81e4d7081acf0f54ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:17:59'),
('e935acf7e4337b9e35ee14bf28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:35:43'),
('e94a0b907fcc323f18aa20e97e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 04:45:44'),
('e96b46dee46755e4c41e0ce4d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:53:36'),
('e975596581520d3e88d38666a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:22:06'),
('e97b40b7afbff8b4b5fae3e401', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 09:39:52'),
('e9b187f48036d6d46cbad89bd7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:02:58'),
('e9c341699c25b3128683880fe6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:40'),
('e9da5ee7d04ad7f690add4e6dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:34:30'),
('e9fac66778f4d9b0455682a4a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:42'),
('ea35c1ab5d3455b33e7106b5b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 14:24:28'),
('ea502025a48dbfe5793da2d9d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:54'),
('ea75a75ad8c316ccc23ee87108', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 20:52:34'),
('eac161d68949e285c68043bf76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:39:52'),
('eb1bced2cacd365a7a83b34574', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:39'),
('eb49bd437f4102e4ec60dcf4dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:51'),
('eb5105f34ba59eba8414804073', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 13:40:14'),
('eb749765b775cf6310be2f9629', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 12:03:20'),
('eb82164d6f6395e072fe127810', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:26'),
('eb999b15e77a63fddc6b3e6f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:01:43'),
('ebb9a1bac0191593749c546348', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:08:35'),
('ebc7d7d7e339c2bbf0f934865e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:00'),
('ebe519f1e386fd59d5acf89eb4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:06:44'),
('ebe669cc17a63a8dfbe34aa7c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:05:15'),
('ec03fc4fc37b285dc0345ba60d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:43:10'),
('ec1ff3ea4719f01fb22c52039f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:14:03'),
('ec26e5cf458085ca43eb53bab5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:58:47'),
('ec32a2cfe4adcaaac0026e095c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:45:18'),
('ec39ec18c9fb2c989528a660cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:15:52'),
('ec39fe5c621905bdd10f871f61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:18:16'),
('ec3e06a9c2e7bc35c30d08b2bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 17:49:28'),
('ec5a61cda1e6732d455b894fa3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 23:43:25'),
('ec71cc5bc4bd3720bf00263e53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 18:22:07'),
('ec89c11e6eda7de4ebddc20873', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 15:40:06'),
('ec93ef555a9f82e4f557e282f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:38'),
('ecb063be4b1cff450ecbe43914', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:07'),
('ecbe076a5dc85234fe6499bd7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 14:57:29'),
('ecc4e50e1589b1e509f937ff3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:47:49'),
('ecceb6e3c0bd98bdfd1b5adbde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:31:48'),
('ece1d696f6848fbe9dca1dc8fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:53'),
('ecf1d0b054344a61e644d6eabd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:33'),
('ed1d05439db7da5db0bb1f0e30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:51:53'),
('ed4a5f999ec90ec47bf6fafbf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:39'),
('ed4b57b5f0bf350f0785037dc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:48:24'),
('ed5167771c48668e7c8feafc5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 05:37:08'),
('ed609b8193be2e6c5929e6a729', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:02:01'),
('ed72800b9b392139a5ff7f481f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:10:19'),
('ed9293558510d8e85d6cc127c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 22:47:52'),
('edbdd973e6de838ca176d876dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:31:40'),
('edc1e091043e106f3c5ab0e87d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:47:16'),
('edfa96135f22a4f27c7b34ce9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:48'),
('ee055f983f69477b53d2925ced', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 20:35:04'),
('ee1f5371efd230342006bb780c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 03:02:03'),
('ee2ef8327be640de1f30c8bbbd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:40:29'),
('ee37e12f4ecb6bf37a0badc473', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:20:28'),
('ee439a4cd9b0b19cb8ee7cda73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 19:13:11'),
('ee490ca278c23366bf064e33de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 18:24:23'),
('ee61cd63069723c3e9dd9c5839', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:54:15'),
('ee6ac05723964bcb981e155e11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 14:28:52'),
('ee92f33dbce3e7f0965a240134', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 18:21:17'),
('ee9345cf1a4a32aaed3ea209e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:36:49'),
('ee9c46318964ff97eb3808da2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 21:49:03'),
('eeb85cd82bd6db79fc8b893804', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:09'),
('eeba5d124090ca24e2cf62150c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:00:50'),
('eedabef5e92f8c81ea8ecacb70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:00:33'),
('eefaeee2b5de4590d92ad3395f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:54'),
('ef0fabc43f8262cd6bab898540', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xVl3r7Trpdu5a8dqe3yT6QkrzmO9CPd2\"}', '2019-08-09 01:53:51'),
('efacacef036681bca9be98561c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 19:44:42'),
('efd8acee1758eba7871711a378', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:36'),
('efed0dfdecfb6cff471e06a63a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:13:28'),
('efefd73f478e0f5198d5b3749d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:34:13'),
('f004ff973a848b9c78911c82cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:11:04'),
('f01b51e174346e02f2050534fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 00:22:32'),
('f02f77fc2516a8a6e88381c86d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:53'),
('f040ae0054130b9186e7738a77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 01:17:40'),
('f05dd292283ef7c9ddf0a5fa85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 06:04:13'),
('f07c0cf8480716d51121dbab4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:44:50'),
('f0d4fdac5b6257fc6e5df7ffa7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:53:59'),
('f1153f528c5d0305859f24b9bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:28:17'),
('f118fa7804aaa50c490f773ac9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:48:14'),
('f1347c83102fc1b07424ba4f54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 04:29:34'),
('f148f297bcc319bb93bc4ea323', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:47:09'),
('f16a91e155d01fe74607e21d66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:01:38'),
('f1a2d025ff4efb1660c4da9610', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:17:49'),
('f20c867bb6b820e0532a03331d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:54:16'),
('f216763cd4c0ce2a0deeccb9ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:58:00'),
('f2440d30c5a9c55fae21246de5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 18:35:16'),
('f25c7958642333d265a15a2b49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:37'),
('f2717191f4138cbf58832062ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 04:59:06'),
('f2931c73f7c247128c41e291fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:23'),
('f29e7e3801ca4a364fc5841664', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 05:42:43'),
('f2a8cd05eeadcfb803b674415b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 06:42:27'),
('f2b196065df47bbf1160695c68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 08:24:33'),
('f2cf447c0c83a4c49f3ea3928f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 06:42:31'),
('f2e12cdbf2e06d1a6f21d1cc05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 01:05:24'),
('f34cd731c32db547b87351b9b4', 'false', '2019-08-15 15:36:11'),
('f34eaf428eb02cb0ff716f02c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:38'),
('f36271258562968f3c61357a39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 19:00:58'),
('f3c767c0859ae0d4582bb57819', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:53:55'),
('f3cc5af24979d8fda70304a671', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 07:23:04'),
('f3ea5c6a86948587eb4815b8a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:16:19'),
('f42a1feb2f1389bc197b031315', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:12:30'),
('f4337482b5c29cfb4c1b19ae51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:31'),
('f4357f90debf0678bd0601a1ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 08:34:50'),
('f465b4f61ea77414346eef07f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:32'),
('f46ea60cd9516308aa95c44220', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:29:15'),
('f4885a378e0c870d057d4f2187', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 17:45:08'),
('f49398bda1ccd39073560f362f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 10:48:16'),
('f495c91c996265d145250d058c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 15:37:37'),
('f4a92ff6af4147ea64a19e9e95', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:49'),
('f4abdff9a0d0047c522e249456', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:29:02'),
('f4c253b2f0adcaddb18d7b8e2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:06:40'),
('f4f587c76635aec9a126766ca7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:49:23'),
('f4ff237f40c3dcfb863aa3f78a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:49'),
('f51d885100f66d0609c2d46eb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:59');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('f5234d28e54c3e69ce839c600b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:28:32'),
('f5277bc9f951292269b2900a14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 00:47:05'),
('f532ce92cb3edc79abc78cf419', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 15:21:28'),
('f54800d139c1d2d73381528cd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('f56924eb96fc99815a6deb9414', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:48:37'),
('f5962549b93c188fd405eda4a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:56'),
('f59e7bcab5954987f27f6eda84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:51'),
('f5a4cdd69953eeab2b0246ac4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:08:12'),
('f5c58ca2f156a970e70f7d93b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:20:12'),
('f5cbc408fcd0781da2e98e7e97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:26:39'),
('f5d5c1663f8ffd49231469002f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 16:30:16'),
('f5dd42043a46f50833ca06f284', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 08:03:35'),
('f5ebe3e44a822f7b554985cf90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:57:38'),
('f603135c47c707f6795f766e0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 02:17:34'),
('f6214cb967f8cabc0a4d4c8df9', 'false', '2019-08-15 15:15:17'),
('f6481d2459117c578fa74e81dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:08:45'),
('f64e9d077bd4f8617c49e0fdfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 10:02:55'),
('f66e040b137f7d64c4f6cfe466', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-17 19:03:41'),
('f6755f5ad37d1550dcf2d767c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:34:30'),
('f6a5fcfe4753002a70403f0504', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:47:47'),
('f6a92ddd4269443175dbef915c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 09:37:46'),
('f6adcf7025bdfe7c03c0a3e31a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:49:29'),
('f6bc01e2c8cf86416d8a67fd89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 23:38:37'),
('f6bdf67dfe3432fdb8385dcea9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:23:00'),
('f6c8089fdcc9cd27b7d20bcc27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 00:58:42'),
('f6ce437ae9ac504899b3584125', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:00:14'),
('f6e8cbfd38c451de273d81d83b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 09:54:49'),
('f6f0b2fbfd43b2f0da26dca0ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 17:13:29'),
('f6f1b68d314570d8262ca81198', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 11:14:59'),
('f721fdfe2f289df1ccddfb5873', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:54:19'),
('f725fb2f37f6ee1baed460d47a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:58'),
('f7388e69ad75ede89590722a40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:14:58'),
('f7494050a0cb1ba4ec174f7d61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 14:47:58'),
('f75c580b7d9d8e3c7309e9945d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:15:53'),
('f7895b57715e60308c7b7be495', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:45:10'),
('f7b8626dce2d443045591996b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:57:50'),
('f7c02a7797b60d064709c3909b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 05:34:57'),
('f80618918f80817c01e63433af', '{\"language\":\"he-il\",\"currency\":\"USD\"}', '2019-08-13 03:39:06'),
('f8677642a15f88e196327d6b66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 04:37:45'),
('f86d4a652b96ee3311316c33ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 15:19:43'),
('f8924a227e77c68a239122c837', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:36'),
('f893821c3bfbf7d83ac538b886', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:34'),
('f898fd6bcee1247195cae2f52d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 22:16:17'),
('f8ce0df65c4225adeaf5766139', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 02:14:28'),
('f8e4ca424763b70c8facbe4fd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 05:27:30'),
('f8eac1e3eb88ea0c0677cbdfbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 03:59:26'),
('f8fc04bb26f2ef748e6d49cff1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 19:44:17'),
('f909f8175b699ea87f01c58f7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 10:59:21'),
('f9208270ea2d980bcf31df2cd2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 11:25:17'),
('f9396b6f3bde0a405b17f566a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:17:27'),
('f94a450146f9765fe34fc3fc37', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 22:27:42'),
('f9536cf43d051dbdb9f3fc4d14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 10:37:29'),
('f962e3e779ce7a4f8a8619489b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:51'),
('f97324554c7430e87456a243f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:31:34'),
('f98b58a65ae5486c134e5269d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:35:26'),
('f98ebfdc66f1b0842f7a2a2578', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:40:36'),
('f9b0b44d076dfcfb689e858549', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:11:17'),
('f9d52dee8b4412cb5af0844b8a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:49'),
('f9f72940df8530d2e0b95111b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 22:30:16'),
('fa0cc63748370bff1872bd6a9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 04:26:59'),
('fa1d6ba5be220d4a59239eae81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 03:37:40'),
('fa25e6651aa11567303964c427', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 07:38:55'),
('fa2b30c5fafc88b83846368fe1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 15:03:54'),
('fa3ca21454adb6030608c3bbaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 17:47:13'),
('fa6a8fd44187b9267df9549b00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:29:40'),
('fa7eb0a05cd1743137e6dd22ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 09:29:58'),
('faa642f93111d1125dfa52ed9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:11:24'),
('fac0bbe19a254c600481a09438', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:05:07'),
('faf35f8fb587cc36b57cdf42c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:16'),
('fafbb310f18d6388ec9349d35c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 11:06:16'),
('fb019b163e90736148ab8919f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 06:49:00'),
('fb318605ad613e2eaced03a7a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 00:51:30'),
('fb461753aae34dc557ac0373de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 12:54:18'),
('fb4e60c0becc5d75ba2764e982', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:30:52'),
('fb7f4adbb494a7008ef1085726', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 08:33:08'),
('fba14d250d750bed4814fea4e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 20:07:36'),
('fbc4ee07e28f8526243da41e31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:24:22'),
('fbf42595d882042285d1d293d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:52:12'),
('fc115fa167478376d41f5d50a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 16:08:40'),
('fc1d07df370a907923eedd138b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-17 18:42:57'),
('fc23f135b6b8afb1452dd20783', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:46:55'),
('fc31d33eda33f36d0fcc643400', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 04:52:50'),
('fc3220b415e39955e723f3b24d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 21:44:23'),
('fc5fd1cf6a9c9093b28d764f79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:46:03'),
('fc61e7fedb5d8fe45ec76aa51d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 10:36:07'),
('fc7f84fd8276bcc8f47b7291c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:11:14'),
('fc9ad8ffd92f7bab182cea3c7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 07:06:55'),
('fcd104d8398241080006248cd6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:00:42'),
('fcda7fff0a1f7bdd3499dbeacb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 19:16:57'),
('fd1b8314f6432c0ba0a8b9146b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:37:08'),
('fd28dfb0c94273610c7d83fd02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 20:18:00'),
('fd3dd95f0c7f49d0c1bcd7e5e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:29:59'),
('fd4644e58f81e4b7af8a549e29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:32:54'),
('fd7fd9b873a8815048b0928a3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 22:15:33'),
('fdc8f058d25e0d0321b89bd336', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:52:45'),
('fdcdc91e9ebad11ce5e56dc885', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 19:04:18'),
('fe0081997c61667b02f50c42f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 13:02:34'),
('fe1b661b19c42f735e3b505274', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:15:37'),
('fe1f9b5b19e657ec8a854c34c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-16 23:33:29'),
('fe2864a4e00db2296f84800d6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:50:42'),
('fe3abda74314975b7f5569a3a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 08:54:40'),
('fe419eb06f94c5d460154c8495', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:12:47'),
('fe5082c90bc662250025d4a1c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:18:00'),
('fe5276427b74f5931c3e074df3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:15'),
('fe7c818bb9e607dc5e2f1613e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 14:52:52'),
('febdb841ca74f1ee45dd815146', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 08:14:03'),
('fedd267c09c7a66d5bdf848949', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-18 15:22:58'),
('ff373d17153898d0635fdab9ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:41:15'),
('ff5f8f4ee49e3e8fd0d1f55724', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 16:01:44'),
('ff7a5a892c7b98b5e4a8ca2f4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:39:20'),
('ff85b7fa5209cdcc211022a727', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 04:30:36'),
('ff94f23355030f106cc7cac8fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:38:11'),
('ffbb372cb0af354b3c857ebddc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:20:02'),
('ffc0458f9eedad47b1552ea456', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:54:37'),
('ffcb9b205ca48c912db427aabb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:59:27'),
('ffd634c902da8aaeffcf8a2e0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 12:42:12'),
('ffd9de8e22e8ee794a440b4452', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 18:53:12'),
('ffe8489db54a2e9e01fd0ee807', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-15 09:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(3354, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1563, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_simulate_ip', '', 0),
(1562, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_reject_status_id', '8', 0),
(1561, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_approve_status_id', '2', 0),
(1560, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_review_status_id', '18', 0),
(1559, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_order_status_id', '17', 0),
(1558, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_score', '80', 0),
(1557, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_key', 'PSRKHRVO6DZHNASR3FVRXBEVMTCRZVWP', 0),
(1556, 0, 'fraud_fraudlabspro', 'fraud_fraudlabspro_status', '1', 0),
(1555, 0, 'fraudlabspro', 'fraud_fraudlabspro_reject_status_id', '8', 0),
(1554, 0, 'fraudlabspro', 'fraud_fraudlabspro_approve_status_id', '2', 0),
(1553, 0, 'fraudlabspro', 'fraud_fraudlabspro_review_status_id', '18', 0),
(1552, 0, 'fraudlabspro', 'fraud_fraudlabspro_order_status_id', '17', 0),
(1551, 0, 'fraudlabspro', 'fraud_fraudlabspro_score', '80', 0),
(3526, 0, 'config', 'config_error_filename', 'error.log', 0),
(3353, 0, 'theme_default', 'theme_default_image_location_width', '228', 0),
(3520, 0, 'config', 'config_encryption', '1da8231b74b1ea761769bff1819d5d955ace4692c23057759bb992286d99df39d1487c24dcd1d89597d9f8fe9cc5e6e927ad9c48abadb661ae59fea3ec36542e56f40ac1b3c9828db51bbbaa235911dd1bf46a898f3fb44e2f6aaa3ebfac2f837094ce34e26a15f2c0199d1b1187b4c96d6eec1625224f2c43f923badaabf9d4d5f8655153a24a16cee2a48334c138d7bd2a6f3bc0102691f5297ae2afc53cecade7143722e1675d9c4b58bb200f97a761a196aefde616594e9ab5b0825ee2e18e6054ed1af2f7330694374afb5d803711bf15c8ff46e2eaa38a46d98f77934df76e0d77242022af4d2a1d03882a86fc5a01d44dd23aab3498a4ff71f75e8efe', 0),
(3524, 0, 'config', 'config_error_display', '1', 0),
(3525, 0, 'config', 'config_error_log', '1', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(3352, 0, 'theme_default', 'theme_default_image_cart_height', '70', 0),
(1828, 0, 'feed_google_sitemap', 'feed_google_sitemap_status', '1', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(3351, 0, 'theme_default', 'theme_default_image_cart_width', '70', 0),
(3350, 0, 'theme_default', 'theme_default_image_wishlist_height', '70', 0),
(3349, 0, 'theme_default', 'theme_default_image_wishlist_width', '70', 0),
(3348, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(3347, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(3346, 0, 'theme_default', 'theme_default_image_related_height', '400', 0),
(3345, 0, 'theme_default', 'theme_default_image_related_width', '400', 0),
(3344, 0, 'theme_default', 'theme_default_image_additional_height', '100', 0),
(3343, 0, 'theme_default', 'theme_default_image_additional_width', '100', 0),
(3342, 0, 'theme_default', 'theme_default_image_product_height', '400', 0),
(3341, 0, 'theme_default', 'theme_default_image_product_width', '400', 0),
(3340, 0, 'theme_default', 'theme_default_image_popup_height', '700', 0),
(3339, 0, 'theme_default', 'theme_default_image_popup_width', '700', 0),
(3338, 0, 'theme_default', 'theme_default_image_thumb_height', '500', 0),
(3337, 0, 'theme_default', 'theme_default_image_thumb_width', '500', 0),
(3336, 0, 'theme_default', 'theme_default_image_category_height', '90', 0),
(3334, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(3335, 0, 'theme_default', 'theme_default_image_category_width', '90', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(1034, 0, 'developer', 'developer_sass', '1', 0),
(3333, 0, 'theme_default', 'theme_default_product_limit', '16', 0),
(3332, 0, 'theme_default', 'theme_default_status', '1', 0),
(3331, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(3523, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/webp\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(3521, 0, 'config', 'config_file_max_size', '300000', 0),
(3522, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nwebp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(3519, 0, 'config', 'config_shared', '0', 0),
(3518, 0, 'config', 'config_password', '1', 0),
(3517, 0, 'config', 'config_secure', '1', 0),
(3516, 0, 'config', 'config_compression', '0', 0),
(3487, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(3488, 0, 'config', 'config_fraud_status_id', '8', 0),
(3489, 0, 'config', 'config_api_id', '1', 0),
(3490, 0, 'config', 'config_stock_display', '0', 0),
(3491, 0, 'config', 'config_stock_warning', '0', 0),
(3492, 0, 'config', 'config_stock_checkout', '0', 0),
(3493, 0, 'config', 'config_affiliate_group_id', '1', 0),
(3494, 0, 'config', 'config_affiliate_approval', '0', 0),
(3495, 0, 'config', 'config_affiliate_auto', '0', 0),
(3496, 0, 'config', 'config_affiliate_commission', '5', 0),
(3497, 0, 'config', 'config_affiliate_id', '4', 0),
(3498, 0, 'config', 'config_return_id', '0', 0),
(3499, 0, 'config', 'config_return_status_id', '2', 0),
(3500, 0, 'config', 'config_captcha', '', 0),
(3501, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(3502, 0, 'config', 'config_logo', 'catalog/logos/logo-min-compressed.png', 0),
(3503, 0, 'config', 'config_icon', 'catalog/logos/icon.png', 0),
(3504, 0, 'config', 'config_mail_engine', 'mail', 0),
(3505, 0, 'config', 'config_mail_parameter', '', 0),
(3506, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(3507, 0, 'config', 'config_mail_smtp_username', '', 0),
(3508, 0, 'config', 'config_mail_smtp_password', '', 0),
(3509, 0, 'config', 'config_mail_smtp_port', '25', 0),
(3510, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(3511, 0, 'config', 'config_mail_alert', '[\"order\",\"review\"]', 1),
(3512, 0, 'config', 'config_mail_alert_email', '', 0),
(3513, 0, 'config', 'config_maintenance', '0', 0),
(3514, 0, 'config', 'config_seo_url', '0', 0),
(3515, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1033, 0, 'developer', 'developer_theme', '1', 0),
(1568, 0, 'module_store', 'module_store_status', '1', 0),
(1567, 0, 'module_store', 'module_store_admin', '1', 0),
(1564, 0, 'module_pp_braintree_button', 'module_pp_braintree_button_status', '1', 0),
(3486, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(3485, 0, 'config', 'config_order_status_id', '1', 0),
(3484, 0, 'config', 'config_checkout_id', '5', 0),
(3483, 0, 'config', 'config_checkout_guest', '1', 0),
(3482, 0, 'config', 'config_cart_weight', '1', 0),
(3481, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(3480, 0, 'config', 'config_account_id', '3', 0),
(3478, 0, 'config', 'config_customer_price', '0', 0),
(3479, 0, 'config', 'config_login_attempts', '5', 0),
(3477, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(3476, 0, 'config', 'config_customer_group_id', '1', 0),
(3475, 0, 'config', 'config_customer_search', '0', 0),
(3474, 0, 'config', 'config_customer_activity', '0', 0),
(3473, 0, 'config', 'config_customer_online', '0', 0),
(3472, 0, 'config', 'config_tax_customer', 'shipping', 0),
(3471, 0, 'config', 'config_tax_default', 'shipping', 0),
(3470, 0, 'config', 'config_tax', '0', 0),
(3469, 0, 'config', 'config_voucher_max', '1000', 0),
(3468, 0, 'config', 'config_voucher_min', '1', 0),
(3467, 0, 'config', 'config_review_guest', '0', 0),
(3466, 0, 'config', 'config_review_status', '0', 0),
(3465, 0, 'config', 'config_limit_admin', '20', 0),
(3464, 0, 'config', 'config_product_count', '0', 0),
(3463, 0, 'config', 'config_weight_class_id', '1', 0),
(3462, 0, 'config', 'config_length_class_id', '1', 0),
(3460, 0, 'config', 'config_currency', 'USD', 0),
(3461, 0, 'config', 'config_currency_auto', '1', 0),
(3459, 0, 'config', 'config_admin_language', 'en-gb', 0),
(3458, 0, 'config', 'config_language', 'en-gb', 0),
(3457, 0, 'config', 'config_zone_id', '1622', 0),
(3456, 0, 'config', 'config_country_id', '104', 0),
(3454, 0, 'config', 'config_open', 'Sun- Thur 8:00 am to 8:00 pm\r\nFriday 8:00 am to 14:00 pm', 0),
(3455, 0, 'config', 'config_comment', '', 0),
(3453, 0, 'config', 'config_image', 'catalog/logo6.png', 0),
(3452, 0, 'config', 'config_fax', '', 0),
(3451, 0, 'config', 'config_telephone', '+972 526205429', 0),
(3449, 0, 'config', 'config_geocode', '7523606 ', 0),
(3450, 0, 'config', 'config_email', 'pardesstickers@gmail.com', 0),
(3448, 0, 'config', 'config_address', 'Rishon-Lezion, Israel', 0),
(3447, 0, 'config', 'config_owner', 'Dvir Elimelech', 0),
(3446, 0, 'config', 'config_name', 'Stickers-Center', 0),
(3445, 0, 'config', 'config_layout_id', '4', 0),
(3444, 0, 'config', 'config_theme', 'default', 0),
(3443, 0, 'config', 'config_meta_keyword', 'wall stickers shop, wall stickers store, wallpaper, wallpapers, wall decor, 3d wall stickers, kids room wall stickers', 0),
(3442, 0, 'config', 'config_meta_description', 'Wall Stickers Online Store', 0),
(3441, 0, 'config', 'config_meta_title', 'Stickers-Center', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL,
  `shipping_courier_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(2, 0, 'default', 'common/home', '{{ header }}\n&lt;div id=&quot;common-home&quot; class=&quot;container&quot;&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}{{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}', '2019-08-17 10:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'nofar', '32546ed40b5ed95177532e62a8eee0ed40e53f36', 'oHFBvhFgx', 'Nofar', 'Alfasi', 'pardesstickers@gmail.com', 'catalog/logos/icon.png', '', '79.176.59.3', 1, '2019-08-08 07:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/html\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/module\\/special\",\"extension\\/shipping\\/free\",\"extension\\/feed\\/google_sitemap\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/html\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/module\\/special\",\"extension\\/shipping\\/free\",\"extension\\/feed\\/google_sitemap\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_fraudlabspro`
--
ALTER TABLE `oc_fraudlabspro`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Indexes for table `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Indexes for table `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2758;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3527;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
