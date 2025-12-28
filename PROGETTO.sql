-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 19, 2024 alle 15:40
-- Versione del server: 8.0.35
-- Versione PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PROGETTO ESAME`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `AMMINISTRATORE`
--

CREATE TABLE `AMMINISTRATORE` (
  `ID_Amministratore` int NOT NULL,
  `Dipartimento` varchar(100) DEFAULT NULL,
  `Ruolo` enum('Admin principale','Admin Base') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `AMMINISTRATORE`
--

INSERT INTO `AMMINISTRATORE` (`ID_Amministratore`, `Dipartimento`, `Ruolo`) VALUES
(2, 'DMI - dipartimento di Informatica e matematica', 'Admin principale'),
(4, 'DISUM- Dipartimento di studi umanistici', 'Admin Base'),
(6, 'DISFOR- dipartimenti scienze della formazione', 'Admin principale'),
(8, 'DEI- Dipartimento di economia e impresa', 'Admin Base'),
(10, 'DBGA- Dipartimento di Scienze Biologiche, Geologiche e Ambientali', 'Admin principale'),
(12, 'DMC- Dipartimento di Medicina e Chirurgia', 'Admin Base');

-- --------------------------------------------------------

--
-- Struttura della tabella `AUTORE`
--

CREATE TABLE `AUTORE` (
  `ID_Autore` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Qualifica` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `AUTORE`
--

INSERT INTO `AUTORE` (`ID_Autore`, `Nome`, `Cognome`, `Qualifica`) VALUES
(115, 'Marco', 'Abaco', 'Ricercatore'),
(116, 'Giovanna', 'Indaco', 'Ricercatrice'),
(117, 'Luigi', 'Filippi', 'Ricercatore'),
(118, 'Anna', 'Barbagallo', 'Ricercatrice'),
(119, 'Carla', 'Guida', 'Ricercatrice'),
(120, 'Francesco', 'Sinopoli', 'Ricercatore'),
(121, 'Paolo', 'Celesti', 'Professore Ordinario'),
(122, 'Luca', 'Pappalardo', 'Professore Ordinario'),
(123, 'Laura', 'Orsini', 'Professoressa Ordinaria'),
(124, 'Giovanni', 'Pedara', 'Professoressa Ordinaria'),
(125, 'Pasquale', 'Nigro', 'Professore Ordinario');

-- --------------------------------------------------------

--
-- Struttura della tabella `CORSO_DI_LAUREA`
--

CREATE TABLE `CORSO_DI_LAUREA` (
  `ID_Corso` int NOT NULL,
  `Nome_Corso` varchar(100) NOT NULL,
  `Dipartimento` varchar(100) DEFAULT NULL,
  `Crediti` int DEFAULT NULL,
  `Amministratore_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `CORSO_DI_LAUREA`
--

INSERT INTO `CORSO_DI_LAUREA` (`ID_Corso`, `Nome_Corso`, `Dipartimento`, `Crediti`, `Amministratore_ID`) VALUES
(21, 'Informatica e Matematica', 'DMI', 180, 2),
(22, 'Storia Moderna e antica', 'DISUM', 180, 4),
(23, 'Lingue', 'DISUM', 180, 4),
(24, 'Fisica', 'DMI', 180, 2),
(25, 'Biologia', 'DBGA', 180, 10),
(26, 'Medicina', 'DMC', 180, 12),
(27, 'Economia', 'DEI', 120, 8),
(28, 'Psicologia infantile', 'DISFOR', 120, 6),
(29, 'Traduzione e comunicazione', 'DISUM', 120, 4),
(30, ' Filosofia', 'DISUM', 120, 4),
(31, ' Lettere', 'DISUM', 120, 4),
(32, ' Scienze del testo', 'DISUM', 120, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `EVENTO`
--

CREATE TABLE `EVENTO` (
  `ID_Evento` int NOT NULL,
  `Nome_Evento` varchar(100) NOT NULL,
  `Data` date NOT NULL,
  `Ora_Inizio` time NOT NULL,
  `Ora_Fine` time NOT NULL,
  `Sala_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `EVENTO`
--

INSERT INTO `EVENTO` (`ID_Evento`, `Nome_Evento`, `Data`, `Ora_Inizio`, `Ora_Fine`, `Sala_ID`) VALUES
(69, 'Conferenza Informatica', '2024-11-20', '10:00:00', '12:00:00', 57),
(70, 'Seminario Biologia', '2024-11-20', '14:00:00', '16:00:00', 57),
(71, 'Lectura Dantis Siciliana', '2024-11-22', '09:00:00', '11:00:00', 58),
(72, 'Seminario Innovation and Entrepreneurship in Sicily', '2024-11-22', '15:00:00', '17:00:00', 58),
(73, 'Giornata di studi Internazionali', '2024-11-24', '10:00:00', '12:00:00', 59),
(74, 'Conferenza Filosofia', '2024-11-24', '16:00:00', '18:00:00', 59),
(75, 'Seminario Medicina', '2024-11-26', '11:00:00', '13:00:00', 60),
(76, 'Workshop Matematica', '2024-11-26', '15:00:00', '19:00:00', 60),
(77, 'Lezione Ingegneria', '2024-11-28', '14:00:00', '16:00:00', 61),
(78, 'Seminario IA', '2024-11-28', '10:00:00', '12:00:00', 61),
(79, ' Seminario Economia e Management', '2024-11-29', '10:00:00', '12:00:00', 62),
(80, 'Seminario Conoscere il mondo islamico', '2024-11-30', '10:00:00', '12:00:00', 63),
(81, 'Seminario La tolleranza in Età moderna ', '2024-11-30', '14:00:00', '18:00:00', 63),
(82, 'Seminario su Proust', '2025-01-10', '10:00:00', '12:00:00', 64),
(83, 'Workshop da incisione a digitalizzazione, Lavorare con la codifica XML ', '2025-01-10', '15:00:00', '19:00:00', 64),
(84, 'Seminario Complotti e notizie di fine novecento. Kennedy, Moro e i delitti di mafia', '2025-01-20', '09:00:00', '12:00:00', 65),
(85, 'Seminario Intelligenza artificiale: vuove sfide ', '2025-01-20', '14:00:00', '19:00:00', 65),
(86, 'Convegno Digitalizzazione e IA nella pubblica amministrazione ', '2025-01-21', '09:00:00', '12:00:00', 66),
(87, ' Workshop IA: tra rischi e opportunità', '2025-01-21', '14:00:00', '18:00:00', 66),
(88, 'Seminario Medicina clinica e sperimentale  ', '2025-02-02', '09:00:00', '12:00:00', 67),
(89, 'Conferenza  Design of circuits and integrated system', '2025-02-02', '12:00:00', '14:00:00', 67),
(90, 'Workshop Job meeting ', '2025-02-10', '10:00:00', '12:00:00', 68),
(91, 'Giornata di studi su innovazione e tecnologia  ', '2025-02-10', '12:00:00', '14:00:00', 68);

-- --------------------------------------------------------

--
-- Struttura della tabella `INGRESSO`
--

CREATE TABLE `INGRESSO` (
  `ID_Ingresso` int NOT NULL,
  `Data` date NOT NULL,
  `Ora` time NOT NULL,
  `Studente_ID` int DEFAULT NULL,
  `Evento_ID` int DEFAULT NULL,
  `Amministratore_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `INGRESSO`
--

INSERT INTO `INGRESSO` (`ID_Ingresso`, `Data`, `Ora`, `Studente_ID`, `Evento_ID`, `Amministratore_ID`) VALUES
(92, '2024-11-20', '09:50:00', 1, 69, 2),
(93, '2024-11-20', '13:50:00', 3, 70, 2),
(94, '2024-11-22', '08:45:00', 5, 71, 6),
(95, '2024-11-22', '14:45:00', 7, 72, 6),
(96, '2024-11-24', '09:30:00', 9, 73, 10),
(97, '2024-11-24', '15:30:00', 11, 74, 10),
(98, '2024-11-26', '10:50:00', 13, 75, 2),
(99, '2024-11-26', '14:30:00', 15, 76, 2),
(100, '2024-11-28', '13:30:00', 17, 77, 6),
(101, '2024-11-28', '09:40:00', 19, 78, 6),
(102, '2024-11-29', '09:40:00', 21, 79, 10),
(103, '2024-11-30', '09:40:00', 23, 80, 10),
(104, '2024-11-30', '13:40:00', 1, 81, 2),
(105, '2025-01-10', '09:40:00', 3, 82, 2),
(106, '2025-01-10', '14:40:00', 5, 83, 6),
(107, '2025-01-20', '08:40:00', 7, 84, 6),
(108, '2025-01-20', '13:40:00', 9, 85, 10),
(109, '2025-01-21', '08:40:00', 11, 86, 10),
(110, '2025-01-21', '13:40:00', 13, 87, 2),
(111, '2025-02-02', '08:40:00', 15, 88, 2),
(112, '2025-02-02', '11:40:00', 17, 89, 6),
(113, '2025-02-10', '09:40:00', 19, 90, 6),
(114, '2025-02-10', '11:40:00', 21, 91, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `INTERVENTO`
--

CREATE TABLE `INTERVENTO` (
  `ID_Intervento` int NOT NULL,
  `Titolo` varchar(100) NOT NULL,
  `Evento_ID` int DEFAULT NULL,
  `Autore_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `INTERVENTO`
--

INSERT INTO `INTERVENTO` (`ID_Intervento`, `Titolo`, `Evento_ID`, `Autore_ID`) VALUES
(126, 'Tecnologie Avanzate', 69, 115),
(127, 'Biologia e Ambiente', 70, 116),
(128, 'Dante e la Sicilia', 71, 117),
(129, 'Economia Circolare', 72, 118),
(130, 'International Cooperation', 73, 119),
(131, 'Etica e Filosofia', 74, 120),
(132, 'Medicina e Salute', 75, 121),
(133, 'Algebra Lineare', 76, 122),
(134, 'Sostenibilità e ingegneria', 77, 123),
(135, 'Diritto delle proprietà intellettuale', 78, 124),
(136, 'La nuova era', 79, 125),
(137, 'islam e le donne', 80, 115),
(138, 'la tolleranza in età moderna', 81, 116),
(139, 'Proust e la scrittura', 82, 117),
(140, 'New digital Era', 83, 118),
(141, 'Aldo Moro e gli anni di piombo', 84, 119),
(142, 'IA e i suoi rischi', 85, 120),
(143, 'IA nella pubblica amministrazione', 86, 121),
(144, 'IA e le sue opportunità', 87, 122),
(145, 'Fattori di rischio durante un intervento chirurgico', 88, 123),
(146, 'Design dei circuiti dei sistemi intergrati', 89, 124),
(147, 'Come preparare un CV da presentare alle Aziende', 90, 125),
(148, 'Storia e innovazione. I paradigmi a confronto', 91, 115);

-- --------------------------------------------------------

--
-- Struttura della tabella `LIBRETTO_CARRIERA`
--

CREATE TABLE `LIBRETTO_CARRIERA` (
  `ID_Libretto` int NOT NULL,
  `Data_Creazione` date DEFAULT NULL,
  `Media_Voti` float DEFAULT NULL,
  `Totale_CFU` int DEFAULT NULL,
  `Studente_ID` int DEFAULT NULL,
  `Piano_di_studi_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `LIBRETTO_CARRIERA`
--

INSERT INTO `LIBRETTO_CARRIERA` (`ID_Libretto`, `Data_Creazione`, `Media_Voti`, `Totale_CFU`, `Studente_ID`, `Piano_di_studi_ID`) VALUES
(45, '2024-01-01', 28.5, 180, 1, 33),
(46, '2024-02-05', 26.4, 180, 3, 34),
(47, '2023-03-10', 30, 180, 5, 35),
(48, '2023-04-15', 27.2, 180, 7, 36),
(49, '2022-05-20', 29.5, 180, 9, 37),
(50, '2022-06-25', 25.6, 180, 11, 38),
(51, '2021-07-30', 28, 120, 13, 39),
(52, '2021-08-01', 26.8, 120, 15, 40),
(53, '2020-09-05', 27.9, 120, 17, 41),
(54, '2019-10-10', 29.2, 120, 19, 42),
(55, '2018-11-15', 29.2, 120, 21, 43),
(56, '2018-11-15', 29.2, 120, 23, 44);

-- --------------------------------------------------------

--
-- Struttura della tabella `PIANO_DI_STUDI`
--

CREATE TABLE `PIANO_DI_STUDI` (
  `ID_Piano` int NOT NULL,
  `Anno_Accademico` varchar(9) NOT NULL,
  `Corso_di_Laurea_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `PIANO_DI_STUDI`
--

INSERT INTO `PIANO_DI_STUDI` (`ID_Piano`, `Anno_Accademico`, `Corso_di_Laurea_ID`) VALUES
(33, '2023-2024', 21),
(34, '2023-2024', 22),
(35, '2022-2023', 23),
(36, '2022-2023', 24),
(37, '2021-2020', 25),
(38, '2021-2020', 26),
(39, '2020-2019', 27),
(40, '2020-2019', 28),
(41, '2019-2018', 29),
(42, '2019-2018', 30),
(43, '2019-2018', 31),
(44, '2018-2017', 32);

-- --------------------------------------------------------

--
-- Struttura della tabella `SALA`
--

CREATE TABLE `SALA` (
  `ID_Sala` int NOT NULL,
  `Nome_Sala` varchar(100) DEFAULT NULL,
  `Capacità` int DEFAULT NULL,
  `Ubicazione` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `SALA`
--

INSERT INTO `SALA` (`ID_Sala`, `Nome_Sala`, `Capacità`, `Ubicazione`) VALUES
(57, 'Sala 10', 50, 'Palazzo Centrale'),
(58, 'Sala 20', 30, 'Palazzo Centrale'),
(59, 'Sala 30', 80, 'Palazzo Centrale'),
(60, 'Sala 40', 40, 'Palazzo Centrale'),
(61, 'Sala 50', 60, 'Palazzo Centrale'),
(62, 'Sala 60', 60, 'Palazzo Centrale'),
(63, 'Sala 70', 100, 'Monastero dei Benedettini'),
(64, 'Sala 80', 120, 'Monastero dei Benedettini'),
(65, 'Sala 90', 150, 'Monastero dei Benedettini'),
(66, 'Sala 100', 200, 'Monastero dei Benedettini'),
(67, 'Sala 110', 250, 'Monastero dei Benedettini'),
(68, 'Sala 120', 300, 'Monastero dei Benedettini');

-- --------------------------------------------------------

--
-- Struttura della tabella `STUDENTE`
--

CREATE TABLE `STUDENTE` (
  `ID_Studente` int NOT NULL,
  `Data_di_Nascita` date DEFAULT NULL,
  `Matricola` varchar(20) NOT NULL,
  `Corso_di_Laurea_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `STUDENTE`
--

INSERT INTO `STUDENTE` (`ID_Studente`, `Data_di_Nascita`, `Matricola`, `Corso_di_Laurea_ID`) VALUES
(1, '1999-03-23', 'S98777', 21),
(3, '2002-11-05', 'S45000', 22),
(5, '2000-01-20', 'S67111', 23),
(7, '1998-06-10', 'S89234', 24),
(9, '2002-09-25', 'S01234', 25),
(11, '2001-05-10', 'S12345', 26),
(13, '1998-10-30', 'S23457', 27),
(15, '2003-07-12', 'S34567', 28),
(17, '2000-04-16', 'S45678', 29),
(19, '2001-12-02', 'S56789', 30),
(21, '1996-12-02', 'S56782', 31),
(23, '1993-10-02', 'S56787', 32);

-- --------------------------------------------------------

--
-- Struttura della tabella `UTENTE`
--

CREATE TABLE `UTENTE` (
  `ID_Utente` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Ruolo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `UTENTE`
--

INSERT INTO `UTENTE` (`ID_Utente`, `Nome`, `Cognome`, `Email`, `Telefono`, `Ruolo`) VALUES
(1, 'Giovanni', 'Rossi', 'giovanni.rossi@email.com', '1234567890', 'Studente'),
(2, 'Maria', 'Bianchi', 'maria.bianchi@email.com', '1234567891', 'Amministratore'),
(3, 'Luca', 'Verdi', 'luca.verdi@email.com', '1234567892', 'Studente'),
(4, 'Sara', 'Galli', 'sara.galli@email.com', '1234567893', 'Amministratore'),
(5, 'Carlo', 'Neri', 'carlo.neri@email.com', '1234567894', 'Studente'),
(6, 'Anna', 'Busa', 'anna.busa@email.com', '1234567895', 'Amministratore'),
(7, 'Francesco', 'Rossi', 'francesco.rossi@email.com', '1234567896', 'Studente'),
(8, 'Paola', 'Verdi', 'paola.verdi@email.com', '1234567897', 'Amministratore'),
(9, 'Simone', 'Bianchi', 'simone.bianchi@email.com', '1234567898', 'Studente'),
(10, 'Giulia', 'Gialli', 'giulia.gialli@email.com', '1234567899', 'Amministratore'),
(11, 'Federico', 'Neri', 'federico.neri@email.com', '1234567800', 'Studente'),
(12, 'Elena', 'Busacca', 'elena.busacca@email.com', '1234567801', 'Amministratore'),
(13, 'Marco', 'Rossi', 'marco.rossi@email.com', '1234567802', 'Studente'),
(15, 'Anna', 'Bianchi', 'anna.bianchi@email.com', '1234567803', 'Studente'),
(17, 'Luca', 'Mattia', 'luca.mattia@email.com', '1234567804', 'Studente'),
(19, 'Simone', 'Neri', 'simone.neri@email.com', '1234567805', 'Studente'),
(21, 'Federico', 'Gialli', 'federico.gialli@email.com', '1234567806', 'Studente'),
(23, 'Giulia', 'Bellessere', 'giulia.bellessere@email.com', '1234567807', 'Studente');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `AMMINISTRATORE`
--
ALTER TABLE `AMMINISTRATORE`
  ADD PRIMARY KEY (`ID_Amministratore`);

--
-- Indici per le tabelle `AUTORE`
--
ALTER TABLE `AUTORE`
  ADD PRIMARY KEY (`ID_Autore`);

--
-- Indici per le tabelle `CORSO_DI_LAUREA`
--
ALTER TABLE `CORSO_DI_LAUREA`
  ADD PRIMARY KEY (`ID_Corso`),
  ADD KEY `Amministratore_ID` (`Amministratore_ID`);

--
-- Indici per le tabelle `EVENTO`
--
ALTER TABLE `EVENTO`
  ADD PRIMARY KEY (`ID_Evento`),
  ADD KEY `Sala_ID` (`Sala_ID`);

--
-- Indici per le tabelle `INGRESSO`
--
ALTER TABLE `INGRESSO`
  ADD PRIMARY KEY (`ID_Ingresso`),
  ADD KEY `Studente_ID` (`Studente_ID`),
  ADD KEY `Evento_ID` (`Evento_ID`),
  ADD KEY `Amministratore_ID` (`Amministratore_ID`);

--
-- Indici per le tabelle `INTERVENTO`
--
ALTER TABLE `INTERVENTO`
  ADD PRIMARY KEY (`ID_Intervento`),
  ADD KEY `Evento_ID` (`Evento_ID`),
  ADD KEY `Autore_ID` (`Autore_ID`);

--
-- Indici per le tabelle `LIBRETTO_CARRIERA`
--
ALTER TABLE `LIBRETTO_CARRIERA`
  ADD PRIMARY KEY (`ID_Libretto`),
  ADD KEY `Studente_ID` (`Studente_ID`),
  ADD KEY `Piano_di_studi_ID` (`Piano_di_studi_ID`);

--
-- Indici per le tabelle `PIANO_DI_STUDI`
--
ALTER TABLE `PIANO_DI_STUDI`
  ADD PRIMARY KEY (`ID_Piano`),
  ADD KEY `Corso_di_Laurea_ID` (`Corso_di_Laurea_ID`);

--
-- Indici per le tabelle `SALA`
--
ALTER TABLE `SALA`
  ADD PRIMARY KEY (`ID_Sala`);

--
-- Indici per le tabelle `STUDENTE`
--
ALTER TABLE `STUDENTE`
  ADD PRIMARY KEY (`ID_Studente`),
  ADD UNIQUE KEY `Matricola` (`Matricola`),
  ADD KEY `Corso_di_Laurea_ID` (`Corso_di_Laurea_ID`);

--
-- Indici per le tabelle `UTENTE`
--
ALTER TABLE `UTENTE`
  ADD PRIMARY KEY (`ID_Utente`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `AMMINISTRATORE`
--
ALTER TABLE `AMMINISTRATORE`
  ADD CONSTRAINT `amministratore_ibfk_1` FOREIGN KEY (`ID_Amministratore`) REFERENCES `UTENTE` (`ID_Utente`);

--
-- Limiti per la tabella `CORSO_DI_LAUREA`
--
ALTER TABLE `CORSO_DI_LAUREA`
  ADD CONSTRAINT `corso_di_laurea_ibfk_1` FOREIGN KEY (`Amministratore_ID`) REFERENCES `AMMINISTRATORE` (`ID_Amministratore`);

--
-- Limiti per la tabella `EVENTO`
--
ALTER TABLE `EVENTO`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Sala_ID`) REFERENCES `SALA` (`ID_Sala`);

--
-- Limiti per la tabella `INGRESSO`
--
ALTER TABLE `INGRESSO`
  ADD CONSTRAINT `ingresso_ibfk_1` FOREIGN KEY (`Studente_ID`) REFERENCES `STUDENTE` (`ID_Studente`),
  ADD CONSTRAINT `ingresso_ibfk_2` FOREIGN KEY (`Evento_ID`) REFERENCES `EVENTO` (`ID_Evento`),
  ADD CONSTRAINT `ingresso_ibfk_3` FOREIGN KEY (`Amministratore_ID`) REFERENCES `AMMINISTRATORE` (`ID_Amministratore`);

--
-- Limiti per la tabella `INTERVENTO`
--
ALTER TABLE `INTERVENTO`
  ADD CONSTRAINT `intervento_ibfk_1` FOREIGN KEY (`Evento_ID`) REFERENCES `EVENTO` (`ID_Evento`),
  ADD CONSTRAINT `intervento_ibfk_2` FOREIGN KEY (`Autore_ID`) REFERENCES `AUTORE` (`ID_Autore`);

--
-- Limiti per la tabella `LIBRETTO_CARRIERA`
--
ALTER TABLE `LIBRETTO_CARRIERA`
  ADD CONSTRAINT `libretto_carriera_ibfk_1` FOREIGN KEY (`Studente_ID`) REFERENCES `STUDENTE` (`ID_Studente`),
  ADD CONSTRAINT `libretto_carriera_ibfk_2` FOREIGN KEY (`Piano_di_studi_ID`) REFERENCES `PIANO_DI_STUDI` (`ID_Piano`);

--
-- Limiti per la tabella `PIANO_DI_STUDI`
--
ALTER TABLE `PIANO_DI_STUDI`
  ADD CONSTRAINT `piano_di_studi_ibfk_1` FOREIGN KEY (`Corso_di_Laurea_ID`) REFERENCES `CORSO_DI_LAUREA` (`ID_Corso`);

--
-- Limiti per la tabella `STUDENTE`
--
ALTER TABLE `STUDENTE`
  ADD CONSTRAINT `studente_ibfk_1` FOREIGN KEY (`ID_Studente`) REFERENCES `UTENTE` (`ID_Utente`),
  ADD CONSTRAINT `studente_ibfk_2` FOREIGN KEY (`Corso_di_Laurea_ID`) REFERENCES `CORSO_DI_LAUREA` (`ID_Corso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
