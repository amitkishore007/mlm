-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 05:41 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samarpaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'admin',
  `password` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `user_type`, `password`, `created_at`) VALUES
(1, 'admin@petrol.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-06-02 04:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `user3` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `user_id`, `user1`, `user2`, `user3`, `created_at`) VALUES
(11, 'PETROL-iNctw', 10, 24, 15, 14, '2017-06-10 07:50:24'),
(12, 'PETROL-Q8lwa', 10, 25, 24, 23, '2017-06-10 08:00:29'),
(13, 'PETROL-M729i', 28, 31, 30, 29, '2017-06-10 12:04:52'),
(14, 'PETROL-FednE', 32, 35, 34, 33, '2017-06-12 09:52:37'),
(15, 'PETROL-ezEhP', 42, 45, 44, 43, '2017-06-19 10:17:58'),
(16, 'PETROL-pH1fO', 46, 49, 48, 47, '2017-06-19 10:58:20'),
(17, 'PETROL-NQhId', 47, 52, 51, 50, '2017-06-19 11:14:05'),
(18, 'PETROL-30Xx1', 10, 56, 55, 54, '2017-06-22 11:41:29'),
(19, 'PETROL-NKwCg', 60, 63, 62, 61, '2017-06-23 09:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'staff',
  `staff_id` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `mobile`, `password`, `user_type`, `staff_id`, `status`, `created_at`) VALUES
(7, 'abcd', '9876543210', '827ccb0eea8a706c4c34a16891f84e7b', 'staff', 'abcd', 1, '2017-06-09 10:54:52'),
(6, 'Mamu', '9999999999', 'c1d70920a6e3d24b584dd9397d11bd12', 'staff', 'abcd1234', 1, '2017-06-09 10:26:20'),
(9, 'sughand', '9650719535', 'e807f1fcf82d132f9bb018ca6738a19f', 'staff', 'sug5678', 1, '2017-06-09 11:44:40'),
(10, 'MUKESH AMOLIYA', '9329245351', 'c1d70920a6e3d24b584dd9397d11bd12', 'staff', 'MUKIND01', 1, '2017-06-23 05:09:20'),
(11, 'Yogendra Pancholi', '9893624220', '45c3e746683656e9a64cf22d57f9e6ae', 'staff', 'yogendraindore', 1, '2017-06-23 11:05:40'),
(12, 'amit', '8976543423', '827ccb0eea8a706c4c34a16891f84e7b', 'staff', 'AMIT007', 1, '2017-06-23 06:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `account_status` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_status` tinyint(4) NOT NULL,
  `cycle` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `name`, `mobile`, `email`, `address`, `staff_id`, `account_status`, `coupon_status`, `cycle`, `created_at`) VALUES
(10, 0, 'amit', '9876543210', 'amit@gmail.com', 'e-16A', 'PETROL5', 1, 0, 1, '2017-06-07 08:41:08'),
(11, 10, 'kishore', '7865453219', 'ak@gmail.com', 'E-16A', 'PETROL5', 1, 0, 1, '2017-06-07 08:41:38'),
(12, 10, 'pk1', '1234567895', 'pk@gmail.com', 'kljkjk', 'PETROL5', 1, 0, 1, '2017-06-07 08:42:46'),
(13, 10, 'pk1', '9876543230', 'amit3@gmail.com', 'E-19989', 'PETROL5', 1, 0, 1, '2017-06-07 08:43:39'),
(14, 10, 'Jai Ho', '9999999998', 'jaiho@gmail.com', 'noida', 'abcd1234', 1, 0, 1, '2017-06-09 10:36:25'),
(15, 10, 'manjeet', '9898989898', 'acb@yahoo.com', 'qwert', 'sug789', 1, 0, 1, '2017-06-09 11:10:55'),
(16, 0, 'sadfsafsf', '9999999966', 'retyui@gmail.com', 'noida 9, up', 'abcd', 1, 0, 1, '2017-06-09 11:45:33'),
(17, 0, 'Rajesh kumar', '9312222573', 'kdsr2017@gmail.com', 'Chattarpur , New Delhi - 110074', 'sug5678', 1, 0, 1, '2017-06-09 11:48:28'),
(18, 0, 'Surender Singh Rawat ', '8459994989', 'surenderrawat1559@gmail.com', 'Palam, New Delhi .', 'sug5678', 1, 0, 1, '2017-06-09 11:56:06'),
(19, 0, 'Dhruv', '7982553915', 'dhruver28@gmail.com', 'New Delhi', 'sug5678', 1, 0, 1, '2017-06-09 11:58:29'),
(20, 10, 'Kamlesh Sharma ', '9582854782', 'kamzzz47@gmail.com', 'Laxmi Nagar , New Delhi -110019', 'sug5678', 1, 0, 1, '2017-06-09 12:00:10'),
(21, 0, 'abac', '9867453218', 'ajahy@gmail.com', 'ahjghjag', 'abcd', 1, 0, 1, '2017-06-09 19:05:26'),
(22, 0, 'akm123', '1234567897', '1234@gmail.com', 'aassf', 'abcd', 1, 0, 1, '2017-06-09 19:07:46'),
(23, 10, 'asadasdad', '2345678924', 'amitqqqq@gmail.com', 'asdsadaasd', 'abcd', 1, 0, 1, '2017-06-09 19:08:55'),
(24, 10, 'pink', '9877654447', 'pink@gmail.com', 'e-16A qutub vuhar', 'abcd', 1, 0, 1, '2017-06-10 06:46:09'),
(25, 10, 'pkpk', '8888888888', 'pkpk@gmail.com', 'ahsgjh', 'abcd', 1, 0, 1, '2017-06-10 07:50:56'),
(26, 0, 'fgjj', '1234567890', 'azx@gmail.com', '123erty', 'sug5678', 1, 0, 1, '2017-06-10 09:11:59'),
(27, 0, 'asedrft', '9898564329', 'swat@gmail.com', '123etyu', 'sug5678', 1, 0, 1, '2017-06-10 09:13:32'),
(28, 0, 'Rahul Singh', '9560632076', 'sugandhsahota04@gmail.com', 'B 4 Preet Vihar', 'abcd1234', 1, 0, 1, '2017-06-10 10:32:24'),
(29, 28, 'rohan', '9999960210', 'natashatashu123123@gmail.com', 'gh patel nagar', 'abcd1234', 1, 0, 1, '2017-06-10 11:55:11'),
(30, 28, 'NIHARIKA', '9999960211', 'niharika_dhall@ymail.com', '23 z preet vihar', 'abcd1234', 1, 0, 1, '2017-06-10 11:57:28'),
(31, 28, 'rajesh', '7982553914', 'kdsr2018@gmail.com', 'chattarpur new delhi', 'abcd1234', 1, 0, 1, '2017-06-10 12:01:11'),
(32, 0, 'Rani Jain', '9654450983', 'aashika.rani9462@gmail.com', 'Laxmi Nagar', 'abcd1234', 1, 0, 1, '2017-06-12 09:46:36'),
(33, 32, 'Mamta ', '9312605057', 'mamta1234@gmail.com', 'New Friends Colony', 'abcd1234', 1, 0, 1, '2017-06-12 09:48:54'),
(34, 32, 'ria', '9911457890', 'pankajbrave5@gmail.com', 'rajouri garden new delhi', 'abcd1234', 1, 0, 1, '2017-06-12 09:51:31'),
(35, 32, 'kusum', '9871518693', 'kusumtamang12@gmail.com', 'laxmi nagar', 'abcd1234', 1, 0, 1, '2017-06-12 09:52:23'),
(36, 0, 'bhavik', '8130133397', 'dilipaero11hagmail.com', 'uy new delhi', 'abcd1234', 1, 0, 1, '2017-06-19 07:09:33'),
(37, 0, 'sonam', '9899111456', 'dilipaero11@gmail.com', 'preetvihar', 'abcd1234', 1, 0, 1, '2017-06-19 07:16:02'),
(38, 0, 'sonam', '9899111458', 'linachongloi@gmail.com', 'rajouri garden', 'abcd1234', 1, 0, 1, '2017-06-19 07:19:52'),
(39, 0, 'sughand', '9877535944', 'abhakaran93@outlook.com', 'preetvihar new delhi', 'abcd1234', 1, 0, 1, '2017-06-19 07:29:33'),
(40, 0, 'sarthak', '9087563434', 'natashabhatia123123@gmail.com', 'preetvihar new delhi', 'abcd1234', 1, 0, 1, '2017-06-19 07:37:44'),
(41, 0, 'Raju', '9015656558', 'rajukeshri@gmail.com', 'a 23 noida', 'abcd1234', 1, 0, 1, '2017-06-19 09:56:21'),
(42, 0, 'Dilip', '9971086696', 'mukhtr2004@gmail.com', '32 satyaganj meerut', 'abcd1234', 1, 0, 1, '2017-06-19 10:02:51'),
(43, 42, 'ritika', '9999967542', 'parv22@ymail.com', '23 kanpur', 'abcd1234', 1, 0, 1, '2017-06-19 10:10:34'),
(44, 42, 'rakesh jha', '8877665544', 'rakeshjha234@gmail.com', 'b 40 gurgaon', 'abcd1234', 1, 0, 1, '2017-06-19 10:12:55'),
(45, 42, 'neha', '6677889900', 'neha1857@gmail.com', 'b 33 preet vihar', 'abcd1234', 1, 0, 1, '2017-06-19 10:14:02'),
(46, 0, 'shashank', '9044608426', 'shashank@gmail.com', '123456 azad pur', 'abcd1234', 1, 0, 1, '2017-06-19 10:51:53'),
(47, 46, 'nadeem', '8585958780', 'nadeem@ymail.com', 'noida ', 'abcd1234', 1, 0, 1, '2017-06-19 10:54:00'),
(48, 46, 'ashim', '9717566425', 'ashim2gmail.com', '123 delhi', 'abcd1234', 1, 0, 1, '2017-06-19 10:55:58'),
(49, 46, 'meenakshi', '9863257491', 'meena@gmail.com', 'new delhi', 'abcd1234', 1, 0, 1, '2017-06-19 10:57:58'),
(50, 47, 'ria', '9971960410', 'ria@yahoo.com', 'mumbai\n', 'abcd1234', 1, 0, 1, '2017-06-19 11:07:37'),
(51, 47, 'nisha', '9643592018', 'linachoi@gmail.com', '456 new delhi', 'abcd1234', 1, 0, 1, '2017-06-19 11:10:25'),
(52, 47, 'aman', '9958304985', 'aman@gmail.com', '6789 new delhi', 'abcd1234', 1, 0, 1, '2017-06-19 11:12:01'),
(53, 0, 'akak', '9876543215', 'amit45@gmail.com', 'anajgdhsjad', 'abcd1234', 1, 0, 1, '2017-06-22 11:39:56'),
(54, 10, 'akm', '9876543235', 'ak123@gmail.com', 'adssaguidahsd', 'abcd1234', 1, 0, 1, '2017-06-22 11:40:44'),
(55, 10, 'kkk', '9876545456', 'pkpdk@gmail.com', 'sdfksahjaf', 'abcd1234', 1, 0, 1, '2017-06-22 11:41:05'),
(56, 10, 'kkkkkkkk', '9876545564', 'hhhhh@gmail.com', 'asdkjsaghduasd', 'abcd1234', 1, 0, 1, '2017-06-22 11:41:26'),
(57, 10, 'lllllllll', '1234567898', 'apapap@gmail.com', '98yhuhguih', 'abcd1234', 1, 0, 1, '2017-06-22 11:42:55'),
(58, 0, 'rajesh', '9835578451', 'aiheee@rediffmail.com', 'vatika business centre\nnew delhi airport line', 'MUKIND01', 1, 0, 1, '2017-06-23 05:11:00'),
(59, 0, 'fed', '9835188922', 'manjeetkalsy@gmail.com', 'vatika business centre\nnew delhi airport line', 'MUKIND01', 1, 0, 1, '2017-06-23 05:11:30'),
(60, 0, 'kumar raja', '8080808080', 'kumarraj@gmail.com', 'asds iijsajs jdjda', 'MUKIND01', 1, 0, 1, '2017-06-23 09:15:08'),
(61, 60, 'kumar rahul', '8181818181', 'kumarrahul@gmail.com', 'yu nyh hsiss', 'MUKIND01', 1, 0, 1, '2017-06-23 09:18:04'),
(62, 60, 'kumar ram', '8282828282', 'kumarram@gmail.com', 'kjkjsisjdsid ijisjdsid ijids', 'MUKIND01', 1, 0, 1, '2017-06-23 09:19:27'),
(63, 60, 'kumar rahim', '8383838383', 'kumarrahim@gmail.com', 'fs sfsfs fsfsdf', 'MUKIND01', 1, 0, 1, '2017-06-23 09:20:10'),
(64, 10, 'kkkkkkkkkkkkkk', '8756453787', 'akakak@gmail.com', 'e-16amjh', 'AMIT007', 0, 0, 1, '2017-06-23 05:36:24'),
(65, 10, 'amitkkk', '7563547382', 'akakakak@gmail.com', 'jjjj-98', 'AMIT007', 0, 0, 1, '2017-06-23 05:36:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_type` (`user_type`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
