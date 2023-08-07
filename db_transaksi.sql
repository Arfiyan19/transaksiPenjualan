-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 12:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk_projek`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(20) NOT NULL,
  `nama_ketegori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_ketegori`) VALUES
(1, 'makanan'),
(2, 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `terjual` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `tanggal`, `nama`, `terjual`, `id_tahun`, `id_kategori`) VALUES
(1, '2022-08-07', 'Nasi Goreng', 50000, 1, 1),
(2, '2022-08-07', 'Teh Lemon', 15000, 1, 1),
(3, '2022-08-07', 'Teh Hijau', 20000, 1, 1),
(4, '2022-09-07', 'Mie Freno', 10000, 1, 1),
(5, '2022-09-07', 'Nasi Ayam Katsu', 10000, 1, 1),
(6, '2022-09-07', 'Teh', 3000, 1, 1),
(7, '2022-10-07', 'Mie Freno', 30000, 1, 1),
(8, '2022-10-07', 'Kopi Susu', 3000, 1, 1),
(9, '2022-10-07', 'Kopi Hitam', 12000, 1, 1),
(10, '2022-10-07', 'Nasi Goreng Mawut', 26000, 1, 1),
(11, '2022-11-07', 'Nasi Goreng', 10000, 1, 1),
(12, '2022-11-07', 'Teh Lemon', 5000, 1, 1),
(13, '2022-11-07', 'Teh Hijau', 40000, 1, 1),
(14, '2022-12-07', 'Teh', 3000, 1, 1),
(15, '2022-12-07', 'Nasi Ayam Katsu', 40000, 1, 1),
(16, '2022-12-07', 'Nasi Goreng', 30000, 1, 1),
(17, '2022-01-07', 'Kopi Susu', 9000, 1, 1),
(18, '2022-01-07', 'Nasi Goreng Mawut', 13000, 1, 1),
(19, '2022-02-07', 'Nasi Teriyaki', 13000, 1, 1),
(20, '2022-02-07', 'Kopi Hitam', 3000, 1, 1),
(21, '2022-03-07', 'Nasi Ayam Katsu', 20000, 1, 1),
(22, '2022-03-07', 'Teh Lemon', 15000, 1, 1),
(23, '2022-03-07', 'Nasi Goreng Mawut', 13000, 1, 1),
(24, '2022-04-07', 'Teh Lemon', 15000, 1, 1),
(25, '2022-04-07', 'Nasi Goreng', 30000, 1, 1),
(26, '2022-04-07', 'Kopi Hitam', 3000, 1, 1),
(27, '2022-05-07', 'Kopi Susu', 18000, 1, 1),
(28, '2022-05-07', 'Nasi Goreng', 10000, 1, 1),
(29, '2022-06-07', 'Nasi Goreng', 10000, 1, 1),
(30, '2022-06-07', 'Teh', 30000, 1, 1),
(31, '2022-06-07', 'Nasi Teriyaki', 13000, 1, 1),
(32, '2022-07-07', 'Mie Freno', 20000, 1, 1),
(33, '2022-07-07', 'Kopi Susu', 21000, 1, 1),
(34, '2023-01-07', 'Nasi Goreng', 100000, 2, 1),
(35, '2023-02-07', 'Kopi Hitam', 3000, 2, 1),
(36, '2023-03-07', 'Teh Lemon', 5000, 2, 1),
(37, '2023-03-07', 'Nasi Goreng Mawut', 39000, 2, 1),
(38, '2023-04-07', 'Teh Lemon', 10000, 1, 1),
(39, '2023-05-07', 'Teh', 6000, 2, 1),
(40, '2023-06-07', 'Teh Hijau', 50000, 2, 1),
(41, '2023-07-07', 'Mie Freno', 40000, 2, 1),
(42, '2023-08-07', 'Kopi Hitam', 3000, 2, 1),
(43, '2023-09-07', 'Teh Lemon', 5000, 2, 1),
(44, '2023-10-07', 'Nasi Ayam Katsu', 10000, 2, 1),
(45, '2023-11-07', 'Kopi Susu', 9000, 2, 1),
(46, '2023-12-07', 'Nasi Teriyaki', 26000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_02_044956_create_school_operational_assistances_table', 1),
(5, '2020_07_02_045203_create_commodity_locations_table', 1),
(6, '2020_07_03_061038_create_commodities_table', 1),
(7, '2020_07_25_134054_remove_kode_register_from_commodities_table', 1),
(8, '2020_07_31_140126_update_year_commodities_table', 1),
(9, '2023_06_09_162123_create_kriterias_table', 2),
(11, '2023_06_10_103404_create_alternatifs_table', 3),
(13, '2023_06_10_104843_create_detail_alts_table', 4),
(14, '2023_06_10_204459_create_perhitungans_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tahuns`
--

CREATE TABLE `tahuns` (
  `id` int(100) NOT NULL,
  `tahun` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahuns`
--

INSERT INTO `tahuns` (`id`, `tahun`) VALUES
(1, 2022),
(2, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$7Gs3ag3OgVzTdURkdStS0.qs2ZVm34N2j6GrLJlM0kdJCMx2UuS.O', NULL, '2023-06-09 06:59:49', '2023-06-09 06:59:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tahun` (`id_tahun`),
  ADD KEY `kategori` (`id_kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tahuns`
--
ALTER TABLE `tahuns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tahuns`
--
ALTER TABLE `tahuns`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `tahun` FOREIGN KEY (`id_tahun`) REFERENCES `tahuns` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
