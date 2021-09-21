-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 21, 2021 at 03:17 PM
-- Server version: 10.6.4-MariaDB-1:10.6.4+maria~focal
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(6) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `credit_card` varchar(50) DEFAULT NULL,
  `credit_card_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `address`, `email`, `phone`, `credit_card`, `credit_card_type`) VALUES
(1, 'Alic', '57250 Walton Street', 'adowtry0@acquirethisname.com', '+855 429 480 8782', '30469026336785', 'diners-club-carte-blanche'),
(2, 'Pamelina', '9 Comanche Circle', 'pgiacopelo1@mashable.com', '+51 724 882 4472', '3548070777058526', 'jcb'),
(3, 'Freeman', '6575 Daystar Hill', 'fgye2@cisco.com', '+420 576 966 4969', '3534358738836213', 'jcb'),
(4, 'Cyndy', '122 Lawn Way', 'csenecaut3@bbb.org', '+265 176 958 3495', '374288345555550', 'americanexpress'),
(5, 'Lane', '5095 Sugar Road', 'lbingle4@addtoany.com', '+1 756 622 7347', '3579464464911851', 'jcb'),
(6, 'Cameytttt', '18723 Vermont Alley', 'ckrammer5@adobe.com', '+1 913 177 7610', '3551163308811465', 'jcb'),
(7, 'Brande', '4487 Tennyson Road', 'bprint6@e-recht24.de', '+61 404 507 2661', '490372909588478227', 'switch'),
(8, 'Valerie', '80 Crownhardt Road', 'vhudd7@free.fr', '+375 867 170 3000', '3533697890663308', 'jcb'),
(9, 'Ulberto', '12359 Park Meadow Court', 'uboughen8@slideshare.net', '+62 113 201 8871', '6392192082679224', 'instapayment'),
(10, 'Athene', '49 Sutherland Terrace', 'aseller9@springer.com', '+258 843 577 6370', '3585280301046574', 'jcb');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(6) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `quantity` int(7) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(12,0) DEFAULT NULL,
  `seller_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `category`, `price`, `seller_id`) VALUES
(1, 'kambing', 2, 'hewan', '2000000', 2),
(4, 'ayam', 5, 'ternak', '80000', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(6) NOT NULL,
  `seller_name` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `seller_name`, `address`, `postal_code`, `email`, `phone`) VALUES
(1, 'Brittani', '63 Valley Edge Circle', '23481', 'arobinetta@zimbio.com', '+1 816 606 2402'),
(2, 'Saloma', '26 Maywood Parkway', '37-565', 'smathys1@newsvine.com', '+48 499 346 2407'),
(3, 'sapayy', '1556 Dakota Jalan', '42000', 'dadamkiewicz2@ow.ly', '+385 922 640 0058'),
(4, 'Roberta', '10107 Blaine Parkway', '412091', 'radnett3@discuz.net', '+7 986 652 2338'),
(5, 'Roshelle', '485 Hollow Ridge Trail', '07505', 'rbodycomb4@dedecms.com', '+1 862 373 9721'),
(6, 'Ginnie', '1 Ilene Center', '249849', 'gludl5@epa.gov', '+7 779 952 3089'),
(7, 'tttttttttttttttttt', '0909 International Terrace', '874212', 'arobinetta@zimbio.com', '+1 816 606 2402'),
(8, 'Carlie', '05 Weeping Birch Street', '43215', 'arobinetta@zimbio.com', '+1 816 606 2402'),
(9, 'Oriana', '70 Clarendon Road', NULL, 'obillo8@weather.com', '+381 314 661 4477'),
(10, 'Fairfax', '0637 Division Park', '890453', 'arobinetta@zimbio.com', '+1 816 606 2402'),
(11, 'Arlana', '692 Spohn Center', '64130', 'arobinetta@zimbio.com', '+1 816 606 2402'),
(12, 'Jodi', '027 Chinook Pass', '667123', 'arobinetta@zimbio.com', '+1 816 606 2402'),
(14, 'Perl', '510 Judy Plaza', NULL, 'plambshined@tinypic.com', '+86 169 503 3569'),
(15, 'eeeee', '1 Ilene Center', '249849', 'gludl5@epa.gov', '+7 779 952 3089');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
