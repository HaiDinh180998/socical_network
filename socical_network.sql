-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2020 lúc 12:21 PM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `socical_network`
--
CREATE DATABASE IF NOT EXISTS `socical_network` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `socical_network`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(2, 19, 2, 'afh', 'hai_dinh_&05d', '2020-12-09 02:06:24'),
(3, 19, 2, 'dfg', 'hai_dinh_&05d', '2020-12-09 02:19:32'),
(4, 19, 2, 'here', 'hai_dinh_&05d', '2020-12-09 02:38:13'),
(5, 6, 2, 'ưdf', 'hai_dinh_&05d', '2020-12-09 02:39:18'),
(6, 19, 2, 'hello', 'hai_dinh_&05d', '2020-12-09 14:51:28'),
(7, 20, 4, 'hoo\r\n', 'hai_dinh_&05d', '2020-12-10 16:49:28'),
(8, 6, 2, 'he', 'hai_dinh_&05d', '2020-12-10 16:54:07'),
(9, 21, 1, 'hello', 'hai_dinh_&05d', '2020-12-19 12:08:59'),
(10, 19, 2, 'hello', 'hai_dinh_&05d', '2020-12-29 08:59:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(6, 2, 'ưer', 'Q5.PNG.6', '2020-12-06 16:07:50'),
(19, 2, 'hello everybody hi\r\n			 \r\n			 \r\n			 \r\n			', '', '2020-12-06 18:00:25'),
(20, 4, 'helllo', '', '2020-12-10 02:02:03'),
(21, 1, 'what is your name?', '', '2020-12-10 17:04:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(1, 'hai', 'dinh', 'hai_dinh_&05d', 'hello every one!', '...', '1234567890', 'hai@gmail.com', 'Ha Noi', ' Male', '2020-11-20', 'head_red.png', 'Q5.PNG.30', '2020-11-25 03:50:28', 'verified', 'yes', 'Iwanttoputadingintheuniverse.'),
(2, 'hai', 'dinh', 'hai_dinh_&05d', 'hello every one!', '...', '1234567890', 'hai1@gmail.com', 'Ha Noi', ' Male', '2020-11-11', 'toriqoise.png', 'Q5.PNG.99', '2020-11-26 03:37:35', 'verified', 'yes', 'Iwanttoputadingintheuniverse.'),
(3, 'ds', 'hai', 'ds_hai_&05d', 'hello every one!', '...', '0987654321', 'asdas2@gmadsd', 'Ha Noi', ' Male', '2020-11-19', 'head_red.png', 'default.png', '2020-11-26 09:58:27', 'verified', 'no', 'Iwanttoputadingintheuniverse.'),
(4, 'hi', 'hai', 'hi_hai_994388', 'Hello Coding Cafe.This is my default status!', '...', '1234567890', 'gmai@gmail.com', 'TPHCM', 'Female', '2020-12-25', 'flower.png', 'Q5.PNG.16', '2020-12-10 01:59:17', 'verified', 'yes', 'Iwanttoputading intheuniverse.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
