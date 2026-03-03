-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 03, 2026 alle 12:29
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libreria`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `access_logs`
--

CREATE TABLE `access_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `event` enum('login_ok','login_ko','logout') NOT NULL,
  `ip` varchar(60) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `access_logs`
--

INSERT INTO `access_logs` (`id`, `student_id`, `event`, `ip`, `user_agent`, `created_at`) VALUES
(1, 1, 'login_ok', '::1', NULL, '2026-01-23 09:16:17'),
(2, 1, 'login_ok', '::1', NULL, '2026-01-23 09:16:35'),
(3, 1, 'login_ok', '::1', NULL, '2026-01-26 09:20:52'),
(4, 1, 'login_ok', '::1', NULL, '2026-01-26 09:48:00'),
(5, 1, 'logout', '::1', NULL, '2026-01-26 10:02:18'),
(6, 1, 'login_ok', '::1', NULL, '2026-01-26 10:02:25'),
(7, 1, 'logout', '::1', NULL, '2026-01-26 10:02:42'),
(8, 2, 'login_ko', '::1', NULL, '2026-01-26 10:02:49'),
(9, 1, 'login_ok', '::1', NULL, '2026-01-26 10:03:09'),
(10, 1, 'login_ok', '::1', NULL, '2026-01-29 09:31:27'),
(11, 1, 'login_ok', '::1', NULL, '2026-01-29 10:02:07'),
(12, 1, 'logout', '::1', NULL, '2026-01-29 10:10:21'),
(13, 1, 'login_ok', '::1', NULL, '2026-01-29 10:10:25'),
(14, 1, 'login_ok', '::1', NULL, '2026-02-06 11:29:51'),
(15, 1, 'login_ok', '::1', NULL, '2026-02-11 09:07:51'),
(16, 1, 'login_ok', '::1', NULL, '2026-02-24 10:08:16'),
(17, 1, 'logout', '::1', NULL, '2026-02-24 11:22:01'),
(18, NULL, 'logout', '::1', NULL, '2026-02-24 11:22:01'),
(19, 1, 'login_ko', '::1', NULL, '2026-02-24 11:22:19'),
(20, 1, 'login_ko', '::1', NULL, '2026-02-24 11:23:41'),
(21, 4, 'login_ok', '::1', NULL, '2026-02-24 11:24:05'),
(22, 4, 'logout', '::1', NULL, '2026-02-24 11:26:02'),
(23, 1, 'login_ko', '::1', NULL, '2026-02-24 11:26:08'),
(24, 1, 'login_ok', '::1', NULL, '2026-02-24 11:30:05'),
(25, 1, 'logout', '::1', NULL, '2026-02-24 11:30:08'),
(26, 1, 'login_ok', '::1', NULL, '2026-02-24 11:30:12'),
(27, 1, 'logout', '::1', NULL, '2026-02-24 11:30:20'),
(28, 4, 'login_ok', '::1', NULL, '2026-02-24 11:30:23'),
(29, 4, 'logout', '::1', NULL, '2026-02-24 11:30:42'),
(30, 5, 'login_ok', '::1', NULL, '2026-02-24 11:35:57'),
(31, 5, 'logout', '::1', NULL, '2026-02-24 11:36:06'),
(32, NULL, 'logout', '::1', NULL, '2026-02-24 11:36:06'),
(33, 4, 'login_ok', '::1', NULL, '2026-02-24 11:36:14'),
(34, 4, 'logout', '::1', NULL, '2026-02-24 11:39:46'),
(35, 4, 'login_ok', '::1', NULL, '2026-02-24 11:40:04'),
(36, 4, 'login_ok', '::1', NULL, '2026-02-25 08:46:52'),
(37, 4, 'login_ok', '::1', NULL, '2026-02-25 10:36:11'),
(38, 4, 'login_ok', '::1', NULL, '2026-02-25 10:36:37'),
(39, 4, 'logout', '::1', NULL, '2026-02-25 11:33:35'),
(40, 5, 'login_ko', '::1', NULL, '2026-02-25 11:33:42'),
(41, 1, 'login_ok', '::1', NULL, '2026-02-25 11:33:57'),
(42, 1, 'logout', '::1', NULL, '2026-02-25 11:34:21'),
(43, 4, 'login_ok', '::1', NULL, '2026-02-25 11:34:26'),
(44, 6, 'login_ok', '::1', NULL, '2026-03-03 08:42:32'),
(45, 6, 'logout', '::1', NULL, '2026-03-03 08:42:35'),
(46, 4, 'login_ok', '::1', NULL, '2026-03-03 08:42:39'),
(47, 4, 'logout', '::1', NULL, '2026-03-03 08:42:50'),
(48, 6, 'login_ok', '::1', NULL, '2026-03-03 08:43:02'),
(49, 6, 'logout', '::1', NULL, '2026-03-03 08:43:31'),
(50, 4, 'login_ok', '::1', NULL, '2026-03-03 08:43:36'),
(51, 4, 'logout', '::1', NULL, '2026-03-03 08:51:18'),
(52, 4, 'login_ok', '::1', NULL, '2026-03-03 09:13:58');

-- --------------------------------------------------------

--
-- Struttura della tabella `action_logs`
--

CREATE TABLE `action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `actor_student_id` int(10) UNSIGNED DEFAULT NULL,
  `action_type` varchar(50) NOT NULL,
  `laptop_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `action_logs`
--

INSERT INTO `action_logs` (`id`, `actor_student_id`, `action_type`, `laptop_id`, `customer_id`, `group_id`, `note`, `created_at`) VALUES
(1, 7, 'create_book', NULL, NULL, NULL, 'fffr', '2026-01-22 12:55:22'),
(2, 1, 'create_student', NULL, NULL, NULL, 'dio@gmail.com', '2026-01-26 09:54:26'),
(3, 1, 'update_student', NULL, NULL, NULL, 'dio@gmail.com', '2026-01-26 09:54:49'),
(4, 1, 'update_student', NULL, NULL, NULL, 'dio@gmail.com', '2026-01-26 09:55:03'),
(5, 1, 'update_student', NULL, NULL, NULL, 'fabriziomezzana@gmail.com', '2026-02-24 11:21:58'),
(6, 4, 'update_student', NULL, NULL, NULL, 'fabriziomezzana@gmail.com', '2026-02-24 11:24:14'),
(7, 4, 'update_student', NULL, NULL, NULL, 'fabriziomezzana@gmail.com', '2026-02-24 11:25:43'),
(8, 4, 'update_student', NULL, NULL, NULL, 'fabriziomezzana@gmail.com', '2026-02-24 11:25:48'),
(9, 4, 'update_student', NULL, NULL, NULL, 'fabriziomezzana@gmail.com', '2026-02-24 11:25:52');

-- --------------------------------------------------------

--
-- Struttura della tabella `copie`
--

CREATE TABLE `copie` (
  `id` int(11) NOT NULL,
  `id_opera` int(11) NOT NULL,
  `codice_copia` varchar(50) NOT NULL,
  `posizione` varchar(100) DEFAULT NULL,
  `stato` enum('disponibile','in_prestito') DEFAULT 'disponibile',
  `data_rientro` datetime DEFAULT NULL,
  `qr_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `pc_requested_count` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `group_members`
--

CREATE TABLE `group_members` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'member',
  `joined_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `laptops`
--

CREATE TABLE `laptops` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'available',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `laptop_state_history`
--

CREATE TABLE `laptop_state_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `laptop_id` int(10) UNSIGNED NOT NULL,
  `changed_by_student_id` int(10) UNSIGNED DEFAULT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `autore` varchar(255) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `editore` varchar(255) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `genere` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `stato` varchar(50) DEFAULT 'Disponibile',
  `prestito_student_id` int(11) DEFAULT NULL,
  `prestito_data_inizio` date DEFAULT NULL,
  `prestito_data_fine` date DEFAULT NULL,
  `prestito_condizioni` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`id`, `titolo`, `autore`, `isbn`, `editore`, `anno`, `genere`, `note`, `stato`, `prestito_student_id`, `prestito_data_inizio`, `prestito_data_fine`, `prestito_condizioni`) VALUES
(12, 'Moby Dick', 'Herman Melville', '9788809615021', '', 2008, 'Juvenile Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(13, 'Lucky Starr e i pirati degli asteroidi', 'Isaac Asimov', '9788804308034', '', NULL, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(14, 'Il ritratto di Dorian Gray', 'Oscar Wilde', '9788807820113', 'Feltrinelli Editore', 2002, 'Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(15, 'Tears. Lacrime a colori', 'Mariana Aresta Da Rocha', '9788820069674', '', 2020, 'Biography & Autobiography', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(16, 'Afro-beats', 'Piersandro Pallavicini', '9788878760660', '', 2006, 'Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(17, 'Klein e wagner', '', '9788879830492', 'Tascabili Economici Newton', 1992, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(18, '#NONOSTANTE', 'Marta Losito', '9788891821652', '', 2019, 'Biography & Autobiography', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(19, 'Omero, Iliade', 'Alessandro Baricco', '9788807881435', 'Feltrinelli', 2013, 'Drama', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(20, 'Le pietre magiche di Shannara', 'Terry Brooks', '9788804378327', 'Mondadori', 1994, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(21, 'Paria dei cieli', 'Isaac Asimov', '9788804403005', 'Mondadori', 1994, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(22, 'Fra le stelle e il cielo', 'Erica Bertelegni', '9788841879818', '', 2012, 'Juvenile Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(23, 'Abissi d\'acciaio', 'Isaac Asimov', '9788804403043', 'Mondadori', 1995, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(24, 'Va\' dove ti porta il cuore', 'Susanna Tamaro', '9788885989405', 'Baldini & Castoldi', 1994, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(25, 'Assetto neutro. La storia e l\'avventura delle immersioni subacquee', 'Tim Ecott', '9788804516439', '', 2003, 'Sports & Recreation', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(26, 'Aforismi sulla saggezza del vivere', 'Arthur Schopenhauer', '9788804388845', 'Mondadori', 1994, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(27, 'I bucanieri di Shadaki', 'Joe Dever', '9788870688412', '', 1995, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(28, '#valespo', 'Valerio Mazzei', '9788891822543', '', 2019, 'Biography & Autobiography', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(29, 'Il bassotto e la regina', 'Melania G. Mazzucco', '9788806227388', '', 2015, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(30, 'Duemila leghe sotto l\'America', 'Emilio Salgari', '9788873716006', '', 2010, 'Juvenile Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(31, 'Andy. Storia di una cinica adolescente', 'Martina', '9788895049809', '', 2010, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(32, 'A piene vele, su onde spumose. Ovvero come Enea fondò Roma', 'Luisa Mattia', '9788876091445', '', 2009, 'Juvenile Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(33, 'Il buio oltre la siepe', 'Harper Lee', '9788807881558', 'Feltrinelli', 2013, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(34, 'Ideario', 'Ernesto Guevara', '9788881833849', '', 1996, 'Political Science', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(35, 'Prova di innocenza', 'David Thorne', '9788822702449', 'First', 2017, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(36, 'CIALDINI ROBERT B. - ARMI DELL', 'Robert B. Cialdini', '9788809808607', 'Giunti Editore', 12015, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(37, 'Per sempre con te. Thunder road series', 'Katie McGarry', '9788869051531', '', 2016, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(38, 'Storie della buonanotte per bambine ribelli (Italian Edition)', 'Francesca Cavallo', '9788804676379', 'Mondadori', 20170228, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(39, 'I miti in Sicilia', 'Riccardo Francaviglia', '9788899268008', '', 2015, 'Juvenile Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(40, 'Fai bei sogni', 'Massimo Gramellini', '9788830429154', 'Longanesi', 2012, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(41, 'L\'ospite di Dracula e altri racconti', '', '9788879831697', '', NULL, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(42, 'Il ladro di cadaveri-Janet la storta-I merry men', 'Robert Louis Stevenson', '9788879831703', '', 1993, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(43, 'Barnum', 'Alessandro Baricco', '9788807813467', 'Feltrinelli', 1995, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(44, 'Oceano mare', 'Alessandro Baricco', '9788817660433', 'Rizzoli', 199609, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(45, 'Un chilo di piume, un chilo di piombo', 'Donatella Ziliotto', '9788879260824', 'Einaudi Ragazzi', 1992, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(46, 'Qualcosa', 'Chiara Gamberale', '9788850253227', '', 2019, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(47, 'Storie e leggende romane', 'Cosimo Aldrovandi', '9788846816931', '', 2001, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(48, 'La metamorfosi e altri racconti. Ediz. integrale', 'Franz Kafka', '9788883371455', '', 2012, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(49, 'L\'abisso. La guerra degli antichi. Warcraft', 'Richard A. Knaak', '9788804568872', '', 2007, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(50, 'Le avventure di Sherlock Holmes. Ediz. integrale', 'Arthur Conan Doyle', '9788854180895', '', 2015, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(51, 'Vermeer e il codice segreto', 'Blue Balliett', '9788804554691', 'Arnoldo Mondadori Editore', 2006, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(52, 'Le nostre emozioni', '', '9788891820020', '', NULL, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(53, 'Succede', 'Sofia Viscardi', '9788804660156', 'Mondadori', 20160501, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(54, 'La guerra degli elfi', 'Herbie Brennan', '9788804530268', 'Mondadori', 2004, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(55, 'L\'ultima magia', 'Terry Brooks', '9788804523956', 'Oscar bestsellers', 2003, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(56, 'I guerrieri della tempesta. Orchi', 'Stan Nicholls', '9788804561958', '', 2006, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(57, 'Il mio peggior... amico', 'Margaret P. Haddix', '9788856646702', '', 2015, 'Juvenile Nonfiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(58, 'I turbamenti del giovane Törless', 'Robert Musil', '9788804361459', '', 1992, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(59, 'L\'isola del tesoro. Ediz. integrale', 'Robert L. Stevenson', '9788883371066', '', 2011, 'Juvenile Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(60, 'Mamma e papà, me ne vado', 'Christine Nöstlinger', '9788879263061', '', 1999, 'Cats', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(61, 'Una di voi', 'Iris Ferrari', '9788891817037', '', 2018, 'Biography & Autobiography', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(62, 'Cuore d\'eroe. La storia di Enea', 'Roberto Piumini', '9788809841635', '', 2017, 'Juvenile Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(63, 'I fuochi di Tegel. Berlin', 'Fabio Geda', '9788804711971', '', 2019, 'Juvenile Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(64, 'I venti del male. I più grandi cattivi di tutti i tempi raccontano come il male è cominciato', 'Manlio Castagna', '9788804730866', '', 2020, 'Juvenile Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(65, 'Petrademone. Il libro delle porte', 'Manlio Castagna', '9788804684114', 'Mondadori', 202018, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(66, 'La compagnia dei Celestini', 'Stefano Benni', '9788807014468', 'Feltrinelli', 1993, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(67, 'La lunga notte del dottor Galvan', 'Daniel Pennac', '9788807819544', 'Feltrinelli Editore', 2005, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(68, 'Racconti comici e umoristici', 'A. Milanesi', '9788820106300', '', 1999, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(69, 'L\'amore quando c\'era', 'Chiara Gamberale', '9788804617839', 'Mondadori', 2012, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(70, 'I figli della libertà', 'Marc Levy', '9788817035675', '', 2009, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(71, 'Il grande Gatsby', 'Francis Scott Fitzgerald', '9788804418337', '', 1996, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(72, 'I Love Shopping Con Mia Sorella', 'Sophie Kinsella', '9788804547945', 'Mondadori', 2005, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(73, 'I love shopping in bianco', 'Sophie Kinsella', '9788804464884', 'Mondadori', 20031001, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(74, 'Lo scontro finale. La ragazza drago', 'Licia Troisi', '9788804636946', '', 2014, 'Juvenile Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(75, 'Twilight', 'Stephenie Meyer', '9788876259166', '', 2016, 'American fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(76, 'Trilogia della Fondazione', '', '9788804528647', 'Mondadori', 2004, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(77, 'La lettera scarlatta', 'Nathaniel Hawthorne', '9788804396451', '', 1995, 'Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(78, 'Mio fratello rincorre i dinosauri. Storia mia e di Giovanni che ha un cromosoma in più', 'Giacomo Mazzariol', '9788806239060', '', 162018, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(79, 'I love shopping per il baby (I miti)', '', '9788804580492', 'Mondadori', NULL, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(80, 'Romolo e Remo', 'Antonella Lurati', '9788846818553', '', NULL, 'Juvenile Nonfiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(81, 'Diario di un sogno possibile', 'Gino Strada', '9788807923951', '', 2023, 'Juvenile Nonfiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(82, 'La ballata delle prugne secche', 'Pulsatilla', '9788876152405', '', 2006, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL);
INSERT INTO `libri` (`id`, `titolo`, `autore`, `isbn`, `editore`, `anno`, `genere`, `note`, `stato`, `prestito_student_id`, `prestito_data_inizio`, `prestito_data_fine`, `prestito_condizioni`) VALUES
(83, 'Ora Ti Lascio Andare', 'Antonia L.', '9798607141141', 'Independently Published', 2020, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(84, 'Vede oltre gli alberi', 'Michael Dorris', '9788838437366', '', 1999, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(85, 'I guardiani dei lampi. Orchi', 'Stan Nicholls', '9788804546672', 'Edizioni Mondadori', 2005, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(86, 'P.S. I love you', 'Cecelia Ahern', '9788846208439', '', 2006, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(87, 'Tutta colpa del denaro', 'Il vostro caro Dexter', '9788891807380', '', 2016, 'Biography & Autobiography', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(88, 'Veri amici', 'Mates', '9788891807809', '', 2016, 'Biography & Autobiography', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(89, 'Il ladro di baci', 'L. J. Shen', '9791280078087', '', 2021, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(90, 'Ho il tuo numero', 'Sophie Kinsella', '9788804611523', '', 2011, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(91, 'Jovanotti Il Grande Boh!', 'Jovanotti', '9788807701023', 'Feltrinelli', 1998, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(92, 'Il trono di spade. Il trono di spade e il grande inverno', 'George R. Martin', '9788804666844', '', 2016, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(93, 'The Familiars. Il segreto della corona', 'Adam J. Epstein', '9788854141506', '', 2012, 'Juvenile Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(94, 'Il terzo gemello', 'Ken Follett', '9788804419136', '', 1996, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(95, 'I troll', 'Christoph Hardebusch', '9788834421321', '', 2008, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(96, 'I Love Mini Shopping', 'Sophie Kinsella', '9788804602071', 'Mondadori', 2010, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(97, 'Se i pesci guardassero le stelle', 'Luca Ammirati', '9788851167646', 'DeA Planeta Libri', 222019, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(98, 'Vacanze in villa', '', '9788804606390', '', NULL, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(99, 'Inferno', '', '9788804638520', 'Mondadori', 122013, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(100, 'I signori di Xibalba', '', '9788804467168', 'n/a', NULL, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(101, 'Anima mini tour', '', '9788804435532', 'n/a', NULL, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(102, 'Un posto chiamato Qui', 'Cecelia Ahern', '9788817030939', '', 2009, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(103, 'Il giorno in più', 'Fabio Volo', '9788804591641', 'Edizioni Mondadori', 2009, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(104, 'I Love Shopping in New York', 'Sophie Kinsella', '9788804512769', 'Mondadori', 20030101, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(105, 'Io uccido', '', '9788860730220', '', NULL, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(106, 'L\'ABC del risveglio', 'Osho', '9788804614722', '', 2012, 'Body, Mind & Spirit', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(107, 'La ragazza di nome Giulio', 'Milena Milani', '9788879833639', 'Newton Compton', 1994, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(108, 'Superpocket', 'S Severgnini', '9788846200471', 'Rl Libri', NULL, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(109, 'Meno male che ci sei', 'M. Daniela Raineri', '9788860614643', '', 2008, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(110, 'Parlami d\'amore', 'Silvio Muccino', '9788848603614', '', 2007, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(111, 'L\'insostenible leggerezza dell\'essere', 'Milan Kundera', '9788845906862', 'Adelphi', 1993, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(112, 'Il profeta.', 'Kahlil Gibran', '9788807811418', 'Feltrinelli', 1991, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(113, 'La distrazione', 'Luciano De Crescenzo', '9788804492009', '', 2001, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(114, 'Nico e i suoi fratelli', 'Aldo Baglio', '9788804451907', '', 1998, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(115, 'Tutti al mare', 'Michele Serra', '9788807811326', 'Feltrinelli Editore', 1992, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(116, 'Virus della mente', 'Richard Brodie', '9788887795110', '', 2000, 'Language Arts & Disciplines', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(117, 'Il Piccolo Principe [ The Little Prince ]', 'Antoine de Saint-Exupéry', '9788854172388', 'French and European Publications Inc', 262016, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(118, 'Firmino', 'Sam Savage', '9788806192587', 'Einaudi', 2008, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(119, 'Il sogno e le sue interpretazioni', 'Serena Foglia', '9788879834445', '', 1994, 'Body, Mind & Spirit', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(120, 'Le diete', 'Luciano Di Nepi', '9788879834674', '', 1994, 'Medical', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(121, 'i dolori del giovane werther', 'johann wolfgang von goethe', '9788879831352', '', 1993, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(122, 'Eccesso di zelo', 'Domenico Starnone', '9788807812835', '', 1996, 'Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(123, 'La ballata del vecchio marinaio e altre poesie. Testo inglese a fronte', 'Samuel Taylor Coleridge', '9788879839976', '', 1995, 'Poetry', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(124, 'Billy Bones. L\'armadio dei segreti', 'Christopher Lincoln', '9788854121614', '', 2010, 'Juvenile Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(125, 'La danza delle rane', 'Guido Quarzo', '9788893930062', '', 2019, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(126, 'Lotta Combinaguai', 'Astrid Lindgren', '9788804684428', 'Oscar junior', 2018, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(127, 'La porta del tempo', 'Pierdomenico Baccalario', '9788856613766', '', 2010, 'Juvenile Fiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(128, 'La Bottega delle Mappe Dimenticate', 'Pierdomenico Baccalario', '9788856613773', 'Piemme junior', 2010, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(129, 'La casa degli specchi vol. 3', 'Pierdomenico Baccalario', '9788856614237', 'Piemme', 82010, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(130, 'Re Mida ha le orecchie d\'asino', 'Bianca Pitzorno', '9788804599166', '', 2010, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(131, 'Il cammino di Santiago. Ediz. speciale', 'Paulo Coelho', '9788845265686', '', 2010, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(132, 'Non ti muovere', 'Margaret Mazzantini', '9788804517894', 'Mondadori', 2003, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(133, 'Sola come un gambo di sedano', 'Luciana Littizzetto', '9788804505792', 'Mondadori', 2002, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(134, 'Ti prendo e ti porto via.', 'Niccolò Ammaniti', '9788804476795', 'Oscar Mondadori', 2000, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(135, 'Il meraviglioso Mago di Oz', 'L. Frank Baum', '9788834722947', '', 2014, 'Juvenile Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(136, 'Sfortunato come me', '', '9788852219887', '', 2015, 'Juvenile Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(137, 'Daisy. La maschera spezzata', 'Marco Barretta', '9788867904310', '', 2021, 'Juvenile Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(138, 'Le due facce di Tamon', 'Yuki Shiwasu', '9788869134524', '', NULL, 'Comics & Graphic Novels', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'In Prestito', 6, '2026-03-03', '2026-04-02', 'buono'),
(139, 'Le due facce di Tamon', 'Yuki Shiwasu', '9788869134524', '', NULL, 'Comics & Graphic Novels', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(140, 'Le due facce di Tamon', 'Yuki Shiwasu', '9788869134524', '', NULL, 'Comics & Graphic Novels', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(141, 'Ogni giorno, ogni ora', 'Nataša Dragnić', '9788807018572', 'Feltrinelli Editore', 2011, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(142, 'Bianca come il latte, rossa come il sangue', 'Alessandro D\'Avenia', '9788804666578', '', 2016, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(143, 'Cuore puro. Quattro amici. Quattro destini. Una sola passione', 'Roberto Saviano', '9788809977860', '', 2022, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(144, 'Un posto nel mondo', 'Fa 1972- Volo', '9788804538790', 'Mondadori', 2006, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(145, 'La Commedia di Dante Alighieri. Per la Scuola media. Con CD-ROM', 'Stefano Motta', '9788883750199', '', 2010, 'Juvenile Nonfiction', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(146, 'Il mio libro sbagliato', 'Greta Menchi', '9788891517487', '', 2016, 'Biography & Autobiography', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(147, 'Perfetto difettoso', 'Piero Pelù', '9788804478713', 'Mondadori', 2000, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(148, 'Una barca nel bosco', 'Paola Mastrocola', '9788823515314', '', 2007, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(149, 'I love shopping', 'Sophie Kinsella', '9788804498544', 'Mondadori', 2005, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(150, 'Il dono', 'Cecelia Ahern', '9788817042932', 'Rizzoli', 2010, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(151, 'La zona cieca', 'Chiara Gamberale', '9788807032646', 'I narratori', 2017, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(152, 'Per caso (tanto il caso non esiste)', 'Paolo Stella', '9788804727378', '', 2020, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL);
INSERT INTO `libri` (`id`, `titolo`, `autore`, `isbn`, `editore`, `anno`, `genere`, `note`, `stato`, `prestito_student_id`, `prestito_data_inizio`, `prestito_data_fine`, `prestito_condizioni`) VALUES
(153, 'Quello che non ci siamo detti', 'Marc Levy', '9788817039826', 'Bur', 2010, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(154, 'Il ritratto di Dorian Gray', 'Oscar Wilde', '9788844032685', '', 2006, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(155, 'Noi, i ragazzi dello zoo di Berlino', 'Christiane Felscherinow', '9788817115209', 'BUR Biblioteca Univ. Rizzoli', 51989, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(156, 'La ragazza del treno', 'Paula Hawkins', '9788868368593', 'Pickwick Big', 2017, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(157, 'Sai Tenere Un Segreto?', 'Sophie Kinsella', '9788804547693', 'Mondadori', 2007, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(158, 'Il buio oltre la siepe', 'Lee', '9788807892790', 'Feltrinelli', 52019, '', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(159, 'Io e te', 'Niccolò Ammaniti', '9788806206802', 'Einaudi', 2010, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(160, 'Tre metri sopra il cielo.', 'Federico Moccia', '9788807840395', 'Fastbook', 312004, '', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(161, 'Io Non Ho Paura', 'Niccolò Ammaniti', '9788806207694', 'Brand: Einaudi', 52007, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(162, 'Ho sognato la cioccolata per anni', 'Trudi Birger', '9788838443664', '', 2003, 'Biography & Autobiography', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(163, 'Kamo. L\'agenzia Babele-L\'evasione di Kamo', 'Daniel Pennac', '9788866561606', '', 2014, '', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(164, 'La meraviglia delle piccole cose', 'Dawn French', '9788865080801', '', 2011, 'Fiction', 'Un\'opera profonda e affascinante che combina maestria la psicologia dei personaggi con una trama avvincente. La storia si articola attraverso il conflitto tra desiderio e dovere, libertà e responsabilità, tradizione e innovazione. L\'autore dipinge un quadro vivido e dettagliato del contesto storico e culturale, fornendo al lettore una comprensione ricca e sfumata del mondo in cui si muovono i personaggi. Questo libro è un\'esperienza letteraria immersiva che lascia un impatto duraturo e fa riflettere sulla natura della condizione umana.', 'Disponibile', NULL, NULL, NULL, NULL),
(165, 'E poi diventai farfalla', 'Luisa Mattia', '9788878744639', '', 2016, 'Juvenile Nonfiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(166, 'Il broker', 'John Grisham', '9788804539223', '', 2005, 'Fiction', 'Un romanzo emozionante e toccante che percorre la complessità delle relazioni umane, le scelte difficili della vita e la ricerca della felicità in un mondo incerto. La trama si sviluppa gradualmente, rivelando strati sempre più profondi di carattere e motivazione. Con dialoghi incisivi e momenti di intensa emotività, l\'autore crea una narrazione irresistibile che rimane impressa nella memoria del lettore. Il tema centrale affronta questioni universali di amore, perdono e accettazione, rendendolo un\'opera che risuona con un pubblico ampio e diverso.', 'Disponibile', NULL, NULL, NULL, NULL),
(167, 'I giorni della follia', 'Javier Castillo', '9788869053047', '', 2018, 'Fiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(168, 'Viola e il Blu', 'Matteo Bussola', '9788831004114', '', 2021, 'Juvenile Nonfiction', 'Una storia affascinante che segue il straordinario viaggio di scoperta e avventura attraverso mondi inesplorati. Il protagonista si trova di fronte a sfide inaspettate che lo costringono a mettere in discussione le proprie credenze e a riscoprire il significato vero della vita. Con personaggi complessi e ben sviluppati, questo romanzo cattura magistralmente il conflitto interiore umano, esplorando temi universali come l\'amore, la perdita, la redenzione e la ricerca di identità. Lo stile narrativo è affascinante e coinvolgente, mantenendo i lettori con il fiato sospeso fino all\'ultima pagina.', 'Disponibile', NULL, NULL, NULL, NULL),
(169, 'Storia di una gabbianella e del gatto che le insegnò a volare', 'Luis Sepúlveda', '9788823528604', '', 2021, 'Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(170, 'Il rinomato catalogo Walker & Dawn. Ediz. speciale. Imperdibili', 'Davide Morosinotto', '9788804744535', '', 2021, 'Juvenile Fiction', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(171, 'Le brave ragazze vanno in paradiso le cattive dappertutto', 'Ute Ehrhardt', '9788850214914', '', 2007, 'Self-Help', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL),
(172, 'Gomorra', 'Roberto Saviano', '9788804554509', 'Mondadori', 2006, '', 'Un libro straordinario che cattura l\'essenza della condizione umana attraverso personaggi indimenticabili e situazioni profondamente significative. La narrazione è costruita con precisione narrativa, equilibrando sapientemente elementi di suspense, dramma e introspezione psicologica. Esplorando temi di perdita, guarigione, scoperta di sé e connessione umana, l\'opera offre ai lettori un viaggio emozionale che tocca le corde più profonde dell\'anima. È un capolavoro perfetto per chi ama letteratura impegnata e trasformativa.', 'Disponibile', NULL, NULL, NULL, NULL),
(173, 'Coraline', 'Neil Gaiman', '9788804530237', 'Mondadori', 2009, '', 'Un capolavoro letterario che esplora profondamente i temi della vita, dell\'amore, della giustizia sociale e della ricerca di significato nell\'esistenza umana. I personaggi principali sono sviluppati con straordinaria sensibilità psicologica, rendendo facile immedesimarsi nei loro dubbi e sofferenze. La narrazione intreccia sapientemente elementi di dramma, introspezione e riflessione filosofica, creando un\'opera che colpisce il cuore e stimola la mente. Questo libro è ideale per lettori che cercano una profonda esperienza letteraria che li sfidi a pensare diversamente sul mondo.', 'Disponibile', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `opere`
--

CREATE TABLE `opere` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `autore` varchar(255) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `editore` varchar(255) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `genere` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `stato` varchar(50) DEFAULT 'Disponibile',
  `prestito_student_id` int(11) DEFAULT NULL,
  `prestito_data_inizio` date DEFAULT NULL,
  `prestito_data_fine` date DEFAULT NULL,
  `prestito_condizioni` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `opere`
--

INSERT INTO `opere` (`id`, `titolo`, `autore`, `isbn`, `editore`, `anno`, `genere`, `note`, `stato`, `prestito_student_id`, `prestito_data_inizio`, `prestito_data_fine`, `prestito_condizioni`) VALUES
(1, 'Il ragazzo del lago', 'Marcello Foa', '978-88-566-1937-9', '', 2011, 'Biography & Autobiography', '', 'Disponibile', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `payment_transfers`
--

CREATE TABLE `payment_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_at` datetime NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `receipt_path` varchar(255) DEFAULT NULL,
  `pcs_paid_count` int(11) DEFAULT 0,
  `status` varchar(50) DEFAULT 'pending',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `password_hash`, `role`, `active`, `created_at`) VALUES
(1, 'Fabrizio', 'Mezzana', 'fabriziomezzana@gmail.com', '$2y$10$5ukiSpdj2y.oT2L6yOqASu6CcYEeF03Jb8ZDfDQLJNfB9VQBKhtYq', 'bibliotecario', 1, '2026-01-22 12:18:36'),
(2, 'mocan', 'william', 'dio@gmail.com', '$2y$10$.QDdKto.e4f2ZxYxwhhiUeNcg.FB/eZpAHtsGTC6bxy4d54rENhvW', 'student', 1, '2026-01-26 09:54:26'),
(4, 'Super', 'Admin', 'admin', '$2y$10$hOTBerWh/bmrv4UXssl0FOHet/cURPMRDqLIdvg7Pcoq9UqchDUQe', 'admin', 1, '2026-02-24 11:21:58'),
(5, 'Fabrizio', 'william', 'cannelunghe@gmail.com', '$2y$10$O.jg1jZfrncgEUGVBiUofOVn5oxKF6mj1to7dWPfsrjE1aSPPjkDm', 'studente', 1, '2026-02-24 11:35:48'),
(6, 'dio', 'figo', 'diofigo@gmail.com', '$2y$10$1whcefgRr7BXHxIQO9F1yOkiqYutQfDoqoQ1RqAZSIQNdTqc9W.zi', 'studente', 1, '2026-03-03 08:42:23');

-- --------------------------------------------------------

--
-- Struttura della tabella `view_cards`
--

CREATE TABLE `view_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `scope` varchar(50) NOT NULL,
  `metric` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `view_cards`
--

INSERT INTO `view_cards` (`id`, `scope`, `metric`, `value`, `updated_at`) VALUES
(1, 'dashboard', 'customers_total', '0', '2026-02-24 11:25:52'),
(2, 'dashboard', 'students_total', '3', '2026-02-24 11:25:52'),
(3, 'dashboard', 'groups_total', '0', '2026-02-24 11:25:52'),
(4, 'libri', 'total', '1', '2026-01-23 09:50:21'),
(5, 'libri', 'available', '0', '2026-01-23 09:50:21'),
(6, 'libri', 'borrowed', '1', '2026-01-23 09:50:21'),
(7, 'libri', 'reserved', '0', '2026-01-23 09:50:21'),
(60, 'students', 'students', '3', '2026-02-24 11:25:52'),
(61, 'students', 'leaders', '0', '2026-02-24 11:25:52'),
(62, 'students', 'installers', '0', '2026-02-24 11:25:52'),
(63, 'groups', 'groups', '0', '2026-01-23 09:16:42'),
(64, 'groups', 'students', '0', '2026-01-23 09:16:42'),
(65, 'customers', 'docenti', '0', '2026-01-23 09:17:14');

-- --------------------------------------------------------

--
-- Struttura della tabella `work_groups`
--

CREATE TABLE `work_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `leader_student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `access_logs`
--
ALTER TABLE `access_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `copie`
--
ALTER TABLE `copie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codice_copia` (`codice_copia`),
  ADD KEY `id_opera` (`id_opera`);

--
-- Indici per le tabelle `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_id`,`student_id`);

--
-- Indici per le tabelle `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indici per le tabelle `laptop_state_history`
--
ALTER TABLE `laptop_state_history`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `opere`
--
ALTER TABLE `opere`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `payment_transfers`
--
ALTER TABLE `payment_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indici per le tabelle `view_cards`
--
ALTER TABLE `view_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_scope_metric` (`scope`,`metric`);

--
-- Indici per le tabelle `work_groups`
--
ALTER TABLE `work_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `access_logs`
--
ALTER TABLE `access_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT per la tabella `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `copie`
--
ALTER TABLE `copie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `laptop_state_history`
--
ALTER TABLE `laptop_state_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `libri`
--
ALTER TABLE `libri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT per la tabella `opere`
--
ALTER TABLE `opere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `payment_transfers`
--
ALTER TABLE `payment_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `view_cards`
--
ALTER TABLE `view_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT per la tabella `work_groups`
--
ALTER TABLE `work_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `copie`
--
ALTER TABLE `copie`
  ADD CONSTRAINT `copie_ibfk_1` FOREIGN KEY (`id_opera`) REFERENCES `libri` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
