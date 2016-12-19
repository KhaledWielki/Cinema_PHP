-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Gru 2016, 00:51
-- Wersja serwera: 10.1.19-MariaDB
-- Wersja PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cinema`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `all_performance_seats`
--

CREATE TABLE `all_performance_seats` (
  `cinema_ID` int(11) NOT NULL,
  `row_number` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL,
  `performance_date` date NOT NULL,
  `performance_ID` int(11) NOT NULL,
  `seat_status_ID` int(11) NOT NULL,
  `booking_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `booked_performance_seats`
--

CREATE TABLE `booked_performance_seats` (
  `cinema_ID` int(11) NOT NULL,
  `row_number` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL,
  `performance_date` int(11) NOT NULL,
  `performance_ID` int(11) NOT NULL,
  `booking_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bookings`
--

CREATE TABLE `bookings` (
  `booking_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_seat_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cinemas`
--

CREATE TABLE `cinemas` (
  `cinema_ID` int(11) NOT NULL,
  `cinema_name` varchar(255) NOT NULL,
  `cinema_address` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cinema_phone` int(11) NOT NULL,
  `cinema_manager` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `cinemas`
--

INSERT INTO `cinemas` (`cinema_ID`, `cinema_name`, `cinema_address`, `cinema_phone`, `cinema_manager`) VALUES
(1, 'Cinema City', 'Łódź', 555666777, 'Rezner Adam'),
(2, 'Cinema City', 'Warszawa', 559223020, 'Jankowski Robert'),
(3, 'Cinema City', 'Poznań', 677909222, 'Janicki Marcin'),
(4, 'Cinema City', 'Gdańsk', 999440323, 'Pawłowski Robert'),
(5, 'Multikino', 'Gdańsk', 556776545, 'Dostojewski Siergiej'),
(6, 'Multikino', 'Wrocław', 999589544, 'Makłowicz Sebastian\r\n'),
(7, 'Multikino', 'Lublin', 77655677, 'Gorki Anna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

CREATE TABLE `customers` (
  `customer_ID` int(11) NOT NULL,
  `customer_first_name` text NOT NULL,
  `customer_last_name` text NOT NULL,
  `customer_email` text NOT NULL,
  `password` text NOT NULL,
  `customer_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `customers`
--

INSERT INTO `customers` (`customer_ID`, `customer_first_name`, `customer_last_name`, `customer_email`, `password`, `customer_phone`) VALUES
(1, 'Adam', 'Rezner', 'adamrezner@kino.pl', 'qwerty', 555666565),
(2, 'Bartosz', 'Jędrzejczyk', 'bjedrzejczyk@p.lodz.pl', 'asdfg', 567847343),
(12, 'Piotr', 'Duda', 'pduda@mail.com', 'Dupa', 5569304),
(13, 'Jacek', 'Kundel', 'jkundel@mail.com', 'asdfg', 11234567);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `movie_ID` int(11) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_description` varchar(255) NOT NULL,
  `movie_genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `movies`
--

INSERT INTO `movies` (`movie_ID`, `movie_name`, `movie_description`, `movie_genre`) VALUES
(1, 'Trolle', 'Tytułowe trolle to przepełnione radością życia, rozśpiewane stworki, które obdarzono bajecznie kolorowymi włosami, układającymi się w niezwykłe fryzury. ', 'Animation'),
(2, 'War Machine', 'Ciekawy film wojenny', 'Historical'),
(3, 'Resident Evil', 'Zomibie, a lot of zombies.', 'Thriller'),
(4, 'Star Wars I', 'Little Anakin', 'Science Fiction'),
(5, 'Star Wars II', 'Middle Anakin', 'Science Fiction'),
(6, 'Star Wars III', 'Old Anakin, little Vader.', 'Science Fiction'),
(7, 'Star Wars IV', 'Middle Vader', 'Science Fiction'),
(8, 'Fight Club', 'Under ground fight club', 'Action'),
(9, 'The incredibles', 'Family with big power', 'Animation'),
(10, 'Back to the future', 'Bang', 'Science Fiction'),
(11, 'Niezniszczalni', 'DÅ‚ugi wyczerpujÄ…cy opis filmu', 'Akcja');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movie_showings`
--

CREATE TABLE `movie_showings` (
  `movie_showing_ID` int(11) NOT NULL,
  `cinema_ID` int(11) NOT NULL,
  `movie_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `performance_numbers`
--

CREATE TABLE `performance_numbers` (
  `performance_ID` int(11) NOT NULL,
  `performance_start_time` date NOT NULL,
  `performance_end_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `row_seats`
--

CREATE TABLE `row_seats` (
  `cinema_ID` int(11) NOT NULL,
  `row_number` int(11) NOT NULL,
  `seat_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `seat_status`
--

CREATE TABLE `seat_status` (
  `seat_status_ID` int(11) NOT NULL,
  `seats_status_code` int(11) NOT NULL,
  `seat_status_description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `all_performance_seats`
--
ALTER TABLE `all_performance_seats`
  ADD PRIMARY KEY (`cinema_ID`,`row_number`,`seat_number`,`performance_date`),
  ADD KEY `cinema_ID` (`cinema_ID`,`row_number`,`seat_number`,`performance_date`,`performance_ID`,`seat_status_ID`,`booking_ID`),
  ADD KEY `booking_ID` (`booking_ID`),
  ADD KEY `seat_stats_ID` (`seat_status_ID`),
  ADD KEY `performance_number` (`performance_ID`),
  ADD KEY `row_number` (`row_number`);

--
-- Indexes for table `booked_performance_seats`
--
ALTER TABLE `booked_performance_seats`
  ADD PRIMARY KEY (`cinema_ID`,`row_number`,`seat_number`,`performance_date`,`performance_ID`),
  ADD KEY `row_number` (`row_number`),
  ADD KEY `row_number_2` (`row_number`),
  ADD KEY `row_number_3` (`row_number`),
  ADD KEY `cinema_ID` (`cinema_ID`),
  ADD KEY `performance_date` (`performance_date`,`performance_ID`,`booking_ID`),
  ADD KEY `seat_number` (`seat_number`),
  ADD KEY `booking_ID` (`booking_ID`),
  ADD KEY `performance_ID` (`performance_ID`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_ID`),
  ADD KEY `customer_ID` (`customer_ID`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`cinema_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_ID`),
  ADD KEY `movie_name` (`movie_name`);

--
-- Indexes for table `movie_showings`
--
ALTER TABLE `movie_showings`
  ADD PRIMARY KEY (`movie_showing_ID`),
  ADD KEY `cinema_ID` (`cinema_ID`,`movie_ID`),
  ADD KEY `cinema_ID_2` (`cinema_ID`,`movie_ID`),
  ADD KEY `movie_ID` (`movie_ID`);

--
-- Indexes for table `performance_numbers`
--
ALTER TABLE `performance_numbers`
  ADD PRIMARY KEY (`performance_ID`);

--
-- Indexes for table `row_seats`
--
ALTER TABLE `row_seats`
  ADD PRIMARY KEY (`cinema_ID`),
  ADD KEY `cinema_ID` (`cinema_ID`),
  ADD KEY `row_number` (`row_number`);

--
-- Indexes for table `seat_status`
--
ALTER TABLE `seat_status`
  ADD PRIMARY KEY (`seat_status_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `cinemas`
--
ALTER TABLE `cinemas`
  MODIFY `cinema_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `row_seats`
--
ALTER TABLE `row_seats`
  MODIFY `cinema_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `all_performance_seats`
--
ALTER TABLE `all_performance_seats`
  ADD CONSTRAINT `all_performance_seats_ibfk_1` FOREIGN KEY (`booking_ID`) REFERENCES `bookings` (`booking_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `all_performance_seats_ibfk_2` FOREIGN KEY (`seat_status_ID`) REFERENCES `seat_status` (`seat_status_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `all_performance_seats_ibfk_3` FOREIGN KEY (`performance_ID`) REFERENCES `performance_numbers` (`performance_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `all_performance_seats_ibfk_4` FOREIGN KEY (`row_number`) REFERENCES `row_seats` (`row_number`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `booked_performance_seats`
--
ALTER TABLE `booked_performance_seats`
  ADD CONSTRAINT `booked_performance_seats_ibfk_1` FOREIGN KEY (`booking_ID`) REFERENCES `bookings` (`booking_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_performance_seats_ibfk_2` FOREIGN KEY (`performance_ID`) REFERENCES `performance_numbers` (`performance_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_performance_seats_ibfk_3` FOREIGN KEY (`row_number`) REFERENCES `row_seats` (`row_number`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customers` (`customer_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `movie_showings`
--
ALTER TABLE `movie_showings`
  ADD CONSTRAINT `movie_showings_ibfk_1` FOREIGN KEY (`cinema_ID`) REFERENCES `cinemas` (`cinema_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_showings_ibfk_2` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `row_seats`
--
ALTER TABLE `row_seats`
  ADD CONSTRAINT `row_seats_ibfk_1` FOREIGN KEY (`cinema_ID`) REFERENCES `cinemas` (`cinema_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
