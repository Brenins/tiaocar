-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: opmy0003.servidorwebfacil.com:3306
-- Generation Time: 16-Mar-2022 às 11:09
-- Versão do servidor: 5.6.23-log
-- versão do PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `burnes_carros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `banner`) VALUES
(1, 'banner01.jpg'),
(2, 'banner02.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id`, `marca`) VALUES
(1, 'Toyota'),
(2, 'Renault'),
(3, 'Fiat'),
(4, 'Ford');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `ano` char(9) NOT NULL,
  `valor` float NOT NULL,
  `combustivel` varchar(15) NOT NULL,
  `cor` varchar(25) NOT NULL,
  `opcionais` text NOT NULL,
  `marca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `modelo`, `foto`, `ano`, `valor`, `combustivel`, `cor`, `opcionais`, `marca_id`) VALUES
(1, 'Corolla XEI 2.0 Auto', 'corolla.jpg', '2020/2021', 135000, 'Flex', 'Prata', 'Completo: Ar Condicionado, Trio Eletrico, Direcoo Hidraulica, Computador de Bordo, Airbags', 1),
(2, 'Yaris Alt', 'yaris.jpg', '2021/2022', 90567.9, 'Flex', 'Branco', 'Completo', 1),
(3, 'Oroch', 'oroch.jpg', '2019/2020', 120001, 'Flex', 'Branco', 'Completa, Autompatica', 2),
(4, 'Duster', 'duster.jpg', '2021/2022', 150561, 'Flex', 'Prata', 'Completa, Automática', 2),
(5, 'Uno Itália', 'uno.jpg', '2020/2021', 89600.7, 'Flex', 'Prata', 'Direção Hidráulica', 3),
(6, 'Toro Limited', 'toro.jpg', '2020/2020', 170901, 'Diesel', 'Preta', 'Completa, Automática, Computador de Bordo', 3),
(7, 'Ka', 'ka.jpg', '2019/2020', 79000.9, 'Flex', 'Prata', 'Trio Elétrico', 4),
(8, 'Bronco', 'bronco.jpg', '2021/2022', 345000, 'Diesel', 'Cinza Escuro', 'Completo, 4x4', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
