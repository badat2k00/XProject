-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 04, 2023 lúc 11:33 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xproject`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary`) VALUES
(1, 'Kendra Riccione', '984 Norway Maple Point', 3726),
(2, 'Winifield Cosh', '677 Knutson Street', 3632),
(3, 'Shaine Swayne', '15765 Loomis Terrace', 1788),
(4, 'Alanna Ginity', '235 Summit Drive', 1797),
(5, 'Elwira McMonies', '6266 Marquette Court', 2074),
(6, 'Lexis Weddeburn - Scrimgeour', '0243 Clyde Gallagher Pass', 1216),
(7, 'Burke Tunny', '9858 Oxford Road', 2280),
(8, 'Barnie Donn', '8 Graedel Way', 4894),
(9, 'Harrison Livingstone', '44 Esch Place', 2254),
(10, 'Ivy Ellesmere', '2639 Wayridge Terrace', 4388),
(11, 'Lyndell Sames', '7 Lunder Junction', 2665),
(12, 'Saba Easterfield', '2 Roth Road', 1755),
(13, 'Ekaterina Berthon', '1 Mayer Point', 3870),
(14, 'Hans Redpath', '09 Sommers Hill', 2179),
(15, 'Nevile Sporle', '9 Norway Maple Point', 4831),
(16, 'Lauren Karlsson', '511 David Center', 1833),
(17, 'Chelsea Brockman', '6720 Graceland Hill', 2538),
(18, 'Roobbie Schankelborg', '79 Morning Pass', 3136),
(19, 'Valeria Danher', '283 Mcbride Plaza', 2344),
(20, 'Otes Kliement', '0 Thompson Street', 2951),
(21, 'Arlen De Witt', '52 Troy Park', 2579),
(22, 'Lurline Pieterick', '09 Prentice Way', 4195),
(23, 'Lise Favill', '498 School Park', 4416),
(24, 'Domini Dorrington', '79 John Wall Junction', 2192),
(25, 'Shara Kenworthy', '92 Nelson Lane', 2597),
(26, 'Eliza Pogson', '4063 Hauk Road', 2131),
(27, 'Samantha Giovannacci', '91623 Crest Line Point', 3254),
(28, 'Jillana Lempel', '37 Cottonwood Junction', 2132),
(29, 'Giorgi Benger', '3 Homewood Terrace', 4802),
(30, 'Estele Beck', '6632 Ilene Avenue', 3270),
(31, 'Mariellen Kiffin', '82026 Summerview Court', 2836),
(32, 'Nicky Jerson', '39809 Bowman Point', 1072),
(33, 'Verne Benitez', '258 Gulseth Alley', 4117),
(34, 'Pancho Northage', '80 Menomonie Crossing', 4019),
(35, 'Fritz Evershed', '1574 New Castle Pass', 3223),
(36, 'Trent Huriche', '7521 Onsgard Street', 1829),
(37, 'Gill Dinis', '913 Bartelt Junction', 1526),
(38, 'Laurianne Richly', '47492 Lindbergh Terrace', 1191),
(39, 'Truman Tellenbach', '25 Crownhardt Pass', 2542),
(40, 'Minta Sherrell', '6533 Havey Road', 4295),
(41, 'Milzie Raper', '005 Butterfield Avenue', 1940),
(42, 'Albertine Ashfold', '0 Bayside Park', 2101),
(43, 'Marika Wallege', '5395 Straubel Alley', 1616),
(44, 'Reidar Fitton', '18770 Crescent Oaks Drive', 3941),
(45, 'Blane Leahair', '8 Roxbury Point', 3074),
(46, 'Hershel Cosslett', '89 Delaware Avenue', 4253),
(47, 'Shawna Kearsley', '773 Scoville Center', 1542),
(48, 'Carlina Bessom', '1 Jenna Way', 2485),
(49, 'Cindie Bartels-Ellis', '3 Golf View Center', 4078),
(50, 'Salvidor Camblin', '199 Walton Alley', 1895);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
