-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 21, 2025 at 03:01 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`, `surname`) VALUES
(1, 'Adam', 'Mickiewicz'),
(2, 'Henryk', 'Sienkiewicz'),
(3, 'William', 'Shakespear'),
(4, 'Stephen', 'King'),
(5, 'John Ronald Reuel', 'Tolkien'),
(6, 'Gabriel', 'Garcia Marquez'),
(7, 'J.K.', 'Rowling'),
(8, 'George', 'Orwell'),
(9, 'Mark', 'Twain'),
(10, 'F. Scott', 'Fitzgerald'),
(11, 'Isaac', 'Asimov'),
(12, 'Arthur', 'C. Clarke'),
(13, 'Haruki', 'Murakami'),
(14, 'Philip', 'K. Dick'),
(15, 'Neil', 'Gaiman');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `dateOfRelease` date DEFAULT NULL,
  `stock` int(11) DEFAULT 1,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `authorId`, `dateOfRelease`, `stock`, `description`) VALUES
(1, 'Pan Tadeusz', 1, '1834-06-01', 10, 'Epicka opowieść o historii Polski'),
(2, 'Quo Vadis', 2, '1896-01-01', 5, 'Wielka powieść o starożytnym Rzymie'),
(3, 'Hamlet', 3, '1600-01-01', 7, 'Tragedia o władzy, zdradzie i zemście'),
(4, 'The Shining', 4, '1977-01-01', 3, 'Opowieść o nawiedzonym hotelu'),
(5, 'Władca Pierścieni', 5, '1954-07-29', 15, 'Saga o walce dobra ze złem w Śródziemiu'),
(6, 'Sto lat samotności', 6, '1967-06-05', 12, 'Historia rodziny Buendía na tle historii Kolumbii'),
(7, 'Harry Potter i Kamień Filozoficzny', 7, '1997-06-26', 20, 'Początek przygód młodego czarodzieja Harry\'ego Pottera'),
(8, '1984', 8, '1949-06-08', 8, 'Powieść o totalitarnym państwie i inwigilacji społeczeństwa'),
(9, 'Przygody Tomka Sawyera', 9, '1876-12-01', 6, 'Klasyczna powieść o chłopcu z Missouri'),
(10, 'Wielki Gatsby', 10, '1925-04-10', 5, 'Tragiczna historia bogatego człowieka szukającego miłości'),
(11, 'Fundacja', 6, '1951-05-01', 7, 'Powieść o upadku galaktycznego imperium i próbach jego odbudowy'),
(12, 'Rendezvous with Rama', 7, '1973-01-01', 4, 'Opowieść o tajemniczym obiekcie kosmicznym, który pojawił się w Układzie Słonecznym'),
(13, 'Norwegian Wood', 8, '1987-09-04', 9, 'Romans z elementami nostalgii i refleksji nad dorastaniem'),
(14, 'Ubik', 9, '1969-02-17', 3, 'Powiesć o rzeczywistości, która jest kształtowana przez nieznane siły'),
(15, 'American Gods', 10, '2001-06-19', 10, 'Opowieść o walce dawnych i nowych bogów w Stanach Zjednoczonych'),
(16, 'Dziady', 1, '1823-10-01', 8, 'Najsłynniejsze dzieło romantyczne Adama Mickiewicza'),
(17, 'Konrad Wallenrod', 1, '1828-02-01', 5, 'Powieść o walce narodowej i osobistym poświęceniu'),
(18, 'Krzyżacy', 2, '1900-01-01', 10, 'Powieść o średniowiecznej Polsce i walce z Zakonem Krzyżackim'),
(19, 'Ogniem i Mieczem', 2, '1884-01-01', 7, 'Pierwsza część trylogii Henryka Sienkiewicza o XVII-wiecznej Polsce'),
(20, 'Macbeth', 3, '1606-01-01', 6, 'Jedna z najsłynniejszych tragedii Szekspira o ambicji i zdradzie'),
(21, 'Romeo i Julia', 3, '1597-01-01', 9, 'Tragiczna historia miłości dwojga młodych kochanków'),
(22, 'Lśnienie', 4, '1977-01-01', 5, 'Horror o mężczyźnie, który staje się coraz bardziej obłąkany w nawiedzonym hotelu'),
(23, 'Carrie', 4, '1974-04-05', 8, 'Opowieść o dziewczynie, która odkrywa swoje nadprzyrodzone moce'),
(24, 'Silmarillion', 5, '1977-09-15', 12, 'Mityczny początek Śródziemia, pełen historii o bogach i bohaterach'),
(25, 'Hobbit', 5, '1937-09-21', 15, 'Opowieść o przygodach Bilba Bagginsa i jego wyprawie w poszukiwaniu skarbu'),
(26, 'Miłość w czasach zarazy', 6, '1985-01-01', 10, 'Romans osadzony w tle epidemii cholery w XVIII-wiecznej Kolumbii'),
(27, 'Kronika zapowiedzianej śmierci', 6, '1981-03-06', 6, 'Powieść o morderstwie i jego społecznych konsekwencjach w małym miasteczku'),
(28, 'Harry Potter i Komnata Tajemnic', 7, '1998-07-02', 18, 'Druga część przygód młodego czarodzieja Harry\'ego Pottera'),
(29, 'Harry Potter i Więzień Azkabanu', 7, '1999-07-08', 20, 'Trzecia część serii, w której Harry dowiaduje się więcej o swojej przeszłości'),
(30, 'Folwark zwierzęcy', 8, '1945-08-17', 11, 'Allegoria polityczna o rewolucji i totalitaryzmie na farmie zwierząt'),
(31, 'Nadszedł człowiek', 8, '1953-10-12', 6, 'Opowieść o walce z totalitarnym reżimem i próbą wyzwolenia jednostki'),
(32, 'Księga Dżungli', 9, '1894-01-01', 7, 'Zbiór opowiadań o przygodach Mowgliego w dżungli Indii'),
(33, 'Wędrowiec', 9, '1888-01-01', 4, 'Powieść przygodowa o chłopcu, który wyrusza w niebezpieczną podróż'),
(34, 'O wielkim Gatsby\'m', 10, '1925-04-10', 6, 'Zrozumienie amerykańskiego snu i tragedii jednej miłości');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `rentDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `userId`, `bookId`, `rentDate`, `returnDate`) VALUES
(1, 1, 2, '2025-10-01', '2025-10-15'),
(2, 2, 5, '2025-10-05', '2025-10-20'),
(3, 3, 1, '2025-10-10', '2025-10-24'),
(4, 4, 3, '2025-10-12', '2025-10-26'),
(5, 5, 4, '2025-10-15', '2025-10-29'),
(6, 1, 6, '2025-10-02', '2025-10-16'),
(7, 2, 7, '2025-10-08', '2025-10-22'),
(8, 3, 8, '2025-10-14', '2025-10-28'),
(9, 4, 9, '2025-10-18', '2025-10-30'),
(10, 5, 10, '2025-10-20', '2025-11-03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pass`, `email`) VALUES
(1, 'jan_kowalski', 'password123', 'jan.kowalski@example.com'),
(2, 'anna_nowak', 'securepassword456', 'anna.nowak@example.com'),
(3, 'michał_poznański', 'mypassword789', 'michal.poznanski@example.com'),
(4, 'olga_wielka', 'adminpass111', 'olga.wielka@example.com'),
(5, 'tomasz_król', 'kingpassword222', 'tomasz.krol@example.com'),
(6, 'karol_wojcik', 'testpassword321', 'karol.wojcik@example.com'),
(7, 'agata_ryba', '1234securepass', 'agata.ryba@example.com'),
(8, 'piotr_zielinski', 'abc123password', 'piotr.zielinski@example.com'),
(9, 'magda_wysocka', 'randompass567', 'magda.wysocka@example.com'),
(10, 'bartosz_kaczmarek', 'bartoszpass987', 'bartosz.kaczmarek@example.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authorId` (`authorId`);

--
-- Indeksy dla tabeli `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `bookId` (`bookId`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `author` (`id`);

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `checkout_ibfk_2` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
