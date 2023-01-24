-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Ago-2017 às 10:23
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noticias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id_noticias` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `mensagem` text,
  `id_usuario` int(10) UNSIGNED DEFAULT NULL,
  `arquivo` varchar(40) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id_noticias`, `titulo`, `mensagem`, `id_usuario`, `arquivo`, `data`) VALUES
(69, 'null', '', NULL, 'NULL', '2017-08-14 07:16:49'),
(70, 'null', 'MMMMMMMMMMMMMMMMMMMMMMMMMMMMM', NULL, 'NULL', '2017-08-14 07:17:45'),
(71, 'null', 'JKBKJBKJB', NULL, 'NULL', '2017-08-14 07:17:51'),
(72, 'null', '', NULL, 'NULL', '2017-08-14 07:19:14'),
(73, 'null', '', NULL, 'NULL', '2017-08-14 07:19:52'),
(74, 'null', 'NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN', NULL, 'NULL', '2017-08-14 07:20:11'),
(75, 'null', '', NULL, 'NULL', '2017-08-14 07:20:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `imagem` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nome`, `login`, `senha`, `imagem`) VALUES
(1, 'ALEXANDRE', 'ALEX', 'ALEX', NULL),
(2, 'joao pedro', 'joao', 'pedro', NULL),
(3, 'root', 'root', 'toor', NULL),
(4, 'root', 'root', 'toor', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticias`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
