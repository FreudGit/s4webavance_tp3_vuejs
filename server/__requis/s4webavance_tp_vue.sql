-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 15 oct. 2023 à 22:33
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `s4webavance_tp_vue`
--

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(10,2) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `photo`, `categorie`, `createdAt`, `updatedAt`) VALUES
(26, 'Aloo Chat222fhfhfttt', 'Délicieuse street food indienne à base de pommes de terre et d\'épices!!!', 8.99, 'aloochat.jpg', 'Italian', '2023-10-15 19:08:07', '2023-10-15 20:21:55'),
(30, 'Chole Bhature', 'Pain frit servi avec un curry épicé aux pois chiches.', 7.49, 'cholebhture.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(31, 'Dabeli', 'Sandwich indien épicé avec une garniture relevée.', 5.99, 'dabeli.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(32, 'Dahi Puri', 'Petites boules croustillantes remplies de yaourt et d\'épices.', 4.99, 'dahipuri.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(33, 'Dahi Vada', 'Beignets de lentilles trempés dans du yaourt et garnis d\'épices.', 6.49, 'dahivada.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(34, 'Fries', 'Frites croustillantes et dorées.', 3.99, 'fries.jpg', 'Fast Food', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(35, 'Ghughra', 'Beignets frits remplis d\'un mélange sucré et salé.', 5.49, 'ghughra.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(36, 'Gobi Manchurian', 'Fleurs de chou-fleur croustillantes dans une sauce épicée.', 7.99, 'gobhimanchurian.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(37, 'Kachori', 'Pain frit farci aux lentilles épicées.', 4.99, 'kachori.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(38, 'Maggi', 'Nouilles instantanées cuisinées avec des légumes et des épices.', 3.49, 'maggi.jpg', 'Fast Food', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(39, 'Mango Lassi', 'Boisson rafraîchissante à base de yaourt et de mangue.', 4.99, 'mangolassi.jpg', 'Boisson', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(40, 'Pani Puri', 'Coques croustillantes remplies d\'eau de tamarin épicée et de pommes de terre.', 6.99, 'panipuri.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(41, 'Paua', 'Plat traditionnel néo-zélandais à base d\'abalone.', 12.99, 'paua.jpg', 'Fruits de Mer', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(42, 'Pizza', 'Pizza classique avec sauce tomate, fromage et le choix de vos garnitures.', 9.99, 'pizza.jpg', 'Fast Food', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(43, 'Samosa', 'Pâtisserie croustillante farcie de pommes de terre et de petits pois épicés.', 3.99, 'samosa.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(44, 'Samosa Chat', 'Samosa émietté et garni de chutney et d\'épices.', 5.49, 'samosachat.jpg', 'Indian', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(45, 'Sandwich', 'Sandwich simple et délicieux avec le choix de votre garniture.', 5.99, 'sandwich.jpg', 'Fast Food', '2023-10-15 19:08:07', '2023-10-15 19:08:07'),
(47, 'wew2', 'qe', 45.00, 'pizza.jpg', 'Italian', '2023-10-15 20:09:13', '2023-10-15 20:10:19'),
(48, 'bobo', 'hello world', 20.00, 'pizza.jpg', 'Burger', '2023-10-15 20:14:28', '2023-10-15 20:14:28'),
(49, 'bobo', 'hello!', 33.00, 'pizza.jpg', 'Indian', '2023-10-15 20:20:35', '2023-10-15 20:20:35');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
