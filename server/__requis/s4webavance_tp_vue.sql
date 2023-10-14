-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 14 oct. 2023 à 23:28
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
(1, 'Aloo Chat', 'Delicious Indian street food made with potatoes and spices.', 5.99, 'aloochat.jpg', 'Appetizer', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(2, 'Aloo Tikki', 'Fried potato patties served with chutney.', 4.49, 'alootiki.jpg', 'Appetizer', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(3, 'Bhel Puri', 'A savory Indian snack made with puffed rice, vegetables, and chutney.', 6.99, 'bhel.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(4, 'Burger', 'Classic burger with a juicy patty and fresh toppings.', 8.99, 'burger.jpg', 'Fast Food', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(5, 'Chole Bhature', 'Fried bread served with spicy chickpea curry.', 7.49, 'cholebhture.jpg', 'Main Course', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(6, 'Dabeli', 'Indian sandwich with a spicy filling.', 5.99, 'dabeli.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(7, 'Dahi Puri', 'Small, round, crispy puris filled with yogurt and spices.', 4.99, 'dahipuri.jpg', 'Appetizer', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(8, 'Dahi Vada', 'Lentil dumplings soaked in yogurt and garnished with spices.', 6.49, 'dahivada.jpg', 'Appetizer', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(9, 'Fries', 'Crispy and golden French fries.', 3.99, 'fries.jpg', 'Side Dish', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(10, 'Ghughra', 'Fried dumplings filled with a sweet and savory mixture.', 5.49, 'ghughra.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(11, 'Gobi Manchurian', 'Crispy cauliflower florets tossed in a spicy sauce.', 7.99, 'gobhimanchurian.jpg', 'Appetizer', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(12, 'Kachori', 'Deep-fried bread stuffed with spiced lentils.', 4.99, 'kachori.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(13, 'Maggi', 'Instant noodles cooked with vegetables and spices.', 3.49, 'maggi.jpg', 'Fast Food', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(14, 'Mango Lassi', 'Refreshing yogurt-based drink with mango.', 4.99, 'mangolassi.jpg', 'Beverage', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(15, 'Pani Puri', 'Hollow, crispy shells filled with spicy tamarind water and potatoes.', 6.99, 'panipuri.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(16, 'Paua', 'Traditional New Zealand dish made with abalone.', 12.99, 'paua.jpg', 'Seafood', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(17, 'Pizza', 'Classic pizza with tomato sauce, cheese, and your choice of toppings.', 9.99, 'pizza.jpg', 'Fast Food', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(18, 'Samosa', 'Crispy pastry filled with spiced potatoes and peas.', 3.99, 'samosa.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(19, 'Samosa Chat', 'Samosa broken into pieces and topped with chutney and spices.', 5.49, 'samosachat.jpg', 'Appetizer', '2023-10-14 21:03:57', '2023-10-14 21:03:57'),
(20, 'Sandwich', 'Simple and delicious sandwich with your choice of fillings.', 5.99, 'sandwich.jpg', 'Snack', '2023-10-14 21:03:57', '2023-10-14 21:03:57');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
