-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 09:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonlineku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tokoonlineku_categories`
--

CREATE TABLE `tokoonlineku_categories` (
  `id` int(6) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tokoonlineku_categories`
--

INSERT INTO `tokoonlineku_categories` (`id`, `category`) VALUES
(2, 'cemilan'),
(3, 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `tokoonlineku_config`
--

CREATE TABLE `tokoonlineku_config` (
  `id` int(6) UNSIGNED NOT NULL,
  `config` varchar(150) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tokoonlineku_config`
--

INSERT INTO `tokoonlineku_config` (`id`, `config`, `value`) VALUES
(1, 'cfg', '{\"websitetitle\":\"Toko Online WA\",\"maincolor\":\"#F28433\",\"secondcolor\":\"#FFB98A\",\"about\":\"<p>Toko online simpel sederhana berbasis WhatsApp.<\\/p>\",\"language\":\"id\",\"thumbnailmode\":\"0\",\"logo\":\"\",\"adminwhatsapp\":\"62895328353778\",\"currencysymbol\":\"Rp\",\"baseurl\":\"http:\\/\\/localhost\\/toko_online\\/\",\"enablerecentpostsliders\":\"1\",\"enablefacebookcomment\":\"1\",\"enablepublishdate\":\"1\",\"disabledecimals\":\"0\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tokoonlineku_messages`
--

CREATE TABLE `tokoonlineku_messages` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` varchar(50) NOT NULL,
  `message` varchar(1300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tokoonlineku_messages`
--

INSERT INTO `tokoonlineku_messages` (`id`, `date`, `message`) VALUES
(1, '1737020271245', 'ORDER ID: 4416/2025-1-16 16:37:19\nDATE: Thu Jan 16 2025 16:37:19 GMT+0700 (Indochina Time)\n- celana jeans x 1 = $ 150.00\n- Baju Wanita x 1 = $ 50.90\nTotal Semua = $ 200.90\nNama: della\nHape: 08516671989\nAlamat: binjai\nMetode Pengiriman: Take Away\nORDER NOTES: jangan lama'),
(2, '1737079755900', 'ORDER ID: 3172/2025-1-17 9:8:47\nDATE: Fri Jan 17 2025 09:08:47 GMT+0700 (Indochina Time)\n- Roti Sandwich isi buah - strawberry x 2 = Rp 12000.00\nTotal Semua = Rp 12000.00\nNama: ataya\nHape: 0872991023770\nAlamat: Rambung\nMetode Pengiriman: Take Away\nORDER NOTES: '),
(3, '1737079856261', 'ORDER ID: 3172/2025-1-17 9:8:47\nDATE: Fri Jan 17 2025 09:08:47 GMT+0700 (Indochina Time)\n- Roti Sandwich isi buah - strawberry x 2 = Rp 12000.00\nTotal Semua = Rp 12000.00\nNama: ataya\nHape: 0872991023770\nAlamat: Rambung\nMetode Pengiriman: Take Away\nORDER NOTES: Nama: ataya\nHape: 0872991023770\nAlamat: Rambung\nMetode Pengiriman: Take Away\nORDER NOTES: '),
(4, '1738222844737', 'ORDER ID: 2990/2025-1-30 14:40:11\nDATE: Thu Jan 30 2025 14:40:11 GMT+0700 (Waktu Indochina)\n- Roti Sandwich isi buah - strawberry x 1 = Rp 6000.00\nTotal Semua = Rp 6000.00\nNama: Deny\nHape: 083155783812\nAlamat: kuala\nMetode Pengiriman: Take Away\nORDER NOTES: cepat');

-- --------------------------------------------------------

--
-- Table structure for table `tokoonlineku_posts`
--

CREATE TABLE `tokoonlineku_posts` (
  `id` int(6) UNSIGNED NOT NULL,
  `postid` varchar(70) NOT NULL,
  `catid` int(6) NOT NULL,
  `normalprice` float NOT NULL,
  `discountprice` float NOT NULL,
  `title` varchar(300) NOT NULL,
  `time` varchar(150) NOT NULL,
  `options` varchar(200) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `moreimages` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tokoonlineku_posts`
--

INSERT INTO `tokoonlineku_posts` (`id`, `postid`, `catid`, `normalprice`, `discountprice`, `title`, `time`, `options`, `picture`, `moreimages`, `content`) VALUES
(8, 'ydlcuotgpy', 0, 15000, 0, 'Cromboloni', '1737036638123', '[{\"title\":\"Edit Ukuran\",\"options\":[{\"title\":\"sedang\",\"price\":\"10000\"},{\"title\":\"besar\",\"price\":\"15000\"}]}]', '6zt1urt0ow.jpg', '', '<p>manis, lembut dan enak</p>'),
(10, 'jeczycpond', 2, 30000, 0, 'Basreng', '1737039761015', '[{\"title\":\"Edit Ukuran\",\"options\":[{\"title\":\"kecil\",\"price\":\"10000\"},{\"title\":\"sedang\",\"price\":\"20000\"},{\"title\":\"besar\",\"price\":\"30000\"}]}]', '9gvkzaqq30.jpg', '', '<p>enak dan pedas</p>'),
(11, 'stzzwwocxq', 0, 6000, 0, 'Roti Sandwich isi buah', '1737040332515', '[{\"title\":\"rasa\",\"options\":[{\"title\":\"strawberry\",\"price\":\"6000\"},{\"title\":\"kiwi\",\"price\":\"6000\"},{\"title\":\"strawberry and kiwi\",\"price\":\"8000\"}]}]', '4f8kr43t1x.jpg', '', '<p>manis dan lembut</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tokoonlineku_categories`
--
ALTER TABLE `tokoonlineku_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokoonlineku_config`
--
ALTER TABLE `tokoonlineku_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokoonlineku_messages`
--
ALTER TABLE `tokoonlineku_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokoonlineku_posts`
--
ALTER TABLE `tokoonlineku_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tokoonlineku_categories`
--
ALTER TABLE `tokoonlineku_categories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tokoonlineku_config`
--
ALTER TABLE `tokoonlineku_config`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tokoonlineku_messages`
--
ALTER TABLE `tokoonlineku_messages`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tokoonlineku_posts`
--
ALTER TABLE `tokoonlineku_posts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
