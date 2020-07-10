-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jul-2020 às 20:44
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estrela_azul`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atletas`
--

CREATE TABLE `atletas` (
  `id_atleta` int(11) NOT NULL,
  `id_contribuinte` int(11) NOT NULL,
  `id_enc_edu` int(11) DEFAULT NULL,
  `valor_joia` double NOT NULL,
  `joia` tinyint(1) NOT NULL,
  `dt_incricao_local` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dt_inscricao_afa` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atletas_equipas`
--

CREATE TABLE `atletas_equipas` (
  `id_atleta` int(11) NOT NULL,
  `id_equipa` int(11) NOT NULL,
  `data_atribuicao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `atual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atletas_escaloes`
--

CREATE TABLE `atletas_escaloes` (
  `id_atleta` int(11) NOT NULL,
  `id_escalao` int(11) NOT NULL,
  `data_atribuicao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `atual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `is_treinador` tinyint(1) NOT NULL,
  `get_login` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos_recursos`
--

CREATE TABLE `cargos_recursos` (
  `id_cargo` int(11) NOT NULL,
  `id_recurso_humano` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contribuintes`
--

CREATE TABLE `contribuintes` (
  `id_contribuinte` int(11) NOT NULL,
  `num_socio` varchar(11) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `cc` int(8) NOT NULL,
  `nif` int(9) NOT NULL,
  `telemovel` int(9) NOT NULL,
  `telefone` int(9) NOT NULL,
  `cp` int(7) NOT NULL,
  `receber_email` tinyint(1) NOT NULL,
  `tipo_contribuinte` varchar(60) NOT NULL,
  `morada` varchar(60) NOT NULL,
  `localidade` varchar(60) NOT NULL,
  `freguesia` varchar(60) NOT NULL,
  `concelho` varchar(60) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `metodo_pagamento` varchar(30) DEFAULT NULL,
  `dt_nasc` date NOT NULL,
  `mensalidade_valor` float DEFAULT NULL,
  `foto` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipas`
--

CREATE TABLE `equipas` (
  `id_equipa` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cor` varchar(7) NOT NULL,
  `id_escalao` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipa_convocados`
--

CREATE TABLE `equipa_convocados` (
  `id_equipa` int(11) NOT NULL,
  `id_atleta` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `presente` tinyint(1) DEFAULT NULL,
  `justificacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipa_treinos`
--

CREATE TABLE `equipa_treinos` (
  `id_equipa` int(11) NOT NULL,
  `id_atleta` int(11) NOT NULL,
  `id_treino` int(11) NOT NULL,
  `presente` tinyint(1) DEFAULT NULL,
  `justificacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `escaloes`
--

CREATE TABLE `escaloes` (
  `id_escalao` int(11) NOT NULL,
  `escalao` varchar(60) NOT NULL,
  `duracao_jogos` int(11) NOT NULL,
  `num_intervalos` int(11) NOT NULL,
  `intercalacao` float NOT NULL,
  `duracao_intervalo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ficheiros`
--

CREATE TABLE `ficheiros` (
  `id_recurso_humano` int(11) NOT NULL,
  `id_ficheiro` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `extencao` varchar(30) NOT NULL,
  `filesize` int(11) NOT NULL,
  `ficheiro` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogo` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `dt_inicio` datetime NOT NULL,
  `dt_fim` datetime NOT NULL,
  `resumo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_despesa`
--

CREATE TABLE `jogo_despesa` (
  `id_despesa` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `descricao` varchar(60) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recursos_humanos`
--

CREATE TABLE `recursos_humanos` (
  `id_recurso_humano` int(11) NOT NULL,
  `num_recurso_humano` varchar(11) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `dt_nasc` date NOT NULL,
  `morada` varchar(60) NOT NULL,
  `localidade` varchar(60) NOT NULL,
  `freguesia` varchar(60) NOT NULL,
  `concelho` varchar(60) NOT NULL,
  `cp` int(7) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `telemovel` int(9) DEFAULT NULL,
  `telefone` int(9) NOT NULL,
  `cc` varchar(13) NOT NULL,
  `nif` int(9) NOT NULL,
  `salario` int(11) DEFAULT NULL,
  `foto` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinadores`
--

CREATE TABLE `treinadores` (
  `id_treinador` int(11) NOT NULL,
  `clubles_anteriores` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinadores_equipas`
--

CREATE TABLE `treinadores_equipas` (
  `id_treinador` int(11) NOT NULL,
  `id_equipa` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `atual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinos`
--

CREATE TABLE `treinos` (
  `id_treino` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `is_cancelado` tinyint(1) NOT NULL,
  `dt_inicio` datetime NOT NULL,
  `dt_fim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Índices para tabela `atletas`
--
ALTER TABLE `atletas`
  ADD PRIMARY KEY (`id_atleta`),
  ADD KEY `id_enc_edu` (`id_enc_edu`),
  ADD KEY `id_contribuinte` (`id_contribuinte`);

--
-- Índices para tabela `atletas_equipas`
--
ALTER TABLE `atletas_equipas`
  ADD KEY `id_equipa` (`id_equipa`),
  ADD KEY `id_atleta` (`id_atleta`);

--
-- Índices para tabela `atletas_escaloes`
--
ALTER TABLE `atletas_escaloes`
  ADD KEY `id_atleta` (`id_atleta`),
  ADD KEY `id_escalao` (`id_escalao`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Índices para tabela `cargos_recursos`
--
ALTER TABLE `cargos_recursos`
  ADD KEY `id_recurso_humano` (`id_recurso_humano`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Índices para tabela `contribuintes`
--
ALTER TABLE `contribuintes`
  ADD PRIMARY KEY (`id_contribuinte`),
  ADD UNIQUE KEY `cc` (`cc`),
  ADD UNIQUE KEY `nif` (`nif`),
  ADD UNIQUE KEY `num_socio` (`num_socio`);

--
-- Índices para tabela `equipas`
--
ALTER TABLE `equipas`
  ADD PRIMARY KEY (`id_equipa`),
  ADD KEY `id_escalao` (`id_escalao`);

--
-- Índices para tabela `equipa_convocados`
--
ALTER TABLE `equipa_convocados`
  ADD KEY `id_equipa` (`id_equipa`),
  ADD KEY `id_atleta` (`id_atleta`),
  ADD KEY `id_jogo` (`id_jogo`);

--
-- Índices para tabela `equipa_treinos`
--
ALTER TABLE `equipa_treinos`
  ADD KEY `id_treino` (`id_treino`),
  ADD KEY `id_atleta` (`id_atleta`),
  ADD KEY `id_equipa` (`id_equipa`);

--
-- Índices para tabela `escaloes`
--
ALTER TABLE `escaloes`
  ADD PRIMARY KEY (`id_escalao`);

--
-- Índices para tabela `ficheiros`
--
ALTER TABLE `ficheiros`
  ADD PRIMARY KEY (`id_ficheiro`),
  ADD KEY `id_recurso_humano` (`id_recurso_humano`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id_jogo`);

--
-- Índices para tabela `jogo_despesa`
--
ALTER TABLE `jogo_despesa`
  ADD PRIMARY KEY (`id_despesa`),
  ADD KEY `id_jogo` (`id_jogo`);

--
-- Índices para tabela `recursos_humanos`
--
ALTER TABLE `recursos_humanos`
  ADD PRIMARY KEY (`id_recurso_humano`),
  ADD UNIQUE KEY `CC` (`cc`,`nif`);

--
-- Índices para tabela `treinadores`
--
ALTER TABLE `treinadores`
  ADD UNIQUE KEY `id_treinador_2` (`id_treinador`),
  ADD KEY `id_treinador` (`id_treinador`);

--
-- Índices para tabela `treinadores_equipas`
--
ALTER TABLE `treinadores_equipas`
  ADD KEY `id_treinador` (`id_treinador`),
  ADD KEY `id_equipa` (`id_equipa`);

--
-- Índices para tabela `treinos`
--
ALTER TABLE `treinos`
  ADD PRIMARY KEY (`id_treino`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `atletas`
--
ALTER TABLE `atletas`
  MODIFY `id_atleta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contribuintes`
--
ALTER TABLE `contribuintes`
  MODIFY `id_contribuinte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipas`
--
ALTER TABLE `equipas`
  MODIFY `id_equipa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `escaloes`
--
ALTER TABLE `escaloes`
  MODIFY `id_escalao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ficheiros`
--
ALTER TABLE `ficheiros`
  MODIFY `id_ficheiro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jogo_despesa`
--
ALTER TABLE `jogo_despesa`
  MODIFY `id_despesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `recursos_humanos`
--
ALTER TABLE `recursos_humanos`
  MODIFY `id_recurso_humano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `treinos`
--
ALTER TABLE `treinos`
  MODIFY `id_treino` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atletas`
--
ALTER TABLE `atletas`
  ADD CONSTRAINT `atletas_ibfk_1` FOREIGN KEY (`id_contribuinte`) REFERENCES `contribuintes` (`id_contribuinte`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `atletas_equipas`
--
ALTER TABLE `atletas_equipas`
  ADD CONSTRAINT `atletas_equipas_ibfk_2` FOREIGN KEY (`id_equipa`) REFERENCES `equipas` (`id_equipa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `atletas_equipas_ibfk_3` FOREIGN KEY (`id_atleta`) REFERENCES `atletas` (`id_atleta`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `atletas_escaloes`
--
ALTER TABLE `atletas_escaloes`
  ADD CONSTRAINT `atletas_escaloes_ibfk_1` FOREIGN KEY (`id_atleta`) REFERENCES `atletas` (`id_atleta`) ON DELETE CASCADE,
  ADD CONSTRAINT `atletas_escaloes_ibfk_2` FOREIGN KEY (`id_escalao`) REFERENCES `escaloes` (`id_escalao`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `cargos_recursos`
--
ALTER TABLE `cargos_recursos`
  ADD CONSTRAINT `cargos_recursos_ibfk_1` FOREIGN KEY (`id_recurso_humano`) REFERENCES `recursos_humanos` (`id_recurso_humano`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cargos_recursos_ibfk_2` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `equipas`
--
ALTER TABLE `equipas`
  ADD CONSTRAINT `equipas_ibfk_2` FOREIGN KEY (`id_escalao`) REFERENCES `escaloes` (`id_escalao`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `equipa_convocados`
--
ALTER TABLE `equipa_convocados`
  ADD CONSTRAINT `equipa_convocados_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogos` (`id_jogo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipa_convocados_ibfk_2` FOREIGN KEY (`id_equipa`) REFERENCES `equipas` (`id_equipa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipa_convocados_ibfk_3` FOREIGN KEY (`id_atleta`) REFERENCES `atletas` (`id_atleta`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `equipa_treinos`
--
ALTER TABLE `equipa_treinos`
  ADD CONSTRAINT `equipa_treinos_ibfk_2` FOREIGN KEY (`id_treino`) REFERENCES `treinos` (`id_treino`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipa_treinos_ibfk_3` FOREIGN KEY (`id_equipa`) REFERENCES `equipas` (`id_equipa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `equipa_treinos_ibfk_4` FOREIGN KEY (`id_atleta`) REFERENCES `atletas` (`id_atleta`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `ficheiros`
--
ALTER TABLE `ficheiros`
  ADD CONSTRAINT `ficheiros_ibfk_1` FOREIGN KEY (`id_recurso_humano`) REFERENCES `recursos_humanos` (`id_recurso_humano`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `jogo_despesa`
--
ALTER TABLE `jogo_despesa`
  ADD CONSTRAINT `jogo_despesa_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogos` (`id_jogo`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `treinadores`
--
ALTER TABLE `treinadores`
  ADD CONSTRAINT `treinadores_ibfk_1` FOREIGN KEY (`id_treinador`) REFERENCES `recursos_humanos` (`id_recurso_humano`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `treinadores_equipas`
--
ALTER TABLE `treinadores_equipas`
  ADD CONSTRAINT `treinadores_equipas_ibfk_1` FOREIGN KEY (`id_treinador`) REFERENCES `treinadores` (`id_treinador`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treinadores_equipas_ibfk_2` FOREIGN KEY (`id_equipa`) REFERENCES `equipas` (`id_equipa`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
