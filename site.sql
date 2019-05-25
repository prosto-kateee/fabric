-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 25 2019 г., 17:18
-- Версия сервера: 5.7.20-log
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `form_fields`
--

CREATE TABLE `form_fields` (
  `CNT` int(11) NOT NULL,
  `FORM` varchar(20) NOT NULL,
  `FIELD` varchar(20) NOT NULL,
  `NAME_FIELD` varchar(40) NOT NULL,
  `TYPE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `form_fields`
--

INSERT INTO `form_fields` (`CNT`, `FORM`, `FIELD`, `NAME_FIELD`, `TYPE`) VALUES
(1, 'feedback', 'phone', 'Телефон', 'text'),
(2, 'feedback', 'name', 'Имя', 'text'),
(3, 'review', 'review', 'Отзыв', 'textarea'),
(4, 'review', 'name', 'ФИО', 'text');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`CNT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
