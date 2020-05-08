-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 08 2020 г., 15:46
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bank`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `userid` int(11) NOT NULL,
  `transfer` varchar(20) DEFAULT NULL,
  `time` time NOT NULL,
  `credit` int(11) NOT NULL,
  `login` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`userid`, `transfer`, `time`, `credit`, `login`) VALUES
(2, 'zxc + TNG 250', '15:09:12', 0, 'siko'),
(2, NULL, '16:24:07', 120, 'pika'),
(2, 'zxc + 25 TNG', '15:09:12', 192, 'pika'),
(2, 'zxc + 13 TNG', '15:09:12', 0, 'pika'),
(2, 'pika + 141 TNG', '15:09:12', 0, 'pika'),
(2, 'zxc + 25 TNG', '15:09:12', 0, 'pika'),
(2, 'pika + 33 TNG', '15:09:12', 0, 'pika'),
(2, 'zxc + 11 TNG', '15:09:12', 0, 'pika'),
(2, 'zxc + 24 TNG', '15:09:12', 0, 'pika'),
(2, 'zxc + 121 TNG', '15:09:12', 0, 'pika');

-- --------------------------------------------------------

--
-- Структура таблицы `schets`
--

CREATE TABLE `schets` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `valuta` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `schets`
--

INSERT INTO `schets` (`id`, `userid`, `valuta`, `amount`) VALUES
(1, 2, 'tng', 147),
(3, 3, 'tng', 300),
(6, 4, 'tng', 773),
(10, 5, 'tng', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `City` varchar(20) NOT NULL,
  `NumberPhone` varchar(20) NOT NULL,
  `Operator` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `Answer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `City`, `NumberPhone`, `Operator`, `date`, `Answer`) VALUES
(2, 'pika', 'pika', NULL, 'Almaty', '87758209058', 'Activ', '2020-04-08', 'nurbak'),
(3, 'kama', 'kama', NULL, 'Almaty', '87027553778', 'Altel', '2003-01-15', 'kurdaspay'),
(4, 'zxc', 'zxc', NULL, 'Almaty', '87752450278', 'Activ', '2020-04-01', 'nurbak'),
(5, 'asd', 'asd', NULL, 'Almaty', '87752450278', 'Activ', '2020-05-06', 'asd');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schets`
--
ALTER TABLE `schets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `schets`
--
ALTER TABLE `schets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
