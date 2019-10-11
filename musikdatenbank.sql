-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 11. Okt 2019 um 08:51
-- Server-Version: 10.4.6-MariaDB
-- PHP-Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `musikdatenbank`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `GID` int(255) NOT NULL,
  `Art` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`GID`, `Art`) VALUES
(1, 'Jazz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genremw`
--

CREATE TABLE `genremw` (
  `MuID` int(255) NOT NULL,
  `GID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genrepm`
--

CREATE TABLE `genrepm` (
  `GID` int(255) NOT NULL,
  `PuID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ist_ein`
--

CREATE TABLE `ist_ein` (
  `ProID` int(255) NOT NULL,
  `MID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `livemusic`
--

CREATE TABLE `livemusic` (
  `LID` int(255) NOT NULL,
  `LiveTonart` varchar(255) NOT NULL,
  `LiDatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mediatype`
--

CREATE TABLE `mediatype` (
  `MeID` int(255) NOT NULL,
  `MTyp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media_type`
--

CREATE TABLE `media_type` (
  `PuID` int(255) NOT NULL,
  `MeID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `musicalwork`
--

CREATE TABLE `musicalwork` (
  `MuID` int(255) NOT NULL,
  `Werkstitel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `musicalwork`
--

INSERT INTO `musicalwork` (`MuID`, `Werkstitel`) VALUES
(1, 'Cantaloupe Island');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `musicartist`
--

CREATE TABLE `musicartist` (
  `MID` int(255) NOT NULL,
  `Vorname` varchar(255) NOT NULL,
  `Nachname` varchar(255) NOT NULL,
  `Geburtsdatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `musicartist`
--

INSERT INTO `musicartist` (`MID`, `Vorname`, `Nachname`, `Geburtsdatum`) VALUES
(1, 'Herbie', 'Hancock', '1960-12-06');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `performance`
--

CREATE TABLE `performance` (
  `PID` int(255) NOT NULL,
  `Datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `performance`
--

INSERT INTO `performance` (`PID`, `Datum`) VALUES
(1, '1980-06-06');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `performance_of`
--

CREATE TABLE `performance_of` (
  `PID` int(255) NOT NULL,
  `MuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `performs`
--

CREATE TABLE `performs` (
  `MID` int(255) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `performs`
--

INSERT INTO `performs` (`MID`, `PID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produced_sound`
--

CREATE TABLE `produced_sound` (
  `LID` int(11) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `producer`
--

CREATE TABLE `producer` (
  `ProID` int(255) NOT NULL,
  `Vorname` varchar(255) NOT NULL,
  `Nachname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `produces`
--

CREATE TABLE `produces` (
  `PuID` int(11) NOT NULL,
  `ProID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publication_of`
--

CREATE TABLE `publication_of` (
  `PuID` int(255) NOT NULL,
  `LID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publishedmusic`
--

CREATE TABLE `publishedmusic` (
  `PuID` int(255) NOT NULL,
  `PublishedTonart` varchar(255) NOT NULL,
  `PuDatum` date NOT NULL,
  `Preis` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `publishedmusic`
--

INSERT INTO `publishedmusic` (`PuID`, `PublishedTonart`, `PuDatum`, `Preis`) VALUES
(1, 'C-Dur', '1978-05-05', 100);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `releasetype`
--

CREATE TABLE `releasetype` (
  `ReleaseID` int(12) NOT NULL,
  `RTyp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `release_type`
--

CREATE TABLE `release_type` (
  `RID` int(255) NOT NULL,
  `PuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GID`);

--
-- Indizes für die Tabelle `livemusic`
--
ALTER TABLE `livemusic`
  ADD PRIMARY KEY (`LID`);

--
-- Indizes für die Tabelle `mediatype`
--
ALTER TABLE `mediatype`
  ADD PRIMARY KEY (`MeID`);

--
-- Indizes für die Tabelle `musicalwork`
--
ALTER TABLE `musicalwork`
  ADD PRIMARY KEY (`MuID`);

--
-- Indizes für die Tabelle `musicartist`
--
ALTER TABLE `musicartist`
  ADD PRIMARY KEY (`MID`);

--
-- Indizes für die Tabelle `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`PID`);

--
-- Indizes für die Tabelle `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`ProID`);

--
-- Indizes für die Tabelle `publishedmusic`
--
ALTER TABLE `publishedmusic`
  ADD PRIMARY KEY (`PuID`);

--
-- Indizes für die Tabelle `releasetype`
--
ALTER TABLE `releasetype`
  ADD PRIMARY KEY (`ReleaseID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `GID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `livemusic`
--
ALTER TABLE `livemusic`
  MODIFY `LID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `mediatype`
--
ALTER TABLE `mediatype`
  MODIFY `MeID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `musicalwork`
--
ALTER TABLE `musicalwork`
  MODIFY `MuID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `musicartist`
--
ALTER TABLE `musicartist`
  MODIFY `MID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `performance`
--
ALTER TABLE `performance`
  MODIFY `PID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `producer`
--
ALTER TABLE `producer`
  MODIFY `ProID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `publishedmusic`
--
ALTER TABLE `publishedmusic`
  MODIFY `PuID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `releasetype`
--
ALTER TABLE `releasetype`
  MODIFY `ReleaseID` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
