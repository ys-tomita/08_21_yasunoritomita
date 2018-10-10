-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 10 月 10 日 08:51
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f01_db21`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table1`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table1` (
`id` int(12) NOT NULL,
  `entry` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pattern` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `volume` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `memo` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table1`
--

INSERT INTO `gs_bm_table1` (`id`, `entry`, `number`, `pattern`, `amount`, `volume`, `total`, `memo`, `indate`) VALUES
(1, '新規', '0', '買', '0', '0', '0', '※日時・理由・決済・損失計画・メモ', '2018-09-25 03:00:21'),
(2, '新規', '0', '買', '23000', '10', '0', '09250300\r\n25日線オーバー、SSアラート\r\n直近高値23500\r\n▲40（1分足・長期線ダウン）', '2018-09-25 03:02:31'),
(3, '返済', '2', '売', '23100', '10', '+100000', '09250302\r\n100円超えにつき\r\n★プラスになったら欲張らない', '2018-09-25 03:03:39'),
(4, '新規', '0', '売', '23150', '10', '0', '09250304\r\nRCI70オーバー\r\nRCI50\r\nRCI70以内かつ▲50\r\n', '2018-09-25 03:06:55'),
(5, '返済', '4', '買', '23200', '10', '-50000', '09250308\r\nRCI65で▲50到達\r\n★RCI線の角度が緩やかな場合は逆張り利きづらい', '2018-09-25 03:09:48'),
(6, '新規', '0', '売', '23830', '10', '0', '09271716\r\namuro日中取引状況を確認\r\n24000節目\r\n23750（直近最安値）', '2018-09-27 18:24:45'),
(7, '返済', '6', '買', '23850', '10', '+20000', '※日時・理由・決済・損失計画・メモ', '2018-09-27 18:25:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php02_table`
--

CREATE TABLE IF NOT EXISTS `gs_php02_table` (
`id` int(12) NOT NULL,
  `entry` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `pattern` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `volume` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `memo` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php02_table`
--

INSERT INTO `gs_php02_table` (`id`, `entry`, `number`, `pattern`, `amount`, `volume`, `total`, `memo`, `indate`) VALUES
(23, '新規', '23', '買', '23000', '10', '0', 'ooo', '2018-09-25 01:51:51'),
(24, '返済', '23', '売', '24000', '10', '1000000', 'memo', '2018-09-25 01:52:29'),
(25, '新規', '25', '売', '23000', '10', '0', 'memo', '2018-09-25 01:52:58'),
(26, '返済', '25', '買', '22500', '10', '-500000', 'memo', '2018-09-25 01:53:22'),
(27, '新規', '0', '買', '23000', '10', '0', 'memo', '2018-09-25 02:00:12'),
(28, '新規', '23', '買', '23000', '10', '0', 'memo', '2018-09-25 02:03:00'),
(29, '新規', '23', '買', '23000', '10', '0', '9/25 01:55  DOW▲150（▲1.5%）。移動平均75日線を下回ったので、ショートイン。直近最安値の22800円で決済予定', '2018-09-25 02:03:28'),
(30, '新規', '0', '買', '23000', '10', '0', '09250230\r\n25日線超え。直近高値23800前に決済予定', '2018-09-25 02:31:07');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php03_table`
--

CREATE TABLE IF NOT EXISTS `gs_php03_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php03_table`
--

INSERT INTO `gs_php03_table` (`id`, `name`, `email`, `detail`, `indate`) VALUES
(1, 'kodama', 'kodama@gs.gs', 'test01', '2018-09-15 15:21:00'),
(2, 'yamasaki', 'yamasaki@gs.gs', 'test02', '2018-09-15 15:22:57'),
(3, 'osg', 'osg@gs.gs', 'test03', '2018-09-15 15:23:20'),
(4, 'morita', 'morita@gs.gs', 'test04', '2018-09-15 15:23:48'),
(5, 'kimura', 'kimura@gs.gs', 'test05', '2018-09-15 15:24:48'),
(6, 'kamiyama', 'kamiyama@gs.gs', 'test06', '2018-09-15 16:12:26'),
(7, 'kanou', 'kanou@gs.gs', 'test07', '2018-09-15 16:13:06'),
(8, 'kosuge', 'kosuge@gs.gs', 'test08', '2018-09-15 16:17:04');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table1`
--
ALTER TABLE `gs_bm_table1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php03_table`
--
ALTER TABLE `gs_php03_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table1`
--
ALTER TABLE `gs_bm_table1`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `gs_php03_table`
--
ALTER TABLE `gs_php03_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
