-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 05 2023 г., 17:51
-- Версия сервера: 5.7.43
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php-oop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Мода', '2014-06-01 00:35:07', '2014-05-30 12:34:33'),
(2, 'Электроника', '2014-06-01 00:35:07', '2014-05-30 12:34:33'),
(3, 'Автомобили', '2014-06-01 00:35:07', '2014-05-30 12:34:54');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'Мой первый классный телефон!', 336, '', 3, '2020-03-05 01:12:26', '2021-01-11 12:12:26'),
(3, 'Samsung Galaxy S4', 'Самые крутые умные часы!', 600, '', 3, '2014-06-01 01:12:26', '2014-07-31 12:12:26'),
(7, 'Lenovo Laptop', 'Мой бизнес партнер.', 399, '', 2, '2020-01-07 01:13:45', '2021-01-20 21:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Хороший планшет.', 259, '', 2, '2018-06-01 01:14:13', '2019-05-30 21:14:08'),
(9, 'Spalding Watch', 'Мои спортивные часы.', 199, '', 1, '2019-05-03 01:18:36', '2020-05-30 21:18:31'),
(10, 'Sony Smart Watch', 'Как насчет нет?', 300, '', 2, '2020-06-06 17:10:01', '2021-01-05 13:09:51'),
(11, 'Huawei Y300', 'Для тестирования.', 100, '', 2, '2014-06-06 17:11:04', '2015-06-05 13:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Идеально как подарок! test', 60, '', 1, '2017-06-06 17:12:21', '2018-06-05 13:12:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Классная красная рубашка!', 70, '', 1, '2019-06-06 17:12:59', '2020-06-05 13:12:49'),
(25, 'Abercrombie Allen Anew Shirt', 'Классная новая рубашка! new', 999, '', 1, '2020-11-22 18:42:13', '2021-01-21 14:42:13'),
(26, 'Another product', 'Потрясающий товар!', 555, '', 2, '2019-11-22 19:07:34', '2021-01-19 15:07:34'),
(30, 'Wal-mart Shirt', '', 555, '', 2, '2018-12-13 00:52:29', '2019-12-11 20:52:29'),
(32, 'Washing Machine Model PTRR', 'Какой-то новый продукт.', 999, '', 1, '2020-01-08 22:44:15', '2021-01-09 18:44:15'),
(33, 'Mike', '16[]l', 500, '4e6bb5d6471ea1614b84d9e397b2b3484313ac69-Без названия.jpg', 2, '2023-09-05 17:31:01', '2023-09-05 17:31:01'),
(36, 'Huawei  new model', 'test', 500, '1fc4176a7bee2d23e228d1b3c81be212ddcd6b11-Crazy_Frog.jpg', 2, '2023-09-05 17:49:28', '2023-09-05 17:49:28');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
