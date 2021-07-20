-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 19, 2021 at 02:21 PM
-- Server version: 8.0.25
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `Id` int NOT NULL,
  `Text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isCorrect` tinyint(1) NOT NULL,
  `QuestionID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`Id`, `Text`, `isCorrect`, `QuestionID`) VALUES
(1, '16', 0, 1),
(2, '8', 0, 1),
(3, '12', 1, 1),
(4, '1998', 0, 2),
(5, '2000', 0, 2),
(6, '2002', 1, 2),
(9, 'Weil die Banane zum Licht wachsen will', 1, 3),
(10, 'Weil sie gerade doof aussehen würde', 1, 3),
(11, 'Hier ein gratis Punkt!', 1, 3),
(12, 'Weil sie sonst nicht in die Schale passen würde!', 1, 3),
(13, '3', 0, 4),
(14, '7', 0, 4),
(15, '11', 1, 4),
(16, '14', 0, 4),
(17, 'Hell yeah!', 1, 5),
(18, 'No thanks', 0, 5),
(24, '7.5 Jahre', 0, 7),
(25, '10 Jahre', 0, 7),
(26, '12.5 Jahre', 1, 7),
(27, '2004', 0, 2),
(28, '15', 0, 7),
(30, 'Folkinshiredroundedwestminstercubbytown', 0, 9),
(31, 'jagaboluderklarustufbranan', 0, 9),
(32, 'Llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch', 1, 9),
(33, 'An der Klopfstelle tritt Flüssigkeit aus.', 0, 10),
(34, 'Hunderte Ameisen kommen aus dem hohlen Stamm.', 1, 10),
(35, 'Das Klopfen hallt nach einiger Zeit wider.', 0, 10),
(36, 'Besserwisser', 1, 11),
(37, 'Bügeleisen', 0, 11),
(38, 'Vielflieger', 0, 11),
(39, 'Ei in Erbsensuppe', 0, 12),
(40, 'Fisch in Brotteig', 1, 12),
(41, 'Fleisch in Kohlgemüse', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `contentText`
--

CREATE TABLE `contentText` (
  `Id` int NOT NULL,
  `Text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Typ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contentText`
--

INSERT INTO `contentText` (`Id`, `Text`, `Typ`) VALUES
(1, 'Best Quiz ever!', 'IntroductionData'),
(2, 'Have fun!', 'IntroductionData'),
(3, 'Congratulations', 'ReportData'),
(4, 'What a genious!', 'ReportData'),
(5, 'Not bad!', 'ReportData'),
(6, 'What a loser!', 'ReportData'),
(7, 'Have fun! :)\r\n', 'IntroductionData'),
(8, 'I hope you\'ll have fun :)', 'IntroductionData'),
(9, 'Breathe in... Breathe out', 'IntroductionData'),
(10, 'Breathe out', 'IntroductionData'),
(11, 'AND', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Id` int NOT NULL,
  `Text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Id`, `Text`) VALUES
(1, 'Wie viele Buchstaben hat das hawaiianische Alphabet?'),
(2, 'In welchem Jahr war die Einführung des Euro?'),
(3, 'Warum ist die Banane krumm?'),
(4, 'How many timezones are there in russia?'),
(5, 'Do you want to have a free point?'),
(7, 'Nach welcher Zeit feiert man die „Petersilienhochzeit“?'),
(9, 'Wie lautet der längste Ortsname Europas?'),
(10, ' Was passiert wenn man an einen Cecropia-Baum klopft? \r\n'),
(11, 'Welches Wort versteht man in den skandinavischen Ländern, ohne dass Sie es zuvor übersetzen müssen? '),
(12, 'Was verbirgt sich hinter dem lustigen Wort Kalakukko? ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `answer_question` (`QuestionID`);

--
-- Indexes for table `contentText`
--
ALTER TABLE `contentText`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `contentText`
--
ALTER TABLE `contentText`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answer_question` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
