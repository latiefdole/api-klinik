-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 07:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinikapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_token`
--

CREATE TABLE `login_token` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_token`
--

INSERT INTO `login_token` (`id`, `pegawai_id`, `auth_key`) VALUES
(1, 1, 'RLA2umFvdjtpt6hPob2bEf8L3Aus22HfaiVddRR6g9qTyy1r0MERgo89FdTyhkdaWU0wd4sqJL6Q2D1fyW5qgxggUR7x5cNB8v11'),
(2, 1, 'cyA2qVKFs4YCJ9lDuPdguPCpdY8MHLsaEBu26CP77ziAvsLoULLMOOcqBEltX9FEM1XLwq185rc4ZjKSFtWwMN2NtsnnagKcJ6Hu'),
(3, 1, 'nkhZeA4gDfFX2GqHQWdZGBBHxFT6Gf9IZsLQqe2rWkdemRs2MNbYWvB4dE9ysKJ5Va2Eiv12XsKsfdhscZnqymlIQBbhuJsv1zdr'),
(4, 1, 'NBEHTvs7Q9LXktri0f8QIEVOzKYpL8nk4GnqD5j71NMw14C48YB35oMJP5IftNLHQ39bLs08odbkRtxFsH3RexUvnVqxZoCOMJKz'),
(5, 1, 'OIsZHG4t7NQv2IdisJc6C2dNdcSvRzoVwdrsDXcpzDqYRluVTCBfssbINGk2mbzB0aNoVmduegIbfkHZskx0tKvDCeSCddYj73dZ'),
(6, 1, '3KDh16jQMhBsDMziiu9sIlZGspBTDzWkm5GjL7UJwAJaCvYAzkt7N6TMNoRcYZg1LdynFV3Z8oPZ8RWKvIbGks4fUgNtgeEheCsT'),
(7, 1, 'ms7f5fG9axlhygSlKQL5KoPT8i0DjgdZoqeHhq00Fn7SCfjrN5wW0dTbw09R21HYDJWtJoW7O4nbF5NpNdsjFdmBYfY69clGPUOO'),
(8, 1, 'HAJxglRctPgNmomnddhvH94R7v3DYtNsH20EIVTfdpd9IkDh75hQ6jjXOWYnSuiwaIJCGFOCwaRSzclu4QnLElJ6bzdEfMFsVJA5'),
(9, 1, 'm1bEi8KHBhjPTS4Out9hfnMYdAGB1T73fzDtTCYmgpnfNEdV4CwdIEkSfUloFmyZ4LAsds4ecm35fWDEcYmRe2RywTIEfdisbjsD'),
(10, 1, 'x2jCHkuPJmBz6KKxdF62DUS78Q41MKATheodbdaohpQMlem5qx3suk46YseiBfzgti6PUdGCKS4dx8RrISxjybjbV7nGhbRTBvDK'),
(11, 1, 'lpKM77aBWkfUT1wr5f5DSGeTNbcHPO7uxF59snjCsfhb2lnglsDvfAlZVdcR7CswfWsddb3jMqmhUtfXedwsoZtBWbUO7kPwSHmL'),
(12, 1, '0ssoOH5sGzF7WUOdZAx9ZbYmOsG3rvxpdsptPRBII0SHMyk5jH71w7quddw89xd8rY9WhdE9iEksckDQAd1CoFQ92pINM5QERlA5'),
(13, 1, 'vIftWRCyI97CqQGEGyGWDXRs6rglkBMerMMwZUNQspnCs51vZBX61r9f0X1rLNfySp9wvcrflxsedDwqiLMjeaCsoiXBM78Qs2eh'),
(14, 1, 'cmqznWcsLydyPuudHmAyAd6bnqgjCsgEbsKlY8tI08YKPXwPMsy5uNdvusN1J66KUs7vsTRWdL5i0ZmPWpX6jgjoY8sDBGzzIRC7'),
(15, 1, 'CmDruDaiJedouJsGQdBs1m4gU5Be6uK0sc74njxfs848lnedpD6gCI1CBttbXqrDAsbsWnIvXz0l0f70bNnzZdtWo7SEerKw6nPp'),
(16, 1, 'tsspwnaqeWceg6pfz6oOrJa1yxY40RdTfCsPECKgHLLtB0IJyreKdYmrmkfmxAHgdXPkIsdq4CEFVcUK7MFzSI2XeBRsSbTZ3u22'),
(17, 2, '2vsfHVR8djgUjGqI1XmoE60c562CBsNEasdCcmJjcXp3h5LjT2ws0k0Ey99EyuslKOXcrkdVXOkW7s0LdzDVvuNWZNxPsqddRHRL'),
(18, 6, 'Sn3Wy77LJCltp7w0agVCHCryP1nUQUtXxLgblKS31dj8uHW2L68UtdO6pDO6O8Q4SQ3SGd2sVdu3kKsWcnlsoip9I1CnAZFZUIUn');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nomor_rm` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nomor_rm`, `nama`, `tanggal_lahir`, `nomor_telepon`, `alamat`) VALUES
(4, 'Melati001', 'Nama Pasien Latif', '1996-03-20', '089999999', 'Jakarta Timur'),
(5, 'Melati002', 'Pasien Abdul', '1996-03-20', '089999999', 'Jakarta Barat'),
(7, '12222', 'Pasien kurang sepuh', '2003-11-04', '1111', 'Garut Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `tanggal_lahir`, `nomor_telepon`, `email`, `password`) VALUES
(1, '202303035', 'Abdul Latif', '1996-03-20', '089999999', 'admin@admin.com', 'admin'),
(2, '202303035', 'Pegawai Latif', '1999-02-20', '087670xxxxxx', 'latif@klinikapp.com', 'latif'),
(6, '20121010', 'Pegawai Sepuh', '1990-11-01', '088888', 'sepuh@klinikapp.com', 'sepuh');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id` int(11) NOT NULL,
  `nama_poli` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id`, `nama_poli`) VALUES
(1, 'Poli Gigi'),
(2, 'Poli Kandungan'),
(17, 'Poli Umum'),
(18, 'Poli Umum'),
(19, 'Poli Umum'),
(20, 'Poli Umum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_token`
--
ALTER TABLE `login_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_token`
--
ALTER TABLE `login_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_token`
--
ALTER TABLE `login_token`
  ADD CONSTRAINT `login_token_ibfk_1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
