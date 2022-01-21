-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 1 月 21 日 19:01
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `content`, `date`) VALUES
(1, 'yamazaki', 'test@email.com', 'HELL WORLD', '2022-01-16 14:53:40'),
(2, 'nakajima', 'nakajima@test.com', 'hello', '2022-01-16 14:56:51'),
(3, 'senga', 'senga@test.com', 'konnichiwa', '2022-01-16 15:00:31'),
(4, 'kaku', 'kaku@test.com', 'yahho', '2022-01-16 15:00:31'),
(5, '山田孝之', 'test@test.com', '', '2022-01-16 15:49:02'),
(6, '山田孝之', 'test@test.com', '', '2022-01-16 15:50:07'),
(7, '山田孝之', 'test@test.com', '', '2022-01-16 15:52:51'),
(8, '', '', '', '2022-01-16 15:52:53'),
(9, '山崎賢人', 'kent@email.com', 'ヤッホー', '2022-01-16 15:53:13'),
(10, 'test', 'test', 'test', '2022-01-16 16:14:16'),
(11, 'test', 'test', 'test', '2022-01-16 16:14:43'),
(12, 'tetest', 'tetest', '<script>alert(\'hahaha\")</script>', '2022-01-16 16:27:09'),
(13, 'test', 'test', 'test', '2022-01-16 16:56:47'),
(16, '山田孝之', 'test@test.com', 'aaa', '2022-01-18 23:11:51'),
(19, '山田孝之', 'test@test.com', 'jj', '2022-01-20 21:37:59'),
(20, '', '', '', '2022-01-20 21:54:07'),
(21, '', '', '', '2022-01-20 21:54:08'),
(22, '', '', '', '2022-01-20 21:54:09'),
(23, '', '', '', '2022-01-20 21:54:10'),
(24, 'あああああああ', 'いいいいいいいい', 'うううううううううううううううう', '2022-01-21 21:42:43'),
(25, 'テスト', 'テスト', 'テスト', '2022-01-22 00:31:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_a_table`
--

CREATE TABLE `gs_a_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_a_table`
--

INSERT INTO `gs_a_table` (`id`, `name`, `email`, `content`, `date`) VALUES
(1, '山田孝之', 'test@test.com', 'nkkn', '2022-01-22 01:02:32'),
(2, '山田孝之', 'test@test.com', 'nkkn', '2022-01-22 01:02:40'),
(3, 'あああああああ', 'test', 'ddd', '2022-01-22 01:04:04'),
(4, 'tesuto', 'tesuto', 'tesutotototo', '2022-01-22 01:08:03'),
(5, '山崎賢人', 'kent@email.com', 'テストテストテスト', '2022-01-22 01:09:01'),
(6, 'あああああああああ', 'ああああああああ', 'あああああああああ', '2022-01-22 01:15:20'),
(7, 'ああああああああ', 'いいいいいいいいいい', 'うううううううううううううううううう', '2022-01-22 01:18:48'),
(8, 'テスト', 'テストテスト', 'テストテストテストテスト', '2022-01-22 01:21:41'),
(9, 'カカ閣下かかっkかかk', '聞き聞ききいいい', 'たったたたたたった', '2022-01-22 01:21:58'),
(10, 'シンデレラガール', 'King & Prince', 'かっこいい', '2022-01-22 01:33:38'),
(11, 'koi-wazurai', 'King & Prince', '恋煩い', '2022-01-22 01:37:13'),
(12, 'Mazy Night', 'King & Prince', '衣装がいい！', '2022-01-22 01:38:38'),
(16, '', '', '', '2022-01-22 02:09:32'),
(17, '', '', '', '2022-01-22 02:13:59'),
(18, '', '', '', '2022-01-22 02:52:21');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_b_table`
--

CREATE TABLE `gs_b_table` (
  `id` int(5) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_icelandic_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_icelandic_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_b_table`
--

INSERT INTO `gs_b_table` (`id`, `name`, `email`, `content`, `date`) VALUES
(1, 'King & Prince', 'キンプリ', '２０２０年ツアー', '2022-01-22 02:26:37');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_a_table`
--
ALTER TABLE `gs_a_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_b_table`
--
ALTER TABLE `gs_b_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- テーブルの AUTO_INCREMENT `gs_a_table`
--
ALTER TABLE `gs_a_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルの AUTO_INCREMENT `gs_b_table`
--
ALTER TABLE `gs_b_table`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
