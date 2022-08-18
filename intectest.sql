-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 15 2022 г., 22:53
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `intectest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 NOT NULL,
  `price` double NOT NULL,
  `preview_text` varchar(30) CHARACTER SET utf8 NOT NULL,
  `detail_text` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `price`, `preview_text`, `detail_text`, `user_id`) VALUES
(1, 'Bread', '1', 45, 'Very good bad', 'What your family needs', 1),
(2, 'tomato', '2', 110, 'Your children will be delighte', 'Your children will be delighted', 1),
(3, 'delicious cookies', '3', 60, 'There are no better cookies', 'This biscuit consists entirely of natural ingredients. Does not contain dyes and preservatives', 2),
(15, 'name', 'ABCD', 100, 'preview_text2', 'detail_text2', 1),
(18, 'phone', '6', 15000, 'good phone', 'Very good phone', 6),
(19, 'Молоко', '7', 15000, 'Топлёное молоко', 'Самое то для тебя', 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
