-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Temps de generació: 28-02-2025 a les 14:27:37
-- Versió del servidor: 8.0.35-0ubuntu0.22.04.1
-- Versió de PHP: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `anna_lea_iticdesk`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `Incidencies`
--

CREATE TABLE `Incidencies` (
  `Id_referencia` bigint NOT NULL,
  `Tipus` varchar(255) NOT NULL,
  `Titol` varchar(255) NOT NULL,
  `Text_descriptiu` varchar(255) NOT NULL,
  `Usuari` varchar(255) NOT NULL,
  `Data` varchar(255) NOT NULL,
  `Estat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Bolcament de dades per a la taula `Incidencies`
--

INSERT INTO `Incidencies` (`Id_referencia`, `Tipus`, `Titol`, `Text_descriptiu`, `Usuari`, `Data`, `Estat`) VALUES
(1, 'test', 'test', 'test', 'jiznardo@email.com', 'test', 'test'),
(2, 'TIPUS I', 'titol2', 'tex', 'alea@email.com', '24-02-2025 08:04 pm', 'Oberta'),
(3, 'TIPUS I', 'titol23', 'sdfs', 'alea@email.com', '24-02-2025 08:11 pm', 'Oberta'),
(4, 'TIPUS I', 'titol23', 'sdfs', 'alea@email.com', '24-02-2025 08:17 pm', 'Oberta'),
(5, 'TIPUS I', 'titol23', 'sdfs', 'alea@email.com', '24-02-2025 08:17 pm', 'Oberta'),
(6, 'TIPUS I', 'sdfd', 'sdfdsfs', 'alea@email.com', '24-02-2025 08:17 pm', 'Oberta'),
(7, 'TIPUS I', 'test', 'test1', 'alea@email.com', '25-02-2025 07:15:44 pm', 'OBERTA'),
(8, 'TIPUS I', 'test', 'test1', 'alea@email.com', '25-02-2025 07:22:32 pm', 'OBERTA'),
(9, 'TIPUS I', 'titol4', 'text4', 'alea@email.com', '25-02-2025 07:23:17 pm', 'OBERTA'),
(10, 'TIPUS III', 'test', 'td', 'alea@email.com', '25-02-2025 07:29:38 pm', 'OBERTA'),
(11, 'TIPUS I', 'asdas', 'dsfsdf', 'alea@email.com', '25-02-2025 07:29:48 pm', 'OBERTA'),
(12, 'TIPUS III', 'Incidencia Joan', 'Text Joan', 'jiznardo@email.com', '25-02-2025 07:48:01 pm', 'OBERTA'),
(13, 'TIPUS I', 'dfs', 'sdfds', 'jiznardo@email.com', '25-02-2025 07:48:15 pm', 'OBERTA'),
(14, 'TIPUS I', 'sd', 'dss', 'alea@email.com', '26-02-2025 08:02:20 pm', 'Oberta'),
(15, 'TIPUS I', 'sd', 'dss', 'alea@email.com', '26-02-2025 08:02:38 pm', 'Oberta'),
(16, 'TIPUS I', 'sd', 'dss', 'alea@email.com', '26-02-2025 08:02:37 pm', 'Oberta'),
(17, 'TIPUS I', 'Ruben', 'er', 'alea@email.com', '26-02-2025 08:02:01 pm', 'Oberta'),
(18, 'TIPUS III', 'sdfsdfsd', 'dgdfg', 'alea@email.com', '26-02-2025 08:02:28 pm', 'Oberta'),
(19, 'TIPUS I', 'dsfdsfds', 'dgfdsgf', 'alea@email.com', '26-02-2025 08:02:35 pm', 'Oberta'),
(20, 'TIPUS I', '', '', 'alea@email.com', '28-02-2025 02:02:52 pm', 'Oberta'),
(21, 'TIPUS I', '', '', 'alea@email.com', '28-02-2025 02:02:30 pm', 'Oberta'),
(22, 'TIPUS I', 'klkl', 'kkkk', 'alea@email.com', '28-02-2025 02:02:44 pm', 'Oberta'),
(23, 'TIPUS I', 'jjjj', 'jj', 'alea@email.com', '28-02-2025 02:02:00 pm', 'Oberta');

-- --------------------------------------------------------

--
-- Estructura de la taula `Usuaris`
--

CREATE TABLE `Usuaris` (
  `DNI` varchar(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Cognom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Rol` varchar(255) NOT NULL,
  `Contrasenya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Bolcament de dades per a la taula `Usuaris`
--

INSERT INTO `Usuaris` (`DNI`, `Nom`, `Cognom`, `Email`, `Rol`, `Contrasenya`) VALUES
('11111111A', 'Anna', 'Lea', 'alea@email.com', 'Administrador', 'anna'),
('33333333A', 'Oriol', 'Roca', 'oroca@email.com', 'Professor', 'oriol'),
('2222222A', 'Joan', 'Iznardo', 'jiznardo@email.com', 'Professor', 'joan');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `Incidencies`
--
ALTER TABLE `Incidencies`
  ADD PRIMARY KEY (`Id_referencia`),
  ADD KEY `FK_inicidencies_usuaris` (`Usuari`);

--
-- Índexs per a la taula `Usuaris`
--
ALTER TABLE `Usuaris`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `Incidencies`
--
ALTER TABLE `Incidencies`
  MODIFY `Id_referencia` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `Incidencies`
--
ALTER TABLE `Incidencies`
  ADD CONSTRAINT `FK_inicidencies_usuaris` FOREIGN KEY (`Usuari`) REFERENCES `Usuaris` (`Email`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
