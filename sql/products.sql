-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 08:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `blacklist_tokens`
--

CREATE TABLE `blacklist_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blacklist_tokens`
--

INSERT INTO `blacklist_tokens` (`id`, `token`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTksImVtYWlsIjoiZGlvQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwNzgyNDg2OX0.yLPi7IJwqaP3tgkVTxVFe38Nh9bV03Wi__EIaWUZEKk'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTksImVtYWlsIjoiZGlvQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwNzg0NDIxMn0.2--tw594N9UQmUWfLnJPUP1C-5bMyNXYy81XKrPgkpg'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTksImVtYWlsIjoiZGlvQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwNzg0NDIxMn0.2--tw594N9UQmUWfLnJPUP1C-5bMyNXYy81XKrPgkpg'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTksImVtYWlsIjoiZGlvQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwNzg0NDU2M30.IuzhwfQ54i11R31YPq0407-9mGtrc1x21kfHPnQtMFk');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Baju'),
(2, 'Celana'),
(3, 'Sepatu');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_color` varchar(20) NOT NULL,
  `size` int(255) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `transaction_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `product_name`, `product_brand`, `product_price`, `category_id`, `product_color`, `size`, `product_qty`, `transaction_date`) VALUES
(1, 'Baju Muslim Pria', 'Zalora', 0, 1, '', 36, 1, '2020-11-23 20:22:56.541673'),
(2, 'celana sirwal ripstok/celana sirwal outdor ', 'Sfrixme Clothing', 160000, 2, 'Gray', 38, 2, '2020-11-23 20:37:31.778000'),
(3, 'celana sirwal ripstok/celana sirwal outdor ', 'Sfrixme Clothing', 160000, 2, 'Gray', 38, 2, '2020-11-23 22:31:36.190000'),
(4, 'Sepatu hitam polos Skechers full black', 'Kuyind Shop', 100000, 3, 'Black', 42, 2, '2020-11-23 22:38:27.233000'),
(5, 'Sepatu kantor', 'Kuyind Shop', 150000, 3, 'Black', 39, 1, '2020-11-24 10:10:53.540000'),
(6, 'Sepatu Sekolah', 'Atta Shop', 100000, 3, 'Black', 36, 1, '2020-11-24 14:36:40.451000');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_price` int(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_rating` int(11) NOT NULL,
  `product_color` varchar(20) NOT NULL,
  `size` int(255) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `product_name`, `image`, `product_brand`, `product_description`, `product_price`, `category_id`, `product_rating`, `product_color`, `size`, `product_qty`, `created_at`, `updated_at`) VALUES
(13, 'Islamic Mens Clothing Kaftan Shirt', 'https://i.pinimg.com/originals/96/f3/9c/96f39c9f68eaad379d01c0f692da522c.jpg', 'Zalora Clothing', 'Perfect for every occasion,muslim clothing,abaya robe,long sleeve dress,arabic kaftan for male,islamic prayer gown.', 350000, 0, 5, 'Black', 40, 10, '2020-11-23 22:17:12.828000', '2020-12-03 00:31:50.891000'),
(14, 'celana sirwal ripstok keren', 'https://ecs7.tokopedia.net/img/cache/700/product-1/2018/2/15/171764957/171764957_965f1d67-c0b1-418a-9e8e-abe886292dc7_768_1152', 'Sfrixme Clothing', 'Celana sirwal premium berbahan ripstop tornado(bahan ripstok terbaik di kelasnya)dengan tekstur bahan tebal Bertekstur Kotak-Kotak)', 160000, 2, 4, 'gray', 38, 7, '2020-11-23 22:31:36.596000', '2020-12-03 00:34:09.942000'),
(18, 'Celana Panjang Army / PDL TACTICAL BLACKHAWK OUTDOORS', 'https://s3.bukalapak.com/img/3738167387/large/Celana_Cargo___Celana_Panjang_Army_Pria.png', 'R&A Leather', 'Kain Ripstop American Tornado 100% bukan PE/TC langsung dari pabrik (Jenis kain tetinggi di kelasnya)', 120000, 2, 5, 'Green', 38, 10, '2020-11-24 14:37:26.929000', '2020-11-24 14:37:26.929000'),
(19, 'Sepatu putih polos Skechers full white', 'https://id-test-11.slatic.net/shop/54bb9bccaf9b13bae43162679f4f4962.jpeg', 'Kuyind Store', 'Sepatu trendi ', 150000, 3, 4, 'white', 38, 2, '2020-11-25 19:23:23.693000', '2020-11-25 19:23:23.693000'),
(20, 'Vans Men\'s Low-Top Sneakers', 'https://images.vans.com/is/image/Vans/D3HY28-HERO?$583x583$', 'Vans', 'Soft casual shoes', 615000, 3, 5, 'Black white', 36, 2, '2020-11-29 15:25:15.952000', '2020-11-29 15:25:15.952000'),
(21, 'Timberland PRO Men\'s Base Plate Blended', 'https://m.media-amazon.com/images/I/517yXpM66GL._AC_SR160,200_.jpg', 'PRO store', 'WickWork™ technology forces the transfer of moisture away from the skin to the outside of the fabric where it can evaporate', 230000, 1, 4, 'Gray', 38, 10, '2020-11-29 16:59:27.341000', '2020-11-29 16:59:27.341000'),
(22, 'Double Pump Mens Button Down Shirts 100% Cotton ', 'https://m.media-amazon.com/images/I/71Z7NPZxIOL._AC_UL200_SR160,200_.jpg', 'Pump store', '100% Cotton Mens Long Sleeve Shirts With Soft Washing Effect,Very Comfortable Skin Feel .', 230000, 1, 5, 'Blue', 38, 10, '2020-11-29 17:03:15.502000', '2020-11-29 17:03:15.502000'),
(29, 'Islamic Mens Clothing Kaftan Shirt', 'https://ecs7.tokopedia.net/img/cache/900/product-1/2020/1/8/4606821/4606821_c760f8ec-01e2-4a21-89e9-2d85283315c0_1080_1080.jpg', 'Zalora cloth', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 504000, 1, 5, 'Blue', 0, 10, '2020-12-03 00:36:13.187000', '2020-12-03 01:03:21.727000'),
(54, 'Celana polos 6', 'http://localhost:3000/images/1607756845218-image.png', 'Zalora cloth', 'Celana paling keren sedunia', 50000, 2, 5, 'Blue', 20, 10, '2020-12-12 15:07:25.301000', '2020-12-12 15:07:25.301000');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'customer'),
(2, 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `user_type`) VALUES
(14, 'handa2622@gmail.com', '$2b$10$TVMrg4hp6U0P4JFXSfwAdOiJ0j/EuT6GX5va6qOKS/4M.ii31CVQi', 2),
(15, 'luigi@gmail.com', '$2b$10$JQmOUZADepnZ0mjnMPGVneh2LX9cKyqMgqBSqrLwy1ZCa7go2ALpi', 2),
(18, 'handa26@gmail.com', '$2b$10$mp9aTLFLsRCWha4bVTtgSuUzTLhUXU0jFOeaNTkIRUcaD8.2Xehbe', 2),
(19, 'dio@gmail.com', '$2b$10$8dU7A35FFqO/H1A0UKBs1.ld2fmsVFkKvXqARk3qFKWmT1pn8aje2', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blacklist_tokens`
--
ALTER TABLE `blacklist_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blacklist_tokens`
--
ALTER TABLE `blacklist_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
