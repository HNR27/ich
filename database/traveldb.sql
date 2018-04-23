-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 08:49 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `f_rute`
--

CREATE TABLE `f_rute` (
  `id` int(16) NOT NULL,
  `depart_at` varchar(64) NOT NULL,
  `rute_from` varchar(64) NOT NULL,
  `rute_to` varchar(64) NOT NULL,
  `price` int(32) NOT NULL,
  `tranportasionid` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_tranportasion`
--

CREATE TABLE `f_tranportasion` (
  `id` int(16) NOT NULL,
  `code` int(16) NOT NULL,
  `description` varchar(64) NOT NULL,
  `seat_qty` varchar(64) NOT NULL,
  `tranportasion_typeid` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_tranporttype`
--

CREATE TABLE `f_tranporttype` (
  `id` int(16) NOT NULL,
  `description` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_user`
--

CREATE TABLE `f_user` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer`
--

CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `customer` int(11) NOT NULL,
  `phone` int(16) NOT NULL,
  `gender` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_rute`
--
ALTER TABLE `f_rute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_tranportasion`
--
ALTER TABLE `f_tranportasion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_tranporttype`
--
ALTER TABLE `f_tranporttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_user`
--
ALTER TABLE `f_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_customer`
--
ALTER TABLE `t_customer`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
