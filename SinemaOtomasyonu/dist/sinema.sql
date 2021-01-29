-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Oca 2021, 18:22:41
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sinema`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminler`
--

CREATE TABLE `adminler` (
  `id` int(11) NOT NULL,
  `kullaniciadi` text COLLATE utf8_turkish_ci NOT NULL,
  `parola` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adminler`
--

INSERT INTO `adminler` (`id`, `kullaniciadi`, `parola`) VALUES
(1, 'admin', 'admin'),
(2, 'root', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filmler`
--

CREATE TABLE `filmler` (
  `id` int(11) NOT NULL,
  `isim` text COLLATE utf8_turkish_ci NOT NULL,
  `tür` text COLLATE utf8_turkish_ci NOT NULL,
  `imdb` float NOT NULL,
  `seans` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `Dil` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `VizyonaGiriş` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `filmler`
--

INSERT INTO `filmler` (`id`, `isim`, `tür`, `imdb`, `seans`, `Dil`, `VizyonaGiriş`) VALUES
(1, 'Esaretin Bedeli', 'Dram/Polisiye ', 7.8, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '10 Mart 1995'),
(2, 'Cep Herkülü', 'Biyografi/Spor', 8.4, '09:00, 10:45, 12:00', 'Türkçe', ' 22 Kasım 2019'),
(3, 'Yüzüklerin Efendisi', 'Fantastik/Macera', 8.9, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '19 Aralık 2003'),
(4, 'Forrest Gump', 'Dram/Romantik', 8.7, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '11 Kasım 1994'),
(5, 'Yeşil Yol', 'Dram/Fantastik', 7.3, '09:00, 10:45, 12:00', 'Dram/Fantastik', '17 Mart 2000'),
(6, 'Kıyamet Yakındır', 'Gerilim/Dram', 9.1, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '28 Şubat 2020'),
(7, 'Tenet', 'Aksiyon/Bilim Kurgu', 9.1, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '26 Ağustos 2020'),
(8, 'Nefesini Tut', 'Korku/Gerilim', 7.5, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '25 Ağustos 2016'),
(9, 'Hayal Adası', 'Korku/Gerilim', 7.3, '09:00, 10:45, 12:00', 'Türkçe Altyazı', '6 Mart 2020'),
(10, 'The Snowman', 'Psikolojik gerilim', 6.9, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '2017'),
(11, 'Görünmez Adam', 'Korku/Gerilim', 7, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '28 Şubat 2020'),
(12, 'Börü', 'Savaş/Aksiyon', 8.1, '09:00, 10:45, 12:00', 'Türkçe', '28 Aralık 2018'),
(13, 'Yedinci Koğuştaki Mucize', 'Dram', 8.8, '09:00, 10:45, 12:00', 'Türkçe, Türkçe altyazı', '10 Ekim 2019'),
(14, 'Deadpool 2', 'Aksiyon/Komedi', 7.4, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '18 Mayıs 2018'),
(15, 'Platform', 'Gerilim/Korku', 7.8, '09:00, 10:45, 12:00', 'Türkçe Altyazı,Dublaj', '21 Şubat 2020'),
(16, 'Bird Box', 'Korku/Bilim Kurgu', 7.8, '09:00, 10:45, 12:00', 'Dublaj, Türkçe altyazı', '14 Aralık 2018');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kullaniciadi` text COLLATE utf8_turkish_ci NOT NULL,
  `mail` text COLLATE utf8_turkish_ci NOT NULL,
  `parola` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullaniciadi`, `mail`, `parola`) VALUES
(1, 'Serhat', 'serhat@gmail.com', '1234'),
(2, 'Murat', 'murat@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyonlar`
--

CREATE TABLE `rezervasyonlar` (
  `id` int(11) NOT NULL,
  `kullaniciadi` text COLLATE utf8_turkish_ci NOT NULL,
  `film` text COLLATE utf8_turkish_ci NOT NULL,
  `seans` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `rezervasyonlar`
--

INSERT INTO `rezervasyonlar` (`id`, `kullaniciadi`, `film`, `seans`, `sehir`, `dil`, `tarih`) VALUES
(1, 'Murat', 'Yeşil yol', '09:00', 'Bilecik', 'Türkçe Altyazı', '20 Ocak 2021'),
(2, 'Serhat', 'Tenet', '09:00', 'Balıkesir', 'Türkçe Altyazı', '20 Ocak 2021'),
(3, 'Serhat', 'Tenet', '09:00', 'Batman', 'Türkçe Altyazı', '20 Ocak 2021'),
(4, 'Murat', 'Forrest Gump', '09:00', 'Aksaray', 'Türkçe Altyazı', '20 Ocak 2021'),
(5, 'Serhat', 'Yüzüklerin Efendisi', '09:00', 'Adana', 'Türkçe Altyazı', '20 Ocak 2021');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adminler`
--
ALTER TABLE `adminler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `filmler`
--
ALTER TABLE `filmler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rezervasyonlar`
--
ALTER TABLE `rezervasyonlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adminler`
--
ALTER TABLE `adminler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `filmler`
--
ALTER TABLE `filmler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `rezervasyonlar`
--
ALTER TABLE `rezervasyonlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
