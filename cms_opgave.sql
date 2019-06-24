-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 24. 06 2019 kl. 12:30:25
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `content_management`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `fk_category` int(11) NOT NULL,
  `fk_author` int(11) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `articles`
--

INSERT INTO `articles` (`id`, `name`, `content`, `fk_category`, `fk_author`, `image`, `published`) VALUES
(7, 'fgdsfgfghfgjdfh', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</p><p><br></p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</p><p><br></p><p><br></p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.<br></p>', 9, 6, '1560852718780_brightkite_32.png', 1),
(8, 'Sony', '<p><b>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</b></p><p><b>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</b></p><p><u>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</u></p><p><span style="background-color: rgb(8, 82, 148);">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.</span><br></p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Delectus voluptate exercitationem necessitatibus dolor non consequuntur quaerat? Accusamus praesentium, explicabo cum itaque architecto, sunt in enim commodi, pariatur nobis eligendi modi.<br></p><p><br></p><table class="table table-bordered"><tbody><tr><td>1</td><td>1</td></tr><tr><td>1</td><td>1</td></tr></tbody></table><p><br></p>', 9, 6, '1560854942172_digg_32.png', 1),
(9, 'Alt er godt', '<h2>KLLLLLLLLLLaaaaaaaaassse</h2><h3>FLOOOOOOOOOOOOOOOT</h3><h4>NEEEEEEEEEEEEEEJJJ</h4><p><u>Så er der også lister og tabeller!!!</u></p><p><u>sort</u></p><p><u>hvid</u></p><p><u>blå</u></p><p><br></p><table class="table table-bordered"><tbody><tr><td>lkmkm</td></tr></tbody></table>', 9, 6, '1560949122074_designmoo_32.png', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(8, 'Sider'),
(9, 'Artikler'),
(10, 'Produkter'),
(11, 'test');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `globals`
--

CREATE TABLE IF NOT EXISTS `globals` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `globals`
--

INSERT INTO `globals` (`id`, `name`, `description`) VALUES
(1, 'CMS', 'CMS for alle');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`id`, `name`) VALUES
(34, '1560769006715_apple_32.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `position` int(11) NOT NULL,
  `fk_category` varchar(75) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `menu`
--

INSERT INTO `menu` (`id`, `name`, `position`, `fk_category`) VALUES
(33, 'Hjem', 10, ''),
(34, 'Login', 20, 'login'),
(39, 'Om os', 70, 'Om%20os');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `fk_category` int(11) NOT NULL,
  `fk_author` int(11) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `sanitized_url` varchar(70) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `fk_category`, `fk_author`, `image`, `published`, `sanitized_url`) VALUES
(27, 'Om os', '<p style="text-align: center; ">Vi laver CMS i lange baner!</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus s.</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!</p><p style="text-align: center; ">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic deserunt quibusdam a at reiciendis similique natus perspiciatis molestiae ab facilis, temporibus soluta deleniti odit et omnis dolor expedita velit maxime!<br></p>', 8, 6, 'computer2.png', 1, 'Om%20os');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `fk_category` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `fk_category`, `published`, `image`) VALUES
(1, 'produkt 1', 'werwerwerwerwer', '1200', 10, 1, '1561014501119_computer1.png'),
(2, 'Produkt 2', '<p>dfaswaewergergergergergargergegeargewrgeg<', '7000', 10, 1, '1561014559733_computer2.png'),
(3, 'Produkt 3', '<p>wfewaegerhgerherhgerhgwergwerqg</p>', '3454', 10, 1, '1561014764975_computer1.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `roles`
--

INSERT INTO `roles` (`id`, `name`, `level`) VALUES
(1, 'Super admin', 100),
(2, 'Admin', 90),
(3, 'Moderator', 80),
(4, 'Author', 20),
(5, 'User', 10),
(6, 'Guest', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `pass` varchar(75) NOT NULL,
  `fk_role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `user_name`, `pass`, `fk_role`) VALUES
(6, 'admin', '$2a$10$/eNM5k06Q8mZSNvxUhtz6.66YeArR6xuewvGJwzHbbV8CrrT3AXMm', 1),
(10, 'steffen', '$2a$10$vUNQMdqQ.No7zDVpsP5/Y.iwoC78lc/Vvnt6NN3cn12jezHR8Pv3m', 4);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_name_UNIQUE` (`user_name`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Tilføj AUTO_INCREMENT i tabel `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- Tilføj AUTO_INCREMENT i tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- Tilføj AUTO_INCREMENT i tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Tilføj AUTO_INCREMENT i tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
