-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Mar 2023, 23:22
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answers`
--

CREATE TABLE `answers` (
  `id_answers` int(11) NOT NULL,
  `answers_content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `answers`
--

INSERT INTO `answers` (`id_answers`, `answers_content`) VALUES
(1, ' Ataki na bazę danych'),
(2, 'Ataki na aplikację internetową'),
(3, 'Ataki na system operacyjny\r\n'),
(4, 'Ataki na serwery'),
(5, 'Usuwanie nieprawidłowych danych z bazy danych.'),
(6, 'Konwersja danych wejściowych na przetwarzalny format.'),
(7, 'Sprawdzanie, czy dane wejściowe spełniają wymagania lub kryteria.'),
(8, 'Zapisywanie danych wejściowych na dysku twardym.'),
(9, 'Antywirusy'),
(10, 'Firewalle'),
(11, 'Programy do zarządzania hasłami'),
(12, 'Skanery bezpieczeństwa webowego'),
(13, 'Ataki na serwery pocztowe'),
(14, 'Ataki na protokół FTP'),
(15, 'Ataki na strony internetowe'),
(16, 'Ataki polegające na wstrzykiwaniu kodu SQL'),
(17, 'Instrukcje SQL pisane na żywo podczas wykonywania zapytań.'),
(18, 'Instrukcje SQL używane do tworzenia tabel.'),
(19, 'Instrukcje SQL zapisane w aplikacji, gotowe do wielokrotnego użycia.'),
(20, 'Instrukcje SQL zapisane w plikach wykonywalnych systemu operacyjnego.'),
(21, 'Skrypty i narzędzia umożliwiające walidację wejść użytkowników i ich filtrację'),
(22, 'Programy do tworzenia baz danych'),
(23, 'Narzędzia służące do wykrywania ataków na sieci LAN'),
(24, 'Oprogramowanie antywirusowe'),
(25, 'Ukrywanie przed robotami wyszukiwarek'),
(26, 'Kodowanie danych wejściowych, aby zapobiec XSS'),
(27, 'Bezpośrednie przekazywanie danych z bazy do przeglądarki'),
(28, 'Zamiana znaków specjalnych na ich odpowiedniki w HTML\r\n'),
(29, 'Bezpieczny protokół szyfrowania komunikacji klient-serwer'),
(30, 'Zestaw zasad bezpieczeństwa dla ładowanych zasobów na stronie'),
(31, 'Procedura autoryzacji dostępu do chronionych zasobów'),
(32, 'Mechanizm zapobiegający atakom XSS poprzez kontrolę dostępu do skryptów'),
(33, 'Bezpieczeństwo aplikacji ważne ze względu na wymogi regulacyjne o RODO'),
(34, 'Bezpieczeństwo aplikacji zapobiega naruszeniom prywatności'),
(35, 'Bezpieczeństwo aplikacji zapobiega atakom cybernetycznym'),
(36, 'Bezpieczeństwo aplikacji pomaga w utrzymaniu ciągłości biznesowej'),
(37, 'Technika polegająca na usuwaniu danych wejściowych, które nie są pożądane'),
(38, 'Proces szyfrowania danych wejściowych przed zapisaniem ich w bazie danych.'),
(39, 'Mechanizm służący do przekazywania danych z aplikacji do innych systemów.'),
(40, 'Technika, która polega na sprawdzeniu i oczyszczeniu danych wejściowych');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answers_question_relation`
--

CREATE TABLE `answers_question_relation` (
  `id_answers_question_relation` int(11) NOT NULL,
  `id_answers` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `isCorrect` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `answers_question_relation`
--

INSERT INTO `answers_question_relation` (`id_answers_question_relation`, `id_answers`, `id_question`, `isCorrect`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 1),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 2, 0),
(6, 6, 2, 0),
(7, 7, 2, 1),
(8, 8, 2, 0),
(9, 9, 3, 0),
(10, 10, 3, 0),
(11, 11, 3, 0),
(12, 12, 3, 1),
(13, 13, 4, 0),
(14, 14, 4, 0),
(15, 15, 4, 0),
(16, 16, 4, 1),
(17, 17, 5, 0),
(18, 18, 5, 0),
(19, 19, 5, 1),
(20, 20, 5, 0),
(21, 21, 6, 1),
(22, 22, 6, 0),
(23, 23, 6, 0),
(24, 24, 6, 0),
(25, 25, 7, 0),
(26, 26, 7, 1),
(27, 27, 7, 0),
(28, 28, 7, 0),
(29, 29, 8, 0),
(30, 30, 8, 1),
(31, 31, 8, 0),
(32, 32, 8, 0),
(33, 33, 9, 0),
(34, 34, 9, 1),
(35, 35, 9, 0),
(36, 36, 9, 0),
(37, 37, 10, 0),
(38, 38, 10, 0),
(39, 39, 10, 0),
(40, 40, 10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `questions_content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id_question`, `questions_content`) VALUES
(1, 'Co to są ataki XSS?'),
(2, 'Co to jest walidacja danych wejściowych?'),
(3, 'Jakie narzędzia są dostępne do wykrywania ataków XSS?'),
(4, 'Co to są ataki SQL Injection?'),
(5, 'Co to są przygotowane instrukcje SQL?'),
(6, 'Jakie narzędzia są dostępne do wykrywania ataków SQL Injection?'),
(7, 'Co to jest Escape Output Encoding?'),
(8, 'Co to jest Content Security Policy (CSP)?'),
(9, 'Dlaczego bezpieczeństwo aplikacji jest ważne?'),
(10, 'Co to jest filtracja danych wejściowych?');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id_answers`);

--
-- Indeksy dla tabeli `answers_question_relation`
--
ALTER TABLE `answers_question_relation`
  ADD PRIMARY KEY (`id_answers_question_relation`),
  ADD KEY `id_question` (`id_question`),
  ADD KEY `id_answers` (`id_answers`);

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `answers_question_relation`
--
ALTER TABLE `answers_question_relation`
  ADD CONSTRAINT `answers_question_relation_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`),
  ADD CONSTRAINT `answers_question_relation_ibfk_2` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`),
  ADD CONSTRAINT `answers_question_relation_ibfk_3` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`),
  ADD CONSTRAINT `answers_question_relation_ibfk_4` FOREIGN KEY (`id_answers`) REFERENCES `answers` (`id_answers`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
