-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 24 fév. 2023 à 19:26
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `idq` int(3) NOT NULL,
  `libelleQ` varchar(255) NOT NULL,
  `niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`idq`, `libelleQ`, `niveau`) VALUES
(1, 'Vas-tu avoir la moyenne ?', 1),
(2, 'Qu\'est-ce qu\'une variable locale ?', 0),
(3, 'De quelle couleur est la couleur bleue ?', 0),
(4, 'Combien font 1+1 ?', 1),
(5, 'Complétez la phrase : Je suis un _____', 0),
(6, 'Quel animal miaule ?', 1),
(7, 'Qui est la personne derrière le jeu Death Stranding ?', 0),
(8, 'De quel oeuvre provient la phrase \"Tout ce qui est or ne brille pas, tout ceux qui errent ne sont pas perdus\" ?', 1),
(9, 'Qui est le père de Luffy du manga One Piece ?', 0),
(10, 'Quelle équipe a remportée la saison 2019 de l\'Overwatch League ?', 1),
(11, 'Quel personnage de Overwatch était initialement un joueur Esport pro ?', 0),
(12, 'Quel personnage de One Piece se bat avec trois sabres ?', 0),
(13, 'Quel est le dernier jeu des créateurs de la saga des Souls ?', 1),
(14, 'Quel personnage est présent sur le logo de l\'Overwatch League ?', 0),
(15, 'Quel est le dernier film de Makoto Shinkai ?', 1),
(16, 'Quel est le nom du magicien gris dans le Seigneur des anneaux ?', 1),
(17, 'Quel ingrédient compose principalement une omelette ?', 0),
(18, 'Quel alcool peut on mettre dans une fondue savoyarde ?', 0),
(19, 'Comment se nomme le personnage principal du manga Death Note ?', 1),
(20, 'Comment se nomme le personnage principal du jeu Kingdom Hearts', 0),
(21, 'Qui est l\'auteur du Seigneur des anneaux ?', 0),
(22, 'Qui vit dans un ananas dans la mer ?', 0),
(23, 'Quelle maison n existe pas dans le jeu Fire Emblem Three Houses ?', 1),
(24, 'Qui est la représentante de la maison des Aigles de Jais dans le jeu Fire Emblem Three Houses ?', 0),
(25, 'Qui est le meilleur ami de Bob l\'éponge ?', 1),
(26, 'Lequel de ces jeux vidéos a obtenu la meilleur note des critiques ?', 0),
(27, 'Lequel de ces jeux vidéos animaliers n\'existe pas ?', 0),
(28, 'Lequel de ces jeux vidéos de simulation n\'existe pas ?', 0),
(29, 'Qui est le personnage principal du manga Dr. Stone ?', 0),
(30, 'Lequel de ces joueurs ne fait pas parti de l\'équipe française d Overwatch ?', 0),
(31, 'Lequel de ces jeux n\'est pas du style dit RogueLike ?', 0),
(32, 'Combien de tomes compte la série de livres Harry Potter ?', 0),
(33, 'Laquelle de ces consoles a été la moins vendue ?', 0),
(34, 'Quand faut-il mettre les pâtes dans l\'eau ?', 0),
(35, 'Quel est le meilleur ami de l\'homme ?', 0),
(36, 'Combient font 7x8 ?', 0),
(37, 'Avec quelle série le jeu Bloons a t\'il collaboré ?', 0),
(38, 'Quel fruit possède une variété nommée Pink Lady ?', 0),
(39, 'Quel département porte le numero 43 ?', 0),
(40, 'Quelle est la reponse a la vie ?', 0),
(41, 'Qui est majeur?', 1),
(42, 'Qui miaule?', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `idr` int(3) NOT NULL,
  `idq` int(3) NOT NULL,
  `libeller` varchar(255) NOT NULL,
  `verite` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`idr`, `idq`, `libeller`, `verite`) VALUES
(1, 1, 'Oui', 0),
(2, 1, 'Non', 1),
(3, 1, 'Peut-être', 0),
(4, 1, 'Je ne sais pas', 0),
(5, 2, 'Une variable qui reste au chaud chez toi', 0),
(6, 2, 'Une variable venant du champs du voisin', 0),
(7, 2, 'Une variable existant entre des accolades', 1),
(8, 2, 'Ce n\'est pas une variable', 0),
(9, 3, 'Bleue', 1),
(10, 3, 'Rouge', 0),
(11, 3, 'Jaune', 0),
(12, 3, 'Vert', 0),
(13, 4, '1', 0),
(14, 4, '5', 0),
(15, 4, '567', 0),
(16, 4, '2', 1),
(17, 5, 'etre humain', 1),
(18, 5, 'ananas', 0),
(19, 5, 'chat', 0),
(20, 5, 'rat', 0),
(21, 6, 'Le chat', 1),
(22, 6, 'Le chien', 0),
(23, 6, 'La giraffe', 0),
(24, 6, 'Le ouistiti', 0),
(25, 7, 'Shigeru Mihamoto', 0),
(26, 7, 'Hideo Kojima', 1),
(27, 7, 'Christophe Balestra', 0),
(28, 7, 'David Cage', 0),
(29, 8, 'Le seigneur des anneaux', 1),
(30, 8, 'Inception', 0),
(31, 8, 'Interstellar', 0),
(32, 8, 'Star Wars', 0),
(33, 9, 'Gold Roger', 0),
(34, 9, 'Barbe Blanche', 0),
(35, 9, 'Dragon', 1),
(36, 9, 'Garp', 0),
(37, 10, 'Shangai Dragons', 0),
(38, 10, 'Paris Eternal', 0),
(39, 10, 'Vancouver Titans', 0),
(40, 10, 'San Francisco Shock', 1),
(41, 11, 'Soldier 76', 0),
(42, 11, 'Junkrat', 0),
(43, 11, 'DVa', 1),
(44, 11, 'RoadHog', 0),
(45, 12, 'Sanjy', 0),
(46, 12, 'Zoro', 1),
(47, 12, 'Luffy', 0),
(48, 12, 'Nami', 0),
(49, 13, 'Sekiro', 1),
(50, 13, 'BloodBorn', 0),
(51, 13, 'Dark Souls 3', 0),
(52, 13, 'Dark Souls 2', 0),
(53, 14, 'Genji', 0),
(54, 14, 'McCree', 0),
(55, 14, 'Tracer', 1),
(56, 14, 'DVa', 0),
(57, 15, 'Your Name', 0),
(58, 15, '5 centimètres par seconde', 0),
(59, 15, 'Le garcon et la bete', 0),
(60, 15, 'Les enfants du temps', 1),
(61, 16, 'Dumbledor', 0),
(62, 16, 'Gandalf', 1),
(63, 16, 'Merlin', 0),
(64, 16, 'Saroumane', 0),
(65, 17, 'Les oeufs', 1),
(66, 17, 'La pomme de terre', 0),
(67, 17, 'Le jambon', 0),
(68, 17, 'Le fromage', 0),
(69, 18, 'Le vin rouge', 0),
(70, 18, 'Le whisky', 0),
(71, 18, 'Le vin blanc', 1),
(72, 18, 'La vodka', 0),
(73, 19, 'L', 0),
(74, 19, 'Light Yagami', 1),
(75, 19, 'Naruto', 0),
(76, 19, 'Yoshi', 0),
(77, 20, 'Rei', 0),
(78, 20, 'Mario', 0),
(79, 20, 'Yuu', 0),
(80, 20, 'Sora', 1),
(81, 21, 'Tolkien', 1),
(82, 21, 'J K Rowling', 0),
(83, 21, 'Victor Hugo', 0),
(84, 21, 'Moliere', 0),
(85, 22, 'Patrick l etoile de mer', 0),
(86, 22, 'Bob l eponge', 1),
(87, 22, 'Carlos', 0),
(88, 22, 'Personne', 0),
(89, 23, 'Les aigles de jais', 0),
(90, 23, 'Les lions de saphir', 0),
(91, 23, 'Les cerfs d or', 0),
(92, 23, 'Les requins de rubis', 1),
(93, 24, 'Dorothea', 0),
(94, 24, 'Edelgard', 1),
(95, 24, 'Dimitri', 0),
(96, 24, 'Claude', 0),
(97, 25, 'Patrick', 1),
(98, 25, 'Mr Crabe', 0),
(99, 25, 'Plankton', 0),
(100, 25, 'Carlos', 0),
(101, 26, 'Enter the gungeon', 0),
(102, 26, 'The binding of Isaac', 0),
(103, 26, 'Zelda Breath of the wild', 1),
(104, 26, 'Zelda Links awakening', 0),
(105, 27, 'Goat simulator', 0),
(106, 27, 'Koala Homecoming', 1),
(107, 27, 'Shark Evolution', 0),
(108, 27, 'Goose game', 0),
(109, 28, 'Chips simulator', 1),
(110, 28, 'Euro Truck simulator', 0),
(111, 28, 'Farming simulator', 0),
(112, 28, 'Potato simulator', 0),
(113, 29, 'Hyoga', 0),
(114, 29, 'Yuzuriha', 0),
(115, 29, 'Taiju', 0),
(116, 29, 'Senku', 1),
(117, 30, 'Soon', 0),
(118, 30, 'BenBest', 0),
(119, 30, 'Sinatraa', 1),
(120, 30, 'Kruise', 0),
(121, 31, 'The binding of Isaac', 0),
(122, 31, 'Zelda breath of the wild', 1),
(123, 31, 'Enter the gungeon', 0),
(124, 31, 'Risk of Rain', 0),
(125, 32, '4', 0),
(126, 32, '5', 0),
(127, 32, '6', 0),
(128, 32, '7', 1),
(129, 33, 'La switch', 0),
(130, 33, 'La playstation 4', 0),
(131, 33, 'La Xbox One', 0),
(132, 33, 'La Wii U', 1),
(133, 34, 'Jamais. On les manges comme ca.', 0),
(134, 34, 'Lorsque l eau fait des bulles', 1),
(135, 34, 'Quand on commence a faire chauffer l eau', 0),
(136, 34, 'Lorsque l eau est entierement evaporee', 0),
(137, 35, 'Le chien', 1),
(138, 35, 'Les autres hommes', 0),
(139, 35, 'Le chat', 0),
(140, 35, 'La giraffe', 0),
(141, 36, '7', 0),
(142, 36, '8', 0),
(143, 36, '56', 1),
(144, 36, '65', 0),
(145, 37, 'Rick et Morty', 0),
(146, 37, 'Adventure Time', 1),
(147, 37, 'Bob l eponge', 0),
(148, 37, 'Dora', 0),
(149, 38, 'La poire', 0),
(150, 38, 'Le raisin', 0),
(151, 38, 'La banane', 0),
(152, 38, 'La pomme', 1),
(153, 39, 'La Haute Loire', 1),
(154, 39, 'Les Ardennes', 0),
(155, 39, 'Les Bouches du Rhone', 0),
(156, 39, 'Le Calvados', 0),
(157, 40, 'La reponse D', 0),
(158, 40, 'La couleur bleue', 0),
(159, 40, 'Les pommes de terres', 0),
(160, 40, '42', 1),
(161, 41, 'Une personne de plus de 18 ans', 1),
(162, 41, 'Un informaticien', 0),
(163, 41, 'Une personne binaire', 0),
(164, 41, 'Un mineur', 0),
(165, 42, 'Le chat', 1),
(166, 42, 'Le chien', 0),
(167, 42, 'Lee cheval', 0),
(168, 42, 'Le lion', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idq`);

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`idr`),
  ADD KEY `idq` (`idq`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `idq` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `idr` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
