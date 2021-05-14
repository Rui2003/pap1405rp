-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Maio-2021 às 17:21
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `papatualizada`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `categoria`) VALUES
(1, 'DJ'),
(2, 'Estudio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `designacao` int(11) NOT NULL,
  `preco` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `descricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `preco` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `idsubcat` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `marca`, `preco`, `descricao`, `modelo`, `idsubcat`, `imagem`) VALUES
(89, 'Pioneer', 1049, 'DJM 750', 'DJM 750 MK2', 1, '2021.04.18-12.53.50.jpg'),
(90, 'Allen & Heath ', 1528, 'XONE ', 'XONE 96', 1, '2021.04.18-12.56.24.jpg'),
(91, 'Reloop', 799, 'RMX ', 'RMX 90', 1, '2021.04.18-12.57.31.jpg'),
(92, 'Numark', 107, 'M2', 'M2', 1, '2021.04.18-12.58.20.jpg'),
(93, 'Denon', 1199, 'X1850 Prime', 'M2', 1, '2021.04.18-13.29.14.jpg'),
(94, 'Allen & Heath ', 1125, 'XONE', 'XONE 92', 1, '2021.04.18-13.30.13.jpg'),
(95, 'Pioneer', 499, 'DJM', 'DJM 350', 1, '2021.04.18-13.31.29.jpg'),
(96, 'Pioneer', 2925, 'DJM', 'DJM V10', 1, '2021.04.18-13.32.06.jpg'),
(97, 'Numark', 170, 'M4', 'M4', 1, '2021.04.18-13.33.01.jpg'),
(98, 'Pioneer', 1400, 'DJM', 'DJM S7', 1, '2021.04.18-13.34.54.png'),
(99, 'Allen & Heath ', 1780, 'XONE', 'XONE:4D', 1, '2021.04.18-13.38.05.jpg'),
(100, 'Reloop', 299, 'RMX', 'RMX 33i', 1, '2021.04.18-13.40.06.jpg'),
(101, 'Reloop', 199, 'RP 1000 ', 'RP 1000 MK2', 2, '2021.04.18-13.41.52.jpg'),
(104, 'Technics', 899, 'SL-1210 ', 'SL-1210 MK7', 2, '2021.04.19-18.06.16.jpg'),
(105, 'Denon', 480, 'VL12 ', 'VL12 Prime', 2, '2021.04.19-18.08.37.jpg'),
(106, 'Pioneer', 619, 'PLX', 'PLX-1000', 2, '2021.04.19-18.09.58.jpg'),
(107, 'Reloop', 229, 'Spin', 'Spin', 2, '2021.04.19-18.26.39.jpg'),
(108, 'Numark', 249, 'TT 250', 'TT 250 USB', 2, '2021.04.19-18.27.40.jpg'),
(109, 'Reloop', 475, 'Turn 3', 'Turn 3(V)', 2, '2021.04.19-18.29.02.png'),
(110, 'Technics', 2925, 'SL-1210 ', 'SL-1210 MK7R Red Bull BC One Limited Edition', 2, '2021.04.19-18.30.11.jpg'),
(111, 'Reloop', 249, 'RP-2000 ', 'RP-2000 MK2', 2, '2021.04.19-18.31.11.jpg'),
(112, 'Reloop', 289, 'RP-4000 ', 'RP-4000 MK2', 2, '2021.04.19-18.32.23.jpg'),
(113, 'Reloop', 529, 'RP-7000 ', 'RP-7000 MK2 Silver', 2, '2021.04.19-18.39.12.jpg'),
(114, 'Reloop', 600, 'RP-8000', 'RP-8000 MK2 Silver', 2, '2021.04.19-18.39.56.jpg'),
(115, 'Pioneer', 260, 'DDJ', 'DDJ-400', 4, '2021.04.19-18.41.39.jpg'),
(116, 'Hercules', 110, 'Impulse', 'Impulse 200', 4, '2021.04.19-18.44.13.jpg'),
(118, 'Native Instruments', 265, 'S2 MKII', 'Traktor Kontrol S2 MKII', 4, '2021.04.19-18.46.37.jpg'),
(119, 'Pioneer', 237, 'DDJ', 'DDJ SB3', 4, '2021.04.19-18.47.17.jpg'),
(120, 'Pioneer', 738, 'DDJ ', 'DDJ-800', 4, '2021.04.19-18.50.13.jpg'),
(121, 'Pioneer', 1129, 'DDJ ', 'DDJ-1000', 4, '2021.04.19-18.50.47.jpg'),
(122, 'Native Instruments', 730, ' S4 MKIII', 'Traktor Kontrol S4 MKIII', 4, '2021.04.19-18.51.41.jpg'),
(123, 'Numark', 70, 'DJ2GO 2', 'DJ2GO 2', 4, '2021.04.19-18.52.55.jpg'),
(124, 'Denon', 1745, 'Prime 4', 'Prime 4', 4, '2021.04.19-18.53.46.jpg'),
(125, 'Numark', 285, 'MixTrack Platinium FX', 'MixTrack Platinium FX', 4, '2021.04.19-18.54.22.jpg'),
(126, 'Rane ', 1489, 'One', 'One', 4, '2021.04.19-18.55.16.jpg'),
(127, 'Reloop', 219, 'Budy', 'Budy', 4, '2021.04.19-18.55.47.jpg'),
(128, 'Pioneer', 599, 'DDJ-FLX6', 'DDJ-FLX6', 4, '2021.04.19-18.56.46.jpg'),
(129, 'Hercules', 250, 'Impulse 500', 'Impulse 500', 4, '2021.04.19-18.57.35.jpg'),
(130, 'Allen & Heath', 235, 'XONE:K2', 'XONE:K2', 4, '2021.04.19-18.58.26.jpg'),
(131, 'Native Instruments', 175, 'Traktor Kontrol X1 Mk2', 'Traktor Kontrol X1 Mk2', 4, '2021.04.19-18.59.08.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idsubcat` int(11) NOT NULL,
  `subcat` varchar(50) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`idsubcat`, `subcat`, `idcategoria`) VALUES
(1, 'mesas', 1),
(2, 'giradiscos', 1),
(3, 'teclados', 2),
(4, 'controladoras', 1),
(5, 'headphones', 1),
(6, 'leitores', 1),
(7, 'monitores de estudio', 2),
(8, 'samplers e efeitos', 2),
(9, 'sintetizadores', 2),
(10, 'controladores midi', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idsubcat`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idsubcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
