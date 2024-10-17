-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 18 juil. 2024 à 00:13
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vehicle_service_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `date_created`) VALUES
(5, 'Motos', 1, '2023-05-05 15:43:02'),
(6, 'Tricycle (Petit-ta)', 1, '2023-05-05 15:43:56'),
(7, 'Voiture à 4 roues', 1, '2023-05-05 15:44:13'),
(8, 'Voiture à 6 roues ', 1, '2023-05-05 15:44:31'),
(9, 'Meubles de la maison', 1, '2023-05-05 15:45:15'),
(10, 'Maison', 1, '2023-05-05 15:45:33'),
(11, 'Jardigneri', 1, '2023-10-10 18:55:18');

-- --------------------------------------------------------

--
-- Structure de la table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'John Smith', '09123456789', 'jsmith@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'George Wilson', '09112355799', 'gwilson@gmail.com', 1, '2021-09-30 10:30:58');
(3, 'Moise Manda ', '+243 974 037 169', 'moisemanda2000@gmail.com', 1, '2023-05-05 15:57:30'),
(4, 'Dojeh Mulangu', '+243 977 311 087', 'dojemulangu@gmail.com', 1, '2023-05-05 15:58:21'),
(5, 'Alain Kabange', '+243 976 854 499', 'alainkabange1914@gmail.com', 1, '2023-05-05 16:26:09');

-- --------------------------------------------------------

--
-- Structure de la table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(4, 'contact', '+243 974 037 169'),
(4, 'email', 'test@gmail.com'),
(4, 'address', '10 av du camps '),
(4, 'vehicle_name', 'mazda cx-7'),
(4, 'vehicle_registration_number', 'A000B3'),
(4, 'vehicle_model', 'TOYOTA'),
(4, 'service_id', '1'),
(4, 'pickup_address', ''),
(3, 'contact', 'est'),
(3, 'email', 'moisemanda2000@gmail.com'),
(3, 'address', 'test adresse'),
(3, 'vehicle_name', 'mazda'),
(3, 'vehicle_registration_number', '09988'),
(3, 'vehicle_model', 'se'),
(3, 'service_id', '5'),
(3, 'pickup_address', 'tesss pick up adress'),
(6, 'contact', '+243 83 46 23 755'),
(6, 'email', 'katele22@gmail.com'),
(6, 'address', 'Av de la Paix KIPUSHI '),
(6, 'vehicle_name', 'DUALIS'),
(6, 'vehicle_registration_number', '1234AV4'),
(6, 'vehicle_model', 'NISSAN'),
(6, 'service_id', '5'),
(6, 'pickup_address', 'Chez-vous'),
(1, 'contact', '09112355799'),
(1, 'email', 'jsmith@sample.com'),
(1, 'address', 'Sample Address'),
(1, 'vehicle_name', 'Mitsubishi Montero Sport'),
(1, 'vehicle_registration_number', 'GBN 0623'),
(1, 'vehicle_model', 'CDM-10140715'),
(1, 'service_id', '8,7'),
(1, 'pickup_address', 'Here St., There City, Sample Only 623'),
(5, 'contact', '+243 977 311 087'),
(5, 'email', 'alainkabange1914@gmail.com'),
(5, 'address', 'L'),
(5, 'vehicle_name', 'cx'),
(5, 'vehicle_registration_number', 'A000B3'),
(5, 'vehicle_model', 'TOYOTA'),
(5, 'service_id', '6,8'),
(5, 'pickup_address', 'h');

-- --------------------------------------------------------

--
-- Structure de la table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `date_created`) VALUES
(5, 'Lavage express', '&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: &quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Le &lt;/span&gt;&lt;b&gt;lavage Express&lt;/b&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt; est un lavage de base, d&#039;o&ugrave; on lave uniquement l&#039;&eacute;pave&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;=&quot;&quot; font-size:=&quot;&quot; 11pt;=&quot;&quot; text-align:=&quot;&quot; left;&quot;=&quot;&quot;&gt;&amp;nbsp;ou l&#039;exterrieur d ela voiture ou moto, nous le faisons en utilusant :&lt;/span&gt;&lt;/div&gt;&lt;ul&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Lingette\r\ndouce pour tout le corps&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;﻿&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Rin&ccedil;age\r\nsans taches&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;S&eacute;chage\r\n&agrave; l&rsquo;air &agrave; grange vitesse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 107%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Aspirateurs&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;&quot;=&quot;&quot;&gt;Et &agrave; la fait de&amp;nbsp; nettoyage nous faisson un sechage rabide.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', 1, '2023-05-05 15:56:19'),
(6, 'Brillance extérieure', '&lt;ol&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;font-weight:normal&quot;=&quot;&quot;&gt;Lingette\r\ndouce pour tout le corps&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;font-weight:normal&quot;=&quot;&quot;&gt;Rin&ccedil;age\r\nsans taches&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;font-weight:normal&quot;=&quot;&quot;&gt;S&eacute;chage\r\n&agrave; l&rsquo;air &agrave; grange vitesse&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;font-weight:normal&quot;=&quot;&quot;&gt;Aspirateurs\r\ngratuits&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;font-weight:normal&quot;=&quot;&quot;&gt;Lavage\r\ndessous de caisse&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;font-weight:normal&quot;=&quot;&quot;&gt;Cirage\r\ntriple mousse&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;span style=&quot;font-size: 1rem; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 107%; font-family: &amp;quot;Times New Roman&amp;quot;;&quot; times=&quot;&quot; new=&quot;&quot; roman&quot;;mso-ansi-language:fr;mso-fareast-language:en-us;mso-bidi-language:=&quot;&quot; ar-sa;font-weight:normal&quot;=&quot;&quot;&gt;Scellant transparent&lt;/span&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ol&gt;', 1, '2023-05-05 16:12:14'),
(7, 'Super-lavage', '&lt;ol&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Lingette\r\ndouce pour tout le corps&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;Rin&ccedil;age\r\nsans taches&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;S&eacute;chage\r\n&agrave; l&rsquo;air &agrave; grange vitesse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;Aspirateurs\r\ngratuits&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;Lavage\r\ndessous de caisse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;Cirage\r\ntriple mousse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem; text-align: left;&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;mso-fareast-font-family:\r\n&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:FR;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA;font-weight:normal&quot;&gt;Scellant transparent&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ol&gt;', 1, '2023-05-05 16:18:28'),
(8, 'Lavage ultime ', '&lt;ol&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:150%;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;font-weight:normal&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Lingette\r\ndouce pour tout le corps&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Rin&ccedil;age\r\nsans taches&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;S&eacute;chage\r\n&agrave; l&rsquo;air &agrave; grange vitesse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Aspirateurs\r\ngratuits&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Lavage\r\ndessous de caisse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 150%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Cirage\r\ntriple mousse&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;text-align: justify; line-height: 150%;&quot;&gt;&lt;strong style=&quot;font-size: 1rem; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 12pt; line-height: 107%; font-weight: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Scellant transparent&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ol&gt;', 1, '2023-05-05 16:21:24');

-- --------------------------------------------------------

--
-- Structure de la table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `owner_name` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service_requests`
--

INSERT INTO `service_requests` (`id`, `owner_name`, `category_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(1, 'Mike Williams', 9, 'Deposer', 3, 3, '2021-09-30 14:48:57'),
(3, 'Kalonje', 5, 'Drop Off', 4, 0, '2023-05-05 15:14:53'),
(4, 'Ses', 4, 'Drop Off', NULL, 0, '2023-05-05 15:17:59'),
(5, 'Ses', 9, 'A domicil', 5, 2, '2023-05-10 17:53:42'),
(6, 'Pierre Katele ', 9, 'A domicil', 4, 3, '2023-10-10 18:41:51');

-- --------------------------------------------------------

--
-- Structure de la table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'MM.OWN'),
(6, 'short_name', 'mmown'),
(11, 'logo', 'uploads/1696960500_mmown.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1683293040_pexels-karolina-grabowska-4870724.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Moise', 'Manda', 'mankas', '4bfb1150e3fdf85a314a0eb382b85a69', 'uploads/1683298140_Bon Fichier 5ManKas.jpg', NULL, 1, '2021-01-20 14:02:37', '2023-05-05 16:49:53'),
(6, 'Dojeh', 'Mulangu', 'pouth', '4bfb1150e3fdf85a314a0eb382b85a69', 'uploads/1683293640_Plan de travail 1 copie-100.jpg', NULL, 1, '2021-09-30 16:34:02', '2024-07-13 07:35:57'),
(7, 'Alain', 'Kabange', 'kaf', '25f9e794323b453885f5181f1b624d0b', 'uploads/1696956780_IMG_20230716_144638_454.jpg', NULL, 1, '2023-10-10 18:53:35', '2024-07-13 07:34:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Index pour la table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
