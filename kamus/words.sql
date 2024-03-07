-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2024 pada 13.54
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `istilah` varchar(100) NOT NULL,
  `arti` varchar(100) NOT NULL,
  `penggunaan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `words`
--

INSERT INTO `words` (`id`, `istilah`, `arti`, `penggunaan`, `created_at`, `updated_at`) VALUES
(1, 'Happy', 'Bahagia', 'She always has a happy smile on her face.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(2, 'Sad', 'Sedih', 'He felt sad when he heard the news.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(3, 'Big', 'Besar', 'The elephant is a big animal.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(4, 'Small', 'Kecil', 'I prefer a small cup of coffee.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(5, 'Fast', 'Cepat', 'The car is very fast.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(6, 'Slow', 'Lambat', 'She walks slowly in the park.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(7, 'Beautiful', 'Cantik', 'She has a beautiful voice.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(8, 'Ugly', 'Jelek', 'He thinks his neighbor\'s house is ugly.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(9, 'Good', 'Baik', 'He is a good person.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(10, 'Bad', 'Buruk', 'He always makes bad decisions.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(11, 'Hot', 'Panas', 'The tea is too hot to drink.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(12, 'Cold', 'Dingin', 'He likes to drink cold water.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(13, 'High', 'Tinggi', 'The airplane flew at a high altitude.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(14, 'Low', 'Rendah', 'The valley is low.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(15, 'Bright', 'Terang', 'The sun is bright today.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(16, 'Dark', 'Gelap', 'It\'s too dark to see anything.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(17, 'Loud', 'Keras', 'The music was so loud that I couldn\'t hear anything else.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(18, 'Quiet', 'Sepi', 'The library is quiet in the morning.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(19, 'Angry', 'Marah', 'She looked angry when she found out the truth.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(20, 'Brave', 'Berani', 'He was brave enough to face his fears.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(21, 'Coward', 'Penakut', 'He acted like a coward and ran away.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(22, 'Kind', 'Baik hati', 'He showed kindness to everyone he met.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(23, 'Mean', 'Kejam', 'She has a mean attitude towards others.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(24, 'Honest', 'Jujur', 'He is known for his honesty.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(25, 'Dishonest', 'Tidak jujur', 'He was caught being dishonest about his actions.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(26, 'Patient', 'Sabar', 'The doctor advised him to be patient during his recovery.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(27, 'Impatient', 'Tak sabar', 'He grew impatient waiting for the bus.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(28, 'Accept', 'Menerima', 'She accepted the job offer.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(29, 'Reject', 'Menolak', 'He rejected the proposal.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(30, 'Love', 'Cinta', 'They love spending time together.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(31, 'Hate', 'Benci', 'She hates doing chores.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(32, 'Win', 'Menang', 'They lost the game.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(33, 'Eat', 'Makan', 'He eats breakfast every morning.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(34, 'Drink', 'Minum', 'She drinks coffee in the afternoon.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(35, 'Sleep', 'Tidur', 'He sleeps early at night.', '2024-03-07 12:51:17', '2024-03-07 12:51:17'),
(36, 'Wake up', 'Bangun', 'She wakes up at 6 AM.', '2024-03-07 12:51:17', '2024-03-07 12:51:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
