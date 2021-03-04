-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 09:18 AM
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
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `postal_codes` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `city`, `street`, `province`, `postal_codes`, `country`, `user_id`) VALUES
(1, 'Handa', 'Banjarmasin', 'Jl. Cendana no. 10', 'South Borneo', 70712, 'Indonesia', 23),
(2, 'Handa', 'Banjarmasin', 'Jl. Kebun karet no. 10', 'South borneo', 70714, 'Indonesia', 23),
(4, 'Ananda Muhammad Muthaqin', 'Banjarbaru', 'Jl. Kebun karet no.10', 'South borneo', 70712, 'Indonesia', 23),
(5, 'Annais', 'Balikpapan', 'Jl. Soekarno no. 20', 'East Kalimantan', 45809, 'Indonesia', 23),
(6, 'Bagas birmantara', 'Banjarbaru', 'Jl. Cendana no. 10', 'South borneo', 70714, 'Indonesia', 31),
(7, 'Logan Lee', 'Amarillo', 'Baker St. No. 229B', 'Texas', 288111, 'United States', 23),
(8, 'Billy Joel', 'Banjarmasin', 'Zenith St. No. 20', 'South Borneo', 90214, 'Indonesia', 23),
(9, 'Billy Joel', 'Banjarmasin', 'Zenith St. No. 20', 'South Borneo', 90214, 'Indonesia', 43);

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
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTksImVtYWlsIjoiZGlvQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwNzg0NDU2M30.IuzhwfQ54i11R31YPq0407-9mGtrc1x21kfHPnQtMFk'),
(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDQyMjI0fQ.q0iryMLeDES6OUJ2ijIaALKcqAffXTgj2DtSMWDEJls'),
(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDQzMDM1fQ.YGGOFnTIkoEG8lY18s_j6acl6PnZ-8C4O9CcyDUHhjE'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxpYW1tYWlsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODA0MzA5Nn0.PyfOh20WbqShimZ4qzp2DMafNyE1PTDLCYfuC-a0K9Q'),
(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxpYW1tYWlsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODA0MzI3MX0.H26O8AvVehLNLS5OJMyrZMV_SK9MWJOqd4hdAxUenv4'),
(20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDQzODc3fQ.unHZ35bngLYe0UnQcrj-q10z0CfwtxV7ULSiq3AnGyk'),
(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDgyNjE5fQ.ie5IVLGbabhQbqkOFLUfRHp66vy-70v2JzQHBVp1cqw'),
(22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDg3MDIwfQ.ythWsQZkAFQ0b7r5GMGCPSMRJCyM8oeTMtLMSjjUJQU'),
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDg5MTAzfQ.m0lErHlCgciH57eKtlLnH-3VeUYywgx_OS8JGUUrH3E'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDg5MTc1fQ.tOR_R8vbg3aZWk5exP7uMV-2NGeN_FOBcKe2ns_bcW8'),
(25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDg5MzMzfQ.HD-3skMDd2TpXpj2V-qhTfXGdatcet7M8XGr-uUX7w4'),
(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDkwMDc4fQ.CshRzq5bvMAW1Xk9TXUiYSKonre4sBWgdOM0IImhwDk'),
(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDkwNTM0fQ.mMk_JNrz00MxPGMmnhMJ-G5sK-_WJwc6GYnuci8BAXU'),
(28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MDkwNjU3fQ.LB8G_T9w-uY1roLyMisLlWkcTpdTQeFEb8TmxYZ4ONM'),
(29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MTAyNTIwfQ.21-0JIf2z5pNPYFQRbm7AVPznVTZlZbFtAdszAsyy3k'),
(30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MTAyNjQxfQ.CKLj6-O-cdfmCQjnQW2VzksJYGsSx1ior196KtjEM8Q'),
(31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwidHlwZSI6MiwiaWF0IjoxNjA4MTAyNzQ1fQ.MCmq9uDenX1Akgv2x5BAhDqQaUylbbxwxCGd7WmodZ4'),
(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTA0NzA0fQ.Gsx9Kcoo_SGo6aaiDVSQHGZJYvSU8Juc3tyRq6mp3fM'),
(33, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODEwMzE0NX0.w9q4V0-ESITCIUcfsL9ws1ZrJGl0FT_rq5tYJMyndzM'),
(34, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTA1OTIwfQ.vV3dAt6TyGbG0gmIKatMLTKUoOFAbPV7v129taBJQVU'),
(35, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTA2MTY2fQ.ZsKYc-NynDVD3IT-zJDNKCJPoTnkyj2-GW_oXbB6Pkk'),
(36, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTA2NDY0fQ.AVcLSEaXtwufkR7zdzR6UtPRn_j4lcmumLo9SIax8bg'),
(37, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODEwNjY3N30.vR0BPNm7xq3tQ4BG4WgOdpezjspFHjaFEtHvyzINRYE'),
(38, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODEwNjk2MH0.n7xBc7ow4_ED8UObuaQyGIJnY5utMl7Yu0wLxW7vN-0'),
(39, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODEwNzkzM30.O1ZWCwdJex1wDTe8LsM_ufPqHqFSC1v7qijXCrR9mj0'),
(40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODEwODM1MX0.91SG1_gMkLhzR5zpKyL8xWKipsVdZtUlbyosxeqVQ5A'),
(41, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODExMTg0Mn0.GZGdUnLBHNiakOtxsrWo2usGtMi69L_VmOmfnMDzz1g'),
(42, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODEzNjc2MX0.CrKnQYE78Ye2hnC6eJDoP8YRczhO-M5GqbgbhaNDL_0'),
(43, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsInR5cGUiOjIsImlhdCI6MTYwODE0NjAxOH0.39aC-xlSGU0sagnB9P3LgjyDyFB67xzcHW4CQmiRpUQ'),
(44, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTcwMjI0fQ.OXw90kYdDzq1MdOLMMnKgfe6e-OT2MXuYBsndP03toQ'),
(45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTcwNjI2fQ.mmYkwWTM0eHxfTCLSqy-41xvEVuRh4tcns1Rco-kBNI'),
(46, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwidHlwZSI6MSwiaWF0IjoxNjA4MTcxMDY0fQ.Xy8H3WDnAnXJE_GmSE4yRQRDtL9adOkOypAYAZw6hfg'),
(47, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3MTMzNH0.QckbS4SgjA5XN2VY5EyaXSx3tJFmKq3WIKbvj5uk2_4'),
(48, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3MTMzNH0.QckbS4SgjA5XN2VY5EyaXSx3tJFmKq3WIKbvj5uk2_4'),
(49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3MTQ0MH0.qCNXdfBW48JujVgVTFs3SjB1YETyHdARlVmvlAAHBcA'),
(50, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3MTQ0MH0.qCNXdfBW48JujVgVTFs3SjB1YETyHdARlVmvlAAHBcA'),
(51, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3MjA5MX0.PcbfSNMrJw0oibkq_Cz70mnAuQSfUSSmBNEfNxqP1S8'),
(52, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3MjA5MX0.PcbfSNMrJw0oibkq_Cz70mnAuQSfUSSmBNEfNxqP1S8'),
(53, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3NDM2Nn0.eIHIHxBw8eJs77aYBQx-TtkJH5v-GM4kyjqRjyOssVA'),
(54, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODE3NDM2Nn0.eIHIHxBw8eJs77aYBQx-TtkJH5v-GM4kyjqRjyOssVA'),
(55, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI1ODQyOH0.6qMGkx632WecXvXNXXDakUwue5-gFQEd8ZYUNce817Q'),
(56, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI1OTAyMn0.yggUsao6vcDBJD0lidhfSYR0TDTKgOMvGQCvWslznDI'),
(57, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI2MTAyM30.YQ-5G3xx8fagd5L8YOp8b3S9pNCBNHtpHbmbEBP8eng'),
(58, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI2MTAyM30.YQ-5G3xx8fagd5L8YOp8b3S9pNCBNHtpHbmbEBP8eng'),
(59, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI2MjAwNH0.EFkRiCLi5cXxvR9iL0OtMJr8VR0WIg1I4a2tG5JdSXQ'),
(60, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI2MjAwNH0.EFkRiCLi5cXxvR9iL0OtMJr8VR0WIg1I4a2tG5JdSXQ'),
(61, 'null'),
(62, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI2OTc0OX0.gHbFBzrYAIylfrJbDF1ky0GrkcmvXdoEJdF6xrO1934'),
(63, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImVtYWlsIjoibm90bm9lbEBnbWFpbC5jb20iLCJ0eXBlIjoyLCJpYXQiOjE2MDgyNjk3Nzh9.jadRgcRqyeZ9-97T5MgB-N0fJxYO2cIgEjzwtHOBJtQ'),
(64, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI3MDA3M30.pT0oXeOzAbLydVHCHZ42Csv7JlVaEb0o77lqugywruI'),
(65, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI3MTEwNX0.U2Ys00e7eSj-OpCJ1up8QcJavtbRKKp6fDjyVkqWXLg'),
(66, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImVtYWlsIjoibm90bm9lbEBnbWFpbC5jb20iLCJ0eXBlIjoyLCJpYXQiOjE2MDgyNzI0OTF9.N9aWHkWR9KMEJpqbcFkRSB6AVunEiKErbiu8FvpKzZs'),
(67, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEsImVtYWlsIjoibm90bm9lbEBnbWFpbC5jb20iLCJ0eXBlIjoyLCJpYXQiOjE2MDgyNzMyMzl9.hM0bhDY_M3h8o25bGJ6BdeXB1pVr_9NgsJce1iTaKEw'),
(68, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI4NDExNn0.aTGZHinQF9sGSd9jnoA1LF_EKWjMwOK_mWCzeq9mp0M'),
(69, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwODI4NDkzMn0.A3PHDcDUli0fFaNAUTrVi6B-ChidgIDBWAjaEGxx8lU'),
(70, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwOTM4NDAyN30.jXWSEKKIKdXvsZ44LKYuby61_m-FsBQrX8ZkIb-_NEg'),
(71, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYwOTM4NDE5OH0.cf7RhuwS89O58e2fVFDA91MLT-5xcD1lmnbzt7n9Q5w'),
(72, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYxMTExMjYwOH0.MPb2_liCw7kQxSDdFFWWQCTjg76X7cHYboXDKGVor9s'),
(73, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYxMTExMzU4MH0.mOL8KIzOl0SMUrjMYpVB6YBXycZAiIBFed8QkaPWQbo'),
(74, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMsImVtYWlsIjoiYW5hbmRhbXRxQGdtYWlsLmNvbSIsInR5cGUiOjEsImlhdCI6MTYxMTExMzgzNX0.ob-AVMJEkcZG3pMg6oqSzEO5vwA4VRkrPHOoxrvzMkI'),
(75, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExMTMwODAxfQ.sKnp1HaX5lbowXPvJsME6m5PBld8EZSZL0RL1TAxOO8'),
(76, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTExMjQ2MDV9.rIsz5LbONWnG8VJmQHGY9SIqYgGaGiaIIGZ2cmpiImM'),
(77, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTExMzA5NzR9.KXgePJr8qoT8d4gVAEC51mAJ4v7WwhhOvHp1tWDvun0'),
(78, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTExMzEyMTh9.C6751frTGzPPOsujSiBk0DKMC8oycFCBN6_HlUV30bA'),
(79, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExMTM1MTA1fQ.JGwBJDCAthhqCPMetJlttwb3X85a8aLLbOtJ8q9yxgc'),
(80, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTExOTI2NDd9.KicJBBJkQLVXyYWI-FLvI_IY_2HtntX3Is1kfacaoF8'),
(81, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExMTkzMDE0fQ.HVRJZ-ySDRnseGj_sF30FCnEUbLwyyGaW0ivqL4rEsM'),
(82, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTExOTMyODl9.lybznV2WsTIOEJR4Bqo_6oXLyqCdoCL8H9MqkzMJC_M'),
(83, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExMTkzNTc3fQ.eTWGwXdjnz1y4g8whO_w_XbzMmkKFg1Bp6cCtIruxJE'),
(84, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTExOTM2NDh9.QoYRxRas1syyDnjhrplHuxq2diOtu7Dzi41wM7oFilk'),
(85, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExMTkzNjg4fQ.mFb7iLUoVeW34_126xsNWNIUfx1w1Vikhdl5vhnEXps'),
(86, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTEyMjI3NDF9.YOVxIVr4d-g8bggt0i31Cq0w0VotbJWalJGBcE-aCA0'),
(87, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExMzE3NzQ1fQ.zAAHmYmGjG_eYAVJNkNBQKai-dinCBjWY-R5ChtxsDw'),
(88, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTEzODE4MDB9.MDuk5JVEDpEpj7uGQgIl4Yg41rJ_fOl-4efQ3Hax4GY'),
(89, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNDA4NzQ0fQ.LLYX86qESfYI_Cxrsokprp2sOBYvEdqRzmP_JcCUjwg'),
(90, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE0MTM5Nzl9.NnMtJ23AVyfmG3MNrzNJPsen8UpNdKZWEDZgUN2Q5hI'),
(91, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNDE1OTM1fQ.oMlFttbQnmP2Zap9sEAGQx8Tn0maDMIVn2MQOh4HMho'),
(92, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNjc1NTg4fQ.kePYbx9iiaNK5Wwf4lmzG-wSDh_uZrvMb3prRp2zwLo'),
(93, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE0NjI2NzJ9.oJ0Wkz1Wx52qi5TcKVZxEoBqij_A9B7c1-DwDHVC3KA'),
(94, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhbmRhMjYwQGdtYWlsLmNvbSIsImlhdCI6MTYxMTcyODAzMn0.lEJYXhHTxPacmjQPJHdFHtt9XkHPz3MizyMtzOs8lTo'),
(95, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNzI4NTE0fQ.RCuX_SpUq-d5iAadCAV8ZAaupOUMB3SinCLHDz7azYw'),
(96, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhbmRhMjYwQGdtYWlsLmNvbSIsImlhdCI6MTYxMTcyODYxNn0.CcrpGtSC6LUYxYvqbDVWOLVdKDAyIH4_JUP4FfPkcHI'),
(97, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhbmRhMjYwQGdtYWlsLmNvbSIsImlhdCI6MTYxMTcyMzAxOH0.skslL7Z0zIIn2YY45fIuw9-0rrf0M1NTRSPoL215F94'),
(98, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNzMxNTg1fQ.QF9Js_d5Yc3FkcXMTJBej7V43rvA14ey9sW1w7yZr1E'),
(99, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhbmRhMjYwQGdtYWlsLmNvbSIsImlhdCI6MTYxMTczMjg2MH0.b5ccGTSnGo3s6DTksjUI_a8TDrvP_czHeuaKVJ2-Fdo'),
(100, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE3Mjg3MTV9.ZosFDHl2jggo4BjwctKD8iLJhTRnvaOJWQyXZz0QVyY'),
(101, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNzM2NzE1fQ.0ALLxFWvwhyV6ZRfVAq5bnQHbaN_IO22afDdXlhKJzg'),
(102, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE3NDMxMzl9.dxAP_uq_kM5Op0_eb-O1j42sRO4xuMDCqqFQansErQk'),
(103, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE3NDM5MDR9.ghMkW60Zu3fi_2VZya7LS026btf3F5J8c08M4pKw2jw'),
(104, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImhhbmRhMjYwQGdtYWlsLmNvbSIsImlhdCI6MTYxMTc1MDkzN30.YeqaLBMSNpaSkgXFjuKG03TiAwOsYxXiwcmdyXJOMSU'),
(105, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNzUxMDI0fQ.4m3_rW01OduHJMJtWIFT16yuyJ3-6a5YFX1cfvRKLeg'),
(106, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE3NTI0MzZ9.09rdOUxxRcPYTK5efyS8j4aFfGrbgWUsPHShztUuAbs'),
(107, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTE3NjMzOTV9.kWvXSV3Y6dZUDZ1LaulXVXU03z6zXkj3K7ojs44t2Q0'),
(108, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjExNzkwODYwfQ.tX2SjukoBZhzKV1Unu_jKlxDpEMcZ3XTO8JqryyRehw'),
(109, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InN0ZXZpZUBnbWFpbC5jb20iLCJpYXQiOjE2MTE3OTIyNDB9.PhnKkmE3gagMvF1TSr6IAnzEeNokl28xGjHNguECXrc'),
(110, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJhZ2FzQGdtYWlsLmNvbSIsImlhdCI6MTYxMTc5MjM1MX0.canvVahx1gc8eZJW5DGkrqZSk3wxQgye7Ppwlts8juk'),
(111, 'null'),
(112, 'null'),
(113, 'null'),
(114, 'null'),
(115, 'null'),
(116, 'null'),
(117, 'null'),
(118, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI1OTk0MjJ9.6-RIBKWtn89Zp8tej5cOvk4528akcJweAlQg1vcmDGA'),
(119, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI1OTk5MjJ9.AfWsm6u8At7uE6AWJ3-4M8fqu_OJbHIDbUsqK44zIv0'),
(120, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI2MDEwMjd9.gQL0GuSPtsa63B3mNXvDBiCsfr3NxFFNOTdXfJRUNNg'),
(121, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI3MTY3Mzd9.GOhfidji1lUYUxmHgFjWsE9989dada_wugXTLne0o54'),
(122, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI3OTYzOTd9.2uEoolXUWVZOzfG75t2VFHMlmSYl1rulqMp5mrbgoyU'),
(123, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjEyODUzNDMyfQ.zhA703-COnImwcD-STsAF2NQrO5mfFl9Cuj7ZBUoVKc'),
(124, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI4NTM0MTZ9.ZRI9Zt6nPW4NdFGKnYOYx0-9xioYiCA9OXkzqvG_d5c'),
(125, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI4NTM0NjZ9.qk0R1xetWuEU4b2h1uMfkyPYPeKTa87qhvh9x9idIqE'),
(126, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjEyODU0MTU4fQ.sRMhwNrpG7tBN4S3Slc4Bw4OVXMFopDrBgJ8trYmZE8'),
(127, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI4NTQxOTJ9.VbTGJKk6Q-x-WzLH4-OhkvxwnBTeN6hsJ4T0NWElqU0'),
(128, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTI4NjQxOTd9.9D9gY3lEyrx2P5m6ALaWLSEUkzUYR35nxOK6P2X3VAs'),
(129, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW11aGFtbWFkODlAZ21haWwuY29tIiwiaWF0IjoxNjEyOTYwOTc2fQ._uPdktVy1NeSNjiZtXhzOEQcaNMiHCIwqNQ3c-NZCZE'),
(130, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW11aGFtbWFkODlAZ21haWwuY29tIiwiaWF0IjoxNjEyOTY3MzQ0fQ.msQF3zzoRimaO7XvHuwtUAFjn03VfHs-WnQx-P4egpM'),
(131, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW11aGFtbWFkODlAZ21haWwuY29tIiwiaWF0IjoxNjEyOTY4NDQyfQ.BwlrmmNEFdteGkCJwUtbsQmcL8lSK3loieqyUE_QPUI'),
(132, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW11aGFtbWFkODlAZ21haWwuY29tIiwiaWF0IjoxNjEyOTk4MjQxfQ.6OF9bQoaOEV_v0s4ZRqWXlaLrVmwDZblEDuPFYpt29M'),
(133, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW11aGFtbWFkODlAZ21haWwuY29tIiwiaWF0IjoxNjEyOTk4MzYwfQ.4PcU0q4GXBvK6W2yMleknCpwUGSZYhe8mhkSEmOMe5k'),
(134, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvaG5kb2VAZ21haWwuY29tIiwiaWF0IjoxNjEzMDAyMzYxfQ.1Sxi7jptIWsuZoV5PYhyslDPvDHtdkgSazj8SogFfNU'),
(135, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW11aGFtbWFkODlAZ21haWwuY29tIiwiaWF0IjoxNjEzMDAzNjc1fQ.pBqIapc8acSzpH4WL7VQWfWD9wMT1cN7dtlsN24UQJg'),
(136, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjEzMDI1MjgxfQ.PfT-UA2XJK7M_1wmwWdEWQgvTHZyjq66QghKBQHVSPQ'),
(137, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTMzNTczNjJ9.mNp_I0qBvs1Tatm0XF2oNXnQTxnwQMbiK6Zmqh6cn4A'),
(138, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5vdG5vZWxAZ21haWwuY29tIiwiaWF0IjoxNjEzMzU3Mzg3fQ.8i60WYgDUXLkMzk7jkqMe1Lv7omJVhy7md2aC5dq0pw'),
(139, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTMzNTg5MDR9.ecjMUDcAAnNmNjJDk3Own7mFf2bbaQewRrdu6CZkdpU'),
(140, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTM3NDI5MzB9.cMsJnCZPAhMv1_Oks8Qk6fP4BsL-h30M4UFnrhHhT84'),
(141, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuYW5kYW10cUBnbWFpbC5jb20iLCJpYXQiOjE2MTM3NDI5MzB9.cMsJnCZPAhMv1_Oks8Qk6fP4BsL-h30M4UFnrhHhT84'),
(142, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwiaWF0IjoxNjE0MTM2Mjc0fQ.PYXmfyz7y4FR8wY3gmBuVwQckF42xgLlBGddeHMPQMQ'),
(143, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsImlhdCI6MTYxNDE1MjMxNn0.kmCUC7-6S7mKxhyxe6PYZTs6ll-TTYmpzmjl9OK8CdE'),
(144, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwiaWF0IjoxNjE0MTY0OTA4fQ.QN8TZGfRt3bt7NNrvkOAxeTdq0lKH2zDBb1BdlrX5-I'),
(145, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsImlhdCI6MTYxNDI0NTA4Nn0.nMB68nkKYUkJ67zECbboh8BopRhG_mCJCcC4o67OHgA'),
(146, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwiaWF0IjoxNjE0MjQ4MDQxfQ.Tqf17DGwQz_0IOopt_OBskOQrU1QvNB94hTajQtWMg0'),
(147, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsImlhdCI6MTYxNDMxMTc2M30.N4V_8G16pCDZgUo-jg6VzCR3LmGD00VVbeg94qeM8kE'),
(148, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMywiZW1haWwiOiJhbmFuZGFtdHFAZ21haWwuY29tIiwiaWF0IjoxNjE0MzUwNTA0fQ.zKNHAXTvzFSP5g7eImMeYOhKdx3WS6dAV3-0di-Neg4'),
(149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyMSwiZW1haWwiOiJub3Rub2VsQGdtYWlsLmNvbSIsImlhdCI6MTYxNDM1MDU5OX0.rk2kQjdBb22tkfPvRIACPqDcHzQ2qaBukvhX239489c');

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
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `buyer` int(11) NOT NULL,
  `chat_room` varchar(15) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `seller`, `buyer`, `chat_room`, `sender`, `message`, `created_at`) VALUES
(20, 21, 23, 'S21B23', 23, 'Kak, untuk produk ini stocknya masih ada?', '2021-02-26 22:42:46'),
(21, 21, 23, 'S21B23', 21, 'Iya kak masih ada', '2021-02-26 22:43:55'),
(22, 21, 23, 'S21B23', 23, 'Okok kak :)', '2021-02-26 22:46:04'),
(23, 21, 23, 'S21B23', 23, 'Nanti saya tanya\" lagi ya', '2021-02-26 22:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`) VALUES
(1, 'black'),
(2, 'white'),
(3, 'red');

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
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `payment` varchar(211) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_id`, `user_id`, `qty`, `price`, `payment`) VALUES
(2, 'INV/2021/23/w8Mfwg', 23, 2, 50000, 'paypal'),
(3, 'INV/2021/23/mgLHwR', 23, 2, 50000, 'mastercard'),
(4, 'INV/2021/21/91G8MX', 21, 3, 654000, ''),
(5, 'INV/2021/23/ATOqVs', 23, 4, 300000, 'mastercard'),
(6, 'INV/2021/23/vwxUEq', 23, 5, 1150000, 'stripe'),
(7, 'INV/2021/23/rx3LRN', 23, 1, 75000, 'mastercard'),
(8, 'INV/2021/23/1yqzZy', 23, 1, 500000, 'paypal'),
(9, 'INV/2021/23/kmxGOx', 23, 2, 150000, 'paypal'),
(10, 'INV/2021/23/CnwF7V', 23, 3, 225000, 'mastercard'),
(11, 'INV/2021/23/o01Vp6', 23, 4, 300000, 'mastercard'),
(12, 'INV/2021/23/5s2aTw', 23, 5, 375000, 'mastercard'),
(13, 'INV/2021/21/dnVSJ4', 21, 5, 375000, ''),
(14, 'INV/2021/23/NA66MA', 23, 2, 150000, 'paypal'),
(15, 'INV/2021/23/4v8gWN', 23, 2, 150000, 'stripe'),
(16, 'INV/2021/23/w54sjw', 23, 2, 150000, 'google'),
(17, 'INV/2021/23/jrG6yE', 23, 2, 150000, 'google'),
(18, 'INV/2021/31/iq5Rgt', 31, 3, 225000, 'mastercard'),
(19, 'INV/2021/23/1KzDY7', 23, 3, 140800, 'Apple pay'),
(20, 'INV/2021/23/GhhjtD', 23, 1, 32900, 'Mastercard'),
(21, 'INV/2021/21/uXjufK', 21, 3, 1512000, 'Apple pay'),
(22, 'INV/2021/43/Gr283Z', 43, 2, 150000, 'Mastercard'),
(23, 'INV/2021/23/3g3C0T', 23, 2, 150000, 'stripe');

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
  `user_id` int(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `product_name`, `image`, `product_brand`, `product_description`, `product_price`, `category_id`, `product_rating`, `product_color`, `size`, `product_qty`, `user_id`, `created_at`, `updated_at`) VALUES
(69, 'kaos baju polos 30s cotton bamboo', '/images/1608017062803-image.jpg,/images/1608017062808-image.jpg,/images/1608017062820-image.jpg,/images/1608017062822-image.jpg,/images/1608017062827-', 'PolosBambu', 'Sekarang udah ga usah pusing mikirin kaos keren dengan gambar dan tulisan apaa, cukup pakai kaos polos udah keren dan kekinian. Apalagi pakai kaos polos bahan katun bambu,selain sudah keren kaosnya beda sama yang lainnya karena bahan katun bambu mempunyai antibakterial alami dan nyaman dipakai.', 50000, 1, 4, 'White', 20, 10, NULL, '2020-12-15 15:24:22.888000', '2020-12-15 15:24:22.888000'),
(70, 'Baju tidur wanita/piyama wanita/baju tidur murah', '/images/1608017575800-image.jpg,/images/1608017575814-image.jpg,/images/1608017575818-image.jpg,/images/1608017575828-image.jpg,/images/1608017575837-', 'Distro Polosan', 'Ada harga ada kualitas.\nBeda bahan beda harga, jangan samakan dengan yang biasa', 50000, 1, 3, 'Pink', 20, 10, NULL, '2020-12-15 15:32:55.890000', '2020-12-15 15:32:55.890000'),
(71, 'Celana Panjang Chino Pria Premium Quality / Celana Kerja Pria ', '/images/1608017954292-image.jpg,/images/1608017954379-image.jpg,/images/1608017954383-image.jpg,/images/1608017954386-image.jpg,/images/1608017954389-', 'Simpleclothes.id', 'JAMINAN HARGA TERMURAH , DAN BAHAN \"PREMIUM QUALITY\"', 75000, 2, 4, 'Black', 27, 10, NULL, '2020-12-15 15:39:14.410000', '2020-12-15 15:39:14.410000'),
(72, 'Techdoo Impor Sepatu Sneakers Ringan', '/images/1608044257404-image.jpg,/images/1608044257413-image.jpg,/images/1608044257421-image.jpg,/images/1608044257424-image.jpg,/images/1608044257434-', 'Techdoo', 'Dear Pembeli, mohon mencantumkan warna dan ukuran yang diinginkan di kolom catatan pembeli, jika tidak kita akan kirimkan warna acak.\n', 180000, 3, 5, 'White', 27, 10, NULL, '2020-12-15 22:57:37.475000', '2020-12-15 22:57:37.475000'),
(73, 'Sepatu nike zoom pegasus', '/images/1608046462350-image.jpg,/images/1608046462356-image.jpg,/images/1608046462361-image.jpg,/images/1608046462365-image.jpg,/images/1608046462370-', 'Rizki sport', 'Nike zoom pegasus 35 turbo 2 premium haigt Quality Made in Vietnam', 399000, 3, 5, 'White', 25, 10, NULL, '2020-12-15 23:34:22.397000', '2020-12-15 23:34:22.397000'),
(74, 'Sepatu nike zoom pegasus 2', '/images/1608102029365-image.jpg,/images/1608102029485-image.jpg,/images/1608102029554-image.jpg,/images/1608102029558-image.jpg,/images/1608102029575-', 'Rizki sport', 'Nike zoom pegasus 35 turbo 2 premium haigt Quality Made in Vietnam', 399000, 3, 5, 'White', 25, 10, NULL, '2020-12-16 15:00:29.685000', '2020-12-16 15:00:29.685000'),
(75, 'Sepatu nike zoom pegasus 2', '/images/1608102074335-image.jpg,/images/1608102074338-image.jpg,/images/1608102074343-image.jpg,/images/1608102074345-image.jpg,/images/1608102074352-', 'Rizki sport', 'Nike zoom pegasus 35 turbo 2 premium haigt Quality Made in Vietnam', 399000, 3, 5, 'White', 25, 10, NULL, '2020-12-16 15:01:14.433000', '2020-12-16 15:01:14.433000'),
(76, 'T-shirt Astronaut', '/images/1608131786394-image.jpg,/images/1608131786521-image.jpg,/images/1608131786537-image.jpg,/images/1608131786546-image.jpg,/images/1608131786553-', 'Zalora', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 504000, 1, 5, 'Red', 0, 10, NULL, '2020-12-16 23:16:26.598000', '2020-12-16 23:16:26.598000'),
(77, 'Islamic Mens Clothing Kaftan Shirt', '/images/1608131841131-image.jpg,/images/1608131841261-image.jpg,/images/1608131841469-image.jpg,/images/1608131841546-image.jpg,/images/1608131841604-', 'Ammo cloth', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 32900, 1, 4, 'black', 0, 10, NULL, '2020-12-16 23:17:21.616000', '2020-12-16 23:17:21.616000'),
(78, 'celana sirwal ripstok', '/images/1608135809778-image.jpg,/images/1608135809818-image.jpg,/images/1608135809841-image.jpg,/images/1608135809894-image.jpg,/images/1608135809964-', 'Ammo cloth', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 75000, 2, 5, 'Red', 0, 10, NULL, '2020-12-17 00:23:30.038000', '2020-12-17 00:23:30.038000'),
(79, 'Islamic Mens Clothing Kaftan Shirt', '/images/1608136326675-image.jpg,/images/1608136326678-image.jpg,/images/1608136326683-image.jpg,/images/1608136326685-image.jpg,/images/1608136326692-', 'Ubah cloth', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 504000, 1, 4, 'Red', 0, 10, NULL, '2020-12-17 00:32:06.710000', '2020-12-17 00:32:06.710000'),
(80, 'Celana Jeans Panjang Pensil Pria', '/images/1608136734610-image.jpg,/images/1608136734621-image.jpg,/images/1608136734625-image.jpg,/images/1608136734628-image.jpg,/images/1608136734631-', 'Zalora', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 32900, 2, 4, 'black', 0, 10, 21, '2020-12-17 00:38:54.668000', '2020-12-17 00:38:54.668000'),
(81, 'T-shirt Astronaut', '/images/1608145511573-image.jpg,/images/1608145511581-image.jpg,/images/1608145511607-image.jpg,/images/1608145511629-image.jpg,/images/1608145511647-', 'Zalora', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 75000, 1, 4, 'black', 0, 10, 21, '2020-12-17 03:05:11.672000', '2020-12-17 03:05:11.672000'),
(82, 'Islamic Mens Clothing Kaftan Shirt', '/images/1608171992923-image.jpg,/images/1608171992981-image.jpg,/images/1608171993012-image.jpg,/images/1608171993093-image.jpg,/images/1608171993104-', 'Zalora', 'Kemeja panjang sehingga bisa juga sebagai pengganti busana muslim pria yang sangat fashionable. Tidak tebalsehingga nyaman dikenakan saat udara panas', 75000, 1, 4, 'Red', 0, 10, 21, '2020-12-17 10:26:33.122000', '2020-12-17 10:26:33.122000');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telephone`, `store_name`, `password`, `user_type`) VALUES
(14, '', 'handa2622@gmail.com', '0', '', '$2b$10$TVMrg4hp6U0P4JFXSfwAdOiJ0j/EuT6GX5va6qOKS/4M.ii31CVQi', 2),
(15, '', 'luigi@gmail.com', '0', '', '$2b$10$JQmOUZADepnZ0mjnMPGVneh2LX9cKyqMgqBSqrLwy1ZCa7go2ALpi', 2),
(18, '', 'handa26@gmail.com', '0', '', '$2b$10$mp9aTLFLsRCWha4bVTtgSuUzTLhUXU0jFOeaNTkIRUcaD8.2Xehbe', 2),
(19, '', 'dio@gmail.com', '0', '', '$2b$10$8dU7A35FFqO/H1A0UKBs1.ld2fmsVFkKvXqARk3qFKWmT1pn8aje2', 2),
(20, 'Ananda Muhammad Muthaqin', 'dio@gmail.com', '2147483647', 'Handa Store', '$2b$10$QvQGL05un3/T8/1/78ilxemzoEm.K62rBBTLhufzUQugOdvkZU3Vu', 2),
(21, 'Noel Gallagher', 'notnoel@gmail.com', '831', 'Noel Store', '$2b$10$caU/dOOISjACsCG1Tc3q0ug.KcVpNCLg1rWYEqg.Wb7YtbeQrHxg6', 2),
(22, 'Liam Payne', 'liammail@gmail.com', '0831-1111-2121', 'Liam Store', '$2b$10$8TZEuaRJi6UnYZeP7Q5tv.BBm3B3Jj0vJkaKBWWvsO4RBwVGLvhJK', 2),
(23, 'Handa', 'anandamtq@gmail.com', '083130303030', 'Nanda Store', '$2b$10$H/cTkYP2fo5mfph9y4JwReeEMK0muFqMZh/Gy7nIuNYiqXITk6Oyy', 1),
(24, 'Molly', 'molly26@gmail.com', '0831-2020-2222', 'Molly Store', '$2b$10$R/.b5Q/ADg7b1hrDK4AZ3uOzvWntnr8GB2NRrWRjjOD/Y8X4XkYku', 2),
(25, 'Lennon', 'lennon@gmail.com', '083126262626', 'Lennon store', '$2b$10$SJdWY5pL9Exqr1.j.gUETeOHLjuW7NzkPV3BoXVADHVGfSzFmaQPm', 1),
(26, 'Segall', 'segall@gmail.com', '085543233366', 'Sun Store', '$2b$10$QCghOJYU2hh/bUhhrrwbXueawS1Y6B8mT6x8H9incsO4unVC5XARC', 1),
(27, 'Handa Muthaqin', 'handa260@gmail.com', '083130303030', 'Handa Store', '$2b$10$BpawiBDZxVZGhmomTPvIFOAw23TXmiwrLPeC640yJjUJCYGKShw2O', 2),
(28, 'Hazza Dafi', 'dafi@gmail.com', '083145452056', 'Dafi Store', '$2b$10$oIA7Rne69rMML40PI24toeL5fbh7Rw8mz/vvGI73DbzeO6LB3qkdC', 1),
(29, 'Steve', 'stevie@yahoo.com', '085125083625', 'Apple Store', '$2b$10$fInGlUAfZQpt.SzU5Ut78eDxqHxlDGVjhSaFQ8Tyx6i245PvOmkFq', 2),
(30, 'Steven paul', 'stevie@gmail.com', '083150563654', 'Apple store', '$2b$10$jICVYzdMfrz6bs.l4vaA6.dviL9VzkqjCKPLnHnrm/WRRWqEc8Rxu', 2),
(31, 'Bagas', 'bagas@gmail.com', '083145693625', '', '$2b$10$RTGHJPKTy3dZCcfFp.WrgehwPCusnAMIynllxE5aWm0unQluwq4S2', 1),
(32, 'Test Person', 'test@gmail.com', '0831-1111-2121', 'Test Store', '$2b$10$xLb5yuaeGpkABvqp0jLHFeS0dFpxYuCIXbnZdN1Ry7VvH8e8HYI7y', 2),
(33, 'Jonnie', 'jonnie@yahoo.com', '0831-3030-0998', 'John Store', '$2b$10$rH8X3rtsgDqOeW4Q3j0UmeUvFOax6yzR2Mld12oiOf8YxS1RBdhdK', 2),
(34, 'Moore', 'moore@gmail.com', '', '', '$2b$10$DhFvPsAMA/pNhV7bgCPzveYfwLw9nmeQsAOw.MLkDg.VCiw4kwwD2', 1),
(35, 'Lennin Vladimir', 'xofexe6591@hrandod.com', '083130303030', 'Lennin Store', '$2b$10$rmUeXJypgokN2Dfnqr.kauGl4.ukYkRcqwl9KvKQFJgUU037dZacC', 2),
(36, 'Nanda', 'anandamuhammad89@gmail.com', '083141591960', 'Nanda Store', '$2b$10$kGKhqT7w8n7kf1S45ryZM.6WcR6fGzOgyrPCQK2RapavOTXZOruF2', 2),
(43, 'John Doe', 'johndoe@gmail.com', '', '', '$2b$10$7hUxOMSvsZhIqgdOW/GgvuuAuTKWgOn5XRv8YZA78EyLIuBYywsBu', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blacklist_tokens`
--
ALTER TABLE `blacklist_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
