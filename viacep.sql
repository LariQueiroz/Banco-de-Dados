-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/10/2025 às 20:37
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viacep`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cep`
--

CREATE TABLE `cep` (
  `id` int(11) NOT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `logadouro` varchar(60) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `ddd` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `região` varchar(50) DEFAULT NULL,
  `código_ibge` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estado`
--

INSERT INTO `estado` (`id`, `uf`, `região`, `código_ibge`) VALUES
(1, 'AC', 'Norte', 12),
(2, 'AL', 'Nordeste', 27),
(3, 'AP', 'Norte', 16),
(4, 'AM', 'Norte', 13),
(5, 'BA', 'Nordeste', 29),
(6, 'CE', 'Nordeste', 23),
(7, 'ES', 'Sudeste', 53),
(8, 'GO', 'Centro-Oeste', 32),
(9, 'MA', 'Nordeste', 52),
(10, 'MT', 'Centro-Oeste', 21),
(11, 'MS', 'Centro-Oeste', 50),
(12, 'MG', 'Nordeste', 31),
(13, 'PA', 'Norte', 15),
(14, 'PB', 'Nordeste', 25),
(15, 'PR', 'Sul', 41),
(16, 'PE', 'Nordeste', 26),
(17, 'PI', 'Nordeste', 22),
(18, 'RJ', 'Sudeste', 33),
(19, 'RN', 'Nordeste', 24),
(20, 'RS', 'Sul', 43),
(21, 'RO', 'Norte', 11),
(22, 'RR', 'Norte', 14),
(23, 'SC', 'Sul', 42),
(24, 'SP', 'Sudeste', 35),
(25, 'SE', 'Nordeste', 27),
(26, 'TO', 'Norte', 28),
(27, 'AL', 'Nordeste', 17);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cep`
--
ALTER TABLE `cep`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cep`
--
ALTER TABLE `cep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cep`
--
ALTER TABLE `cep`
  ADD CONSTRAINT `cep_ibfk_1` FOREIGN KEY (`id`) REFERENCES `cidade` (`id`);

--
-- Restrições para tabelas `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id`) REFERENCES `estado` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
