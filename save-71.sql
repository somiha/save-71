-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 06:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `save-71`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_balance`
--

CREATE TABLE `admin_balance` (
  `admin_id` int(11) NOT NULL,
  `admin_balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_balance`
--

INSERT INTO `admin_balance` (`admin_id`, `admin_balance`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rates`
--

CREATE TABLE `exchange_rates` (
  `exchange_id` int(11) NOT NULL,
  `sign` varchar(250) NOT NULL,
  `rate` double NOT NULL,
  `is_base` tinyint(1) NOT NULL,
  `tax_percentage` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exchange_rates`
--

INSERT INTO `exchange_rates` (`exchange_id`, `sign`, `rate`, `is_base`, `tax_percentage`) VALUES
(2, 'AED', 3.6729, 0, 0),
(4, 'AFN', 70.968036, 0, 0),
(5, 'ALL', 94.797326, 0, 0),
(6, 'AMD', 403.902967, 0, 0),
(7, 'ANG', 1.799735, 0, 0),
(8, 'AOA', 830.5, 0, 0),
(9, 'ARS', 814.31125, 0, 0),
(10, 'AUD', 1.495886, 0, 0),
(11, 'AWG', 1.8025, 0, 0),
(12, 'AZN', 1.7, 0, 0),
(13, 'BAM', 1.783594, 0, 0),
(14, 'BBD', 2, 0, 0),
(15, 'BDT', 109.598271, 0, 0),
(16, 'BGN', 1.78583, 0, 0),
(17, 'BHD', 0.376959, 0, 0),
(18, 'BIF', 2846.47383, 0, 0),
(19, 'BMD', 1, 0, 0),
(20, 'BND', 1.330446, 0, 0),
(21, 'BOB', 6.900734, 0, 0),
(22, 'BRL', 4.8548, 0, 0),
(23, 'BSD', 1, 0, 0),
(24, 'BTC', 0.000023361247, 0, 0),
(25, 'BTN', 82.791572, 0, 0),
(26, 'BWP', 13.522411, 0, 0),
(27, 'BYN', 3.268068, 0, 0),
(28, 'BZD', 2.012858, 0, 0),
(29, 'CAD', 1.34185, 0, 0),
(30, 'CDF', 2741.15479, 0, 0),
(31, 'CHF', 0.85266, 0, 0),
(32, 'CLF', 0.032966, 0, 0),
(33, 'CLP', 909.63, 0, 0),
(34, 'CNH', 7.1878, 0, 0),
(35, 'CNY', 7.1126, 0, 0),
(36, 'COP', 3912.99985, 0, 0),
(37, 'CRC', 519.264806, 0, 0),
(38, 'CUC', 1, 0, 0),
(39, 'CUP', 25.75, 0, 0),
(40, 'CVE', 100.556284, 0, 0),
(41, 'CZK', 22.4938, 0, 0),
(42, 'DJF', 177.803127, 0, 0),
(43, 'DKK', 6.8105, 0, 0),
(44, 'DOP', 58.529024, 0, 0),
(45, 'DZD', 134.59, 0, 0),
(46, 'EGP', 30.9, 0, 0),
(47, 'ERN', 15, 0, 0),
(48, 'ETB', 56.47367, 0, 0),
(49, 'EUR', 0.912076, 0, 0),
(50, 'FJD', 2.211, 0, 0),
(51, 'FKP', 0.78456, 0, 0),
(52, 'GBP', 0.78456, 0, 0),
(53, 'GEL', 2.675625, 0, 0),
(54, 'GGP', 0.78456, 0, 0),
(55, 'GHS', 11.952944, 0, 0),
(56, 'GIP', 0.78456, 0, 0),
(57, 'GMD', 67.275, 0, 0),
(58, 'GNF', 8582.503612, 0, 0),
(59, 'GTQ', 7.804478, 0, 0),
(60, 'GYD', 209.09215, 0, 0),
(61, 'HKD', 7.81885, 0, 0),
(62, 'HNL', 24.625416, 0, 0),
(63, 'HRK', 6.88032, 0, 0),
(64, 'HTG', 131.466872, 0, 0),
(65, 'HUF', 346.25, 0, 0),
(66, 'IDR', 15537.802185, 0, 0),
(67, 'ILS', 3.73235, 0, 0),
(68, 'IMP', 0.78456, 0, 0),
(69, 'INR', 82.87945, 0, 0),
(70, 'IQD', 1308.195789, 0, 0),
(71, 'IRR', 42105, 0, 0),
(72, 'ISK', 136.72, 0, 0),
(73, 'JEP', 0.78456, 0, 0),
(74, 'JMD', 155.141134, 0, 0),
(75, 'JOD', 0.7095, 0, 0),
(76, 'JPY', 144.865, 0, 0),
(77, 'KES', 158.022845, 0, 0),
(78, 'KGS', 89.32, 0, 0),
(79, 'KHR', 4078.254738, 0, 0),
(80, 'KMF', 449.600106, 0, 0),
(81, 'KPW', 900, 0, 0),
(82, 'KRW', 1313.51, 0, 0),
(83, 'KWD', 0.307324, 0, 0),
(84, 'KYD', 0.832155, 0, 0),
(85, 'KZT', 451.160232, 0, 0),
(86, 'LAK', 20597.971, 0, 0),
(87, 'LBP', 15008.662026, 0, 0),
(88, 'LKR', 321.873123, 0, 0),
(89, 'LRD', 189.05007, 0, 0),
(90, 'LSL', 18.624412, 0, 0),
(91, 'LYD', 4.787744, 0, 0),
(92, 'MAD', 9.946469, 0, 0),
(93, 'MDL', 17.730153, 0, 0),
(94, 'MGA', 4564.344498, 0, 0),
(95, 'MKD', 56.1078, 0, 0),
(96, 'MMK', 2097.027502, 0, 0),
(97, 'MNT', 3450, 0, 0),
(98, 'MOP', 8.045871, 0, 0),
(99, 'MRU', 39.403584, 0, 0),
(100, 'MUR', 44.279331, 0, 0),
(101, 'MVR', 15.4, 0, 0),
(102, 'MWK', 1680.995222, 0, 0),
(103, 'MXN', 16.868, 0, 0),
(104, 'MYR', 4.647, 0, 0),
(105, 'MZN', 63.875002, 0, 0),
(106, 'NAD', 18.624412, 0, 0),
(107, 'NGN', 956.726575, 0, 0),
(108, 'NIO', 36.569239, 0, 0),
(109, 'NOK', 10.335545, 0, 0),
(110, 'NPR', 132.46637, 0, 0),
(111, 'NZD', 1.602308, 0, 0),
(112, 'OMR', 0.38497, 0, 0),
(113, 'PAB', 1, 0, 0),
(114, 'PEN', 3.698053, 0, 0),
(115, 'PGK', 3.731704, 0, 0),
(116, 'PHP', 55.806497, 0, 0),
(117, 'PKR', 276.851917, 0, 0),
(118, 'PLN', 3.979744, 0, 0),
(119, 'PYG', 7281.866073, 0, 0),
(120, 'QAR', 3.642151, 0, 0),
(121, 'RON', 4.5381, 0, 0),
(122, 'RSD', 107.057797, 0, 0),
(123, 'RUB', 87.959997, 0, 0),
(124, 'RWF', 1273, 0, 0),
(125, 'SAR', 3.750228, 0, 0),
(126, 'SBD', 8.425461, 0, 0),
(127, 'SCR', 13.272, 0, 0),
(128, 'SDG', 601, 0, 0),
(129, 'SEK', 10.20345, 0, 0),
(130, 'SGD', 1.3327, 0, 0),
(131, 'SHP', 0.78456, 0, 0),
(132, 'SLL', 20969.5, 0, 0),
(133, 'SOS', 570.698965, 0, 0),
(134, 'SRD', 36.6335, 0, 0),
(135, 'SSP', 130.26, 0, 0),
(136, 'STD', 22281.8, 0, 0),
(137, 'STN', 22.342802, 0, 0),
(138, 'SVC', 8.737404, 0, 0),
(139, 'SYP', 2512.53, 0, 0),
(140, 'SZL', 18.63025, 0, 0),
(141, 'THB', 34.899457, 0, 0),
(142, 'TJS', 10.919703, 0, 0),
(143, 'TMT', 3.5, 0, 0),
(144, 'TND', 3.0935, 0, 0),
(145, 'TOP', 2.350372, 0, 0),
(146, 'TRY', 30.1019, 0, 0),
(147, 'TTD', 6.778533, 0, 0),
(148, 'TWD', 31.0906, 0, 0),
(149, 'TZS', 2511.505619, 0, 0),
(150, 'UAH', 37.797363, 0, 0),
(151, 'UGX', 3794.637386, 0, 0),
(152, 'USD', 1, 1, 0),
(153, 'UYU', 39.295973, 0, 0),
(154, 'UZS', 12327.626994, 0, 0),
(155, 'VES', 35.92101, 0, 0),
(156, 'VND', 24506.809836, 0, 0),
(157, 'VUV', 118.722, 0, 0),
(158, 'WST', 2.8, 0, 0),
(159, 'XAF', 598.282354, 0, 0),
(160, 'XAG', 0.04311181, 0, 0),
(161, 'XAU', 0.000488, 0, 0),
(162, 'XCD', 2.70255, 0, 0),
(163, 'XDR', 0.748256, 0, 0),
(164, 'XOF', 598.282354, 0, 0),
(165, 'XPD', 0.00102665, 0, 0),
(166, 'XPF', 108.839567, 0, 0),
(167, 'XPT', 0.00110208, 0, 0),
(168, 'YER', 250.375001, 0, 0),
(169, 'ZAR', 18.29775, 0, 0),
(170, 'ZMW', 26.088185, 0, 0),
(171, 'ZWL', 322, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `extra_cat`
--

CREATE TABLE `extra_cat` (
  `id` int(11) NOT NULL,
  `extra_cat_id` varchar(255) NOT NULL,
  `extra_cat_ref` varchar(255) NOT NULL,
  `extra_cat_name` varchar(255) NOT NULL,
  `extra_cat_image_url` varchar(255) NOT NULL,
  `popular_cat_value` int(11) DEFAULT NULL,
  `retailer_deduct_percentage` double NOT NULL DEFAULT 0,
  `manufacturer_deduct_percentage` double NOT NULL DEFAULT 0,
  `last_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra_cat`
--

INSERT INTO `extra_cat` (`id`, `extra_cat_id`, `extra_cat_ref`, `extra_cat_name`, `extra_cat_image_url`, `popular_cat_value`, `retailer_deduct_percentage`, `manufacturer_deduct_percentage`, `last_update`) VALUES
(197, 'extracat-197', 'subcat-31', 'Rice', 'https://localhost:3000/images/categories/1688366174169_977922482.webp', 0, 5, 1, '2024-03-05'),
(199, 'extracat-199', 'subcat-31', 'Salt', 'https://localhost:3000/images/categories/1688367137855_584262481.webp', 0, 2, 1, '2024-03-05'),
(200, 'extracat-200', 'subcat-31', 'Sugars', 'https://localhost:3000/images/categories/1688384416303_366429782.webp', 0, 2, 1, '2024-03-05'),
(201, 'extracat-201', 'subcat-31', 'Dal', 'https://localhost:3000/images/categories/1688371946710_854295311.webp', 0, 2, 1, '2024-03-05'),
(202, 'extracat-202', 'subcat-31', 'Spices & Mixes', 'https://localhost:3000/images/categories/1688372544428_83583054.webp', 0, 2, 1, '2024-03-05'),
(203, 'extracat-203', 'subcat-31', 'Semolina', 'https://localhost:3000/images/categories/1688385350781_42687309.webp', 0, 2, 1, '2024-03-05'),
(204, 'extracat-204', 'subcat-31', 'Semai', 'https://localhost:3000/images/categories/1688385848419_289640881.webp', 0, 2, 1, '2024-03-05'),
(205, 'extracat-205', 'subcat-31', 'Cooking Oils', 'https://localhost:3000/images/categories/1688386929656_427181154.webp', 0, 2, 1, '2024-03-05'),
(206, 'extracat-206', 'subcat-31', 'Colors & Flavors', 'https://localhost:3000/images/categories/1688390853971_425364350.webp', 0, 2, 1, '2024-03-05'),
(207, 'extracat-207', 'subcat-31', 'Sauce', 'https://localhost:3000/images/categories/1688726881579_420361968.webp', 0, 2, 1, '2024-03-05'),
(208, 'extracat-208', 'subcat-31', 'Flours', 'https://localhost:3000/images/categories/1688395160522_311303282.webp', 0, 2, 1, '2024-03-05'),
(214, 'extracat-214', 'subcat-33', 'Beef', 'https://localhost:3000/images/categories/1688480989372_678102063.webp', 0, 2, 1, '2024-03-05'),
(215, 'extracat-215', 'subcat-33', 'Chicken', 'https://localhost:3000/images/categories/1688482001496_807507511.webp', 0, 2, 1, '2024-03-05'),
(216, 'extracat-216', 'subcat-33', 'Duck', 'https://localhost:3000/images/categories/1688485533406_215107291.webp', 0, 2, 1, '2024-03-05'),
(217, 'extracat-217', 'subcat-33', 'Pork', 'https://localhost:3000/images/categories/1688486198184_17250593.webp', 0, 2, 1, '2024-03-05'),
(218, 'extracat-218', 'subcat-33', 'Venison', 'https://localhost:3000/images/categories/1688486355063_451008564.webp', 0, 2, 1, '2024-03-05'),
(219, 'extracat-219', 'subcat-33', 'Mutton', 'https://localhost:3000/images/categories/1688487190454_261765696.webp', 0, 2, 1, '2024-03-05'),
(220, 'extracat-220', 'subcat-33', 'Bird Meat', 'https://localhost:3000/images/categories/1688488482437_519386916.webp', 0, 2, 1, '2024-03-05'),
(221, 'extracat-221', 'subcat-33', 'Buffalo Meat', 'https://localhost:3000/images/categories/1688488885013_995900947.webp', 0, 2, 1, '2024-03-05'),
(222, 'extracat-222', 'subcat-33', 'Rabbit Meat', 'https://localhost:3000/images/categories/1688538411183_426492565.webp', 0, 2, 1, '2024-03-05'),
(223, 'extracat-223', 'subcat-33', 'Crocodile Meat', 'https://localhost:3000/images/categories/1688538773255_873219213.webp', 0, 2, 1, '2024-03-05'),
(224, 'extracat-224', 'subcat-33', 'Lamb Meat', 'https://localhost:3000/images/categories/1688542898608_936692406.webp', 0, 2, 1, '2024-03-05'),
(225, 'extracat-225', 'subcat-33', 'Turkey Meat', 'https://localhost:3000/images/categories/1688544028630_340780236.webp', 0, 2, 1, '2024-03-05'),
(226, 'extracat-226', 'subcat-34', 'Freshwater Fish', 'https://localhost:3000/images/categories/1688548580865_222463250.webp', 0, 2, 1, '2024-03-05'),
(227, 'extracat-227', 'subcat-34', 'Sea Fish', 'https://localhost:3000/images/categories/1688550064956_906510621.webp', 0, 2, 1, '2024-03-05'),
(229, 'extracat-229', 'subcat-34', 'Aquarium Fish ', 'https://localhost:3000/images/categories/1688570511083_35213621.webp', 0, 2, 1, '2024-03-05'),
(230, 'extracat-230', 'subcat-35', 'Chicken eggs', 'https://localhost:3000/images/categories/1688571616101_252351839.webp', 0, 2, 1, '2024-03-05'),
(231, 'extracat-231', 'subcat-35', 'Duck Eggs', 'https://localhost:3000/images/categories/1688573797657_698409339.webp', 0, 2, 1, '2024-03-05'),
(232, 'extracat-232', 'subcat-35', 'Bird Eggs', 'https://localhost:3000/images/categories/1688575253042_91262209.webp', 0, 2, 1, '2024-03-05'),
(233, 'extracat-233', 'subcat-36', 'Milk Powder', 'https://localhost:3000/images/categories/1688579421449_742805969.webp', 0, 2, 1, '2024-03-05'),
(234, 'extracat-234', 'subcat-36', 'Liquid Milk', 'https://localhost:3000/images/categories/1688581003728_475404262.webp', 0, 2, 1, '2024-03-05'),
(235, 'extracat-235', 'subcat-36', 'Condensed Milk', 'https://localhost:3000/images/categories/1688582377383_348118723.webp', 0, 2, 1, '2024-03-05'),
(236, 'extracat-236', 'subcat-36', 'UHT Milk', 'https://localhost:3000/images/categories/1688603569711_328647749.webp', 0, 2, 1, '2024-03-05'),
(240, 'extracat-240', 'subcat-38', 'Tea', 'https://localhost:3000/images/categories/1688649099734_655190321.webp', 0, 2, 1, '2024-03-05'),
(241, 'extracat-241', 'subcat-38', 'Coffee', 'https://localhost:3000/images/categories/1688649178123_312642743.webp', 0, 2, 1, '2024-03-05'),
(242, 'extracat-242', 'subcat-38', 'Juice', 'https://localhost:3000/images/categories/1688649704167_691487765.webp', 0, 2, 1, '2024-03-05'),
(243, 'extracat-243', 'subcat-38', 'Soft Drinks', 'https://localhost:3000/images/categories/1688650220001_990072430.webp', 0, 2, 1, '2024-03-05'),
(244, 'extracat-244', 'subcat-38', 'Energy Drinks', 'https://localhost:3000/images/categories/1688650454096_303619818.webp', 0, 2, 1, '2024-03-05'),
(245, 'extracat-245', 'subcat-38', 'Drinking Water', 'https://localhost:3000/images/categories/1688652145505_350854672.webp', 0, 2, 1, '2024-03-05'),
(246, 'extracat-246', 'subcat-38', 'Syrup & Powder Drinks', 'https://localhost:3000/images/categories/1688652491676_766097197.webp', 0, 2, 1, '2024-03-05'),
(250, 'extracat-250', 'subcat-34', 'Dried Fish', 'https://localhost:3000/images/categories/1688740822354_701023988.webp', 0, 2, 1, '2024-03-05'),
(251, 'extracat-251', 'subcat-36', 'Ghee', 'https://localhost:3000/images/categories/1688741551973_223671188.webp', 0, 2, 1, '2024-03-05'),
(252, 'extracat-252', 'subcat-36', 'yogurt', 'https://localhost:3000/images/categories/1688746616646_842606768.webp', 0, 2, 1, '2024-03-05'),
(253, 'extracat-253', 'subcat-36', 'Butter', 'https://localhost:3000/images/categories/1688747017888_408892078.webp', 0, 2, 1, '2024-03-05'),
(254, 'extracat-254', 'subcat-36', 'Cheese ', 'https://localhost:3000/images/categories/1688747552724_605367334.webp', 0, 2, 1, '2024-03-05'),
(255, 'extracat-255', 'subcat-42', 'Breads', 'https://localhost:3000/images/categories/1688749921812_691997877.webp', 0, 2, 1, '2024-03-05'),
(256, 'extracat-256', 'subcat-42', 'Nut Butter', 'https://localhost:3000/images/categories/1688750562347_977527941.webp', 0, 2, 1, '2024-03-05'),
(257, 'extracat-257', 'subcat-42', 'Jams & Jellies', 'https://localhost:3000/images/categories/1688751854972_3251367.webp', 0, 2, 1, '2024-03-05'),
(258, 'extracat-258', 'subcat-42', 'Honey', 'https://localhost:3000/images/categories/1688800002095_522574733.webp', 0, 2, 1, '2024-03-05'),
(259, 'extracat-259', 'subcat-42', 'Oatmeals', 'https://localhost:3000/images/categories/1688803577348_956376500.webp', 0, 2, 1, '2024-03-05'),
(260, 'extracat-260', 'subcat-42', 'Breakfast Cereals', 'https://localhost:3000/images/categories/1688807340762_549024349.webp', 0, 2, 1, '2024-03-05'),
(261, 'extracat-261', 'subcat-42', 'Syrups', 'https://localhost:3000/images/categories/1688809471739_774033675.webp', 0, 2, 1, '2024-03-05'),
(262, 'extracat-262', 'subcat-44', 'Local Snacks', 'https://localhost:3000/images/categories/1688810729279_915724416.webp', 0, 2, 1, '2024-03-05'),
(263, 'extracat-263', 'subcat-44', 'Chips & Crisps', 'https://localhost:3000/images/categories/1688813940721_637957283.webp', 0, 2, 1, '2024-03-05'),
(264, 'extracat-264', 'subcat-44', 'Noodles', 'https://localhost:3000/images/categories/1688814412617_122024935.webp', 0, 2, 1, '2024-03-05'),
(265, 'extracat-265', 'subcat-44', 'Biscuit', 'https://localhost:3000/images/categories/1688814701898_279430542.webp', 0, 2, 1, '2024-03-05'),
(266, 'extracat-266', 'subcat-44', 'Instant Soup', 'https://localhost:3000/images/categories/1688816022991_599182283.webp', 0, 2, 1, '2024-03-05'),
(267, 'extracat-267', 'subcat-44', 'Cakes', 'https://localhost:3000/images/categories/1688817048504_266060000.webp', 0, 2, 1, '2024-03-05'),
(268, 'extracat-268', 'subcat-42', 'Mixed Nuts', 'https://localhost:3000/images/categories/1688817737088_522505216.webp', 0, 2, 1, '2024-03-05'),
(271, 'extracat-271', 'subcat-47', 'Candys', 'https://localhost:3000/images/categories/1688825972820_49498972.webp', 0, 2, 1, '2024-03-05'),
(272, 'extracat-272', 'subcat-47', 'Chocolates', 'https://localhost:3000/images/categories/1688826459928_330753738.webp', 0, 2, 1, '2024-03-05'),
(276, 'extracat-276', 'subcat-49', 'Medicines Prescription', 'https://localhost:3000/images/categories/1688980078448_383524924.webp', 0, 2, 1, '2024-03-05'),
(277, 'extracat-277', 'subcat-49', 'Medicines OTC', 'https://localhost:3000/images/categories/1688981918035_135951889.webp', 0, 2, 1, '2024-03-05'),
(278, 'extracat-278', 'subcat-49', 'Medicines Herbal', 'https://localhost:3000/images/categories/1688983847957_592104878.webp', 0, 2, 1, '2024-03-05'),
(279, 'extracat-279', 'subcat-49', 'Medicines Homeopathic', 'https://localhost:3000/images/categories/1688985455665_254011759.webp', 0, 2, 1, '2024-03-05'),
(280, 'extracat-280', 'subcat-50', 'Surgical Items', 'https://localhost:3000/images/categories/1689003136519_824687434.webp', 0, 2, 1, '2024-03-05'),
(282, 'extracat-282', 'subcat-52', 'Restaurants Lunch', 'https://localhost:3000/images/categories/1689055336916_46684925.webp', 0, 2, 1, '2024-03-05'),
(283, 'extracat-283', 'subcat-52', 'Restaurants Breakfast', 'https://localhost:3000/images/categories/1689057070269_508577732.webp', 0, 2, 1, '2024-03-05'),
(284, 'extracat-284', 'subcat-52', 'Restaurants Dinner', 'https://localhost:3000/images/categories/1689060618713_214815375.webp', 0, 2, 1, '2024-03-05'),
(285, 'extracat-285', 'subcat-53', 'Homemade Lunch', 'https://localhost:3000/images/categories/1689065588470_439793517.webp', 0, 2, 1, '2024-03-05'),
(286, 'extracat-286', 'subcat-53', 'Homemade Breakfast', 'https://localhost:3000/images/categories/1689065822861_317373706.webp', 0, 2, 1, '2024-03-05'),
(287, 'extracat-287', 'subcat-53', 'Homemade Dinner', 'https://localhost:3000/images/categories/1689066780911_407971344.webp', 0, 2, 1, '2024-03-05'),
(288, 'extracat-288', 'subcat-33', 'Camel Meat', 'https://localhost:3000/images/categories/1689089038861_375771023.webp', 0, 2, 1, '2024-03-05'),
(289, 'extracat-289', 'subcat-64', 'Kitchen Hood', 'https://localhost:3000/images/categories/1689314094736_652061655.webp', 0, 2, 1, '2024-03-05'),
(290, 'extracat-290', 'subcat-64', 'Gas Stove', 'https://localhost:3000/images/categories/1689314320442_921951104.webp', 0, 2, 1, '2024-03-05'),
(292, 'extracat-292', 'subcat-64', 'Rice & Curry Cookers', 'https://localhost:3000/images/categories/1689315446652_160528975.webp', 0, 2, 1, '2024-03-05'),
(293, 'extracat-293', 'subcat-64', 'Induction & Infrared Cookers', 'https://localhost:3000/images/categories/1689316218480_614635529.webp', 0, 2, 1, '2024-03-05'),
(294, 'extracat-294', 'subcat-65', 'Chopping Board & Knife', 'https://localhost:3000/images/categories/1689318754721_217441570.webp', 0, 2, 1, '2024-03-05'),
(295, 'extracat-295', 'subcat-65', 'Glass, Jug & Water Bottle', 'https://localhost:3000/images/categories/1689319331378_725180552.webp', 0, 2, 1, '2024-03-05'),
(296, 'extracat-296', 'subcat-64', 'Electric Kettle', 'https://localhost:3000/images/categories/1689322275656_938495367.webp', 0, 2, 1, '2024-03-05'),
(297, 'extracat-297', 'subcat-65', 'Multi-purpose kitchen Rack', 'https://localhost:3000/images/categories/1689341987404_76517786.webp', 0, 2, 1, '2024-03-05'),
(298, 'extracat-298', 'subcat-65', 'Water Purifier & Accessories', 'https://localhost:3000/images/categories/1689342270780_438383511.webp', 0, 2, 1, '2024-03-05'),
(299, 'extracat-299', 'subcat-65', 'Dala, Kula & Dish Cover', 'https://localhost:3000/images/categories/1689343022717_100402400.webp', 0, 2, 1, '2024-03-05'),
(300, 'extracat-300', 'subcat-65', 'Spoon & utensils', 'https://localhost:3000/images/categories/1689343956183_20895449.webp', 0, 2, 1, '2024-03-05'),
(301, 'extracat-301', 'subcat-65', 'Dish Washing Net & Strainer', 'https://localhost:3000/images/categories/1689345112290_209228110.webp', 0, 2, 1, '2024-03-05'),
(302, 'extracat-302', 'subcat-65', 'Kitchen Sink', 'https://localhost:3000/images/categories/1689349900843_252764313.webp', 0, 2, 1, '2024-03-05'),
(303, 'extracat-303', 'subcat-66', 'Detergent Powder', 'https://localhost:3000/images/categories/1689415831314_764371739.webp', 0, 2, 1, '2024-03-05'),
(304, 'extracat-304', 'subcat-66', 'Detergent Liquid ', 'https://localhost:3000/images/categories/1689417369185_369114661.webp', 0, 2, 1, '2024-03-05'),
(305, 'extracat-305', 'subcat-66', 'Detergent Soap', 'https://localhost:3000/images/categories/1689417569241_287887032.webp', 0, 2, 1, '2024-03-05'),
(306, 'extracat-306', 'subcat-54', 'Men\'s Full Sleeve Shirts ', 'https://localhost:3000/images/categories/1689510773935_164004918.webp', 0, 2, 1, '2024-03-05'),
(307, 'extracat-307', 'subcat-54', 'Men\'s Half Sleeve Shirts', 'https://localhost:3000/images/categories/1689511723465_533674012.webp', 0, 2, 1, '2024-03-05'),
(308, 'extracat-308', 'subcat-54', 'Men\'s T-Shirts', 'https://localhost:3000/images/categories/1689514715519_542256007.webp', 0, 2, 1, '2024-03-05'),
(309, 'extracat-309', 'subcat-54', 'Men\'s Polos T-Shirt', 'https://localhost:3000/images/categories/1689515137394_527702011.webp', 0, 2, 1, '2024-03-05'),
(310, 'extracat-310', 'subcat-54', 'Men\'s Waistcoat', 'https://localhost:3000/images/categories/1689521716644_793892451.webp', 0, 2, 1, '2024-03-05'),
(311, 'extracat-311', 'subcat-54', 'Men\'s Lungi', 'https://localhost:3000/images/categories/1689522193087_266089949.webp', 0, 2, 1, '2024-03-05'),
(312, 'extracat-312', 'subcat-54', 'Men\'s Tank Tops', 'https://localhost:3000/images/categories/1689528538249_494960917.webp', 0, 2, 1, '2024-03-05'),
(313, 'extracat-313', 'subcat-54', 'Men\'s Sweatshirts', 'https://localhost:3000/images/categories/1689529248571_77549493.webp', 0, 2, 1, '2024-03-05'),
(314, 'extracat-314', 'subcat-54', 'Men\'s Hoodies', 'https://localhost:3000/images/categories/1689529661871_228803255.webp', 0, 2, 1, '2024-03-05'),
(315, 'extracat-315', 'subcat-54', 'Men\'s Underwear', 'https://localhost:3000/images/categories/1689530578100_102371536.webp', 0, 2, 1, '2024-03-05'),
(316, 'extracat-316', 'subcat-54', 'Men\'s Socks', 'https://localhost:3000/images/categories/1689531782987_44574777.webp', 0, 2, 1, '2024-03-05'),
(317, 'extracat-317', 'subcat-54', 'Men\'s Panjabi', 'https://localhost:3000/images/categories/1689574440220_936347401.webp', 0, 2, 1, '2024-03-05'),
(318, 'extracat-318', 'subcat-54', 'Men\'s Jackets', 'https://localhost:3000/images/categories/1689574927381_139231294.webp', 0, 2, 1, '2024-03-05'),
(319, 'extracat-319', 'subcat-54', 'Men\'s Shorts', 'https://localhost:3000/images/categories/1689590709435_33447843.webp', 0, 2, 1, '2024-03-05'),
(320, 'extracat-320', 'subcat-54', 'Men\'s Full Pants ', 'https://localhost:3000/images/categories/1689589989456_72458090.webp', 0, 2, 1, '2024-03-05'),
(321, 'extracat-321', 'subcat-54', 'Men\'s Winter Hat & Scarf ', 'https://localhost:3000/images/categories/1689581261658_670841084.webp', 0, 2, 1, '2024-03-05'),
(322, 'extracat-322', 'subcat-54', 'Men\'s Hat, Cap & Kufi ', 'https://localhost:3000/images/categories/1689582212967_612402552.webp', 0, 2, 1, '2024-03-05'),
(323, 'extracat-323', 'subcat-54', 'Men\'s Suit & Blazers', 'https://localhost:3000/images/categories/1689585181346_311744703.webp', 0, 2, 1, '2024-03-05'),
(324, 'extracat-324', 'subcat-54', 'Men\'s Half Pants', 'https://localhost:3000/images/categories/1689587104415_499137327.webp', 0, 2, 1, '2024-03-05'),
(325, 'extracat-325', 'subcat-54', 'Men\'s Night Dress', 'https://localhost:3000/images/categories/1689599255548_687519166.webp', 0, 2, 1, '2024-03-05'),
(326, 'extracat-326', 'subcat-54', 'Men\'s Hospital Dress', 'https://localhost:3000/images/categories/1689602929238_354434592.webp', 0, 2, 1, '2024-03-05'),
(327, 'extracat-327', 'subcat-55', 'Religious Clothing', 'https://localhost:3000/images/categories/1689676320764_434928321.webp', 0, 2, 1, '2024-03-05'),
(328, 'extracat-328', 'subcat-55', 'Sweaters', 'https://localhost:3000/images/categories/1689787706259_207920977.webp', 0, 2, 1, '2024-03-05'),
(329, 'extracat-329', 'subcat-55', 'Shalwar Kameez', 'https://localhost:3000/images/categories/1689678898462_292758903.webp', 0, 2, 1, '2024-03-05'),
(330, 'extracat-330', 'subcat-55', 'Tops', 'https://localhost:3000/images/categories/1689842743715_297226625.webp', 0, 2, 1, '2024-03-05'),
(331, 'extracat-331', 'subcat-55', 'Hoodies', 'https://localhost:3000/images/categories/1689782939698_853128034.webp', 0, 2, 1, '2024-03-05'),
(332, 'extracat-332', 'subcat-55', 'Jackets', 'https://localhost:3000/images/categories/1689785490003_353558048.webp', 0, 2, 1, '2024-03-05'),
(333, 'extracat-333', 'subcat-55', 'Women\'s Blazers & Suiting', 'https://localhost:3000/images/categories/1689842225727_709631553.webp', 0, 2, 1, '2024-03-05'),
(334, 'extracat-334', 'subcat-55', 'Socks', 'https://localhost:3000/images/categories/1689843492752_564280680.webp', 0, 2, 1, '2024-03-05'),
(336, 'extracat-336', 'subcat-55', 'Full Length Pants', 'https://localhost:3000/images/categories/1689781886252_201207139.webp', 0, 2, 1, '2024-03-05'),
(337, 'extracat-337', 'subcat-55', 'Short Pants', 'https://localhost:3000/images/categories/1689781060242_769177661.webp', 0, 2, 1, '2024-03-05'),
(338, 'extracat-338', 'subcat-55', 'Gym & Shorts', 'https://localhost:3000/images/categories/1689855985007_136065113.webp', 0, 2, 1, '2024-03-05'),
(339, 'extracat-339', 'subcat-55', 'Wedding Dress', 'https://localhost:3000/images/categories/1689856629223_864366129.webp', 0, 2, 1, '2024-03-05'),
(340, 'extracat-340', 'subcat-55', 'T-shirt', 'https://localhost:3000/images/categories/1689857595484_141171531.webp', 0, 2, 1, '2024-03-05'),
(341, 'extracat-341', 'subcat-55', 'Saree', 'https://localhost:3000/images/categories/1689874656281_718994659.webp', 0, 2, 1, '2024-03-05'),
(342, 'extracat-342', 'subcat-55', 'Skirts', 'https://localhost:3000/images/categories/1689875657763_815266849.webp', 0, 2, 1, '2024-03-05'),
(343, 'extracat-343', 'subcat-55', 'Party Dress', 'https://localhost:3000/images/categories/1689875951550_302301591.webp', 0, 2, 1, '2024-03-05'),
(344, 'extracat-344', 'subcat-55', 'Nightwear', 'https://localhost:3000/images/categories/1689877154483_514985625.webp', 0, 2, 1, '2024-03-05'),
(346, 'extracat-346', 'subcat-55', 'Shawls', 'https://localhost:3000/images/categories/1689881478935_601883387.webp', 0, 2, 1, '2024-03-05'),
(347, 'extracat-347', 'subcat-55', 'Scarf', 'https://localhost:3000/images/categories/1689882325536_164578278.webp', 0, 2, 1, '2024-03-05'),
(348, 'extracat-348', 'subcat-55', 'Bra & Panty', 'https://localhost:3000/images/categories/1689886430287_646652371.webp', 0, 2, 1, '2024-03-05'),
(349, 'extracat-349', 'subcat-60', 'Formal Shoes', 'https://localhost:3000/images/categories/1689887820018_168838638.webp', 0, 2, 1, '2024-03-05'),
(350, 'extracat-350', 'subcat-60', 'Casual Shoes', 'https://localhost:3000/images/categories/1689889316004_270084779.webp', 0, 2, 1, '2024-03-05'),
(351, 'extracat-351', 'subcat-60', 'Boots', 'https://localhost:3000/images/categories/1689889887716_1778094.webp', 0, 2, 1, '2024-03-05'),
(352, 'extracat-352', 'subcat-60', 'Sandals', 'https://localhost:3000/images/categories/1689890155949_528091142.webp', 0, 2, 1, '2024-03-05'),
(353, 'extracat-353', 'subcat-60', 'Sports Shoes', 'https://localhost:3000/images/categories/1689890343263_419764418.webp', 0, 2, 1, '2024-03-05'),
(354, 'extracat-354', 'subcat-60', 'Sports Sandal', 'https://localhost:3000/images/categories/1689890525438_607024532.webp', 0, 2, 1, '2024-03-05'),
(355, 'extracat-355', 'subcat-60', 'Canvas Shoes', 'https://localhost:3000/images/categories/1689890820024_221931946.webp', 0, 2, 1, '2024-03-05'),
(356, 'extracat-356', 'subcat-61', 'Women\'s Heel', 'https://localhost:3000/images/categories/1689890962444_729735917.webp', 0, 2, 1, '2024-03-05'),
(357, 'extracat-357', 'subcat-61', 'Women Sandals', 'https://localhost:3000/images/categories/1689891560905_725523455.webp', 0, 2, 1, '2024-03-05'),
(358, 'extracat-358', 'subcat-61', 'Women\'s Sports Shoes', 'https://localhost:3000/images/categories/1689891883044_109430232.webp', 0, 2, 1, '2024-03-05'),
(359, 'extracat-359', 'subcat-61', 'Women\'s Casual shoes', 'https://localhost:3000/images/categories/1689892160834_13697694.webp', 0, 2, 1, '2024-03-05'),
(360, 'extracat-360', 'subcat-61', 'Women\'s Formal Shoes', 'https://localhost:3000/images/categories/1689892416573_141843864.webp', 0, 2, 1, '2024-03-05'),
(361, 'extracat-361', 'subcat-61', 'Women\'s Canvas Shoes', 'https://localhost:3000/images/categories/1689892758589_677295574.webp', 0, 2, 1, '2024-03-05'),
(362, 'extracat-362', 'subcat-62', 'Boy\'s Sandals', 'https://localhost:3000/images/categories/1689949686181_239716456.webp', 0, 2, 1, '2024-03-05'),
(363, 'extracat-363', 'subcat-62', 'Boy\'s Sports shoes', 'https://localhost:3000/images/categories/1690026504693_582120140.webp', 0, 2, 1, '2024-03-05'),
(364, 'extracat-364', 'subcat-62', 'Boy\'s Casual Shoes', 'https://localhost:3000/images/categories/1690027564673_954168729.webp', 0, 2, 1, '2024-03-05'),
(365, 'extracat-365', 'subcat-62', 'Boy\'s Formal Shoes', 'https://localhost:3000/images/categories/1690028224791_648936626.webp', 0, 2, 1, '2024-03-05'),
(366, 'extracat-366', 'subcat-56', 'Boy\'s Full Pants', 'https://localhost:3000/images/categories/1690282669363_612729200.webp', 0, 2, 1, '2024-03-05'),
(367, 'extracat-367', 'subcat-56', 'Boy\'s Half Pants', 'https://localhost:3000/images/categories/1690282683534_264892690.webp', 0, 2, 1, '2024-03-05'),
(368, 'extracat-368', 'subcat-56', 'Boy\'s Half Sleeve Shirts', 'https://localhost:3000/images/categories/1690303095706_844809415.webp', 0, 2, 1, '2024-03-05'),
(369, 'extracat-369', 'subcat-56', 'Boy\'s Hoodies', 'https://localhost:3000/images/categories/1690304619766_147099425.webp', 0, 2, 1, '2024-03-05'),
(370, 'extracat-370', 'subcat-56', 'Boy\'s Jackets', 'https://localhost:3000/images/categories/1690305161053_20517869.webp', 0, 2, 1, '2024-03-05'),
(371, 'extracat-371', 'subcat-56', 'Boy\'s Winter Clothes ', 'https://localhost:3000/images/categories/1690455413838_722733506.webp', 0, 2, 1, '2024-03-05'),
(372, 'extracat-372', 'subcat-56', 'Boy\'s Summer Clothes', 'https://localhost:3000/images/categories/1690455866497_496228526.webp', 0, 2, 1, '2024-03-05'),
(373, 'extracat-373', 'subcat-56', 'Boy\'s Sports Clothing ', 'https://localhost:3000/images/categories/1690458126665_843287778.webp', 0, 2, 1, '2024-03-05'),
(374, 'extracat-374', 'subcat-56', 'Boy\'s Formal Clothes', 'https://localhost:3000/images/categories/1690458727312_959894967.webp', 0, 2, 1, '2024-03-05'),
(375, 'extracat-375', 'subcat-56', 'Boy\'s Full Sleeve Shirts', 'https://localhost:3000/images/categories/1690459199483_106596557.webp', 0, 2, 1, '2024-03-05'),
(376, 'extracat-376', 'subcat-56', 'Boy\'s T-Shirts', 'https://localhost:3000/images/categories/1690459867936_999625316.webp', 0, 2, 1, '2024-03-05'),
(377, 'extracat-377', 'subcat-56', 'Boy\'s Full Sleeves T-Shirts', 'https://localhost:3000/images/categories/1690460318549_677449503.webp', 0, 2, 1, '2024-03-05'),
(378, 'extracat-378', 'subcat-57', 'Girl\'s Skirts', 'https://localhost:3000/images/categories/1690469436411_726159672.webp', 0, 2, 1, '2024-03-05'),
(379, 'extracat-379', 'subcat-57', 'Girl\'s Pant, Leggings & Jeans', 'https://localhost:3000/images/categories/1690522291751_675431918.webp', 0, 2, 1, '2024-03-05'),
(380, 'extracat-380', 'subcat-57', 'Girl\'s Tops & Pant', 'https://localhost:3000/images/categories/1690472515060_371075378.webp', 0, 2, 1, '2024-03-05'),
(381, 'extracat-381', 'subcat-57', 'Girl\'s Party Dresses ', 'https://localhost:3000/images/categories/1690473560809_1335212.webp', 0, 2, 1, '2024-03-05'),
(382, 'extracat-382', 'subcat-57', 'Girl\'s Summer Dresses', 'https://localhost:3000/images/categories/1690475296963_929158612.webp', 0, 2, 1, '2024-03-05'),
(383, 'extracat-383', 'subcat-57', 'Girl\'s Winter Dresses', 'https://localhost:3000/images/categories/1690476153155_115580779.webp', 0, 2, 1, '2024-03-05'),
(384, 'extracat-384', 'subcat-57', 'Girl\'s Sport\'s Dresses', 'https://localhost:3000/images/categories/1690518919270_192445994.webp', 0, 2, 1, '2024-03-05'),
(385, 'extracat-385', 'subcat-57', 'Girl\'s Full Sleeves T-Shirts', 'https://localhost:3000/images/categories/1690520163720_645959453.webp', 0, 2, 1, '2024-03-05'),
(388, 'extracat-388', 'subcat-57', 'Girl\'s Shalwar Kameez', 'https://localhost:3000/images/categories/1690526546526_569741311.webp', 0, 2, 1, '2024-03-05'),
(389, 'extracat-389', 'subcat-57', 'Girl\'s T-Shirts', 'https://localhost:3000/images/categories/1690536082490_292879768.webp', 0, 2, 1, '2024-03-05'),
(390, 'extracat-390', 'subcat-57', 'Girl\'s Saree', 'https://localhost:3000/images/categories/1690539772808_459469263.webp', 0, 2, 1, '2024-03-05'),
(391, 'extracat-391', 'subcat-58', 'Pets Clothing', 'https://localhost:3000/images/categories/1690541081276_933302036.webp', 0, 2, 1, '2024-03-05'),
(392, 'extracat-392', 'subcat-59', 'Clothing Festival ', 'https://localhost:3000/images/categories/1690807715172_987034644.webp', 0, 2, 1, '2024-03-05'),
(396, 'extracat-396', 'subcat-72', 'Condom', 'https://localhost:3000/images/categories/1691387444538_132905983.webp', 0, 2, 1, '2024-03-05'),
(397, 'extracat-397', 'subcat-73', 'Sanitary Pads', 'https://localhost:3000/images/categories/1691389615184_53092472.webp', 0, 2, 1, '2024-03-05'),
(398, 'extracat-398', 'subcat-70', 'Men\'s Skin Care', 'https://localhost:3000/images/categories/1691416446115_341713639.webp', 0, 2, 1, '2024-03-05'),
(399, 'extracat-399', 'subcat-70', 'Men\'s Hair Care', 'https://localhost:3000/images/categories/1691418849032_999230472.webp', 0, 2, 1, '2024-03-05'),
(400, 'extracat-400', 'subcat-70', 'Men\'s Perfume', 'https://localhost:3000/images/categories/1691420230629_446233750.webp', 0, 2, 1, '2024-03-05'),
(401, 'extracat-401', 'subcat-70', 'Men\'s Foot Care', 'https://localhost:3000/images/categories/1691508452332_561711328.webp', 0, 2, 1, '2024-03-05'),
(402, 'extracat-402', 'subcat-70', 'Men\'s Hand & Nail Care', 'https://localhost:3000/images/categories/1691510598993_333909159.webp', 0, 2, 1, '2024-03-05'),
(404, 'extracat-404', 'subcat-77', 'Salon & Spa Equipment', 'https://localhost:3000/images/categories/1691514808253_33882333.webp', 0, 2, 1, '2024-03-05'),
(406, 'extracat-406', 'subcat-70', 'Men\'s Hair Removal ', 'https://localhost:3000/images/categories/1691515947763_931413099.webp', 0, 2, 1, '2024-03-05'),
(407, 'extracat-407', 'subcat-67', 'Frozen Item', 'https://localhost:3000/images/categories/1691588204585_657488813.webp', 0, 2, 1, '2024-03-05'),
(408, 'extracat-408', 'subcat-79', 'Personal Care', 'https://localhost:3000/images/categories/1691590434707_649064618.webp', 0, 2, 1, '2024-03-05'),
(410, 'extracat-410', 'subcat-63', 'Girl\'s Casual Shoes', 'https://localhost:3000/images/categories/1691592316623_460216877.webp', 0, 2, 1, '2024-03-05'),
(411, 'extracat-411', 'subcat-63', 'Girl\'s Formal Shoes', 'https://localhost:3000/images/categories/1691593033731_943197685.webp', 0, 2, 1, '2024-03-05'),
(412, 'extracat-412', 'subcat-63', 'Girl\'s Sandals', 'https://localhost:3000/images/categories/1691597059006_919614040.webp', 0, 2, 1, '2024-03-05'),
(413, 'extracat-413', 'subcat-63', 'Girl\'s Sports shoes', 'https://localhost:3000/images/categories/1691597751801_342127949.webp', 0, 2, 1, '2024-03-05'),
(414, 'extracat-414', 'subcat-74', 'Women\'s Foot Care', 'https://localhost:3000/images/categories/1691598357533_452062653.webp', 0, 2, 1, '2024-03-05'),
(415, 'extracat-415', 'subcat-74', 'Women\'s Hair Care', 'https://localhost:3000/images/categories/1691598910331_502014078.webp', 0, 2, 1, '2024-03-05'),
(416, 'extracat-416', 'subcat-74', 'Women\'s Hand & Nail Care', 'https://localhost:3000/images/categories/1691599185357_22459245.webp', 0, 2, 1, '2024-03-05'),
(417, 'extracat-417', 'subcat-74', 'Women\'s Perfume ', 'https://localhost:3000/images/categories/1691599546567_977090012.webp', 0, 2, 1, '2024-03-05'),
(418, 'extracat-418', 'subcat-74', 'Women\'s Hair Removal', 'https://localhost:3000/images/categories/1691600217661_698136207.webp', 0, 2, 1, '2024-03-05'),
(419, 'extracat-419', 'subcat-74', 'Women\'s Skin Care', 'https://localhost:3000/images/categories/1691601539502_298712576.webp', 0, 2, 1, '2024-03-05'),
(420, 'extracat-420', 'subcat-75', 'Baby Care Item', 'https://localhost:3000/images/categories/1691602874373_380489882.webp', 0, 2, 1, '2024-03-05'),
(421, 'extracat-421', 'subcat-74', 'Women\'s Makeup', 'https://localhost:3000/images/categories/1691662489150_90559697.webp', 0, 2, 1, '2024-03-05'),
(422, 'extracat-422', 'subcat-81', 'Televisions', 'https://localhost:3000/images/categories/1692192373761_846633388.webp', 0, 2, 1, '2024-03-05'),
(423, 'extracat-423', 'subcat-81', 'Refrigerators', 'https://localhost:3000/images/categories/1692192961748_416784745.webp', 0, 2, 1, '2024-03-05'),
(424, 'extracat-424', 'subcat-81', 'Deep Fridge & Freezers', 'https://localhost:3000/images/categories/1692194034834_73348994.webp', 0, 2, 1, '2024-03-05'),
(425, 'extracat-425', 'subcat-81', 'Air Conditioner', 'https://localhost:3000/images/categories/1692194474877_578858876.webp', 0, 2, 1, '2024-03-05'),
(426, 'extracat-426', 'subcat-81', 'Fan', 'https://localhost:3000/images/categories/1692195671311_39031070.webp', 0, 2, 1, '2024-03-05'),
(427, 'extracat-427', 'subcat-81', 'Water Purifiers', 'https://localhost:3000/images/categories/1692196821496_681475751.webp', 0, 2, 1, '2024-03-05'),
(428, 'extracat-428', 'subcat-81', 'Electric Stove', 'https://localhost:3000/images/categories/1692197521507_468453326.webp', 0, 2, 1, '2024-03-05'),
(429, 'extracat-429', 'subcat-81', 'Ovens', 'https://localhost:3000/images/categories/1692200537958_292260441.webp', 0, 2, 1, '2024-03-05'),
(430, 'extracat-430', 'subcat-81', 'Blenders', 'https://localhost:3000/images/categories/1692201193485_921174905.webp', 0, 2, 1, '2024-03-05'),
(431, 'extracat-431', 'subcat-81', 'Rice Cookers', 'https://localhost:3000/images/categories/1692202246228_766770924.webp', 0, 2, 1, '2024-03-05'),
(432, 'extracat-432', 'subcat-81', 'Electric Kettles', 'https://localhost:3000/images/categories/1692202609679_580881634.webp', 0, 2, 1, '2024-03-05'),
(433, 'extracat-433', 'subcat-81', 'Coffee Machines', 'https://localhost:3000/images/categories/1692202944467_835501431.webp', 0, 2, 1, '2024-03-05'),
(434, 'extracat-434', 'subcat-81', 'Fryers', 'https://localhost:3000/images/categories/1692203797204_771408294.webp', 0, 2, 1, '2024-03-05'),
(435, 'extracat-435', 'subcat-81', 'Toasters', 'https://localhost:3000/images/categories/1692204074738_931926245.webp', 0, 2, 1, '2024-03-05'),
(436, 'extracat-436', 'subcat-81', 'Vacuum Cleaner', 'https://localhost:3000/images/categories/1692204323636_675499724.webp', 0, 2, 1, '2024-03-05'),
(437, 'extracat-437', 'subcat-81', 'Irons', 'https://localhost:3000/images/categories/1692204619403_163776523.webp', 0, 2, 1, '2024-03-05'),
(438, 'extracat-438', 'subcat-81', 'Sewing Machines', 'https://localhost:3000/images/categories/1692204829420_768704106.webp', 0, 2, 1, '2024-03-05'),
(439, 'extracat-439', 'subcat-65', 'Gas Cylinder', 'https://localhost:3000/images/categories/1692547614561_381899135.webp', 0, 2, 1, '2024-03-05'),
(440, 'extracat-440', 'subcat-83', 'Calculators', 'https://localhost:3000/images/categories/1692964467043_436671373.webp', 0, 2, 1, '2024-03-05'),
(441, 'extracat-441', 'subcat-83', 'Copiers', 'https://localhost:3000/images/categories/1692964894471_403144246.webp', 0, 2, 1, '2024-03-05'),
(442, 'extracat-442', 'subcat-83', 'Document Cameras', 'https://localhost:3000/images/categories/1692965315554_888534531.webp', 0, 2, 1, '2024-03-05'),
(443, 'extracat-443', 'subcat-83', 'Electronic Dictionaries', 'https://localhost:3000/images/categories/1692965612401_682681709.webp', 0, 2, 1, '2024-03-05'),
(444, 'extracat-444', 'subcat-83', 'Fax Machines', 'https://localhost:3000/images/categories/1692965843611_567894613.webp', 0, 2, 1, '2024-03-05'),
(445, 'extracat-445', 'subcat-83', 'PDAs & Handhelds', 'https://localhost:3000/images/categories/1692966127899_509236277.webp', 0, 2, 1, '2024-03-05'),
(446, 'extracat-446', 'subcat-83', 'Point-of-Sale (POS) Equipment', 'https://localhost:3000/images/categories/1692966302649_922209439.webp', 0, 2, 1, '2024-03-05'),
(447, 'extracat-447', 'subcat-83', 'Printers & Accessories', 'https://localhost:3000/images/categories/1692972344584_47907103.webp', 0, 2, 1, '2024-03-05'),
(448, 'extracat-448', 'subcat-83', 'Scanners & Accessories', 'https://localhost:3000/images/categories/1692973961892_995451039.webp', 0, 2, 1, '2024-03-05'),
(449, 'extracat-449', 'subcat-84', 'Cell Phones', 'https://localhost:3000/images/categories/1693150613918_459771691.webp', 0, 2, 1, '2024-03-05'),
(450, 'extracat-450', 'subcat-84', 'Telephones', 'https://localhost:3000/images/categories/1693151591780_420200519.webp', 0, 2, 1, '2024-03-05'),
(451, 'extracat-451', 'subcat-84', 'Landline Phones', 'https://localhost:3000/images/categories/1693152292862_704720901.webp', 0, 2, 1, '2024-03-05'),
(452, 'extracat-452', 'subcat-84', 'Button Phones', 'https://localhost:3000/images/categories/1693152510349_559065034.webp', 0, 2, 1, '2024-03-05'),
(453, 'extracat-453', 'subcat-84', 'Phone Cases', 'https://localhost:3000/images/categories/1693153761185_227130540.webp', 0, 2, 1, '2024-03-05'),
(454, 'extracat-454', 'subcat-84', 'Phone Accessories', 'https://localhost:3000/images/categories/1693153465884_146194669.webp', 0, 2, 1, '2024-03-05'),
(455, 'extracat-455', 'subcat-84', 'Phone Stands', 'https://localhost:3000/images/categories/1693179398048_479850729.webp', 0, 2, 1, '2024-03-05'),
(456, 'extracat-456', 'subcat-84', 'Phone Chargers', 'https://localhost:3000/images/categories/1693179906154_637552166.webp', 0, 2, 1, '2024-03-05'),
(461, 'extracat-461', 'subcat-97', 'Vegetables', 'https://localhost:3000/images/categories/1694032823901_489985837.webp', 0, 2, 1, '2024-03-05'),
(462, 'extracat-462', 'subcat-97', 'Fruits', 'https://localhost:3000/images/categories/1694033052946_987044353.webp', 0, 2, 1, '2024-03-05'),
(463, 'extracat-463', 'subcat-99', 'Backpacks', 'https://localhost:3000/images/categories/1694284266677_729145449.webp', 0, 2, 1, '2024-03-05'),
(464, 'extracat-464', 'subcat-98', 'Luggage', 'https://localhost:3000/images/categories/1694285345781_547577717.webp', 0, 2, 1, '2024-03-05'),
(465, 'extracat-465', 'subcat-98', 'Briefcase', 'https://localhost:3000/images/categories/1694285135869_756308697.webp', 0, 2, 1, '2024-03-05'),
(466, 'extracat-466', 'subcat-99', 'Gym Bags', 'https://localhost:3000/images/categories/1694285254346_734111859.webp', 0, 2, 1, '2024-03-05'),
(470, 'extracat-470', 'subcat-101', 'Arts Books', 'https://localhost:3000/images/categories/1694771648000_747846230.webp', 0, 2, 1, '2024-03-05'),
(471, 'extracat-471', 'subcat-101', 'Photography Books', 'https://localhost:3000/images/categories/1694772564340_607459343.webp', 0, 2, 1, '2024-03-05'),
(472, 'extracat-472', 'subcat-101', 'Biographies Books', 'https://localhost:3000/images/categories/1694779287891_237972390.webp', 0, 2, 1, '2024-03-05'),
(473, 'extracat-473', 'subcat-101', 'Business & Money Books', 'https://localhost:3000/images/categories/1694779580822_684443120.webp', 0, 2, 1, '2024-03-05'),
(474, 'extracat-474', 'subcat-101', 'Calendar Books', 'https://localhost:3000/images/categories/1694784355848_301057800.webp', 0, 2, 1, '2024-03-05'),
(475, 'extracat-475', 'subcat-101', 'Children\'s Books', 'https://localhost:3000/images/categories/1694784630464_441144773.webp', 0, 2, 1, '2024-03-05'),
(476, 'extracat-476', 'subcat-101', 'Religion Books', 'https://localhost:3000/images/categories/1694786066907_880905647.webp', 0, 2, 1, '2024-03-05'),
(477, 'extracat-477', 'subcat-101', 'Graphic Novel Books', 'https://localhost:3000/images/categories/1694786799265_603953214.webp', 0, 2, 1, '2024-03-05'),
(478, 'extracat-478', 'subcat-101', 'Technology Books', 'https://localhost:3000/images/categories/1694787553674_510051963.webp', 0, 2, 1, '2024-03-05'),
(479, 'extracat-479', 'subcat-101', 'Cook Books', 'https://localhost:3000/images/categories/1694788933662_70237045.webp', 0, 2, 1, '2024-03-05'),
(480, 'extracat-480', 'subcat-101', 'Craft Books', 'https://localhost:3000/images/categories/1694789717008_703750986.webp', 0, 2, 1, '2024-03-05'),
(481, 'extracat-481', 'subcat-101', 'Education Books', 'https://localhost:3000/images/categories/1694795576975_538549782.webp', 0, 2, 1, '2024-03-05'),
(482, 'extracat-482', 'subcat-101', 'Engineering Books', 'https://localhost:3000/images/categories/1694796914297_826855341.webp', 0, 2, 1, '2024-03-05'),
(483, 'extracat-483', 'subcat-101', 'Transportation Books', 'https://localhost:3000/images/categories/1694797115201_463789961.webp', 0, 2, 1, '2024-03-05'),
(484, 'extracat-484', 'subcat-101', 'Health Books', 'https://localhost:3000/images/categories/1694797329296_512563485.webp', 0, 2, 1, '2024-03-05'),
(485, 'extracat-485', 'subcat-101', 'Dieting Books', 'https://localhost:3000/images/categories/1694797707462_870479842.webp', 0, 2, 1, '2024-03-05'),
(486, 'extracat-486', 'subcat-101', 'Fitness Books', 'https://localhost:3000/images/categories/1694798031063_570531823.webp', 0, 2, 1, '2024-03-05'),
(487, 'extracat-487', 'subcat-101', 'History Books', 'https://localhost:3000/images/categories/1694798256087_628550401.webp', 0, 2, 1, '2024-03-05'),
(488, 'extracat-488', 'subcat-101', 'Entertainment Books', 'https://localhost:3000/images/categories/1694857804199_427598832.webp', 0, 2, 1, '2024-03-05'),
(489, 'extracat-489', 'subcat-101', 'Humor Books', 'https://localhost:3000/images/categories/1694858434932_954484450.webp', 0, 2, 1, '2024-03-05'),
(490, 'extracat-490', 'subcat-101', 'Law Books', 'https://localhost:3000/images/categories/1694858670862_183976132.webp', 0, 2, 1, '2024-03-05'),
(491, 'extracat-491', 'subcat-101', 'Literature Books', 'https://localhost:3000/images/categories/1694860590676_358688414.webp', 0, 2, 1, '2024-03-05'),
(492, 'extracat-492', 'subcat-101', 'Fiction Books', 'https://localhost:3000/images/categories/1694862925141_954854264.webp', 0, 2, 1, '2024-03-05'),
(493, 'extracat-493', 'subcat-101', 'Medical Books', 'https://localhost:3000/images/categories/1694863378697_891318269.webp', 0, 2, 1, '2024-03-05'),
(494, 'extracat-494', 'subcat-101', 'Mystery Books', 'https://localhost:3000/images/categories/1694863817596_890504073.webp', 0, 2, 1, '2024-03-05'),
(495, 'extracat-495', 'subcat-101', 'Thriller Books', 'https://localhost:3000/images/categories/1694864093900_556673167.webp', 0, 2, 1, '2024-03-05'),
(496, 'extracat-496', 'subcat-101', 'Parenting Books', 'https://localhost:3000/images/categories/1694864458897_625833488.webp', 0, 2, 1, '2024-03-05'),
(497, 'extracat-497', 'subcat-101', 'Relationships Books', 'https://localhost:3000/images/categories/1694864784886_897392480.webp', 0, 2, 1, '2024-03-05'),
(498, 'extracat-498', 'subcat-101', 'Political Books', 'https://localhost:3000/images/categories/1694865064954_665801611.webp', 0, 2, 1, '2024-03-05'),
(499, 'extracat-499', 'subcat-101', 'Social Sciences Books', 'https://localhost:3000/images/categories/1694865334835_288617137.webp', 0, 2, 1, '2024-03-05'),
(500, 'extracat-500', 'subcat-101', 'Reference Books', 'https://localhost:3000/images/categories/1694865659395_970410479.webp', 0, 2, 1, '2024-03-05'),
(501, 'extracat-501', 'subcat-101', 'Spirituality Books', 'https://localhost:3000/images/categories/1694869722350_47942608.webp', 0, 2, 1, '2024-03-05'),
(502, 'extracat-502', 'subcat-101', 'Romance Books', 'https://localhost:3000/images/categories/1694870609620_810219792.webp', 0, 2, 1, '2024-03-05'),
(503, 'extracat-503', 'subcat-101', 'Science Books', 'https://localhost:3000/images/categories/1694871299099_952794813.webp', 0, 2, 1, '2024-03-05'),
(504, 'extracat-504', 'subcat-101', 'Math Books', 'https://localhost:3000/images/categories/1694871728045_305898124.webp', 0, 2, 1, '2024-03-05'),
(505, 'extracat-505', 'subcat-101', 'Science Fiction Books', 'https://localhost:3000/images/categories/1694871991102_466841792.webp', 0, 2, 1, '2024-03-05'),
(506, 'extracat-506', 'subcat-101', 'Gaming Books ', 'https://localhost:3000/images/categories/1694872344431_93412778.webp', 0, 2, 1, '2024-03-05'),
(507, 'extracat-507', 'subcat-101', 'Self Books', 'https://localhost:3000/images/categories/1694872626979_967611145.webp', 0, 2, 1, '2024-03-05'),
(508, 'extracat-508', 'subcat-101', 'Help Books', 'https://localhost:3000/images/categories/1694872799812_53586951.webp', 0, 2, 1, '2024-03-05'),
(509, 'extracat-509', 'subcat-101', 'Sports Books', 'https://localhost:3000/images/categories/1694911868369_934062659.webp', 0, 2, 1, '2024-03-05'),
(510, 'extracat-510', 'subcat-101', 'Test Preparation Books', 'https://localhost:3000/images/categories/1694912369293_571437366.webp', 0, 2, 1, '2024-03-05'),
(511, 'extracat-511', 'subcat-101', 'Travel Books', 'https://localhost:3000/images/categories/1694912539754_326220415.webp', 0, 2, 1, '2024-03-05'),
(512, 'extracat-512', 'subcat-107', 'Other Stationery', 'https://localhost:3000/images/categories/1699287470118_320894450.webp', 0, 2, 1, '2024-03-05'),
(515, 'extracat-515', 'subcat-97', 'Grain', 'https://localhost:3000/images/categories/1696851638062_363634025.webp', 0, 2, 1, '2024-03-05'),
(521, 'extracat-521', 'subcat-97', 'Agriculture Land', 'https://localhost:3000/images/categories/1696863218313_999022525.webp', 0, 2, 1, '2024-03-05'),
(522, 'extracat-522', 'subcat-97', 'Agriculture Equipment', 'https://localhost:3000/images/categories/1696863301383_859704219.webp', 0, 2, 1, '2024-03-05'),
(523, 'extracat-523', 'subcat-97', 'Fertilizer', 'https://localhost:3000/images/categories/1696863375538_368786274.webp', 0, 2, 1, '2024-03-05'),
(524, 'extracat-524', 'subcat-97', 'Saplings', 'https://localhost:3000/images/categories/1696863583631_789147292.webp', 0, 2, 1, '2024-03-05'),
(525, 'extracat-525', 'subcat-97', 'Seeds', 'https://localhost:3000/images/categories/1696863645555_816910180.webp', 0, 2, 1, '2024-03-05'),
(526, 'extracat-526', 'subcat-97', 'Animal & Pets', 'https://localhost:3000/images/categories/1697004877615_122247445.webp', 0, 2, 1, '2024-03-05'),
(527, 'extracat-527', 'subcat-97', 'Animal Feed', 'https://localhost:3000/images/categories/1697005564680_209397621.webp', 0, 2, 1, '2024-03-05'),
(528, 'extracat-528', 'subcat-119', 'Fabric', 'https://localhost:3000/images/categories/1697049558578_65009617.webp', 0, 2, 1, '2024-03-05'),
(529, 'extracat-529', 'subcat-97', 'Dry Fruits & Nuts', 'https://localhost:3000/images/categories/1697829393053_143564149.webp', 0, 2, 1, '2024-03-05'),
(530, 'extracat-530', 'subcat-105', 'Construction Machinery', 'https://localhost:3000/images/categories/1700278736511_478630466.webp', 0, 2, 1, '2024-03-05'),
(531, 'extracat-531', 'subcat-107', 'Pen & Pencils', 'https://localhost:3000/images/categories/1699264567588_228284093.webp', 0, 2, 1, '2024-03-05'),
(532, 'extracat-532', 'subcat-107', 'File & folder', 'https://localhost:3000/images/categories/1699264837511_631015263.webp', 0, 2, 1, '2024-03-05'),
(533, 'extracat-533', 'subcat-107', 'Notebook & Pads', 'https://localhost:3000/images/categories/1699265404359_451882590.webp', 0, 2, 1, '2024-03-05'),
(534, 'extracat-534', 'subcat-107', 'Pencil box', 'https://localhost:3000/images/categories/1699293083027_819301638.webp', 0, 2, 1, '2024-03-05'),
(535, 'extracat-535', 'subcat-107', 'Clip board', 'https://localhost:3000/images/categories/1699293317810_398593799.webp', 0, 2, 1, '2024-03-05'),
(536, 'extracat-536', 'subcat-107', 'Paper', 'https://localhost:3000/images/categories/1699382278302_743185638.webp', 0, 2, 1, '2024-03-05'),
(537, 'extracat-537', 'subcat-107', 'Marker', 'https://localhost:3000/images/categories/1699405389962_217057045.webp', 0, 2, 1, '2024-03-05'),
(538, 'extracat-538', 'subcat-107', 'Sharpener', 'https://localhost:3000/images/categories/1699405360152_6340455.webp', 0, 2, 1, '2024-03-05'),
(539, 'extracat-539', 'subcat-107', 'Office Stationery', 'https://localhost:3000/images/categories/1699406493176_187637451.webp', 0, 2, 1, '2024-03-05'),
(540, 'extracat-540', 'subcat-107', 'Eraser', 'https://localhost:3000/images/categories/1699407188675_593543835.webp', 0, 2, 1, '2024-03-05'),
(541, 'extracat-541', 'subcat-114', 'Teacher', 'https://localhost:3000/images/categories/1699512831499_883156070.webp', 0, 2, 1, '2024-03-05'),
(542, 'extracat-542', 'subcat-114', 'School ', 'https://localhost:3000/images/categories/1699513508128_885283153.webp', 0, 2, 1, '2024-03-05'),
(543, 'extracat-543', 'subcat-114', 'College & University', 'https://localhost:3000/images/categories/1699517392687_147509115.webp', 0, 2, 1, '2024-03-05'),
(544, 'extracat-544', 'subcat-114', 'Other Education Services', 'https://localhost:3000/images/categories/1699517784263_506738219.webp', 0, 2, 1, '2024-03-05'),
(545, 'extracat-545', 'subcat-115', 'Doctor ', 'https://localhost:3000/images/categories/1699520636095_688804272.webp', 0, 2, 1, '2024-03-05'),
(546, 'extracat-546', 'subcat-115', 'Medical Test', 'https://localhost:3000/images/categories/1699521241728_611261179.webp', 0, 2, 1, '2024-03-05'),
(547, 'extracat-547', 'subcat-115', 'Other Hospital Services', 'https://localhost:3000/images/categories/1699542443337_375932774.webp', 0, 2, 1, '2024-03-05'),
(548, 'extracat-548', 'subcat-105', 'Metal Building Materials', 'https://localhost:3000/images/categories/1700073911179_238918533.webp', 0, 2, 1, '2024-03-05'),
(549, 'extracat-549', 'subcat-112', 'Hotel Booking', 'https://localhost:3000/images/categories/1699779955768_996685446.webp', 0, 2, 1, '2024-03-05'),
(550, 'extracat-550', 'subcat-112', 'Resort Booking', 'https://localhost:3000/images/categories/1699766463486_681035312.webp', 0, 2, 1, '2024-03-05'),
(551, 'extracat-551', 'subcat-111', 'Rent a Car', 'https://localhost:3000/images/categories/1699786621910_697429196.webp', 0, 2, 1, '2024-03-05'),
(552, 'extracat-552', 'subcat-111', 'Rent a truck', 'https://localhost:3000/images/categories/1699793555550_141063254.webp', 0, 2, 1, '2024-03-05'),
(553, 'extracat-553', 'subcat-111', 'Rent a motorcycle', 'https://localhost:3000/images/categories/1699794538850_723627093.webp', 0, 2, 1, '2024-03-05'),
(554, 'extracat-554', 'subcat-111', 'Other rental vehicles', 'https://localhost:3000/images/categories/1699803022217_185759665.webp', 0, 2, 1, '2024-03-05'),
(555, 'extracat-555', 'subcat-113', 'House Rent', 'https://localhost:3000/images/categories/1699804870837_508076768.webp', 0, 2, 1, '2024-03-05'),
(556, 'extracat-556', 'subcat-113', 'Office rent', 'https://localhost:3000/images/categories/1699806314727_250492803.webp', 0, 2, 1, '2024-03-05'),
(558, 'extracat-558', 'subcat-120', 'Tour Packages', 'https://localhost:3000/images/categories/1699975776446_88945990.webp', 0, 2, 1, '2024-03-05'),
(559, 'extracat-559', 'subcat-120', 'Travel Services', 'https://localhost:3000/images/categories/1699976141130_988901438.webp', 0, 2, 1, '2024-03-05'),
(561, 'extracat-561', 'subcat-105', 'Plastic Building Materials', 'https://localhost:3000/images/categories/1700064675469_578829664.webp', 0, 2, 1, '2024-03-05'),
(562, 'extracat-562', 'subcat-105', 'Construction Raw Materials', 'https://localhost:3000/images/categories/1700278304099_816615070.webp', 0, 2, 1, '2024-03-05'),
(563, 'extracat-563', 'subcat-110', 'Electrical Ballasts', 'https://localhost:3000/images/categories/1700636429504_50972926.webp', 0, 2, 1, '2024-03-05'),
(564, 'extracat-564', 'subcat-110', 'Breakers, Load Centers & Fuses', 'https://localhost:3000/images/categories/1700636669928_797028700.webp', 0, 2, 1, '2024-03-05'),
(565, 'extracat-565', 'subcat-110', 'Electrical Cord', 'https://localhost:3000/images/categories/1700636917137_464000721.webp', 0, 2, 1, '2024-03-05'),
(566, 'extracat-566', 'subcat-110', 'Adapters & Multi-Outlets', 'https://localhost:3000/images/categories/1700678850262_242768558.webp', 0, 2, 1, '2024-03-05'),
(567, 'extracat-567', 'subcat-110', 'Doorbells', 'https://localhost:3000/images/categories/1700680238757_935609776.webp', 0, 2, 1, '2024-03-05'),
(568, 'extracat-568', 'subcat-110', 'Electrical Brackets', 'https://localhost:3000/images/categories/1700681959148_915468866.webp', 0, 2, 1, '2024-03-05'),
(569, 'extracat-569', 'subcat-110', 'Electrical Conduits ', 'https://localhost:3000/images/categories/1700682516185_588729569.webp', 0, 2, 1, '2024-03-05'),
(570, 'extracat-570', 'subcat-110', 'Electrical Conduit Fittings', 'https://localhost:3000/images/categories/1700682665803_798259221.webp', 0, 2, 1, '2024-03-05'),
(571, 'extracat-571', 'subcat-110', 'Electrical Boxes', 'https://localhost:3000/images/categories/1700751201468_382713082.webp', 0, 2, 1, '2024-03-05'),
(572, 'extracat-572', 'subcat-110', 'Electrical Connectors', 'https://localhost:3000/images/categories/1700753891662_855607915.webp', 0, 2, 1, '2024-03-05'),
(573, 'extracat-573', 'subcat-110', 'Electrical Wire', 'https://localhost:3000/images/categories/1700754067967_645572023.webp', 0, 2, 1, '2024-03-05'),
(574, 'extracat-574', 'subcat-110', 'Electric Motors', 'https://localhost:3000/images/categories/1700754543827_650389176.webp', 0, 2, 1, '2024-03-05'),
(575, 'extracat-575', 'subcat-110', 'Home Automation Devices', 'https://localhost:3000/images/categories/1700755455584_887951955.webp', 0, 2, 1, '2024-03-05');
INSERT INTO `extra_cat` (`id`, `extra_cat_id`, `extra_cat_ref`, `extra_cat_name`, `extra_cat_image_url`, `popular_cat_value`, `retailer_deduct_percentage`, `manufacturer_deduct_percentage`, `last_update`) VALUES
(576, 'extracat-576', 'subcat-110', 'Light Sockets', 'https://localhost:3000/images/categories/1700755689551_70023099.webp', 0, 2, 1, '2024-03-05'),
(577, 'extracat-577', 'subcat-110', 'Electric Accessories', 'https://localhost:3000/images/categories/1700756368930_391320418.webp', 0, 2, 1, '2024-03-05'),
(578, 'extracat-578', 'subcat-110', 'Electric Plugs', 'https://localhost:3000/images/categories/1700756649756_946375076.webp', 0, 2, 1, '2024-03-05'),
(579, 'extracat-579', 'subcat-110', 'Recessed Light Fixtures', 'https://localhost:3000/images/categories/1700817070167_193307730.webp', 0, 2, 1, '2024-03-05'),
(580, 'extracat-580', 'subcat-110', 'Electrical Dimmers', 'https://localhost:3000/images/categories/1700826888923_472012101.webp', 0, 2, 1, '2024-03-05'),
(581, 'extracat-581', 'subcat-110', 'Electrical Switches', 'https://localhost:3000/images/categories/1700827190225_239109328.webp', 0, 2, 1, '2024-03-05'),
(582, 'extracat-582', 'subcat-110', 'Electrical Testers', 'https://localhost:3000/images/categories/1700827851513_281132937.webp', 0, 2, 1, '2024-03-05'),
(583, 'extracat-583', 'subcat-110', 'Electrical Timers', 'https://localhost:3000/images/categories/1700828657454_29382645.webp', 0, 2, 1, '2024-03-05'),
(584, 'extracat-584', 'subcat-110', 'Electrical Work Tools', 'https://localhost:3000/images/categories/1700828942616_239988385.webp', 0, 2, 1, '2024-03-05'),
(585, 'extracat-585', 'subcat-110', 'Power Converters', 'https://localhost:3000/images/categories/1700831265291_382586998.webp', 0, 2, 1, '2024-03-05'),
(586, 'extracat-586', 'subcat-108', 'Hardware Adhesives', 'https://localhost:3000/images/categories/1700838737536_193624775.webp', 0, 2, 1, '2024-03-05'),
(587, 'extracat-587', 'subcat-108', 'Bathroom Hardware', 'https://localhost:3000/images/categories/1700838077990_950263618.webp', 0, 2, 1, '2024-03-05'),
(588, 'extracat-588', 'subcat-108', 'Hardware Sealers', 'https://localhost:3000/images/categories/1700838452412_740478703.webp', 0, 2, 1, '2024-03-05'),
(589, 'extracat-589', 'subcat-108', 'Braces & Joist Hangers', 'https://localhost:3000/images/categories/1700838664573_849191021.webp', 0, 2, 1, '2024-03-05'),
(590, 'extracat-590', 'subcat-108', 'Cabinet Hardware', 'https://localhost:3000/images/categories/1700839092283_92328906.webp', 0, 2, 1, '2024-03-05'),
(591, 'extracat-591', 'subcat-108', 'Door Locks ', 'https://localhost:3000/images/categories/1700848439757_563098932.webp', 0, 2, 1, '2024-03-05'),
(592, 'extracat-592', 'subcat-108', 'Flash & Headlights', 'https://localhost:3000/images/categories/1700840139359_856477549.webp', 0, 2, 1, '2024-03-05'),
(593, 'extracat-593', 'subcat-108', 'Furniture Hardware', 'https://localhost:3000/images/categories/1700840822838_185950079.webp', 0, 2, 1, '2024-03-05'),
(594, 'extracat-594', 'subcat-108', 'Gate Hardware', 'https://localhost:3000/images/categories/1700841627786_365853627.webp', 0, 2, 1, '2024-03-05'),
(595, 'extracat-595', 'subcat-108', 'Grommets', 'https://localhost:3000/images/categories/1700841971958_614208565.webp', 0, 2, 1, '2024-03-05'),
(596, 'extracat-596', 'subcat-108', 'House Numbers, Plaques & Signs', 'https://localhost:3000/images/categories/1700842575446_99081951.webp', 0, 2, 1, '2024-03-05'),
(597, 'extracat-597', 'subcat-108', 'Mailboxes & Accessories', 'https://localhost:3000/images/categories/1700843309470_970358906.webp', 0, 2, 1, '2024-03-05'),
(598, 'extracat-598', 'subcat-108', 'Fasteners & Snaps', 'https://localhost:3000/images/categories/1700844398009_903028320.webp', 0, 2, 1, '2024-03-05'),
(599, 'extracat-599', 'subcat-108', 'Padlocks & Hasps', 'https://localhost:3000/images/categories/1700848143464_260092862.webp', 0, 2, 1, '2024-03-05'),
(600, 'extracat-600', 'subcat-108', 'Hanging Hardware', 'https://localhost:3000/images/categories/1700848725383_925328403.webp', 0, 2, 1, '2024-03-05'),
(601, 'extracat-601', 'subcat-108', 'Hardware Plugs', 'https://localhost:3000/images/categories/1700848971433_791549768.webp', 0, 2, 1, '2024-03-05'),
(602, 'extracat-602', 'subcat-108', 'Shelf Brackets & Supports', 'https://localhost:3000/images/categories/1700849761239_287277512.webp', 0, 2, 1, '2024-03-05'),
(603, 'extracat-603', 'subcat-104', 'Industrial Machinery', 'https://localhost:3000/images/categories/1702407620301_655897502.webp', 0, 2, 1, '2024-03-05'),
(604, 'extracat-604', 'subcat-104', 'Industrial Machine Accessories', 'https://localhost:3000/images/categories/1702407389328_693159698.webp', 0, 2, 1, '2024-03-05'),
(606, 'extracat-606', 'subcat-97', 'test', 'https://localhost:3000/images/categories/1709293206706_925770638.webp', 0, 2, 1.5, '2024-03-05'),
(607, 'extracat-607', 'subcat-101', 'dawda', 'https://localhost:3000/images/categories/1709293425813_330118192.webp', 0, 2, 0.5, '2024-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_product`
--

CREATE TABLE `favourite_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_cat`
--

CREATE TABLE `main_cat` (
  `id` int(11) NOT NULL,
  `main_cat_id` varchar(255) NOT NULL,
  `main_cat_name` varchar(255) NOT NULL,
  `main_cat_image_url` varchar(255) DEFAULT NULL,
  `popular_cat_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_cat`
--

INSERT INTO `main_cat` (`id`, `main_cat_id`, `main_cat_name`, `main_cat_image_url`, `popular_cat_value`) VALUES
(10, 'maincat-10', 'Agriculture & Grocery', NULL, NULL),
(11, 'maincat-11', 'Medicine & Surgical', NULL, NULL),
(12, 'maincat-12', 'Food & Restaurant', NULL, NULL),
(13, 'maincat-13', 'Clothing', NULL, NULL),
(14, 'maincat-14', 'Shoes', NULL, NULL),
(15, 'maincat-15', 'Home , Kitchen & Garden', NULL, NULL),
(17, 'maincat-17', 'Health & Beauty ', NULL, NULL),
(18, 'maincat-18', 'Electronics', NULL, NULL),
(19, 'maincat-19', 'Business & Home Improvement', NULL, NULL),
(20, 'maincat-20', 'Jewelry , Eyewear & Watches ', NULL, NULL),
(26, 'maincat-26', 'Luggage & Bags', NULL, NULL),
(36, 'maincat-36', 'Sports & Toys', NULL, NULL),
(41, 'maincat-41', 'Business Services', NULL, NULL),
(69, 'maincat-69', 'Books & Stationery', NULL, NULL),
(70, 'maincat-70', 'Vehicle & Parts ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mycustomers`
--

CREATE TABLE `mycustomers` (
  `myCustomerID` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `customerUserID` int(11) NOT NULL,
  `earning` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `placed_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `request_review` int(11) NOT NULL,
  `in_cart` int(11) NOT NULL,
  `seller_confirm` int(11) NOT NULL,
  `is_paid` int(11) NOT NULL DEFAULT 0,
  `is_areaShop` int(11) NOT NULL,
  `deliveryCharge` double DEFAULT 0,
  `address` varchar(250) DEFAULT NULL,
  `return_reason` varchar(250) NOT NULL DEFAULT 'No Reason Said'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_total_price` double NOT NULL,
  `note_to_user` varchar(255) DEFAULT NULL,
  `stock_out` int(11) NOT NULL,
  `deduct_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `otp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp_code` varchar(250) NOT NULL,
  `generate_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `history_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `type` int(11) NOT NULL,
  `date` date NOT NULL,
  `order_id` int(11) NOT NULL,
  `ref_user_id` int(11) DEFAULT NULL,
  `sent_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `method_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `method_name`) VALUES
(1, 'Bkash'),
(2, 'Nagad');

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `type_name`) VALUES
(1, 'shop_product'),
(2, 'reference'),
(3, 'withdraw'),
(4, 'sent money');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_short_des` varchar(255) NOT NULL,
  `product_details_des` longtext NOT NULL,
  `product_cat_id` varchar(255) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `sell_count` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `admin_published` tinyint(1) NOT NULL DEFAULT 0,
  `is_branded` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_short_des`, `product_details_des`, `product_cat_id`, `seller_id`, `sell_count`, `quantity`, `status`, `admin_published`, `is_branded`) VALUES
(3, ' Bignay fruit ', 0, ' Bignay fruit ', '', 'extracat-462', 2, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_faq`
--

CREATE TABLE `product_faq` (
  `faq_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_url` varchar(255) NOT NULL,
  `featured_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `product_image_url`, `featured_image`) VALUES
(5, 3, 'https://localhost:3000/images/products/1691038903452_381520508.webp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_template`
--

CREATE TABLE `product_template` (
  `temp_id` int(11) NOT NULL,
  `temp_name` varchar(200) NOT NULL,
  `temp_short_des` varchar(250) NOT NULL,
  `extra_cat_id` varchar(250) NOT NULL,
  `temp_long_des` longtext NOT NULL,
  `temp_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_template`
--

INSERT INTO `product_template` (`temp_id`, `temp_name`, `temp_short_des`, `extra_cat_id`, `temp_long_des`, `temp_price`) VALUES
(24, ' Atemoya fruit ', ' Atemoya fruit ', 'extracat-462', '', 0),
(25, ' Avocado fruit ', ' Avocado fruit ', 'extracat-462', '', 0),
(29, ' Bignay fruit ', ' Bignay fruit ', 'extracat-462', '', 0),
(30, ' Blackberry fruit ', ' Blackberry fruit ', 'extracat-462', '', 0),
(31, 'Blood orange fruit ', 'Blood orange fruit ', 'extracat-462', '', 0),
(32, 'Blueberry fruit ', 'Blueberry fruit ', 'extracat-462', '', 0),
(33, ' Boysenberry fruit ', ' Boysenberry fruit ', 'extracat-462', '', 0),
(35, ' Bread fruit ', ' Breadfruit ', 'extracat-462', '', 0),
(37, ' Cacao fruit ', ' Cacao fruit ', 'extracat-462', '', 0),
(38, ' Cactus pear fruit ', ' Cactus pear fruit ', 'extracat-462', '', 0),
(39, 'Canary Melon fruit ', 'Canary Melon fruit ', 'extracat-462', '', 0),
(40, ' Carambola fruit ', ' Carambola fruit ', 'extracat-462', '', 0),
(41, ' Cherry fruit ', ' Cherry fruit ', 'extracat-462', '', 0),
(43, 'Clementine fruit ', 'Clementine fruit ', 'extracat-462', '', 0),
(44, 'Cloudberry fruit ', 'Cloudberry fruit ', 'extracat-462', '', 0),
(45, ' Coconut ', ' Coconut ', 'extracat-462', '', 0),
(47, 'Banana melon fruit ', 'Banana melon fruit ', 'extracat-462', '<p>Banana melon fruit&nbsp;</p>', 0),
(48, ' Cranberry ', ' Cranberry fruit ', 'extracat-462', '', 0),
(49, ' Date ', ' Date fruit ', 'extracat-462', '', 0),
(50, ' Dragon ', ' Dragon fruit ', 'extracat-462', '', 0),
(51, ' Dried fig ', ' Dried fig fruit ', 'extracat-462', '', 0),
(53, 'Duku ', 'Duku fruit ', 'extracat-462', '', 0),
(55, ' Eggfruit ', ' Eggfruit ', 'extracat-462', '', 0),
(56, 'Elephant apple ', 'Elephant apple fruit ', 'extracat-462', '', 0),
(57, 'Emblica ', 'Emblica fruit ', 'extracat-462', '', 0),
(58, ' Etrog', ' Etrog fruit', 'extracat-462', '', 0),
(59, ' Feijoa ', ' Feijoa fruit ', 'extracat-462', '', 0),
(60, ' Fig ', ' Fig fruit', 'extracat-462', '', 0),
(61, ' Fuyu persimmon ', ' Fuyu persimmon fruit ', 'extracat-462', '', 0),
(62, 'Gac ', 'Gac fruit ', 'extracat-462', '', 0),
(63, 'Genip ', 'Genip fruit ', 'extracat-462', '', 0),
(65, ' Grape fruit ', ' Grape fruit ', 'extracat-462', '', 0),
(66, 'Grape\'s fruit ', 'Grape\'s fruit ', 'extracat-462', '', 0),
(67, ' Guava ', ' Guava fruit ', 'extracat-462', '', 0),
(68, ' Hala fruit ', ' Hala fruit ', 'extracat-462', '', 0),
(69, 'Hawthorn berry fruit ', 'Hawthorn berry fruit ', 'extracat-462', '', 0),
(70, ' Hazelnut fruit ', ' Hazelnut fruit ', 'extracat-462', '', 0),
(71, 'Hedge apple fruit ', 'Hedge apple fruit ', 'extracat-462', '', 0),
(72, ' Hog plum fruit 1000gram ', ' Hog plum fruit ', 'extracat-462', '', 0),
(73, 'Olives fruits ', 'Green olives fruits ', 'extracat-462', '', 0),
(74, ' Horned melon fruit 1000gram', ' Horned melon fruit 1000gram', 'extracat-462', '', 0),
(75, 'Jabuticaba fruit 1000gram', 'Jabuticaba fruit 1000gram', 'extracat-462', '', 0),
(76, ' Jackfruit 1pies', ' Jackfruit 1pies', 'extracat-462', '', 0),
(77, 'Jambul fruit 1000gram', 'Jambul fruit 1000gram', 'extracat-462', '', 0),
(78, ' Java Apple fruit 1000gram', ' Java Apple fruit 1000gram', 'extracat-462', '', 0),
(79, 'Jocote fruit 1000gram', 'Jocote fruit 1000gram', 'extracat-462', '', 0),
(80, ' Jujube fruit 1000gram', ' Jujube fruit 1000gram', 'extracat-462', '', 0),
(81, ' Kaffir Lime fruit 1000gram', ' Kaffir Lime fruit 1000gram', 'extracat-462', '', 0),
(82, 'Kiwi fruit 1000gram', 'Kiwi fruit 1000gram', 'extracat-462', '', 0),
(83, 'Kumquat fruit 1000gram', 'Kumquat fruit 1000gram', 'extracat-462', '', 0),
(84, ' Lakoocha fruit 1000', ' Lakoocha fruit 1000', 'extracat-462', '', 0),
(85, 'Lemon fruit 4 pies', 'Lemon fruit 4 pies', 'extracat-462', '', 0),
(86, 'Longan fruit 1000gram', 'Longan fruit 1000gram', 'extracat-462', '', 0),
(87, ' Loquat fruit 1000gram', ' Loquat fruit 1000gram', 'extracat-462', '', 0),
(88, ' Lucuma fruit 1000gram', ' Lucuma fruit 1000gram', 'extracat-462', '', 0),
(89, 'Lychee fruit 100pies', 'Lychee fruit 100pies', 'extracat-462', '', 0),
(90, 'Mango fruit 1000gram', 'Mango fruit 1000gram', 'extracat-462', '', 0),
(91, ' Mangosteen fruit 1000gram', ' Mangosteen fruit 1000gram', 'extracat-462', '', 0),
(92, ' Melon fruit 1pies', ' Melon fruit 1pies', 'extracat-462', '', 0),
(93, ' Mountain Ash Berry fruit 1000gram', ' Mountain Ash Berry fruit 1000gram', 'extracat-462', '', 0),
(94, 'Nance Fruit ', 'Nance Fruit ', 'extracat-462', '', 0),
(95, 'Naranjilla fruit 1000gram', 'Naranjilla fruit 1000gram', 'extracat-462', '', 0),
(96, ' Nectarine fruit 1000gram', ' Nectarine fruit 1000gram', 'extracat-462', '', 0),
(97, ' Neem fruit 1000gram', ' Neem fruit 1000gram', 'extracat-462', '', 0),
(98, 'Nungu Palm Fruit 4pies', 'Nungu Palm Fruit 4pies', 'extracat-462', '', 0),
(99, ' Olive fruit 1000gram', ' Olive fruit 1000gram', 'extracat-462', '', 0),
(100, 'Orange fruit 1000gram', 'Orange fruit 1000gram', 'extracat-462', '', 0),
(101, 'Papaya fruit 1pies', 'Papaya fruit 1pies', 'extracat-462', '', 0),
(102, ' Passion fruit 1000gram', ' Passion fruit 1000gram', 'extracat-462', '', 0),
(103, ' Pawpaw fruit 1000gram', ' Pawpaw fruit 1000gram', 'extracat-462', '', 0),
(104, 'Peach fruit 1000gram', 'Peach fruit 1000gram', 'extracat-462', '', 0),
(105, ' Pear fruit 1000gram', ' Pear fruit 1000gram', 'extracat-462', '', 0),
(106, 'Pepino fruit 1000gram', 'Pepino fruit 1000gram', 'extracat-462', '', 0),
(107, 'Physalis fruit 1000gram', 'Physalis fruit 1000gram', 'extracat-462', '', 0),
(108, ' Pineapple fruit 1pies', ' Pineapple fruit 1pies', 'extracat-462', '', 0),
(109, ' Pineberry fruit 1000gram', ' Pineberry fruit 1000gram', 'extracat-462', '', 0),
(110, ' Plum fruit 1000gram', ' Plum fruit 1000gram', 'extracat-462', '', 0),
(111, ' Pomegranate fruit 1000gram', ' Pomegranate fruit 1000gram', 'extracat-462', '', 0),
(112, ' Rambutan fruit 1000gram', ' Rambutan fruit 1000gram', 'extracat-462', '', 0),
(113, 'Raspberry fruit 1000gram', 'Raspberry fruit 1000gram', 'extracat-462', '', 0),
(114, ' Salak fruit 1000gram', ' Salak fruit 1000gram', 'extracat-462', '', 0),
(115, ' Sapodilla fruit 1000gram', ' Sapodilla fruit 1000gram', 'extracat-462', '', 0),
(116, 'Soursop fruit 1000gram', 'Soursop fruit 1000gram', 'extracat-462', '', 0),
(117, 'Strawberry fruit 1000gram', 'Strawberry fruit 1000gram', 'extracat-462', '', 0),
(118, ' Tamarillo fruit 1000gram', ' Tamarillo fruit 1000gram', 'extracat-462', '', 0),
(119, ' Tamarind fruit 1000gram', ' Tamarind fruit 1000gram', 'extracat-462', '', 0),
(120, ' Tangerine fruit 1000gram', ' Tangerine fruit 1000gram', 'extracat-462', '', 0),
(121, ' Tomato fruit 1000gram', ' Tomato fruit 1000gram', 'extracat-462', '', 0),
(122, 'Tomato berry fruit 1000gram', 'Tomato berry fruit 1000gram', 'extracat-462', '', 0),
(123, ' Torpedo fruit 1000gram', ' Torpedo fruit 1000gram', 'extracat-462', '', 0),
(124, 'Watermelon fruit 1000gram', 'Watermelon fruit 1000gram', 'extracat-462', '', 0),
(125, ' Wood apple fruit 1000gram', ' Wood apple fruit 1000gram', 'extracat-462', '', 0),
(126, ' Zapote fruit 1000gram', ' Zapote fruit 1000gram', 'extracat-462', '', 0),
(127, ' Artichokes ', ' Artichokes ', 'extracat-461', '', 0),
(128, ' Arugula ', ' Arugula ', 'extracat-461', '', 0),
(129, ' Asparagus', ' Asparagus ', 'extracat-461', '', 0),
(130, ' Bamboo Shoots ', ' Bamboo Shoots ', 'extracat-461', '', 0),
(132, ' Beets ', ' Beets ', 'extracat-461', '', 0),
(133, 'Beans ', 'Beans ', 'extracat-461', '', 0),
(134, ' Bitter Gourd ', ' Bitter Gourd ', 'extracat-461', '', 0),
(135, ' Black Beans ', ' Black Beans ', 'extracat-461', '', 0),
(136, ' Bok Choy ', ' Bok Choy ', 'extracat-461', '', 0),
(137, 'Eggplant ', 'Eggplant ', 'extracat-461', '', 0),
(138, ' Broccoli ', ' Broccoli ', 'extracat-461', '', 0),
(139, ' Brussels Sprouts ', ' Brussels Sprouts ', 'extracat-461', '', 0),
(140, ' Cabbages ', ' Cabbages', 'extracat-461', '', 0),
(141, ' Capsicum ', ' Capsicum ', 'extracat-461', '', 0),
(142, ' Carrots', ' Carrots ', 'extracat-461', '', 0),
(143, ' Cauliflower ', ' Cauliflower ', 'extracat-461', '', 0),
(144, ' Celery', ' Celery', 'extracat-461', '', 0),
(146, ' Collard Greens ', ' Collard Greens ???? ', 'extracat-461', '', 0),
(147, ' Corn ', ' Corn ???? ', 'extracat-461', '', 0),
(148, ' Cucumbers ', ' Cucumbers', 'extracat-461', '', 0),
(149, ' Dandelion Greens', ' Dandelion Greens', 'extracat-461', '', 0),
(150, ' Endive', ' Endive', 'extracat-461', '', 0),
(151, ' Escarole', ' Escarole', 'extracat-461', '', 0),
(152, ' Fennel', ' Fennel', 'extracat-461', '', 0),
(153, ' Garlic', ' Garlic', 'extracat-461', '', 0),
(154, 'Ginger', 'Ginger', 'extracat-461', '', 0),
(155, ' Jicama', ' Jicama', 'extracat-461', '', 0),
(156, ' Kale', ' Kale', 'extracat-461', '', 0),
(157, ' Kohlrabi', ' Kohlrabi', 'extracat-461', '', 0),
(158, ' Lady finger', ' Lady finger', 'extracat-461', '', 0),
(159, ' Leeks', ' Leeks', 'extracat-461', '', 0),
(160, 'Lettuce', 'Lettuce', 'extracat-461', '', 0),
(161, ' Lima Beans', ' Lima Beans', 'extracat-395', '<p>&nbsp;Lima Beans</p>', 0),
(162, ' Mushroom', ' Mushroom', 'extracat-395', '<p>&nbsp;Mushroom</p>', 0),
(163, ' Mustard Greens', ' Mustard Greens', 'extracat-395', '<p>&nbsp;Mustard Greens</p>', 0),
(164, 'Navy Beans', 'Navy Beans', 'extracat-395', '<p>Navy Beans</p>', 0),
(165, ' Nopales', ' Nopales', 'extracat-461', '', 0),
(166, ' Onions', ' Onions', 'extracat-461', '', 0),
(167, ' Parsnips', ' Parsnips', 'extracat-461', '', 0),
(168, ' Peas', ' Peas', 'extracat-461', '', 0),
(169, ' Potatoes', ' Potatoes', 'extracat-461', '', 0),
(170, ' Pumpkins', ' Pumpkins', 'extracat-461', '', 0),
(171, ' Radishes', ' Radishes', 'extracat-461', '', 0),
(172, 'Rhubarb', 'Rhubarb', 'extracat-461', '', 0),
(173, ' Rutabaga', ' Rutabaga', 'extracat-461', '', 0),
(174, ' Spinach', ' Spinach', 'extracat-461', '', 0),
(175, 'Swiss Chard', 'Swiss Chard', 'extracat-461', '', 0),
(176, 'Tomatoes', 'Tomatoes', 'extracat-461', '', 0),
(177, 'Upland Cress', 'Upland Cress', 'extracat-461', '', 0),
(178, 'Watercress ', 'Watercress', 'extracat-461', '', 0),
(180, 'Fresh Whole Yuca', 'Fresh Whole Yuca', 'extracat-461', '', 20),
(182, 'Electronic Body Massager ', 'Electronic Pulse Massager/tens Ems Trainer Body Massager ', 'extracat-280', '', 0),
(186, 'Chia Seeds', 'Organic Black Chia Seeds', 'extracat-525', '<p><span style=\"color: rgb(15, 17, 17);\">✔️NUTRITION BOOST: Chia seeds are packed with essential nutrients and are perfect for smoothies.</span></p><p><span style=\"color: rgb(15, 17, 17);\">✔️CERTIFIED ORGANIC: Food to Live Organic Chia Seeds are 100% free of any contaminants.</span></p><p><span style=\"color: rgb(15, 17, 17);\">✔️IMPROVED DIGESTIVE HEALTH: Fiber from chia seeds helps keep your gastrointestinal tract healthy.</span></p><p><span style=\"color: rgb(15, 17, 17);\">✔️HEART HEALTH SUPPORT: Our non-GMO Chia Seeds promote heart health by lowering cholesterol.</span></p><p><span style=\"color: rgb(15, 17, 17);\">✔️EFFECTIVE BODY WEIGHT MANAGEMENT: A diet including chia seeds can help you to to shed extra pounds faster.</span></p><p><br></p>', 0),
(187, 'Banana Small Size', 'Banana', 'extracat-462', '<p>Banana Small Size</p>', 0),
(188, 'Banana Big size', 'Banana Big size', 'extracat-462', '<p>﻿হৃৎপিণ্ডের মতো দেখতে এক প্রকার বাদাম জাতীয় ফল আখরোট। স্মৃতিশক্তি ও মস্তিষ্কের কার্যকারিতা বাড়াতে এর তুলনা নেই। আখরোটে পর্যাপ্ত পরিমাণে ফাইবার, ভিটামিন, কার্বোহাইড্রেট, প্রোটিন এবং আয়রন থাকায় এটি অন্যতম সুপারফুডে পরিণত হয়েছে। পুষ্টিবিদদের মতে, নিয়মিত আখরোট খেলে নানা উপকারিতা পাওয়াআখরোট খাওয়ার কোনো নিয়ম নেই। দৈনন্দিন খাদ্যতালিকায় এই খাবারটি রাখলেই স্বাস্থ্য উপকারিতা পাওয়া যায়। তবে পুষ্টিবিদদের মতে, সারারাত ভিজিয়ে রেখে সকালে আখরোট খেলে বেশি উপকারিতা মেলে। এজন্য রাতে ২ থেকে ৪ টি আখরোট ভিজিয়ে রেখে সকালে খেতে পারেন।&nbsp;নিয়মিত আখরোট খেলে যেসব উপকারিতা পাওয&nbsp;<strong>ডায়াবেটিসের জন্য ভাল</strong>&nbsp;&nbsp;: অনেক গবেষণায় দেখা গেছে, প্রতিদিন আখরোট খেলে ডায়াবেটিস নিয়ন্ত্রণে থাক। টাইপ টু ডায়াবেটিস রোগীদের জন্য এটি বেশ উপকার&nbsp;<strong>ক্যান্সার নিয়ন্ত্রণ করে</strong>&nbsp;: অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ আখরোট শরীরে ক্যান্সার সেলের বৃদ্ধি প্রতিরোধ করে।</p><p><br></p><p><strong>মানসিক চাপ কমায়</strong>&nbsp;: ওমেগা থ্রি ফ্যাটি অ্যাসিড সমৃদ্ধ আখরোট মানসিক চাপ ও হতাশা কমাতে ভূমিকা রাখে। নিয়মিত আখরোট খেলে মুড ভালো থাকে।<strong>ওজন কমায</strong>&nbsp;&nbsp;: আখরোটে পর্যাপ্ত পরিমাণে ক্যালসিয়াম, পটাশিয়াম, আয়রন, কপার ও জিঙ্ক রয়েছে। নিয়মিত আখরোট খেলে বিপাক ভালো হয় যা ওজন কমাতে সাহায্য করে। এছাড়া আখরোটে পর্যাপ্ত পরিমাণে ফাইবার থাকায় এটি দীর্ঘ সময় পেট ভরা অনুভূত হতে সাহায্য করে। ফলে বেশি খাওয়ার প্রব&nbsp;<strong>ঘুম ভালো করে</strong>&nbsp;&nbsp;: আখরোট বিপাকক্রিয়া উন্নত করায় ভালো ঘুমে সাহায্য করে। সকালে ঘুম থেকে উঠে এবং রাতে ঘুমাতে যাওয়ার আগে আখরোট খেলে ভালো ঘুম হয&nbsp;<strong>হাড় ও দাতেঁর স্বাস্থ্য উন্নত কর</strong>&nbsp;&nbsp;: স্বাস্থ্যকর ফ্যাটি অ্যাসিড এবং ম্যাগনেসিয়াম থাকায় আখরোট হাড় ও দাঁতের স্বাস্থ্য সুরক্ষা করে&nbsp;<strong>কোলেস্টেরল কমায</strong>&nbsp;&nbsp;: নিয়মিত আখরোট খেলে খারাপ কোলেস্টেরলের পরিমাণ কমে। এতে হৃৎপিণ্ড সুস্থ থাকে। সূত্র : টাইমস অব ইন্ডিয়া&nbsp;</p><p><br></p>', 0),
(189, 'Tractor (New Holland-TT70 UG Super)', '\r\nHorse Power	65 HP\r\nNumber of Cylinder	4 Cylinder\r\nExtra Feature	2 WD, UG Gear Box, Power Steering With Hydraulic', 'extracat-522', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_temp_images`
--

CREATE TABLE `product_temp_images` (
  `id` int(11) NOT NULL,
  `product_temp_id` int(11) NOT NULL,
  `temp_image_url` varchar(250) NOT NULL,
  `featured_image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_temp_images`
--

INSERT INTO `product_temp_images` (`id`, `product_temp_id`, `temp_image_url`, `featured_image`) VALUES
(37, 24, 'https://localhost:3000/images/products/1691038138559_941820227.webp', 1),
(38, 25, 'https://localhost:3000/images/products/1691038383875_397736217.webp', 1),
(42, 29, 'https://localhost:3000/images/products/1691038903452_381520508.webp', 1),
(43, 30, 'https://localhost:3000/images/products/1691039112914_801043591.webp', 1),
(44, 31, 'https://localhost:3000/images/products/1691039206087_870474766.webp', 1),
(45, 32, 'https://localhost:3000/images/products/1691039279227_355922614.webp', 1),
(46, 33, 'https://localhost:3000/images/products/1691039370196_82911440.webp', 1),
(48, 35, 'https://localhost:3000/images/products/1691039901226_86153195.webp', 1),
(50, 37, 'https://localhost:3000/images/products/1691040125835_47818424.webp', 1),
(51, 38, 'https://localhost:3000/images/products/1691040384414_478149283.webp', 1),
(52, 39, 'https://localhost:3000/images/products/1691040502407_883373168.webp', 1),
(53, 40, 'https://localhost:3000/images/products/1691040624184_895986258.webp', 1),
(54, 41, 'https://localhost:3000/images/products/1691040925969_768293825.webp', 1),
(56, 43, 'https://localhost:3000/images/products/1691041308949_526909110.webp', 1),
(57, 44, 'https://localhost:3000/images/products/1691041455948_702349342.webp', 1),
(58, 45, 'https://localhost:3000/images/products/1691042703734_722623325.webp', 1),
(60, 47, 'https://localhost:3000/images/products/1691042894288_375014518.webp', 1),
(61, 48, 'https://localhost:3000/images/products/1691043090956_233490908.webp', 1),
(62, 49, 'https://localhost:3000/images/products/1691043217360_450813502.webp', 1),
(63, 50, 'https://localhost:3000/images/products/1691043375551_27195604.webp', 1),
(64, 51, 'https://localhost:3000/images/products/1691043512187_13635394.webp', 1),
(66, 53, 'https://localhost:3000/images/products/1691043633983_904723921.webp', 1),
(68, 55, 'https://localhost:3000/images/products/1691044502411_357713966.webp', 1),
(69, 56, 'https://localhost:3000/images/products/1691044604991_332042309.webp', 1),
(70, 57, 'https://localhost:3000/images/products/1691044679929_356040995.webp', 1),
(71, 58, 'https://localhost:3000/images/products/1691044758089_866910914.webp', 1),
(72, 59, 'https://localhost:3000/images/products/1691044875600_612297073.webp', 1),
(73, 60, 'https://localhost:3000/images/products/1691044940423_898136919.webp', 1),
(74, 61, 'https://localhost:3000/images/products/1691045039859_746956083.webp', 1),
(75, 62, 'https://localhost:3000/images/products/1691045111087_318206912.webp', 1),
(76, 63, 'https://localhost:3000/images/products/1691045236766_166769857.webp', 1),
(78, 65, 'https://localhost:3000/images/products/1691045375528_417440107.webp', 1),
(79, 66, 'https://localhost:3000/images/products/1691045449972_243677198.webp', 1),
(80, 67, 'https://localhost:3000/images/products/1691045693153_495567455.webp', 1),
(81, 68, 'https://localhost:3000/images/products/1691045764349_10850091.webp', 1),
(82, 69, 'https://localhost:3000/images/products/1691045828146_524763105.webp', 1),
(83, 70, 'https://localhost:3000/images/products/1691045872442_391477213.webp', 1),
(84, 71, 'https://localhost:3000/images/products/1691045936109_695139685.webp', 1),
(85, 72, 'https://localhost:3000/images/products/1691046022404_383299675.webp', 1),
(87, 74, 'https://localhost:3000/images/products/1691046235466_640194007.webp', 1),
(88, 75, 'https://localhost:3000/images/products/1691046299676_645429468.webp', 1),
(89, 76, 'https://localhost:3000/images/products/1691046406551_752056333.webp', 1),
(90, 77, 'https://localhost:3000/images/products/1691046474813_795025907.webp', 1),
(91, 78, 'https://localhost:3000/images/products/1691046535034_696677278.webp', 1),
(92, 79, 'https://localhost:3000/images/products/1691046684788_430697208.webp', 1),
(93, 80, 'https://localhost:3000/images/products/1691046852008_590724585.webp', 1),
(94, 81, 'https://localhost:3000/images/products/1691046998925_205942018.webp', 1),
(95, 82, 'https://localhost:3000/images/products/1691047099336_259810195.webp', 1),
(96, 83, 'https://localhost:3000/images/products/1691047158256_511338467.webp', 1),
(97, 84, 'https://localhost:3000/images/products/1691047340218_338590694.webp', 1),
(98, 85, 'https://localhost:3000/images/products/1691047553773_869647920.webp', 1),
(99, 86, 'https://localhost:3000/images/products/1691047675371_815111559.webp', 1),
(100, 87, 'https://localhost:3000/images/products/1691047784938_146081246.webp', 1),
(101, 88, 'https://localhost:3000/images/products/1691047852979_466554749.webp', 1),
(102, 89, 'https://localhost:3000/images/products/1691047935619_755711624.webp', 1),
(103, 90, 'https://localhost:3000/images/products/1691048006739_365076890.webp', 1),
(104, 91, 'https://localhost:3000/images/products/1691048961944_185434968.webp', 1),
(105, 92, 'https://localhost:3000/images/products/1691049042759_517695122.webp', 1),
(106, 93, 'https://localhost:3000/images/products/1691049111127_234057374.webp', 1),
(107, 94, 'https://localhost:3000/images/products/1691049171994_792036111.webp', 1),
(108, 95, 'https://localhost:3000/images/products/1691049357949_715569432.webp', 1),
(109, 96, 'https://localhost:3000/images/products/1691049436409_723820652.webp', 1),
(110, 97, 'https://localhost:3000/images/products/1691049802914_948881671.webp', 1),
(111, 98, 'https://localhost:3000/images/products/1691049880800_471688435.webp', 1),
(112, 99, 'https://localhost:3000/images/products/1691049943130_43040217.webp', 1),
(113, 100, 'https://localhost:3000/images/products/1691053469113_574605130.webp', 1),
(114, 101, 'https://localhost:3000/images/products/1691053538660_690123693.webp', 1),
(115, 102, 'https://localhost:3000/images/products/1691053618449_279934811.webp', 1),
(116, 103, 'https://localhost:3000/images/products/1691053888353_51291316.webp', 1),
(117, 104, 'https://localhost:3000/images/products/1691053952717_681518311.webp', 1),
(118, 105, 'https://localhost:3000/images/products/1691054005244_2600508.webp', 1),
(119, 106, 'https://localhost:3000/images/products/1691054089725_917794140.webp', 1),
(120, 107, 'https://localhost:3000/images/products/1691054156313_657906802.webp', 1),
(121, 108, 'https://localhost:3000/images/products/1691054226537_718647857.webp', 1),
(122, 109, 'https://localhost:3000/images/products/1691054390805_382260868.webp', 1),
(123, 110, 'https://localhost:3000/images/products/1691054437810_256167244.webp', 1),
(124, 111, 'https://localhost:3000/images/products/1691054491614_681690402.webp', 1),
(125, 112, 'https://localhost:3000/images/products/1691054550876_465032768.webp', 1),
(126, 113, 'https://localhost:3000/images/products/1691054606456_535775442.webp', 1),
(127, 114, 'https://localhost:3000/images/products/1691054650948_569787839.webp', 1),
(128, 115, 'https://localhost:3000/images/products/1691054854068_389942823.webp', 1),
(129, 116, 'https://localhost:3000/images/products/1691054908861_460906330.webp', 1),
(130, 117, 'https://localhost:3000/images/products/1691054962943_673604283.webp', 1),
(131, 118, 'https://localhost:3000/images/products/1691055009361_795346024.webp', 1),
(132, 119, 'https://localhost:3000/images/products/1691055084021_202797214.webp', 1),
(133, 120, 'https://localhost:3000/images/products/1691055525962_128815888.webp', 1),
(134, 121, 'https://localhost:3000/images/products/1691055574448_481824459.webp', 1),
(135, 122, 'https://localhost:3000/images/products/1691055629347_866927448.webp', 1),
(136, 123, 'https://localhost:3000/images/products/1691055800011_935687370.webp', 1),
(137, 124, 'https://localhost:3000/images/products/1691055846710_419567003.webp', 1),
(138, 125, 'https://localhost:3000/images/products/1691055902577_527924420.webp', 1),
(139, 126, 'https://localhost:3000/images/products/1691055979556_847345257.webp', 1),
(140, 127, 'https://localhost:3000/images/products/1691072510336_29216220.webp', 1),
(141, 128, 'https://localhost:3000/images/products/1691072656831_911958602.webp', 1),
(142, 129, 'https://localhost:3000/images/products/1691072755510_101294991.webp', 1),
(143, 130, 'https://localhost:3000/images/products/1691073278584_313900342.webp', 1),
(145, 132, 'https://localhost:3000/images/products/1691073469758_389381288.webp', 1),
(146, 133, 'https://localhost:3000/images/products/1691073581733_240938254.webp', 1),
(147, 134, 'https://localhost:3000/images/products/1691073726268_441248619.webp', 1),
(148, 135, 'https://localhost:3000/images/products/1691073808564_31197235.webp', 1),
(149, 136, 'https://localhost:3000/images/products/1691231402620_521522411.webp', 1),
(150, 137, 'https://localhost:3000/images/products/1691231701863_793630508.webp', 1),
(151, 138, 'https://localhost:3000/images/products/1691231825144_582225727.webp', 1),
(152, 139, 'https://localhost:3000/images/products/1691232063336_799032657.webp', 1),
(153, 140, 'https://localhost:3000/images/products/1691232240088_870290415.webp', 1),
(154, 141, 'https://localhost:3000/images/products/1691232348322_989192955.webp', 1),
(155, 142, 'https://localhost:3000/images/products/1691232463212_600123808.webp', 1),
(156, 143, 'https://localhost:3000/images/products/1691232670809_326313419.webp', 1),
(157, 144, 'https://localhost:3000/images/products/1691232805053_961637763.webp', 1),
(159, 146, 'https://localhost:3000/images/products/1691233097316_952554796.webp', 1),
(160, 147, 'https://localhost:3000/images/products/1691233158523_487849856.webp', 1),
(161, 148, 'https://localhost:3000/images/products/1691233245083_749523424.webp', 1),
(162, 149, 'https://localhost:3000/images/products/1691233357256_558937128.webp', 1),
(163, 150, 'https://localhost:3000/images/products/1691233456952_88634451.webp', 1),
(164, 151, 'https://localhost:3000/images/products/1691233546218_149319738.webp', 1),
(165, 152, 'https://localhost:3000/images/products/1691235727828_152635856.webp', 1),
(166, 153, 'https://localhost:3000/images/products/1691235966764_488562567.webp', 1),
(167, 154, 'https://localhost:3000/images/products/1691236083361_362803162.webp', 1),
(168, 155, 'https://localhost:3000/images/products/1691236231949_201453933.webp', 1),
(169, 156, 'https://localhost:3000/images/products/1691236370844_327368397.webp', 1),
(170, 157, 'https://localhost:3000/images/products/1691236476998_132657013.webp', 1),
(171, 158, 'https://localhost:3000/images/products/1691236652583_179119632.webp', 1),
(172, 159, 'https://localhost:3000/images/products/1691236740320_946049387.webp', 1),
(173, 160, 'https://localhost:3000/images/products/1691237071672_265880062.webp', 1),
(174, 161, 'https://localhost:3000/images/products/1691237221882_667255257.webp', 1),
(175, 162, 'https://localhost:3000/images/products/1691237316490_342063275.webp', 1),
(176, 163, 'https://localhost:3000/images/products/1691237388400_387064292.webp', 1),
(177, 164, 'https://localhost:3000/images/products/1691237500750_27193646.webp', 1),
(178, 165, 'https://localhost:3000/images/products/1691237616120_587474814.webp', 1),
(179, 166, 'https://localhost:3000/images/products/1691237820718_995692185.webp', 1),
(180, 167, 'https://localhost:3000/images/products/1691237911564_192178634.webp', 1),
(181, 168, 'https://localhost:3000/images/products/1691238018096_111220813.webp', 1),
(182, 169, 'https://localhost:3000/images/products/1691238119861_504019698.webp', 1),
(183, 170, 'https://localhost:3000/images/products/1691238190497_274167401.webp', 1),
(184, 171, 'https://localhost:3000/images/products/1691238287018_644134867.webp', 1),
(185, 172, 'https://localhost:3000/images/products/1691238394548_747705600.webp', 1),
(186, 173, 'https://localhost:3000/images/products/1691238459469_585571594.webp', 1),
(187, 174, 'https://localhost:3000/images/products/1691238547334_341812192.webp', 1),
(188, 175, 'https://localhost:3000/images/products/1691241582850_691401854.webp', 1),
(189, 176, 'https://localhost:3000/images/products/1691241687672_230859946.webp', 1),
(190, 177, 'https://localhost:3000/images/products/1691241875321_74228074.webp', 1),
(191, 178, 'https://localhost:3000/images/products/1691241999921_188808078.webp', 1),
(194, 180, 'https://localhost:3000/images/products/1694033695068_198383217.webp', 1),
(201, 182, 'https://localhost:3000/images/products/1697399010050_424500823.webp', 0),
(202, 182, 'https://localhost:3000/images/products/1697399010060_372214128.webp', 0),
(203, 182, 'https://localhost:3000/images/products/1697399010107_651478122.webp', 0),
(204, 182, 'https://localhost:3000/images/products/1697399010115_394856764.webp', 0),
(205, 182, 'https://localhost:3000/images/products/1697399010115_98118169.webp', 0),
(206, 182, 'https://localhost:3000/images/products/1697399010116_700362302.webp', 0),
(207, 182, 'https://localhost:3000/images/products/1697399010116_194990111.webp', 0),
(208, 182, 'https://localhost:3000/images/products/1697399010117_721731690.webp', 1),
(215, 186, 'https://localhost:3000/images/products/1697833089852_583912306.webp', 0),
(216, 186, 'https://localhost:3000/images/products/1697833089852_506587127.webp', 1),
(217, 187, 'https://localhost:3000/images/products/1698170957273_756807401.webp', 1),
(221, 188, 'https://localhost:3000/images/products/1698172250841_515645510.webp', 1),
(223, 189, 'https://localhost:3000/images/products/1699233760551_432452895.webp', 1),
(234, 73, 'https://localhost:3000/images/products/1701640188598_165678752.webp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_temp_video`
--

CREATE TABLE `product_temp_video` (
  `id` int(11) NOT NULL,
  `product_temp_id` int(11) NOT NULL,
  `temp_video_url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_temp_video`
--

INSERT INTO `product_temp_video` (`id`, `product_temp_id`, `temp_video_url`) VALUES
(1, 12, 'http://localhost:3000/images/products/1686130625823_919852464.mp4'),
(2, 13, 'http://localhost:3000/images/products/1686157649274_308030822.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `product_video`
--

CREATE TABLE `product_video` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_video_url` varchar(255) NOT NULL,
  `featured_video` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question_name` varchar(255) NOT NULL,
  `question_answer` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_update`
--

CREATE TABLE `rate_update` (
  `rate_update_id` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate_update`
--

INSERT INTO `rate_update` (`rate_update_id`, `date`, `time`) VALUES
(1, '1/14/2024', '09:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_star` int(11) NOT NULL,
  `review_des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_quality`
--

CREATE TABLE `review_quality` (
  `id` int(11) NOT NULL,
  `review_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `seller_user_id` int(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_location_lt` varchar(255) NOT NULL,
  `shop_location_long` varchar(255) NOT NULL,
  `shop_number` varchar(255) NOT NULL,
  `shop_type` int(11) NOT NULL DEFAULT 2,
  `shop_custom_url` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `seller_user_id`, `shop_name`, `shop_location_lt`, `shop_location_long`, `shop_number`, `shop_type`, `shop_custom_url`) VALUES
(1, 2, 'First Ref User', '23.44455', '89.51515', '+880 1716-070411', 1, NULL),
(2, 3, 'mehedi hasan\'s Shop', '24.3610414', '88.6293523', '+8801747090362', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_balance`
--

CREATE TABLE `shop_balance` (
  `balance_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `own_balance` double NOT NULL,
  `withdraw` double NOT NULL,
  `from_ref` double NOT NULL,
  `due_payment` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_balance`
--

INSERT INTO `shop_balance` (`balance_id`, `shop_id`, `own_balance`, `withdraw`, `from_ref`, `due_payment`) VALUES
(1, 1, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_due_details`
--

CREATE TABLE `shop_due_details` (
  `due_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `due_amount` double NOT NULL,
  `last_date` date NOT NULL,
  `ref_id` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_transaction`
--

CREATE TABLE `shop_transaction` (
  `transaction_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `is_withdraw` int(11) DEFAULT 0,
  `payment_method` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_type`
--

CREATE TABLE `shop_type` (
  `shop_id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_type`
--

INSERT INTO `shop_type` (`shop_id`, `type_name`) VALUES
(1, 'Manufacturer & Whole Seller'),
(2, 'Shopping & Retail');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Confirmed'),
(2, 'Rejected'),
(3, 'New Order'),
(4, 'Accepted'),
(5, 'Return Order'),
(7, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id` int(11) NOT NULL,
  `sub_cat_id` varchar(255) NOT NULL,
  `sub_cat_ref` varchar(255) NOT NULL,
  `sub_cat_name` varchar(255) NOT NULL,
  `sub_cat_image_url` varchar(255) NOT NULL,
  `popular_cat_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `sub_cat_id`, `sub_cat_ref`, `sub_cat_name`, `sub_cat_image_url`, `popular_cat_value`) VALUES
(31, 'subcat-31', 'maincat-10', 'Cooking ', 'https://localhost:3000/images/categories/1692097609691_360539544.webp', NULL),
(33, 'subcat-33', 'maincat-10', 'Meat', 'https://localhost:3000/images/categories/1692097780806_372832444.webp', NULL),
(34, 'subcat-34', 'maincat-10', 'Fish', 'https://localhost:3000/images/categories/1692097886448_695778892.webp', NULL),
(35, 'subcat-35', 'maincat-10', 'Eggs', 'https://localhost:3000/images/categories/1692097967182_556724940.webp', NULL),
(36, 'subcat-36', 'maincat-10', 'Dairy', 'https://localhost:3000/images/categories/1688581112887_553056996.webp', NULL),
(38, 'subcat-38', 'maincat-10', 'Beverages', 'https://localhost:3000/images/categories/1692098078519_649798346.webp', NULL),
(42, 'subcat-42', 'maincat-10', 'Breakfast', 'https://localhost:3000/images/categories/1692098214680_328545152.webp', NULL),
(44, 'subcat-44', 'maincat-10', 'Snacks ', 'https://localhost:3000/images/categories/1692098457138_278336962.webp', NULL),
(47, 'subcat-47', 'maincat-10', 'Chocolate & Candy ', 'https://localhost:3000/images/categories/1692098618269_822904507.webp', NULL),
(49, 'subcat-49', 'maincat-11', 'Medicine', 'https://localhost:3000/images/categories/1688979518976_774203349.webp', NULL),
(50, 'subcat-50', 'maincat-11', 'Surgical', 'https://localhost:3000/images/categories/1688992790640_202398225.webp', NULL),
(52, 'subcat-52', 'maincat-12', 'Restaurants Food', 'https://localhost:3000/images/categories/1692099717222_966178406.webp', NULL),
(53, 'subcat-53', 'maincat-12', 'Homemade Food', 'https://localhost:3000/images/categories/1689508845837_337092547.webp', NULL),
(54, 'subcat-54', 'maincat-13', 'Men\'s Clothing ', 'https://localhost:3000/images/categories/1692963373996_838106632.webp', NULL),
(55, 'subcat-55', 'maincat-13', 'Women\'s Clothing', 'https://localhost:3000/images/categories/1692963626198_259505623.webp', NULL),
(56, 'subcat-56', 'maincat-13', 'Boy\'s Clothing', 'https://localhost:3000/images/categories/1690298607670_692153102.webp', NULL),
(57, 'subcat-57', 'maincat-13', 'Girl\'s Clothing', 'https://localhost:3000/images/categories/1692963722870_527376119.webp', NULL),
(58, 'subcat-58', 'maincat-13', 'Animal Clothing', 'https://localhost:3000/images/categories/1689098828376_453016190.webp', NULL),
(59, 'subcat-59', 'maincat-13', 'Festival Clothing', 'https://localhost:3000/images/categories/1690542533740_819922626.webp', NULL),
(60, 'subcat-60', 'maincat-14', 'Men\'s Shoes', 'https://localhost:3000/images/categories/1689230759726_644334436.webp', NULL),
(61, 'subcat-61', 'maincat-14', 'Women\'s Shoes', 'https://localhost:3000/images/categories/1689231456252_867151867.webp', NULL),
(62, 'subcat-62', 'maincat-14', 'Boy\'s Shoes', 'https://localhost:3000/images/categories/1689235972425_539363767.webp', NULL),
(63, 'subcat-63', 'maincat-14', 'Girl\'s Shoes', 'https://localhost:3000/images/categories/1689295987608_999271346.webp', NULL),
(64, 'subcat-64', 'maincat-15', 'Home Decor', 'https://localhost:3000/images/categories/1692545504259_96036871.webp', NULL),
(65, 'subcat-65', 'maincat-15', 'Kitchen Item', 'https://localhost:3000/images/categories/1689318462289_866495095.webp', NULL),
(66, 'subcat-66', 'maincat-10', 'Detergent ', 'https://localhost:3000/images/categories/1692099332202_714147575.webp', NULL),
(67, 'subcat-67', 'maincat-10', 'Frozen item', 'https://localhost:3000/images/categories/1692099483421_622449266.webp', NULL),
(70, 'subcat-70', 'maincat-17', 'Men\'s Care', 'https://localhost:3000/images/categories/1691373481506_263882336.webp', NULL),
(72, 'subcat-72', 'maincat-11', 'Condom', 'https://localhost:3000/images/categories/1691386526273_218465228.webp', NULL),
(73, 'subcat-73', 'maincat-11', 'Sanitary Pads', 'https://localhost:3000/images/categories/1691389396521_326150755.webp', NULL),
(74, 'subcat-74', 'maincat-17', 'Women\'s Cosmetics', 'https://localhost:3000/images/categories/1691397587800_650779151.webp', NULL),
(75, 'subcat-75', 'maincat-17', 'Baby Care ', 'https://localhost:3000/images/categories/1691399463046_846172830.webp', NULL),
(77, 'subcat-77', 'maincat-17', 'Salon & Spa Equipment', 'https://localhost:3000/images/categories/1691514663418_417879458.webp', NULL),
(79, 'subcat-79', 'maincat-11', 'Personal Care', 'https://localhost:3000/images/categories/1691590286362_905589246.webp', NULL),
(81, 'subcat-81', 'maincat-18', 'Home Electronics ', 'https://localhost:3000/images/categories/1691929040022_794709431.webp', NULL),
(83, 'subcat-83', 'maincat-18', 'Office Electronics', 'https://localhost:3000/images/categories/1691934435934_385996502.webp', NULL),
(84, 'subcat-84', 'maincat-18', 'Phone & Accessories', 'https://localhost:3000/images/categories/1692011292448_712136980.webp', NULL),
(85, 'subcat-85', 'maincat-18', 'Computer & Accessories', 'https://localhost:3000/images/categories/1692016094450_453034534.webp', NULL),
(86, 'subcat-86', 'maincat-18', 'Camera & Accessories', 'https://localhost:3000/images/categories/1692027707083_194703822.webp', NULL),
(87, 'subcat-87', 'maincat-18', 'Speakers & Headphone', 'https://localhost:3000/images/categories/1692028493372_324013754.webp', NULL),
(88, 'subcat-88', 'maincat-18', 'Vehicle Electronics', 'https://localhost:3000/images/categories/1692031116241_10733962.webp', NULL),
(89, 'subcat-89', 'maincat-18', 'GPS, Finders & Accessories', 'https://localhost:3000/images/categories/1692083242959_248580525.webp', NULL),
(90, 'subcat-90', 'maincat-18', 'Security & Accessories', 'https://localhost:3000/images/categories/1692087456584_823747700.webp', NULL),
(91, 'subcat-91', 'maincat-18', 'Video Game Consoles', 'https://localhost:3000/images/categories/1692100370021_76032330.webp', NULL),
(92, 'subcat-92', 'maincat-18', 'Portable Audio & Video', 'https://localhost:3000/images/categories/1692102573500_854056076.webp', NULL),
(93, 'subcat-93', 'maincat-18', 'Projectors & Accessories ', 'https://localhost:3000/images/categories/1692110697416_481893208.webp', NULL),
(94, 'subcat-94', 'maincat-18', 'Wearable Technology', 'https://localhost:3000/images/categories/1692188902221_397582380.webp', NULL),
(95, 'subcat-95', 'maincat-15', 'Garden Items', 'https://localhost:3000/images/categories/1692544834185_129185920.webp', NULL),
(97, 'subcat-97', 'maincat-10', 'Agriculture', 'https://localhost:3000/images/categories/1696866227219_258935255.webp', NULL),
(98, 'subcat-98', 'maincat-26', 'Luggage & Briefcases', 'https://localhost:3000/images/categories/1694282611908_819690076.webp', NULL),
(99, 'subcat-99', 'maincat-26', 'Bags & Packs', 'https://localhost:3000/images/categories/1694283492887_201783718.webp', NULL),
(101, 'subcat-101', 'maincat-69', 'Books', 'https://localhost:3000/images/categories/1694856455281_383418094.webp', NULL),
(103, 'subcat-103', 'maincat-19', 'Medical Equipment', 'https://localhost:3000/images/categories/1696009195959_88069097.webp', NULL),
(104, 'subcat-104', 'maincat-19', 'Industrial', 'https://localhost:3000/images/categories/1702406075935_321005476.webp', NULL),
(105, 'subcat-105', 'maincat-19', 'Construction', 'https://localhost:3000/images/categories/1696011671171_119074167.webp', NULL),
(106, 'subcat-106', 'maincat-19', 'Printing & Press', 'https://localhost:3000/images/categories/1696012546096_256045203.webp', NULL),
(107, 'subcat-107', 'maincat-69', 'Stationery', 'https://localhost:3000/images/categories/1696013491504_290308486.webp', NULL),
(108, 'subcat-108', 'maincat-19', 'Hardware & Tools', 'https://localhost:3000/images/categories/1696014444917_862470369.webp', NULL),
(110, 'subcat-110', 'maincat-19', 'Electrical', 'https://localhost:3000/images/categories/1696049669472_292124695.webp', NULL),
(111, 'subcat-111', 'maincat-41', 'Rent a Vehicle', 'https://localhost:3000/images/categories/1699786117546_435448353.webp', NULL),
(112, 'subcat-112', 'maincat-41', 'Hotel & Resort ', 'https://localhost:3000/images/categories/1696069163031_203947568.webp', NULL),
(113, 'subcat-113', 'maincat-41', 'Office & House', 'https://localhost:3000/images/categories/1696077228342_256888661.webp', NULL),
(114, 'subcat-114', 'maincat-41', 'Education Services', 'https://localhost:3000/images/categories/1696078257920_105953507.webp', NULL),
(115, 'subcat-115', 'maincat-41', 'Hospital Services', 'https://localhost:3000/images/categories/1696079363522_717084518.webp', NULL),
(119, 'subcat-119', 'maincat-13', ' Fabric', 'https://localhost:3000/images/categories/1697049522968_510123524.webp', NULL),
(120, 'subcat-120', 'maincat-41', 'Tours & Travel', 'https://localhost:3000/images/categories/1699812874107_560183424.webp', NULL),
(121, 'subcat-121', 'maincat-19', 'Property', 'https://localhost:3000/images/categories/1703225482533_265856868.webp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `own_ref_id` varchar(255) NOT NULL,
  `pic_url` varchar(250) DEFAULT NULL,
  `phone` text NOT NULL,
  `reg_completed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `date_of_birth`, `gender`, `reference_id`, `own_ref_id`, `pic_url`, `phone`, `reg_completed`) VALUES
(1, 'prime_void', 'infinity@void.nothing', '$2b$10$ZMCfiraErow9x7sKVn/lYuQxd5cRiGNKqXFq8jqXRM9YwmeUtwQ9G', '0937-03-01', 'male', 'Self Dependent', '4786', NULL, '4786', 1),
(2, 'First Reference User (No own product)', 'lower_infinite@semi_void.level', '$2b$10$k0JU0dd0wmbbmxPAYnn4ducB/e3fZZvDSMWNXgeh5RCcFltwUuqPe', '2002-09-03', 'male', '4786', '+88017160-70411', NULL, '+88017160-70411', 1),
(3, 'mehedi hasan', 'royemeg816@fashlend.com', '$2b$10$TTtj4zbLon.GiXAPShqCQ.mqI2OohdNp80QpK.zsXhlCgW9ePcqym', '2002-06-17', 'male', '+8801716070411', '+8801747090362', NULL, '+8801747090362', 1);

-- --------------------------------------------------------

--
-- Table structure for table `use_bank_info`
--

CREATE TABLE `use_bank_info` (
  `bank_info_id` int(11) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `account_number` int(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) NOT NULL,
  `routing_number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_balance`
--
ALTER TABLE `admin_balance`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  ADD PRIMARY KEY (`exchange_id`);

--
-- Indexes for table `extra_cat`
--
ALTER TABLE `extra_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_product`
--
ALTER TABLE `favourite_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_cat`
--
ALTER TABLE `main_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycustomers`
--
ALTER TABLE `mycustomers`
  ADD PRIMARY KEY (`myCustomerID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_faq`
--
ALTER TABLE `product_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_template`
--
ALTER TABLE `product_template`
  ADD PRIMARY KEY (`temp_id`);

--
-- Indexes for table `product_temp_images`
--
ALTER TABLE `product_temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_temp_video`
--
ALTER TABLE `product_temp_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_video`
--
ALTER TABLE `product_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `rate_update`
--
ALTER TABLE `rate_update`
  ADD PRIMARY KEY (`rate_update_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_balance`
--
ALTER TABLE `shop_balance`
  ADD PRIMARY KEY (`balance_id`);

--
-- Indexes for table `shop_due_details`
--
ALTER TABLE `shop_due_details`
  ADD PRIMARY KEY (`due_id`);

--
-- Indexes for table `shop_transaction`
--
ALTER TABLE `shop_transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `shop_type`
--
ALTER TABLE `shop_type`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `use_bank_info`
--
ALTER TABLE `use_bank_info`
  ADD PRIMARY KEY (`bank_info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_balance`
--
ALTER TABLE `admin_balance`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  MODIFY `exchange_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3383;

--
-- AUTO_INCREMENT for table `extra_cat`
--
ALTER TABLE `extra_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `favourite_product`
--
ALTER TABLE `favourite_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_cat`
--
ALTER TABLE `main_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `mycustomers`
--
ALTER TABLE `mycustomers`
  MODIFY `myCustomerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_faq`
--
ALTER TABLE `product_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_template`
--
ALTER TABLE `product_template`
  MODIFY `temp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `product_temp_images`
--
ALTER TABLE `product_temp_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `product_temp_video`
--
ALTER TABLE `product_temp_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_video`
--
ALTER TABLE `product_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rate_update`
--
ALTER TABLE `rate_update`
  MODIFY `rate_update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_balance`
--
ALTER TABLE `shop_balance`
  MODIFY `balance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_due_details`
--
ALTER TABLE `shop_due_details`
  MODIFY `due_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_transaction`
--
ALTER TABLE `shop_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_type`
--
ALTER TABLE `shop_type`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `use_bank_info`
--
ALTER TABLE `use_bank_info`
  MODIFY `bank_info_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
