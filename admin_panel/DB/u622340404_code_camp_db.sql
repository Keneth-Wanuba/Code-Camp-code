-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 31, 2024 at 01:11 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u622340404_code_camp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `assessment_id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `scratch_project` varchar(2000) NOT NULL,
  `quiz_score` int(150) NOT NULL,
  `project_score` int(10) NOT NULL,
  `attendence` int(255) NOT NULL,
  `creativity` int(50) NOT NULL,
  `retention` int(11) NOT NULL,
  `applicability` int(11) NOT NULL DEFAULT 0,
  `concentration` int(11) NOT NULL,
  `Interest` int(11) NOT NULL,
  `Speed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`assessment_id`, `student_id`, `scratch_project`, `quiz_score`, `project_score`, `attendence`, `creativity`, `retention`, `applicability`, `concentration`, `Interest`, `Speed`) VALUES
(1, 'CC0001aaron', 'https://scratch.mit.edu/projects/942643749', 83, 0, 80, 0, 0, 0, 0, 0, 0),
(2, 'CC0002israel', 'https://scratch.mit.edu/projects/942641923', 21, 31, 100, 0, 0, 0, 0, 0, 0),
(3, 'CC0003adrian', 'https://scratch.mit.edu/projects/938984884', 33, 28, 100, 0, 0, 0, 0, 0, 0),
(4, 'CC0004ethan', 'https://scratch.mit.edu/projects/942645509', 80, 73, 90, 0, 0, 0, 0, 0, 0),
(5, 'CC0005harrison', 'https://scratch.mit.edu/projects/942648486', 100, 81, 80, 0, 0, 0, 0, 0, 0),
(6, 'CC0006jeremiah', 'https://scratch.mit.edu/projects/942653362', 10, 66, 90, 0, 0, 0, 0, 0, 0),
(7, 'CC0007lwanga', 'https://scratch.mit.edu/projects/942646648', 100, 79, 100, 0, 0, 0, 0, 0, 0),
(8, 'CC0008joshua', 'https://scratch.mit.edu/projects/942649730', 90, 72, 90, 0, 0, 0, 0, 0, 0),
(9, 'CC0009mellisa', 'https://scratch.mit.edu/projects/942650536', 80, 61, 90, 0, 0, 0, 0, 0, 0),
(10, 'CC0010tevin', 'https://scratch.mit.edu/projects/942651651', 100, 79, 100, 0, 0, 0, 0, 0, 0),
(11, 'CC0011israel', 'https://scratch.mit.edu/projects/942655365', 89, 88, 100, 0, 0, 0, 0, 0, 0),
(12, 'CC0012alicia', 'https://scratch.mit.edu/projects/942655365', 56, 68, 70, 0, 0, 0, 0, 0, 0),
(13, 'CC0013gabriella', 'https://scratch.mit.edu/projects/942659706', 89, 91, 100, 0, 0, 0, 0, 0, 0),
(14, 'CC0014gavin', 'https://scratch.mit.edu/projects/942662611', 78, 65, 100, 0, 0, 0, 0, 0, 0),
(15, 'CC0015james', 'https://scratch.mit.edu/projects/942666266', 0, 34, 90, 0, 0, 0, 0, 0, 0),
(16, 'CC0016jason', 'https://scratch.mit.edu/projects/942667285', 72, 63, 100, 0, 0, 0, 0, 0, 0),
(17, 'CC0017noble', 'https://scratch.mit.edu/projects/942667285', 0, 53, 70, 0, 0, 0, 0, 0, 0),
(18, 'CC0018josiah', 'https://scratch.mit.edu/projects/942669298', 0, 63, 70, 0, 0, 0, 0, 0, 0),
(19, 'CC0019noah', 'https://scratch.mit.edu/projects/942669298', 94, 83, 100, 0, 0, 0, 0, 0, 0),
(20, 'CC0020matthew', 'https://scratch.mit.edu/projects/942670051', 0, 93, 60, 0, 0, 0, 0, 0, 0),
(21, 'CC0021ethan', 'https://scratch.mit.edu/projects/942670904', 0, 88, 90, 0, 0, 0, 0, 0, 0),
(22, 'CC0022joseph', 'https://scratch.mit.edu/projects/942671887', 0, 0, 100, 0, 0, 0, 0, 0, 0),
(23, 'CC0023reanne', 'https://scratch.mit.edu/projects/942673002', 0, 82, 100, 0, 0, 0, 0, 0, 0),
(24, 'CC0024ryan', 'https://scratch.mit.edu/projects/942673662', 0, 53, 80, 0, 0, 0, 0, 0, 0),
(25, 'CC0025sydney', 'https://scratch.mit.edu/projects/942674547', 78, 88, 100, 0, 0, 0, 0, 0, 0),
(26, 'CC0026brian', 'https://scratch.mit.edu/projects/942674547', 44, 52, 100, 0, 0, 0, 0, 0, 0),
(27, 'CC0027divine', 'https://scratch.mit.edu/projects/943500158', 50, 66, 90, 0, 0, 0, 0, 0, 0),
(28, 'CC0028egesa', 'https://scratch.mit.edu/projects/942701158', 100, 76, 80, 0, 0, 0, 0, 0, 0),
(29, 'CC0029malcom', 'https://scratch.mit.edu/projects/943490913', 45, 79, 90, 0, 0, 0, 0, 0, 0),
(30, 'CC0030mary', 'https://scratch.mit.edu/projects/943500740', 0, 57, 90, 0, 0, 0, 0, 0, 0),
(31, 'CC0031lewis', 'https://scratch.mit.edu/projects/943494440', 90, 87, 100, 0, 0, 0, 0, 0, 0),
(33, 'CC0033hein', 'https://scratch.mit.edu/projects/943496036', 65, 44, 0, 0, 0, 0, 0, 0, 0),
(34, 'CC0034lynn', 'https://scratch.mit.edu/projects/943496036', 75, 74, 90, 0, 0, 0, 0, 0, 0),
(35, 'CC0035timothy', 'https://scratch.mit.edu/projects/951618159', 75, 85, 100, 0, 0, 0, 0, 0, 0),
(36, 'CC0036lewin', 'https://scratch.mit.edu/projects/943498457', 90, 83, 100, 0, 0, 0, 0, 0, 0),
(37, 'CC0037luke', 'https://scratch.mit.edu/projects/943495318', 70, 80, 100, 0, 0, 0, 0, 0, 0),
(38, 'CC0038jaden', '', 90, 0, 60, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `StdProjects`
--

CREATE TABLE `StdProjects` (
  `PROJECT_ID` int(50) NOT NULL,
  `student_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ProjectLink` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ProjectTitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CodeCampCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `StdProjects`
--

INSERT INTO `StdProjects` (`PROJECT_ID`, `student_id`, `ProjectLink`, `ProjectTitle`, `CodeCampCode`) VALUES
(1, 'CC0012alicia', 'https://scratch.mit.edu/projects/959056071', 'VILLAGE MISSION', 'CC050'),
(2, 'CC0013gabriella', 'https://scratch.mit.edu/projects/958458339', 'UNKNOWN', 'CC050'),
(4, 'CC0037luke', 'https://scratch.mit.edu/projects/958469396', 'DUO FOCUS', 'CC050'),
(5, 'CC0031lewis', 'https://scratch.mit.edu/projects/958469396', 'DUO FOCUS', 'CC050'),
(6, 'CC0036lewin', 'https://scratch.mit.edu/projects/954254981', 'PIXELIC WAR', 'CC050'),
(7, 'CC0028egesa', 'https://scratch.mit.edu/projects/954254981', 'PIXELIC WAR', 'CC050'),
(8, 'CC0035timothy', 'https://scratch.mit.edu/projects/958482505', 'WAR ARENA', 'CC050'),
(9, 'CC0029malcom', 'https://scratch.mit.edu/projects/958482505', 'WAR ARENA', 'CC050'),
(10, 'CC0030mary', 'https://scratch.mit.edu/projects/958472005', 'LUNAR AND MIDNIGHT', 'CC050'),
(11, 'CC0001aaron', 'https://scratch.mit.edu/projects/958472624', 'MINAL BEHAVIOURS', 'CC050'),
(12, 'CC0024ryan', 'https://scratch.mit.edu/projects/958458339', 'UNKNOWN', 'CC050'),
(13, 'CC0003adrian', 'https://scratch.mit.edu/projects/958456763', 'INDUSTRIAL MAZE', 'CC050'),
(14, 'CC0002israel', 'https://scratch.mit.edu/projects/958456763', 'INDUSTRIAL MAZE', 'CC050'),
(15, 'CC0025sydney', 'https://scratch.mit.edu/projects/958425698', 'MATH QUIZ GAME', 'CC050'),
(16, 'CC0018josiah', 'https://scratch.mit.edu/projects/958425698', 'MATH QUIZ GAME', 'CC050'),
(17, 'CC0023reanne', 'https://scratch.mit.edu/projects/958454718', 'UNKNOWN', 'CC050'),
(18, 'CC0021ethan', 'https://scratch.mit.edu/projects/958460958', 'ENERGY SAVING', 'CC050'),
(19, 'CC0019noah', 'https://scratch.mit.edu/projects/958456023', 'SNAKE EATER ', 'CC050'),
(20, 'CC0032haruna', 'https://scratch.mit.edu/projects/958456023', 'SNAKE EATER', 'CC050'),
(21, 'CC0020matthew', 'https://scratch.mit.edu/projects/958455516', 'CLIMATE RACER', 'CC050'),
(24, 'CC0004ethan', 'https://scratch.mit.edu/projects/958422114', 'AFFORESTATION', 'CC050'),
(25, 'CC0005harrison', 'https://scratch.mit.edu/projects/958406543', 'WINTER CHASE', 'CC050'),
(26, 'CC0008joshua', 'https://scratch.mit.edu/projects/958422114', 'AFFORESTATION', 'CC050'),
(27, 'CC0007lwanga', 'https://scratch.mit.edu/projects/958423404', 'DEFENDERS OF THE ENVIRONMENT', 'CC050'),
(28, 'CC0009mellisa', 'https://scratch.mit.edu/projects/958423404', 'DEFENDERS OF THE ENVIRONMENT', 'CC050'),
(29, 'CC0010tevin', 'https://scratch.mit.edu/projects/958425698', 'SAVING ENERGY', 'CC050'),
(30, 'CC0038matthias', 'https://scratch.mit.edu/projects/958479277', 'Space Guardian', 'CC050'),
(31, 'CC0039mason', 'https://scratch.mit.edu/projects/958479277', 'Space Guardian', 'CC050'),
(32, 'CC0040benjamin', 'https://scratch.mit.edu/projects/958480709', 'Haunted City', 'CC050'),
(33, 'CC0043jotham', 'https://scratch.mit.edu/projects/958458339', 'DOCTOR VS GERM', 'CC050'),
(34, 'CC0041pretty', 'https://scratch.mit.edu/projects/958425698', 'Cleaning The Water', 'CC050'),
(35, 'CC0042tuhaise', 'https://scratch.mit.edu/projects/958420000', 'Gender Equality Race', 'CC050'),
(36, 'CC0044ayden', 'https://scratch.mit.edu/projects/958417883', 'Fire Fighter', 'CC050'),
(37, 'CC0045damalie', 'https://scratch.mit.edu/projects/958417883', 'Fire Fighter', 'CC050'),
(38, 'CC0046barret', 'https://scratch.mit.edu/projects/958407544', 'Global Warming', 'CC050'),
(39, 'CC0047amon', 'https://scratch.mit.edu/projects/958407544', 'Global Warming', 'CC050'),
(40, 'CC0050mishelle', 'https://scratch.mit.edu/projects/958420000', 'Saving Energy', 'CC050'),
(41, 'CC0041gabriel', 'https://scratch.mit.edu/projects/959056071', 'Village Mission', 'CC050'),
(42, 'CC0049dylan', 'https://scratch.mit.edu/projects/958449739', 'Clean Water For All', 'CC050'),
(43, 'CC0051kemeuil', 'https://scratch.mit.edu/projects/958450425', 'Promoting Quality Education', 'CC050'),
(44, 'CC0052reges', 'https://scratch.mit.edu/projects/958451570', 'Promoting Gender Equality', 'CC050'),
(45, 'CC0053arafat', 'https://scratch.mit.edu/projects/958452847', 'Money Clooecting Game', 'CC050'),
(46, 'CC0054adams', 'https://scratch.mit.edu/projects/958453915', 'SHortage Of Doctors', 'CC050'),
(47, 'CC0055daniel', 'https://scratch.mit.edu/projects/958454891', 'An End To Food Waste', 'CC050'),
(48, 'CC0056jonathan', 'https://scratch.mit.edu/projects/958456118', 'Pollution', 'CC050'),
(49, 'CC0026brian', 'https://scratch.mit.edu/projects/959036439', 'Driving Bird Hero', 'CC050'),
(50, 'CC0048shawn', 'https://scratch.mit.edu/projects/959036439', 'Driving Bird Hero', 'CC050');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(50) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `student_desc` text NOT NULL,
  `CC050` varchar(50) NOT NULL,
  `std_level` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_desc`, `CC050`, `std_level`, `picture`) VALUES
('CC0001aaron', 'AARON LLOYD AKERA', 'KAMPALA POTHOLES', 'Minal Behaviors', 'SCRATCH ADVANCED', 'aaron.jpeg'),
('CC0002israel', 'MUBANGIZI ISRAEL', 'INFRASTRUCTURE IN UGANDA', '', 'SCRATCH ADVANCED', 'Israel.JPG'),
('CC0003adrian', 'ADRIAN OMONYI', 'ANTI - CORRUPTION', 'Industrial Development', 'SCRATCH ADVANCED', 'adrian.jpeg'),
('CC0004ethan', 'AHAMAGARA ETHAN', 'ZERO HUNGER', 'Afforestation', 'SCRATCH BEGINNERS', 'ethanb.jpeg'),
('CC0005harrison', 'HARISSON WANYOTO', 'CHEMICAL PRODUCTION', 'Winter Chase', 'SCRATCH BEGINNERS', 'harrison.jpeg'),
('CC0006jeremiah', 'MUBANGIZI JEREMIAH', 'FOOD CHASER', '', 'SCRATCH BEGINNERS', 'jere.jpeg'),
('CC0007lwanga', 'LWANGA JOHN BAPTIST', 'HUNGER GAME', 'Defenders Of The Environment', 'SCRATCH BEGINNERS', 'baptist.jpeg'),
('CC0008joshua', 'LALOYO JOSHUA', 'DIVER', 'Afforestation', 'SCRATCH BEGINNERS', 'joshua.jpeg'),
('CC0009mellisa', 'NAMWANJE MELLISA', 'FOOD', 'Defenders Of The Environment', 'SCRATCH BEGINNERS', 'mellisa.jpeg'),
('CC0010tevin', 'DDEMBESA ISAIAH TEVIN', 'WAR ON POACHING', 'Saving Energy', 'SCRATCH BEGINNERS', 'tevin.jpeg'),
('CC0011israel', 'ISREAL ISAIAH', 'CLEAN ENERGY', 'Industrial Development', 'SCRATCH INTERMEDIATE', 'Israel.jpg'),
('CC0012alicia', 'NANGASHA GABRIELLA ALICIA', 'CLEAN ENERGY', '  Water Colection', 'SCRATCH INTERMEDIATE', 'alisha.jpeg'),
('CC0013gabriella', 'GABRIELLA NAVUGA', 'RECYCLING', 'Good Health', 'SCRATCH INTERMEDIATE', 'gab.jpeg'),
('CC0014gavin', 'GAVIN MWESIGWA', 'ANIMAL MEETING', '', 'SCRATCH INTERMEDIATE', 'gavin.jpeg'),
('CC0015james', 'ISAIAH JAMES MUHUMUZA', 'LIFE ON LAND', '', 'SCRATCH INTERMEDIATE', ''),
('CC0016jason', 'JASON LWERE', 'INFRASTRUCTURE IN UGANDA', '', 'SCRATCH INTERMEDIATE', 'jason.jpeg'),
('CC0017noble', 'AHUMUZA NOBLE', 'INFRASTRUCTURE IN UGANDA', '', 'SCRATCH INTERMEDIATE', 'noble.jpeg'),
('CC0018josiah', 'AYIENGA JOSIAH', 'CLIMATE ACTION', 'Quiz Game', 'SCRATCH INTERMEDIATE', 'josiah.jpeg'),
('CC0019noah', 'AHUMUZA NOAH', 'CLIMATE ACTION', 'Snake Game', 'SCRATCH INTERMEDIATE', 'noah.jpeg'),
('CC0020matthew', 'MATOVU MATTHEW', 'HEALTH RUNNER', '', 'SCRATCH INTERMEDIATE', ''),
('CC0021ethan', 'MUGUMYA ETHAN', 'IN THE COURT', '', 'SCRATCH INTERMEDIATE', 'ethan.jpeg'),
('CC0022joseph', 'MUTAAWE JOSEPH', 'MONEY MAKERS', '', 'SCRATCH INTERMEDIATE', ''),
('CC0023reanne', 'REANNE SENYONJO', 'FARM DEFENDER ', '', 'SCRATCH INTERMEDIATE', 'reanne.jpeg'),
('CC0024ryan', 'RYAN MARK SEBUWUFU', 'MOBILE PANNEL', 'Good Health', 'SCRATCH INTERMEDIATE', ''),
('CC0025sydney', 'TUMURAMYE SYDNEY', 'REDUCED INEQUALITY', 'Quiz Game', 'SCRATCH INTERMEDIATE', 'sydney.jpeg'),
('CC0026brian', 'BALIDDAWA BRIAN', 'REDUCED INEQUALITY', 'Driving Bird Hero', 'SCRATCH INTERMEDIATE', 'francis.jpeg'),
('CC0027divine', 'DIVINE MERCY MUBANGIZI', 'MERCY THE RUNNER', '', '2D GAME DEVELOPMENT', 'Divine.JPG'),
('CC0028egesa', 'EGESA JEFFREY', 'AMBULANCE RUNNER', 'Pixelic War', '2D GAME DEVELOPMENT', ''),
('CC0029malcom', 'MALCOM BUYINZA', 'AWESOME PLATFORMER', 'War Arena', '2D GAME DEVELOPMENT', 'malcom.jpeg'),
('CC0030mary', 'NANTEEZA MARY', 'UNITY ARCADE', 'Lunar And Midnight', '2D GAME DEVELOPMENT', 'Mary.JPG'),
('CC0031lewis', 'Akishuri Lewis', 'Eco chick', 'Duo Focus', '2D GAME DEVELOPMENT', 'Lewis.JPG'),
('CC0032haruna', 'Nono Harona Jeje', 'Infrastructure In Uganda', 'Snake Game', 'Scratch Intermediate', 'jeje.jpeg'),
('CC0033hein', 'Heinrich Mumbere', 'Heinrich\'s Chess', '', '2D GAME DEVELOPMENT', 'Hein.JPG'),
('CC0034lynn', 'Lynn Emmanuela', 'Germ Killer', '', '2D GAME DEVELOPMENT', ''),
('CC0035timothy', 'Baguma Timothy', 'Ocean Guardians', 'War Arena', '2D GAME DEVELOPMENT', 'Timothy.JPG'),
('CC0036lewin', 'Lewin Atwine', 'Guardians of the galaxy', 'Pixelic War', '2D GAME DEVELOPMENT', 'atwine.jpeg'),
('CC0037luke', 'Walakira Luke Achillies', 'Operation Sky CleanUp', 'Duo Focus', '2D GAME DEVELOPMENT', 'Luke.JPG'),
('CC0038matthias', 'Mathias Mwiima', '', '', '2D Game Development', ''),
('CC0039mason', 'kajunge  Mason Nicer ', '', '', '2D Game Development', ''),
('CC0040benjamin', 'Lule Benjamin', '', '', '2D Game Development', ''),
('CC0041gabriel', 'Mwesigwa Gabriel', '', '', 'Scratch Advanced', ''),
('CC0041pretty', 'Pretty Pearl Mwesigwa', '', '', 'Scratch Advanced', ''),
('CC0042tuhaise', 'Tuhaise Gabriel', '', '', 'Scratch Intermediate', ''),
('CC0043jotham', 'Ayume Jotham', '', '', 'Scratch Intermediate', ''),
('CC0044ayden', 'Kimara Ayden Saint Christian', '', '', 'Scratch Intermediate', ''),
('CC0045damalie', 'Nassazi Damalie', '', '', 'Scratch Intemediate', ''),
('CC0046barret', 'Lukwago Barret', '', '', 'Scratch Intermediate', ''),
('CC0047amon', 'Amon Igala', '', '', 'Scratch Intermediate', ''),
('CC0048shawn', 'Businge shawn Titus', '', '', 'Scratch Intermediate', ''),
('CC0049dylan', 'Ssebulime Dylan', '', '', 'Scratch Beginners', ''),
('CC0050mishelle', 'Mishelle Nemaila', '', '', 'Scratch Intermediate', ''),
('CC0051kemeuil', 'Sentalo Kemeuil', '', '', 'Scratch Beginners', ''),
('CC0052reges', 'Kabasinguzi Caeli Reges', '', '', 'Scratch Beginners', ''),
('CC0053arafat', 'Migero Arafat', '', '', 'Scratch Beginners', ''),
('CC0054adams', 'Oyaro Don Adams', '', '', 'Scratch Beginners', ''),
('CC0055daniel', 'Kasirye Daniel', '', '', 'Scratch Beginners', ''),
('CC0056jonathan', 'Arinda Jonathan', '', '', 'Scratch Beginners', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(150) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `registered_at` date NOT NULL DEFAULT current_timestamp(),
  `isAdmin` int(11) NOT NULL DEFAULT 0,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `contact_no`, `registered_at`, `isAdmin`, `user_address`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$j9OXXIYS0CG5AYuks62YMeDvuIpo2hZEN4CqfJfujt1yPMnoUq5C6', '9810283472', '2022-04-10', 1, 'newroad'),
(2, 'Test ', 'Firstuser', 'test@gmail.com', '$2y$10$DJOdhZy1InHTKQO6whfyJexVTZCDTlmIYGCXQiPTv7l82AdC9bWHO', '980098322', '2022-04-10', 0, 'matepani-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `user_id` (`student_id`);

--
-- Indexes for table `StdProjects`
--
ALTER TABLE `StdProjects`
  ADD PRIMARY KEY (`PROJECT_ID`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `StdProjects`
--
ALTER TABLE `StdProjects`
  MODIFY `PROJECT_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `StdProjects`
--
ALTER TABLE `StdProjects`
  ADD CONSTRAINT `StdProjects_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
