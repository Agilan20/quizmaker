-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 11:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodemysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

/* user table */
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* question table */
CREATE TABLE `question` (
  `quesid` varchar(10) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `qtext` varchar(255) DEFAULT NULL,
  `opta` varchar(100) DEFAULT NULL,
  `optascore` int DEFAULT NULL,
  `optb` varchar(100) DEFAULT NULL,
  `optbscore` int DEFAULT NULL,
  `optc` varchar(100) DEFAULT NULL,
  `optcscore` int DEFAULT NULL,
  `optd` varchar(100) DEFAULT NULL,
  `optdscore` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/* quiz table */

CREATE TABLE `quiz` (
  `userid` int DEFAULT NULL,
  `quizid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`quizid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci