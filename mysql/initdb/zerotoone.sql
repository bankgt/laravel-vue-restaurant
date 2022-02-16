-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Feb 15, 2022 at 04:46 PM
-- Server version: 5.7.37
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zerotoone`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latlng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `latlng`, `open`, `rating`) VALUES
(1, 'Mission Chinese Food', 'Since our modest beginnings in 2005 with a little space in Toronto’s stylish Yorkville locale, ‘Organization Name’ ‘s development has been enlivened with the energy to cook and serve solid, Indian-roused takeout food.', '40.713829,-73.989667', '5:30 pm - 11:00 pm', '5615'),
(2, 'Brooklyn', 'We realize numerous individuals love Indian sustenance, yet a large number of them loathe or are unconscious of the regularly unfortunate fixings that make run-of-the-mill Indian nourishment taste so great.', '40.683555,-73.966393', '5:30 pm - 11:00 pm', '1224'),
(3, 'Kang Ho Dong Baekjeong', 'Our menu highlights things that utilization the sound and fragrant flavors, however, forgets the stuffing ghee, spread, oil, and overwhelming cream.', '40.747143,-73.985414', '5:30 pm - 11:00 pm', '3352'),
(4, 'Katz\'s Delicatessen', 'Open day by day for lunch and dinner,’ Company Name’ offers a choice of naturally arranged things utilizing just the best fixings accessible. Top picks incorporate Certified Angus Beef®, crisp fish, rotisserie chicken, infant back pork ribs.', '40.722216,-73.987501', '8:00 am - 2:30 am', '5512'),
(5, 'Roberta\'s Pizza', 'After twenty years, in 1982, it was that feeling of peace and fulfillment he was attempting to reproduce when he took a little piece of the ‘Organization Name’s and thudded it down right in the territory of Southern California.', '40.722216,-73.987501', '8:00 am - 2:30 am', '8634'),
(6, 'Hometown BBQ', 'Today, ‘Organization Name’s still is consistent with Tony’s unique experience and his unique vision. Also, however, our menu has developed to incorporate plates of mixed greens, soups, and delicate tacos.', '40.722216,-73.987501', '8:00 am - 2:30 am', '8364'),
(7, 'Superiority Burger', 'Furthermore, we trust that whether you’re a ravenous surfer or occupied salesman, you stroll into ‘Organization Name’ s and state to yourself, as Tony did those numerous years back, “Ahh…this is the place I need to be.”', '40.722216,-73.987501', '8:00 am - 2:30 am', '8345'),
(8, 'The Dutch', 'Organization Name’ was worked for people in general and has advanced into a combination between exquisite chic and contemporary fine charge.\r\nEnjoy our dazzling dishes and make the most of your eating background with us!', '40.747143,-73.985414', '5:30 pm - 11:00 pm', '112'),
(9, 'Mu Ramen', 'In case you’re searching for top-notch food, ‘Organization Name’ is unquestionably one of the spots to go in Port Elizabeth. The adaptable menu flaunts some imaginative food, for example, salt and pepper squid on a delicate.', '40.747143,-73.985414', '5:30 pm - 11:00 pm', '735'),
(10, 'Casa Enrique', 'The glass divider confronting the sea, unbiased shades, finished dividers, and excellent fine art, just as lavish tablecloths and seats, all contribute toward an extravagant ordeal. The earthenware and cutlery are just delightful.', '40.747143,-73.985414', '5:30 pm - 11:00 pm', '8464');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
