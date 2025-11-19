-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 15:16
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
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos`
--

CREATE TABLE `acervos` (
  `id_acervos` int(11) NOT NULL,
  `titulo1` varchar(100) DEFAULT NULL,
  `titulo2` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `outrosAutores` varchar(100) DEFAULT NULL,
  `edicao` varchar(100) DEFAULT NULL,
  `tipoAcervo` int(11) DEFAULT NULL,
  `anoEdicao` int(4) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `numTombo` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_editora` int(11) DEFAULT NULL,
  `id_clientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervos`
--

INSERT INTO `acervos` (`id_acervos`, `titulo1`, `titulo2`, `autor`, `outrosAutores`, `edicao`, `tipoAcervo`, `anoEdicao`, `origem`, `numTombo`, `id_categoria`, `id_editora`, `id_clientes`) VALUES
(1, 'Dom Casmurro', NULL, 'Machado de Assis', NULL, 'Edição 2019', 0, 2019, 'Compra', 10001, 1, 1, NULL),
(2, '1984', NULL, 'George Orwell', NULL, 'Edição 2021', 0, 2021, 'Doação', 10002, 2, 2, NULL),
(3, 'O Pequeno Príncipe', NULL, 'Antoine de Saint-Exupéry', NULL, 'Edição 2020', 0, 2020, 'Compra', 10003, 3, 3, 4),
(4, 'Harry Potter e a Pedra Filosofal', NULL, 'J.K. Rowling', NULL, 'Edição 2017', 0, 2017, 'Compra', 10004, 4, 4, NULL),
(5, 'A Arte da Guerra', NULL, 'Sun Tzu', NULL, 'Edição 2015', 0, 2015, 'Compra', 10005, 5, 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervo_autor`
--

CREATE TABLE `acervo_autor` (
  `id_acervo_autor` int(11) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_acervos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervo_autor`
--

INSERT INTO `acervo_autor` (`id_acervo_autor`, `id_autor`, `id_acervos`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `numAutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome`, `numAutor`) VALUES
(1, 'Machado de Assis', 1001),
(2, 'George Orwell', 1002),
(3, 'Antoine de Saint-Exupéry', 1003),
(4, 'J.K. Rowling', 1004),
(5, 'Sun Tzu', 1005);

-- --------------------------------------------------------

--
-- Estrutura para tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `país` varchar(50) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `valor_multa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `biblioteca`
--

INSERT INTO `biblioteca` (`id_biblioteca`, `nome`, `endereco`, `cidade`, `estado`, `país`, `cep`, `telefone`, `email`, `valor_multa`) VALUES
(1, 'Biblioteca Municipal Monteiro Lobato', 'Rua das Flores, 215', 'São Paulo', 'SP', 'Brasil', '01012-000', '1135641020', 'atendimento@bmlobato.sp.gov.br', 1.2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descricao` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descricao`) VALUES
(1, 'Romance'),
(2, 'Distopia'),
(3, 'Infantil'),
(4, 'Fantasia'),
(5, 'História');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `observacao` varchar(150) DEFAULT NULL,
  `situaçao` varchar(100) DEFAULT NULL,
  `codPorCliente` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `codigo`, `nome`, `endereco`, `cidade`, `telefone`, `observacao`, `situaçao`, `codPorCliente`) VALUES
(1, NULL, 'Amanda Ferreira', 'Rua Lírios, 55', 'São Paulo', '11997770001', 'Leitora frequente de romances', 'Ativo', 'CLI001'),
(2, NULL, 'Carlos Dutra', 'Av. Liberdade, 300', 'São Paulo', '11997770002', 'Professor de História', 'Ativo', 'CLI002'),
(3, NULL, 'Helena Prado', 'Rua Orquídeas, 220', 'São Paulo', '11997770003', 'Estudante – gosta de fantasia', 'Ativo', 'CLI003'),
(4, NULL, 'Roberto Linhares', 'Rua Beija-Flor, 98', 'São Paulo', '11997770004', 'Leitor idoso – biografias', 'Ativo', 'CLI004'),
(5, NULL, 'Juliana Santana', 'Alameda das Rosas, 812', 'São Paulo', '11997770005', 'Analista de sistemas', 'Ativo', 'CLI005');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `descricao`, `telefone`) VALUES
(1, 'Companhia das Letras', '1132101000'),
(2, 'Penguin Books', '1132102000'),
(3, 'HarperCollins', '1132103000'),
(4, 'Rocco', '1132104000'),
(5, 'Nova Alexandria', '1132105000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_emprestimo` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `dataEmp` date DEFAULT NULL,
  `dataEntrega` date DEFAULT NULL,
  `codTombo` int(11) DEFAULT NULL,
  `id_clientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_emprestimo`, `codigo`, `dataEmp`, `dataEntrega`, `codTombo`, `id_clientes`) VALUES
(1, NULL, '2025-01-10', '2025-01-20', 10001, 1),
(2, NULL, '2025-01-14', '2025-01-28', 10004, 3),
(3, NULL, '2025-01-18', '2025-02-01', 10005, 2),
(4, NULL, '2025-01-22', '2025-02-01', 10002, 5),
(5, NULL, '2025-01-25', NULL, 10003, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  `tipo_usuario` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `codigo`, `tipo_usuario`, `telefone`, `login`, `senha`) VALUES
(1, 0, 'Bibliotecaria', '11985001001', 'mfalcao', 'senha123'),
(2, 0, 'Atendente', '11985002002', 'rmatos', 'senha123'),
(3, 0, 'Atendente', '11985003003', 'blemos', 'senha123'),
(4, 0, 'TI', '11985004004', 'dribeiro', 'senha123'),
(5, 0, 'Diretora', '11985005005', 'lmenezes', 'admin2025');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acervos`
--
ALTER TABLE `acervos`
  ADD PRIMARY KEY (`id_acervos`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_editora` (`id_editora`),
  ADD KEY `id_clientes` (`id_clientes`);

--
-- Índices de tabela `acervo_autor`
--
ALTER TABLE `acervo_autor`
  ADD PRIMARY KEY (`id_acervo_autor`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_acervos` (`id_acervos`);

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_emprestimo`),
  ADD KEY `id_clientes` (`id_clientes`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acervos`
--
ALTER TABLE `acervos`
  MODIFY `id_acervos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `acervo_autor`
--
ALTER TABLE `acervo_autor`
  MODIFY `id_acervo_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id_biblioteca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id_emprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acervos`
--
ALTER TABLE `acervos`
  ADD CONSTRAINT `acervos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `acervos_ibfk_2` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  ADD CONSTRAINT `acervos_ibfk_3` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Restrições para tabelas `acervo_autor`
--
ALTER TABLE `acervo_autor`
  ADD CONSTRAINT `acervo_autor_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `acervo_autor_ibfk_2` FOREIGN KEY (`id_acervos`) REFERENCES `acervos` (`id_acervos`);

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
