-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 01:45 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cook`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_categorie`
--

CREATE TABLE `t_categorie` (
  `idCategorie` int(10) UNSIGNED NOT NULL,
  `nomCategorie` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_categorie`
--

INSERT INTO `t_categorie` (`idCategorie`, `nomCategorie`) VALUES
(1, 'Viande'),
(2, 'Poisson'),
(3, 'Légumes'),
(4, 'Accompagnement'),
(5, 'Soupe'),
(6, 'Autre'),
(7, 'Végétarien');

-- --------------------------------------------------------

--
-- Table structure for table `t_categorierecette`
--

CREATE TABLE `t_categorierecette` (
  `idCategorieRecette` int(10) UNSIGNED NOT NULL,
  `idCategorie` int(10) UNSIGNED NOT NULL,
  `idRecette` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_categorierecette`
--

INSERT INTO `t_categorierecette` (`idCategorieRecette`, `idCategorie`, `idRecette`) VALUES
(1, 1, 2),
(3, 1, 4),
(4, 6, 37),
(5, 6, 38),
(6, 6, 39),
(7, 6, 40),
(8, 6, 41),
(39, 1, 5),
(41, 2, 10),
(43, 1, 12),
(44, 1, 6),
(45, 1, 7),
(46, 2, 8),
(47, 1, 9),
(48, 1, 11),
(49, 1, 13),
(50, 1, 14),
(51, 3, 15),
(52, 7, 15),
(53, 7, 16),
(54, 4, 15),
(55, 1, 17),
(56, 2, 18),
(57, 4, 19),
(58, 3, 19),
(59, 7, 19),
(60, 3, 20),
(61, 7, 20),
(62, 4, 20),
(63, 7, 21),
(64, 4, 21),
(65, 3, 21),
(66, 4, 22),
(67, 7, 22),
(68, 7, 23),
(69, 3, 23),
(70, 4, 23),
(71, 3, 24),
(72, 7, 24),
(73, 7, 25),
(74, 3, 25),
(75, 3, 26),
(76, 7, 26),
(77, 7, 27),
(78, 3, 27),
(79, 4, 27),
(80, 3, 28),
(81, 7, 28),
(82, 4, 29),
(83, 3, 29),
(84, 7, 29),
(85, 4, 30),
(86, 3, 30),
(87, 7, 30),
(88, 4, 31),
(89, 3, 31),
(90, 7, 31),
(91, 4, 32),
(92, 3, 32),
(93, 7, 32),
(94, 3, 33),
(95, 7, 33),
(96, 4, 34),
(97, 3, 34),
(98, 7, 34),
(99, 4, 35),
(100, 3, 35),
(101, 7, 35),
(102, 4, 36),
(103, 3, 36),
(104, 7, 36),
(105, 5, 42),
(106, 3, 42),
(107, 7, 42),
(108, 5, 43),
(109, 3, 43),
(110, 7, 43),
(111, 6, 44),
(112, 6, 45),
(113, 6, 46),
(114, 6, 47),
(115, 6, 48),
(116, 6, 49),
(117, 6, 50),
(118, 6, 51),
(119, 6, 52),
(120, 7, 37),
(121, 7, 38),
(122, 7, 40),
(123, 7, 39),
(124, 7, 41),
(125, 7, 44),
(126, 7, 45),
(127, 7, 46),
(128, 7, 48),
(129, 7, 49),
(130, 7, 50),
(131, 7, 51),
(132, 7, 52),
(133, 2, 53),
(134, 2, 54),
(135, 2, 55),
(136, 2, 56),
(137, 1, 57),
(138, 1, 58),
(139, 5, 58),
(140, 3, 59),
(141, 1, 59),
(142, 5, 59),
(143, 1, 60),
(144, 3, 60),
(145, 5, 60);

-- --------------------------------------------------------

--
-- Table structure for table `t_etapes`
--

CREATE TABLE `t_etapes` (
  `idEtapes` smallint(5) UNSIGNED NOT NULL,
  `idRecette` int(10) UNSIGNED NOT NULL,
  `descriptEtapes` mediumtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_etapes`
--

INSERT INTO `t_etapes` (`idEtapes`, `idRecette`, `descriptEtapes`) VALUES
(1, 2, 'Étaler la pâte feuilletée sur une plaque préalablement beurrée.'),
(2, 2, 'Disposer sur une moitié de la pâte les deux tranches de jambon blanc. Etaler sur le jambon deux cuillère à soupe de crème fraîche, puis le gruyère râpé et la ciboulette.\r\n'),
(3, 2, 'Refermer la pâte feuilletée en rabattant la seconde moitié sur la première. Badigeonner la pâte du jaune d\'oeuf.\r\n'),
(4, 2, 'Faire cuire au four Th 180°C pendant 15/20 mn. Servir chaud avec une salade verte.'),
(5, 4, 'Mettre le porc dans un bol avec la sauce de soja, l\'huile de sésame et l\'eau et les mélanger. '),
(6, 4, 'Cuire les feuilles de chou à l\'eau pour 2-3 mn et les hacher et les égoutter à la main. Hacher le nira et l\'ail. '),
(7, 4, 'Mettre les légumes dans un autre bol avec la farine de pomme de terre et les mélanger.'),
(8, 4, 'Mélanger 1 et 2. '),
(9, 4, 'Mettre une cuillère de garniture sur chaque feuille de ravioli chinois et mettre un petit peu d\'eau au bord des feuilles et les envelopper. '),
(10, 4, 'Mettre de la farine de pomme de terre sur l\'assiette avant d\'y mettre les raviolis, sinon ils vont coller à l\'assiette. '),
(11, 4, 'Mettre un peu d\'huile dans la poêle et y cuire les raviolis jusqu\'à ce qu\'ils deviennent marron clair. Mettre de l\'eau jusqu\'à la demi hauteur des raviolis et mettre le couvercle. Le lever quand l\'eau est presque disparue, et cuire les raviolis jusqu\'à ce que les feuilles des raviolis deviennent croustillantes. '),
(12, 4, 'Note de l\'auteur:\r\nAttention : Préparer plus de légumes (des feuilles de chou, nira) que ce que vous pensez. Les légumes rapetissent quand cuits et les raviolis ne sont pas bons avec moins de légumes. Cuisez les raviolis jusqu\'à ce que l\'eau disparaisse complètement. Les raviolis mouillés ne sont pas bons. '),
(13, 5, 'Faire revenir dans une poêle les lardons. Préchauffer le four à 180°C (thermostat 6). '),
(14, 5, 'Ajouter les champignons et l\'oignon (pour ma part, j\'utilise les oignons surgelés, bien plus pratiques et déjà découpés). '),
(15, 5, 'Pendant ce temps, étaler la pâte dans un plat adapté (25 centimètres de diamètre, c\'est bien). '),
(16, 5, 'Piquer le fond avec une fourchette.'),
(17, 5, 'Éparpiller le fromage râpé sur la pâte.'),
(18, 5, 'Battre les 3 œufs dans un saladier. '),
(19, 5, 'Puis rajouter la crème et poivrer.'),
(20, 5, 'Verser le contenu de la poêle (attention au gras) et du saladier sur la pâte.'),
(21, 5, 'Mettre au four 30 min à chaleur tournante.'),
(22, 5, 'Laisser reposer un peu avant de déguster.'),
(23, 5, 'Note de l\'auteur:\r\nS\'accompagne d\'une petite salade verte. '),
(24, 6, 'Laver, éplucher tous les légumes, et les couper en morceaux assez gros.'),
(25, 6, 'Piquer l\'oignon entier avec les clous de girofle.'),
(26, 6, 'Faire bouillir 3 litres d\'eau, ajouter tous les légumes, puis le bouquet garni, l\'ail, sel, poivre puis la viande.'),
(27, 6, 'Faire cuire le tout pendant environ 2 h 30-3 h, écumer de temps en temps. '),
(28, 6, '1 h avant la fin, ajouter les os à moelle, et mettre du gros sel aux extremités pour conserver la moelle. '),
(29, 6, 'Egoutter les légumes et la viande, et servir bien chaud avec de la moutarde. '),
(30, 6, 'Note de l\'auteur:\r\nLe bouillon obtenu est particulièrement savoureux, vous pouvez vous en servir pour faire une soupe à l\'oignon, une soupe de vermicelles, ou tout simplement pour faire cuire des macaronis, c\'est formidable. (Ne pas oublier de le passer) Certains ajoutent des pommes de terre, je vous conseille de les faire cuire à part, sinon elles troublent le bouillon. '),
(31, 7, 'Découper les filets de poulet en petites lamelles (environ 3cm x 1cm). Les mettre dans une sauteuse dans laquelle le beurre a doucement fondu. Pendant qu\'il \'bronze\', couper en tous petits dés le poivron (bien enlever les parties blanches).'),
(32, 7, 'Rajouter le poivron au poulet et les laisser faire connaissance jusqu\'à ce que le poulet rosisse! A ce moment là, rajouter la crème liquide, le sel et le poivre, remuer pour bien tout mélanger et laisser cuire TRES doucement environ 20 minutes.'),
(33, 7, 'Juste avant de servir, rajouter, pour lier la sauce, 2 ou 3 cuillères à soupe de crème fraîche épaisse.'),
(34, 7, 'On peut le servir simplement avec du riz sauvage... et attendre les compliments (version light avec crème allégée à 15 % et toujours aussi bon!).'),
(35, 9, 'Faire revenir l\'agneau dans une sauteuse dans 2 cuillères d\'huile d’olive, ajouter des épices couscous et un peu de sel. '),
(36, 9, 'Quand les morceaux sont dorés, ajouter l’ail écrasé et le concentré de tomates. '),
(37, 9, 'Retirer la viande et la réserver, faire dorer la farine dans le jus et ajouter le bouillon chaud en le fouettant.'),
(38, 9, 'Mettre la viande dans cette sauce, qui ne doit pas être trop liquide, en ajoutant le bouquet garni. Faire cuire à feu doux, au four ou dans une cocotte. '),
(39, 9, 'Au bout de 3/4 d’heure, couper les carottes et les navets en deux, les faire sauter avec les oignons dans 1 cuillère d’huile d’olive, avec des épices à couscous et du sel. '),
(40, 9, 'Quand ils sont dorés, les rajouter à la viande et prendre une louche de sauce de cuisson pour déglacer la sauteuse, remettre ce jus dans le plat de cuisson. '),
(41, 9, 'La sauce ne doit pas être trop liquide et doit juste couvrir les légumes et la viande. Cuire à feu doux pendant 1/2 heure. '),
(42, 9, 'Rajouter les pommes de terre coupées en deux si nécessaire, et vérifier l’assaisonnement. '),
(43, 9, 'Au bout de 3/4 d’heure, dégraisser la sauce et servir avec un hachis de persil frais. '),
(44, 9, 'Note de l\'auteur:\r\nCe plat est délicieux au printemps, avec de petits légumes nouveaux. Il se fait cuire soit au four dans une cocotte en terre, soit sur le feu dans une cocotte en fonte. '),
(45, 10, 'Préparer une grande casserole d\'eau bouillante avec 1 cuillère à soupe de sel, du poivre mouliné et 2 sachets d\'épices safranés pour paëlla qui vous servira de bouillon. '),
(46, 10, 'Dans la Paëllera (grand poêle large et épaisse spéciale pour faire la paëlla), verser l\'huile d\'olive froide et mettre les calamars, laisser les revenir puis ajouter les viandes et le chorizo coupé en rondelles en enlevant la peau quand l\'huile est bien chaude. '),
(47, 10, 'Dès que les viandes sont dorées, y mettre les oignons et l\'ail pressés ainsi que les lanières de poivron. '),
(48, 10, 'Quand le tout a pris de la couleur, ajouter les moules et les langoustines (ou gambas). '),
(49, 10, 'Laisser les moules s\'ouvrir et les gambas rougir. '),
(50, 10, 'Ajouter alors les tomates en morceaux et mélanger quand tout est bien revenu. '),
(51, 10, 'Ajouter le riz en pluie en le répartissant régulièrement dans le plat puis recouvrir avec le bouillon très chaud.'),
(52, 10, 'Laisser cuire le riz 25 à 30 min environ et ne plus mélanger. '),
(53, 10, 'Goûter et s\'il manque du liquide, ajouter du bouillon pour que le riz l\'absorbe bien et continue sa cuisson. '),
(54, 10, 'Ajouter éventuellement des petits pois ou des haricots verts ou des artichauts, blanchis pour chacun d\'eux. '),
(55, 10, 'Décorer le plat en arrangeant les gambas ou langoustines plantées dans le riz ainsi que les moules. Couper quelques citrons et les mettre autour du plat.\r\nVoilà c\'est prêt, Buen provecho ! '),
(56, 11, 'Couper la viande en morceaux égaux. La faire revenir dans une cocotte en fonte, dans laquelle vous avez fait chauffer la matière grasse.'),
(57, 11, 'Une fois les morceaux revenus de tous les côtés, les retirer et faire revenir les oignons émincés et les lardons. '),
(58, 11, 'Préparer le bouillon de boeuf avec 1/2 litre d\'eau.'),
(59, 11, 'Ajouter la viande dans la cocotte, y verser le bouillon, le concentré de tomates, les carottes épluchées et coupées en tronçons, l\'ail et les herbes.'),
(60, 11, 'Assaisonner avec le sel etle poivre, mélanger et laisser mijoter 1h30 à feu doux. '),
(61, 11, 'Note de l\'auteur:\r\nOn peut y ajouter du vin blanc après l\'avoir fait bouillir et flamber (pour enlever l\'acidité). '),
(62, 12, 'Laver et ciseler la batavia, la menthe et la coriandre. Mettre à tremper le vermicelle de riz dans de l\'eau chaude pendant 30 min, le temps qu\'il gonfle. '),
(63, 12, 'L\'égoutter, puis le plonger dans une casserole d\'eau bouillante en remuant avec les baguettes pour qu\'il ne colle pas. Dès que l\'eau bout à nouveau, le retirer et l\'égoutter. '),
(64, 12, 'Dans un saladier, disposer dans l\'ordre la batavia, le soja frais, la menthe, la coriandre, le vermicelle et les carottes râpées préalablement marinées pendant 4 h dans le vinaigre.'),
(65, 12, 'Faire sauter sur un feu très fort, l\'ail écrasé et la viande coupée en fines lamelles. Saler, poivrer, verser sur le vermicelle. C\'est prêt. Servir avec le nuoc-mâm pur ou allongé à l\'eau et au jus de citron - sucre. '),
(66, 12, 'Note de l\'auteur:\r\nC\'est très bon, peu calorique, j\'en fais très souvent. '),
(67, 13, 'Faire préchauffer le four à 210°C (thermostat 7).\r\nDéposer les cuisses de poulet dans un plat allant au four. '),
(68, 13, 'Eplucher l\'oignon, le couper en quatre. Le mettre dans le plat avec les cuisses. Ajouter, la gousse d\'ail, le thym, les feuilles de laurier, le bouillon de cube coupé en quatre, les baies de genièvre, et le clou de girofle. '),
(69, 13, 'Ajouter l\'eau. Arroser les cuisses d\'huile d\'olive. '),
(70, 13, 'Enfourner à 210°C pendant 35 minutes. Arroser les cuisses de temps en temps pendant la cuisson. '),
(71, 13, 'Note de l\'auteur:\r\nS\'accommode très bien avec une purée de potiron et du riz ou alors de haricots verts et de pommes de terre vapeur persillées. '),
(72, 14, 'Tartiner chaque tortilla avec 1 cuillère à café de basilic. '),
(73, 14, 'Répartir les ingrédients coupés en dés (le jambon en petits morceaux).'),
(74, 14, 'Rouler chaque tortilla sur elle-même. '),
(75, 14, 'Servir avec une salade verte'),
(76, 15, 'Préchauffer le four à 180°C (thermostat 6). '),
(77, 15, 'Laver les champignons, retirer les pieds et les couper en lamelles. Cuire à sec dans une poêle. Réserver au chaud. '),
(78, 15, 'Eplucher et couper l\'oignon en anneaux et cuire à sec dans la poêle qui a servi à cuire les champignons. Réserver au chaud.'),
(79, 15, 'Laver les tomates, les couper en 2 et saupoudrer les faces intérieures de thym, sel et poivre, puis les faire griller à sec dans une poêle, sur leurs 2 faces. '),
(80, 15, 'Mélanger la viande hachée avec le persil, saler et poivrer, partager en 2 et former 2 steaks. '),
(81, 15, 'Cuire rapidement les steaks hachés dans une poêle à sec. Réserver au chaud. '),
(82, 15, 'Monter les tomates burgers en superposant un dessous de tomate, un steak, des champignons, des oignons, une tranche de mozzarella, des cornichons, la tranche de bacon, et refermer avec le dessus de tomate. '),
(83, 15, 'Enfourner 10 min'),
(84, 16, 'Peler les aubergines et les couper en tranches pas trop épaisses. '),
(85, 16, 'Les fariner et les faire frire dans une poêle à l\'huile olive. Bien les égoutter dans du papier absorbant. '),
(86, 16, 'Faire revenir les lardons les égoutter eux aussi. '),
(87, 16, 'Remettre les lardons dans la poêle sans matière grasse et ajouter la crème fraîche.'),
(88, 16, 'A ébulition, baisser le feu et laisser épaissir. Ajouter les aubergines et servir avec du parmesan. '),
(89, 17, 'Plonger les pics en bois dans l\'eau froide. '),
(90, 17, 'Couper la viande en dés et la saupoudrer de paprika, de sel et de poivre. '),
(91, 17, 'Ajouter le thym, le laurier et le romarin hachés. '),
(92, 17, 'Arroser d\'huile et laisser mariner durant 2 heures.'),
(93, 17, 'Disposer les dés de viande sur les pics à brochette et faire cuire 20 minutes au barbecue en les arrosant fréquemment de marinade. '),
(94, 18, 'Quelques heures avant la grillade, mettre le thon dans un plat creux, puis l\'arroser d\'huile d\'olive et du jus de citron. '),
(95, 18, 'Presser l\'ail, saupoudrer avec le cumin (une bonne cuillère à café) . Râper le gingembre frais, saler et poivrer.'),
(96, 18, 'Rajouter un peu de coriandre fraîche ou une dose de safran. Arroser souvent. '),
(97, 18, 'Faire cuire au barbecue. '),
(98, 18, 'Note de l\'auteur:\r\nNe pas laisser cuire très longtemps. '),
(99, 19, 'Eplucher les pommes de terre, ou laisser la peau si elle est fine. '),
(100, 19, 'Les couper dans le sens de la longueur et les placer sur une plaque au four, face bombée contre la plaque. Saler et laisser cuire à four chaud jusqu\'à ce que le dessus soit bien doré. '),
(101, 19, 'Servir chaud accompagnées de salade verte et de toutes sortes de fromages (du kiri pour les enfants en allant jusqu\'au maroilles...). '),
(102, 19, 'C\'est délicieux, économique et sans graisse. Délicieux avec de la cancoillotte ! '),
(103, 19, 'Note de l\'auteur:\r\nNDchef : très très bon. Lorsqu\'elles sont cuites, vous pouvez les remplir de fromage (mozarella, cheddar ou autre) et les remettre au four. '),
(104, 20, 'Eplucher la courge, la vider puis, à l\'aide d\'une mandoline, la réduire en \"spaghetti\".'),
(105, 20, 'Hacher l\'ail et le faire fondre dans l\'huile. Ajouter les spaghetti de courge et laisser cuire à feu moyen jusqu\'à ce que la courge soit tendre. Saler, poivrer. '),
(106, 20, 'Au moment de servir, agrémenter d\'un filet d\'huile d\'olive, de parmesan, de sel et de poivre. Parsemer de persil. '),
(107, 21, 'Laver les aubergines, les essuyer et les détailler en dés. '),
(108, 21, 'Faire chauffer 2 cuillères à soupe d\'huile d\'olive dans une sauteuse, et ajouter les dés d\'aubergine. '),
(109, 21, 'Laisser mijoter 15 min, puis ajouter le chèvre frais et quelques feuilles de basilic. '),
(110, 21, 'Saler, poivrer et bien mélanger; laisser cuire encore 15 min.'),
(111, 21, 'Décorer de feuilles de basilic, et servir bien chaud. '),
(112, 21, 'Note de l\'auteur: Cette poêlée peut être servie en accompagnement de viande ou en farce pour des tartes, lasagnes, bricks ou omelettes. '),
(113, 22, 'Mélanger le fromage blanc (ou le yaourt), les oeufs, la farine, sel et poivre dans un saladier. '),
(114, 22, 'Laisser reposer 20 mn cette pâte souple (comme un liquide épais). '),
(115, 22, 'Faites bouillir de l\'eau salée. Prendre 2 cuillères à soupe et faire tomber des portions de pâte dans l\'eau bouillante. Procéder en plusieurs fois. '),
(116, 22, 'Dès que les Knepfles sont cuits, ils remontent à la surface (Attention qu\'ils ne restent pas collés au fond de la casserole). '),
(117, 22, 'Faire chauffer le beurre dans une poêle. Sortir au fur et à mesure les Knepfles cuits avec une écumoire et les transférer dans la poêle. Bien faire revenir 10 mn. '),
(118, 22, 'Note de l\'auteur:\r\nCes knepfles accompagnent aussi bien poissons que viandes en sauce. C\'est (presque)aussi rapide que de se faire des pâtes, mais c\'est encore meilleur. '),
(119, 23, 'Préchauffez le four à 180°C (Th 6 ).'),
(120, 23, 'Beurrez un plat à four et frottez-le avec une gousse d\'ail fendue. Lavez et essuyez les courgettes. Détaillez-les en fines rondelles après avoir éliminé les extrémités. Passez les gousses d\'ail restant au presse-ail et réservez. '),
(121, 23, 'Pelez et lavez les pommes de terre. Découpez-les en fines tranches. Disposez une couche de pommes de terre au fond du plat, salez, poivrez et parsemez d\'ail. Recouvrez d\'une couche de courgettes, salez et poivrez à nouveau. Renouvelez ces opérations jusqu\'à épuisement des ingrédients. Terminez par une couche de pommes de terre. '),
(122, 23, 'Dans un bol, battez la crème fraîche et le lait avec du sel, du poivre et la muscade. Versez sur les légumes. Inclinez le plat dans tous les sens pour que le liquide se répartisse uniformément. Couvrez de fromage râpé. '),
(123, 23, 'Faites cuire au four environ 1 heure. Le temps de cuisson est indicatif et dépend de la variété des pommes de terre. Au bout de 45 mn, piquez la lame d\'un couteau au centre du gratin pour vérifier leur cuisson ; elles doivent être tendres. En fin de cuisson, couvrez le plat d\'une feuille de papier d\'aluminium si le fromage est suffisamment coloré. '),
(124, 24, 'Mélanger la semoule avec la pulpe de tomate. Rajouter le reste des ingrédients. '),
(125, 24, 'Placer au réfrigérateur 1h minimum.'),
(126, 24, 'Note de l\'auteur:\r\nLa recette de base est très simple et ne nécessite pas de cuisson. On peut aisément agrémenter selon ses goûts (raisins secs,tomates fraiches, restes de poulet...) '),
(127, 25, 'Mouiller le couscous dans un grand saladier avec 1/2 l d\'eau + 1 cuillère à café de sel + 1 cuillère à soupe d\'huile. '),
(128, 25, 'Mélanger avec une fourchette, puis remuer régulièrement cette préparation pour détacher les grains. '),
(129, 25, 'Nettoyer les légumes. Couper les carottes et navets en dés, les fonds d\'artichauts en 8. '),
(130, 25, 'Mettre les légumes dans le haut du couscoussier, saler, couvrir et faire cuire à la vapeur 20 min. '),
(131, 25, 'Au bout de ces 20 min, rajouter la graine et arroser d\'un filet d\'huile d\'olive. Ne pas couvrir. Compter environ 10 min quand la vapeur passe au travers de la graine. '),
(132, 25, 'Reverser dans le saladier et mélanger l\'ensemble en incorporant de nouveau un peu d\'huile d\'olive. '),
(133, 25, 'Note de l\'auteur:\r\nSe sert seul pour un repas du soir ou en accompagnement d\'une épaule d\'agneau par exemple. Conseillé: mettre à disposition des convives un flacon de cumin moulu. '),
(134, 26, 'Mélanger dans une terrine les épinards émincés crus, l\'oignon finement haché et le sel; laisser reposer 1/2 h. '),
(135, 26, 'Mélanger ensuite le jus de citron, l\'huile d\'olive, le sumac, les pignons et ajouter le mélange aux épinards. Mélanger longuement pour imprégner les épinards de façon homogène. '),
(136, 26, 'Étaler la pâte finement et découper des ronds avec un bol. '),
(137, 26, 'Placer au centre, 1 cuillère à soupe d\'épinards et refermer avec 3 doigts en serrant bien, de façon à former des triangles. '),
(138, 26, 'Dans un four préchauffé à 180°C (thermostat 6), placer les chaussons sur une plaque huilée, et laisser dorer environ 20 min. '),
(139, 26, 'Servir chaud au froid, avec une salade. '),
(140, 26, 'Note de l\'auteur:\r\nPour former les triangles, pincer un bord jusqu\'au centre, puis rassembler le reste en deux pointes. '),
(155, 27, 'Couper le haut de la tomate et réserver le chapeau. '),
(156, 27, 'Dans un bol, évider les tomates et y ajouter l\'huile d\'olive, le basilic, le sel et le poivre.'),
(157, 27, 'Couper la mozzarella en dès et garnir les tomates. Soyez généreux en hauteur. '),
(158, 27, 'Une fois bien garnies, verser le contenu du bol sur chaque tomate ainsi que le fond du plat, s\'il vous reste de la mozzarella, vous pouvez en ajouter dans le plat. '),
(159, 27, 'Mettre le chapeau de la tomate sur chacune d\'entre elle. '),
(160, 27, 'Cuire au four pendant 30 min à 180°C (thermostat 6). '),
(161, 28, 'Préchauffer le four à 180°C (thermostat 6). '),
(162, 28, 'Dans un saladier, mélanger à l\'aide d\'un fouet les œufs et la farine. '),
(163, 28, 'Ajouter le lait et la crème puis mélanger à nouveau. '),
(164, 28, 'Saler et poivrer. '),
(165, 28, 'Ciseler la ciboulette et l\'ajouter à la pâte (en garder un peu de côté pour la fin de la recette). '),
(166, 28, 'Ensuite, découper le chèvre en rondelles. '),
(167, 28, 'Beurrer le plat, y déposer les rondelles de chèvre puis ajouter la ciboulette restante. '),
(168, 28, 'Mettre au four 45 minutes. '),
(169, 29, 'Faire cuire la courge dans une cocotte (suivre le temps de cuisson indiqué dans le manuel de votre cocotte).\r\nAprès la cuisson, faire égoutter la courge afin qu\'elle ait rendue toute son eau. '),
(170, 29, 'Mélanger les œufs, la crème, la moitié du gruyère, le sel, le poivre et une pointe de noix de muscade râpée. Mélanger cette préparation à la courge. Mixer le tout. '),
(171, 29, 'Verser dans un plat à gratin et parsemer du reste du gruyère. Faire cuire 30 min dans le four à 200°C.'),
(172, 30, 'Couper les aubergines, sur la longueur, en tranches épaisses. Les faire dégorger, avec du sel, pendant une heure. '),
(173, 30, 'Couper les courgettes, en tranches, pas trop fines. Couper les poivrons en lamelles. Les faire revenir dans une poêle, avec de l\'huile d\'olive, jusqu\'à ce qu\'ils perdent leur croustillant. '),
(174, 30, 'Pendant ce temps, couper les oignons en rondelles, les faire revenir dans une poêle avec de l\'huile d\'olive et l\'ail, écrasé. '),
(175, 30, 'Rajouter les tomates en dés, ainsi que le jus et laisser mijoter pendant une demi-heure, en rajoutant les assaisonnements désirés. '),
(176, 30, 'Lorsque les aubergines sont prêtes, les passer à l\'eau et les éponger. '),
(177, 30, 'Beurrer un grand plat allant au four. Mettre une rangée d\'aubergines, une rangée de courgettes, une rangée de poivrons, une rangée de tomates, avec le jus. Recouvrir de yaourt et de feta. '),
(178, 30, 'Recommencer: aubergines, courgettes, poivrons,tomates, yaourt et feta. Terminer avec une couche d\'aubergines. Recouvrir de mozzarella. '),
(179, 30, 'Préchauffer le four à 150°C. Laisser cuire pendant une petite heure, ou jusqu\'à ce que le jus commence à bouillir dans le plat! Surveiller la cuisson à partir de 45 mn. '),
(180, 30, 'Servir bien chaud. '),
(181, 31, 'Eplucher puis découper en tranches très fines les pommes de terre, les oignons et les courgettes'),
(182, 31, 'Dans un plat à gratin huilé, verser dans le plat le mélange pommes de terre et oignons, saler, poivrer, aromatiser et verser un peu d\'huile d\'olive !!'),
(183, 31, 'Par-dessus, disposer joliment les courgettes (on peut alterner avec des tomates), à nouveau bien aromatiser, et couvrir de gruyère rapé, et d\'huile d\'olive. '),
(184, 31, 'Cuire à four moyen (180°C) pendant une bonne demi-heure. '),
(185, 31, 'Note de l\'auteur:\r\nEn milieu de cuisson, on peut couvrir d\'un papier aluminium pour ne pas que le dessus noircisse. '),
(186, 32, 'Coupez les tomates pelées en quartiers, '),
(187, 32, 'les aubergines et les courgettes en rondelles. '),
(188, 32, 'Emincez les poivrons en lamelles '),
(189, 32, 'et l\'oignon en rouelles. '),
(190, 32, 'Chauffez 2 cuillères à soupe d\'huile dans une poêle '),
(191, 32, 'et faites-y fondre les oignons et les poivrons. '),
(192, 32, 'Lorsqu\'ils sont tendres, ajoutez les tomates, l\'ail haché, le thym et le laurier.'),
(193, 32, 'Salez, poivrez et laissez mijoter doucement à couvert durant 45 minutes.'),
(194, 32, 'Pendant ce temps, préparez les aubergines et les courgettes. Faites les cuire séparemment ou non dans l\'huile d\'olive pendant 15 minutes.'),
(195, 32, 'Vérifiez la cuisson des légumes pour qu\'ils ne soient plus fermes. Ajoutez les alors au mélange de tomates et prolongez la cuisson sur tout petit feu pendant 10 min. '),
(196, 32, 'Salez et poivrez si besoin. '),
(197, 32, 'Note de l\'auteur:\r\nTrès bon chaud mais peut aussi se servir froid'),
(198, 33, 'Egouttez les tomates séchées et les poivrons puis séchez-les rapidement dans du papier absorbant. '),
(199, 33, 'Emincez les oignons, coupez les tomates cerises en deux, la mozzarella en fines tranches, hachez l’ail. '),
(200, 33, 'Mettez dans un saladier les poivrons et les tomates séchées, les tomates cerise, les oignons et l’ail, salez et poivrez, ajoutez une pincée de piment d’Espelette puis mélangez le tout. '),
(201, 33, 'Etalez bien la pâte à pain, badigeonnez avec le concentré de tomate, déposez les tranches de mozzarella puis parsemez par dessus les légumes du saladier, puis quelques feuilles de basilic, d’origan et de thym.'),
(202, 33, 'Enfournez une douzaine de minutes à 220°C (thermostat 7). '),
(203, 33, 'Terminez en parsemant quelques feuilles de basilic, d’origan et de thym. '),
(204, 34, 'Couper les aubergines en tranches assez fines. '),
(205, 34, 'Les faire dégorger 30 min (les saupoudrer de sel). '),
(206, 34, 'Dans une poêle, faire chauffer de l\'huile d\'olive et y dorer les tranches d\'aubergines de chaque côté. '),
(207, 34, 'Baisser le feu et laisser les aubergines s\'attendrir. '),
(208, 34, 'Dans un plat allant au four, étaler la sauce bolognaise sur le fond, saupoudrer de parmesan et étaler une couche d\'aubergine. '),
(209, 34, 'Recommencer l\'opération autant de fois que nécessaire, terminer par la sauce bolognaise. '),
(210, 34, 'Recouvrir de parmesan et parsemer de beurre. '),
(211, 34, 'Mettre à four chaud pendant environ 30 min.'),
(212, 34, 'Note de l\'auteur:\r\nSi on aime le fromage, on peut ajouter des tranches de mozzarella ou de filante. Ce plat peut se manger en entrée avec du pain ou comme plat principal avec des pâtes comme les penne ou les rigatonni. '),
(213, 35, 'Couper les aubergines en fines tranches dans le sens de la longueur et faites les dégorger avec le gros sel durant 20 minutes. '),
(214, 35, 'Pendant ce temps, dans une casserole faites dorer l\'ail avec 2 cuillères à soupe d\'huile d\'olive et ajoutez le vin, les tomates concassées ainsi que le concentré. Remuez et ajoutez l\'eau. Salez, poivrez. Couvrez et laissez mijoter pendant 45 minutes à feux doux. '),
(215, 35, 'Coupez la mozzarella en dés. '),
(216, 35, 'Quand les aubergines ont bien dégorgé, faites-les dorer à la poêle avec un peu d\'huile d\'olive. '),
(217, 35, 'Dès que la sauce tomate est prête, disposez dans un plat à gratin les tranches d\'aubergines en alternance avec la mozzarella et la sauce tomate. Finissez avec une couche d\'aubergines, la sauce tomate et du parmesan fraîchement râpé. '),
(218, 35, 'Mettez au four à 210°C (thermostat 7) durant 20 minutes et voilà! '),
(219, 36, 'Faites bouillir une grande casserole d\'eau salée.'),
(220, 36, 'Mettez-y les petits pois, laissez cuire 5 minutes puis ajoutez les tagliatelles. Laissez cuire 10 min. '),
(221, 36, 'Emincez l\'oignon, pressez l\'ail. Faites-les dorer avec un peu d\'huile dans une poêle. '),
(222, 36, 'Ajoutez le mascarpone et laissez fondre à feu doux. '),
(223, 36, 'Egouttez les pâtes et les petits pois, récupérez 2-3 cuillères à soupe d\'eau de cuisson pour délayer la sauce. '),
(224, 36, 'Mélangez les tagliatelles et petits pois à la sauce, parsemez de copeaux de parmesan et servez. '),
(225, 36, 'Note de l\'auteur:\r\nAgrémentez avec des lardons ou des lamelles de jambon cru pour enrichir la recette. '),
(238, 37, 'Séparer les jaunes des blancs. '),
(239, 37, 'Mélanger les jaunes avec le lait, puis la farine, le sucre, la levure et une pincée de sel. '),
(240, 37, 'Monter les blancs à neige ferme. '),
(241, 37, 'Incorporer les blancs au mélange lait, œuf, farine. '),
(242, 37, 'Cuire dans une poêle beurrée chaude, par petits tas de 5-7 cm de diamètre. Retourner quand des bulles apparaissent. '),
(243, 38, 'Porter à ébullition le lait mélangé au sucre. '),
(244, 38, 'Verser dans la casserole les flocons d\'avoines, laisser cuire à feu doux 15 minutes en remuant de temps en temps.'),
(245, 38, 'L\'avoine doit absorber le lait. '),
(246, 38, 'Se consomme chaud au petit déjeuner, typique chez les américains et les anglais. '),
(247, 39, 'Détailler la truffe en petits morceaux. '),
(248, 39, 'Dans une petite casserole, faire fondre le beurre sans le colorer, puis y mettre la truffe à cuire. '),
(249, 39, 'Dans un saladier, casser les œufs, puis les mêler à l’aide d’une fourchette en mélangeant vivement. '),
(250, 39, 'Y ajouter les morceaux de truffes, puis saler et poivrer. '),
(251, 39, 'Verser la préparation dans une casserole, puis la placer dans un bain marie et laisser cuire sur feu très doux sans cesser de remuer (à l’aide d’une cuillère en bois). '),
(252, 39, 'Lorsque les œufs sont bien crémeux, incorporer la crème fraîche froide pour arrêter la cuisson des œufs. '),
(253, 39, 'Bien mélanger une dernière fois et servir aussitôt. '),
(254, 40, 'Fouetter les oeufs avec le sucre et le lait. '),
(255, 40, 'Y tremper les tranches de pain. '),
(256, 43, 'Tailler les légumes en gros dés. Les faire suer dans le beurre. '),
(257, 43, 'Mouiller avec 1,5 l d\'eau. Ajouter l\'ail écrasé et le bouquet garni. Cuire 1 heure.'),
(258, 43, 'Passer au moulin à légume ou au mixer. Ajouter la crème fraîche, et servir chaud. '),
(259, 42, 'Dans une cocotte, faire revenir dans un peu de beurre : les champignons, les pommes de terres, l\'oignon émincé et l\'ail émincé.'),
(260, 42, 'Laisser revenir quelques minutes pour faire \"suer\" les champignons en remuant bien. '),
(261, 42, 'Une fois le tout revenu, mettre un peu plus d\'eau que le niveau de légumes et laisser frémir à feu doux en mélangeant de temps en temps. '),
(262, 42, 'Ajouter sel, poivre, muscade et persil ainsi que le bouillon émietté. '),
(263, 42, 'Une fois la soupe cuite, ajouter la crème mélanger et mixer la soupe.'),
(264, 42, 'Servir chaud. '),
(265, 42, 'Une bonne soupe automnale que vous pouvez accompagner de croûtons de pain grillé. '),
(266, 40, 'Deux solutions pour la cuisson : les cuire à la poêle dans du beurre en les faisant dorer de chaque côté, ou, les cuire au four : beurrer légèrement un plat à gratin, y répartir les tranches, verser le reste du mélange (ajouter du sucre si envie), laisser cuire à 180°C (thermostat 6) jusqu\'à que les tranches soient dorées. '),
(267, 41, 'Emietter la levure dans un récipient. '),
(268, 41, 'Ajouter le lait tiède'),
(269, 41, 'Préparer la pâte : dans un saladier, verser le sel, le sucre et la farine. '),
(270, 41, 'Ajouter le beurre fondu. '),
(271, 41, 'Mélanger et ajouter progressivement le mélange de lait et levure. '),
(272, 41, 'Travailler la pâte jusqu\'à ce qu\'elle soit souple. '),
(273, 41, 'Laisser reposer sous un torchon environ 30 minutes. '),
(274, 41, 'Préchauffer le four à 225°C (thermostat 7-8).'),
(275, 41, 'Pendant ce temps, préparer la garniture : dans un saladier mélanger le beurre, le sucre et la cannelle. '),
(276, 41, 'Etaler la pâte au rouleau à pâtisserie jusqu\'à l\'obtention d\'un rectangle de 30 X 45 cm. '),
(277, 41, 'Répartir la garniture sur le rectangle de pâte'),
(278, 41, 'Plier la pâte en deux. '),
(279, 41, 'Découper en bande d\'environ 2 cm de large. '),
(280, 41, 'Étirer et tordre les bandes découpées et mettre en forme pour obtenir des noeuds. '),
(281, 41, 'Déposer sur une plaque avec du papier sulfurisé.'),
(282, 41, 'Laisser lever sous un torchon pendant environ 30 minutes. '),
(283, 41, 'Badigeonner les kannelbulles avec l\'œuf et parsemer de sucre en perle dessus. '),
(284, 41, 'Disposer au milieu du four 8-10 minutes. '),
(285, 41, 'Laisser tiédir sur une grille. '),
(286, 8, 'Faire tremper les champignons dans de l\'eau chaude 20 mn. Les couper en lanières de 5 mm et les remettre dans l\'eau en attendant. '),
(287, 8, 'Emincer les carottes en bâtonnets de 5 mm de côté et de 5 cm de long. '),
(288, 8, 'Emincer l\'oignon comme la carotte. '),
(289, 8, 'Préparer la pâte à beignets: remplir un verre de 20 cl de farine, la verser dans un saladier. '),
(290, 8, 'Casser l\'oeuf dans le verre et compléter avec de l\'eau. Mélanger le contenu du verre, puis verser progressivement sur la farine en remuant avec des baguettes, une fourchette ou un fouet pour les moins patients. '),
(291, 8, 'Mettre tous les ingrédients dans la pâte (y compris les lamelles d\'encornet cru et les crevettes), remuer. Former des tas entre deux cuillères à soupe, égoutter un peu et faire glisser dans un bain de friture chaud. Cuire 5 mn et égoutter sur du papier absorbant'),
(292, 8, 'Servir chaud. '),
(293, 8, 'Pour la sauce, on râpe le daïkon dans un bol et on recouvre de sauce Tempura. On laisse macérer de 30 min à 1 heure. '),
(294, 8, '*Un Daïkon : est un gros radis blanc asiatique. '),
(295, 8, 'Note de l\'auteur:\r\nLa sauce Tempura se trouve dans les épiceries spécialisées et parfois dans des supermarchés. On peut la remplacer par un mélange de sauce soja (Japonaise! le goût est très différent) et de saké un peu dilué à l\'eau. Les champignons parfumés sont courants (en France). Le daïkon est difficile à trouver mais on a un excellent résultat avec le radis noir (un peu piquant).\r\nCette recette m\'a été apprise par un ami japonais. Ce plat est d\'une finesse remarquable et je ne me lasse pas d\'en manger. '),
(296, 44, 'mettre dans un mixer les bananes coupées en morceaux et la chair des kiwis. '),
(297, 44, 'Presser les oranges et rajouter le jus dans le mixer. '),
(298, 44, 'Rajouter le lait de soja (il peut être nature ou vanillé). '),
(299, 44, 'Note de l\'auteur:\r\nC\'est facile, c\'est bon et c\'est une façon très vitaminée de commencer la journée! '),
(300, 45, 'Dans une jatte, pétrissez tous les ingrédients ensemble jusqu\'à obtenir une boule de pâte. '),
(301, 45, 'Si vous souhaitez faire différents biscuits avec cette même pâte, ne mettez pas les ingrédients optionnels. '),
(302, 45, 'Enveloppez la pâte dans du film transparent et mettre au frigo pour une dizaine de minutes au moins. '),
(303, 45, 'Préchauffez votre four à 200°C et placez du papier sulfurisé sur une plaque de cuisson. '),
(304, 45, 'Sortez la pâte du frigo et, si vous le souhaitez, séparez la pâte en plusieurs parts pour y ajouter les ingrédients optionnels. '),
(305, 45, 'Formez de petites boules de pâtes que vous écraserez dans la paume avant de placer sur la plaque. '),
(306, 45, 'Placez au four pour environ 10 minutes, selon votre four. Restez à proximité des biscuits. Ils doivent être à peine dorés pour restez moelleux ou bien dorés pour être un peu plus croquants. '),
(307, 45, 'Il s\'agit d\'une pâte sablée modifiée afin de l\'adapter au petit déjeuner (moins de sucre, moins de beurre et plus de céréales non raffinées). Si vous souhaitez obtenir des biscuits plus \"plaisir\", vous pouvez remplacer le yaourt par du beurre et le miel par du sucre. Mais c\'est un peu lourd pour le petit déjeuner...'),
(308, 46, 'Tamiser la farine, la levure et la cannelle. '),
(309, 46, 'Ajouter le sucre + la margarine fondue. '),
(310, 46, 'Ajouter les oeufs battus un par un. '),
(311, 46, 'Ajouter le lait. '),
(312, 46, 'Couper la banane en rondelles, les pruneaux en morceaux, faire mariner dans une cuillère à soupe de rhum + 1 d\'eau. '),
(313, 46, 'Ecraser la banane avec les pruneaux. '),
(314, 46, 'Ajouter à la pâte, rajouter la noix de coco et les 3 noix décortiquées.'),
(315, 46, 'Cuire 40 mn à 200°C . '),
(316, 46, 'Servir tiède ou toasté avec du chèvre.'),
(317, 47, 'Couper les pains muffins en 2. Faire cuire les oeufs et le bacon dans une poêle beurrée. '),
(318, 47, 'Pendant ce temps faire chauffer les muffins dans un grille-pain. '),
(319, 47, 'Retourner les oeufs afin de les faire légèrement cuire de l\'autre côté. '),
(320, 47, 'Enfin faire fondre les tranches de fromage sur le bacon.'),
(321, 47, 'Déposer l\'oeuf puis le bacon et enfin la tranches de fromage entre les 2 tranches de muffins. '),
(322, 48, 'Dosez le lait et versez-le dans une casserole adaptée.'),
(323, 48, 'Ajoutez le sucre. '),
(324, 48, 'Portez à ébullition. '),
(325, 48, 'Pendant ce temps, écrasez les 3 gâteaux briochés dans le bol. Vous pouvez laisser de gros morceaux qui s\'imbiberont de lait. '),
(326, 48, 'Ajoutez le tapioca et mettre à petits feux'),
(327, 48, 'Lorsque le tapioca remonte à la surface, il est prêt. '),
(328, 48, 'Selon votre goût vous pouvez le laisser encore un peu afin qu\'il soit bien consistant. '),
(329, 48, 'Verser le contenu de la casserole dans le bol et remuez. '),
(330, 48, 'Régalez-vous! '),
(331, 48, 'Note de l\'auteur:\r\nLa texture doit être un peu \"gluante\" c\'est normal, et délicieux ! '),
(332, 49, 'Insérer les ingrédients un par un (jusqu\'à l\'oeuf), dans l\'ordre rédigé pour réaliser la pâte, mélanger à chaque fois.'),
(333, 49, 'Couper la poire en petits morceaux. '),
(334, 49, 'Mettre un peu de jus de citron au fond de la poêle pour éviter des matières grasses. '),
(335, 49, 'Verser la moitié de la préparation. Patienter 1 minute. '),
(336, 49, 'Ajouter la moitié des poires. Mélanger comme pour des oeufs brouillés.'),
(337, 49, 'Voilà c\'est prêt :) Refaire pareil avec l\'autre moitié. '),
(338, 49, 'Note de l\'auteur:\r\nVous pouvez soit le manger directement chaud (effet bouillie), sinon le laisser refroidir et l\'aspect sera plus solide. Bon appétit ! '),
(339, 50, 'Mélangez le beurre fondu avec le miel, les yaourts et les 4 oeufs battus. '),
(340, 50, 'Bien émulsionner puis, ajoutez la farine de maïs, la levure et le sel.'),
(341, 50, 'Faîtes cuire environ 30 min à 150°C (thermostat 5) dans un plat rectangulaire. '),
(342, 50, 'Découpez des carrés une fois cuit. '),
(343, 50, 'Note de l\'auteur:\r\nD\'une belle couleur jaune, au goût original, peu sucré, idéal pour le petit déjeuner, avec beurre et confiture. '),
(344, 51, 'Je recommande l’utilisation d’une machine à pain pour pétrir, ce qui permet de gagner du temps et de l’énergie ! '),
(345, 51, 'Faire fondre le beurre durant 30 sec et le laisser refroidir (au moins tiédir).'),
(346, 51, 'Dans la cuve de la machine à pain, ajouter dans l’ordre : '),
(347, 51, '1 – les œufs '),
(348, 51, '2 – le lait '),
(349, 51, '3 – la fleur d’oranger '),
(350, 51, '4 - le sucre'),
(351, 51, '5 – la pincée de sel'),
(352, 51, '6 – la farine '),
(353, 51, '7 - la levure fraîche émiettée (la recouvrir d’un peu de farine) '),
(354, 51, 'et enfin, le beurre. '),
(355, 51, 'Lancer le programme « pâte seule », de 2 heures le plus souvent. '),
(356, 51, 'Une fois fini, sortir la pâte, la partager en 3 pâtons égaux. Faire une tresse (éviter de fariner, la pâte doit rester légèrement collante car sinon elle s’assèche et lèvera moins bien). Ajuster le moule coulissant autour ou laisser sans moule (la brioche sera plus large et donc moins haute). '),
(357, 51, 'Placer la brioche sur la plaque du four recouverte de papier sulfurisé ou sur une plaque silicone pour ceux qui sont équipés. '),
(358, 51, 'Laisser lever la brioche à température ambiante pendant 1 à 2 heures (selon chaleur de votre pièce). Au besoin, la recouvrir d’un torchon humide. '),
(359, 51, 'Badigeonner à l’aide d’un jaune d’œuf mélangé à un tout petit peu de lait (ou d’eau) le dessus de la brioche. '),
(360, 51, 'Disséminer un peu de sucre perlé.'),
(361, 51, 'Faire cuire à 210°C (thermostat 7) durant 30 min. '),
(362, 51, 'Ensuite, une fois hors du four, laisser refroidir 10 minutes, démouler et la placer sur une grille. '),
(363, 51, 'Le mieux est d’attendre qu’elle ait complètement refroidi pour la couper. '),
(364, 51, 'Pour les pépites de chocolat, les ajouter après avoir formé les 3 pâtons. '),
(365, 51, 'On peut varier le parfum avec de l\'amande amère.'),
(366, 51, 'Note de l\'auteur:\r\nIdéale pour accompagner le petit déjeuner ou le gouter et a l\'avantage d\'être peu sucrée. '),
(377, 52, 'EXPLICATIONS POUR FAIRE LA BRIOCHE EN MACHINE A PAIN : '),
(378, 52, 'Délayer la gousse de vanille et ses graines dans le lait tiède, laisser un peu infuser. '),
(379, 52, 'Retirer la gousse et mettre le lait vanillé dans la cuve. '),
(380, 52, 'Ajouter les autres ingrédients : crème, eau de fleur d\'oranger, beurre, sucre, sel, en terminant par la farine puis la levure (attention, elle ne doit pas entrer en contact avec les liquides). '),
(381, 52, 'Mettre sur programme \"brioche\", ou \"sucré\" ou sur tout autre programme permettant de faire de la brioche.'),
(382, 52, 'Cuire et déguster une fois refroidi. '),
(383, 52, 'Note de l\'auteur:\r\nVous pouvez ajouter 1 cuillère à soupe d\'eau de vie (kirsch par exemple) à la pâte. Chez moi cette brioche a eut beaucoup de succès ! attention à bien faire lever la brioche pour qu\'elle soit bien aérée. A vos fourneaux! '),
(384, 53, 'Emincer l\'oignon et le faire dorer avec un peu de beurre. '),
(385, 53, 'Rajouter les champignons égouttés puis le vin blanc et porter à ébullition.'),
(386, 53, 'Ajouter ensuite la crème, le bouquet garni, le sel et le poivre'),
(387, 53, 'Mélanger et laisser un peu réduire.'),
(388, 53, 'Rincer les filets de poisson, les éponger puis les passer dans la farine (en éliminant l\'excédent). '),
(389, 53, 'Ajouter les filets dans la cocotte et baisser le feu. '),
(390, 53, 'Faire cuire 20 mn. '),
(391, 53, 'Note de l\'auteur:\r\nNe pas hésiter à rajouter un peu de liquide (eau ou vin blanc) si la sauce réduit trop. '),
(392, 54, 'Mettez les filets de poisson sur une plaque de cuisson tapissée de papier cuisson. Ajoutez l‘huile d’olive et le Mélange d\'Épices pour Tacos Original Old El Paso™, salez et poivrer les filets. '),
(393, 54, 'Faites-les cuire au four préchauffé à 200°C (thermostat 6-7) environ 12 à 15 minutes ou jusqu\'à ce que la chair du poisson se défasse facilement à la fourchette. '),
(394, 54, 'Pendant ce temps préparez la salsa.\r\nCoupez l’ananas en petits dés, hachez finement l’oignon rouge et le piment vert si vous les utilisez. Ciselez la coriandre. Mélangez l’ananas, l’oignon, le piment, la coriandre avec de jus de citron vert et assaisonnez au goût. '),
(395, 54, 'Pelez les avocats et coupez-les en lamelles, arrosez-les avec de jus de citron. '),
(396, 54, 'Retirez les Barquitas Original Old El Paso™ de leur emballage et séparez-les. Enveloppez-les dans du papier aluminium et faites-les chauffer au four préchauffez à 140°C (thermostat 4-5) pendant 10 minutes. '),
(397, 54, 'Remplissez-les avec le poisson, l’avocat et la salsa d’ananas.\r\nRecouvrez de sauce à napper Original Salsa Old El Paso™ et dégustez. '),
(398, 54, 'Note de l\'auteur:\r\nPour une sauce plus crémeuse vous pouvez mélanger la sauce à napper Original Salsa Old El Paso™ avec 2 cuillères à soupe de mayonnaise. '),
(399, 55, 'Épluchez la mangue et coupez-la en petits cubes. '),
(400, 55, 'Mélangez ces cubes dans un bol avec ½ cuillère à café de pâte de piment rouge, 1 cuillère à soupe de coriandre ainsi que le jus et le zeste d\'un demi-citron vert. '),
(401, 55, 'Passez le poisson dans le robot de cuisine, puis mélangez-le avec 1 œuf et 1 cuillère à café de sel ainsi que le reste du jus et du zeste de citron vert et de la pâte de piment rouge.'),
(402, 55, 'Mélangez le reste de la coriandre, l\'oignon nouveau et 2 cuillères à soupe de noix de coco. '),
(403, 55, 'Réservez le reste de la noix de coco dans une assiette à soupe. Divisez le mélange de poisson en 12 parts, donnez-leur une forme arrondie et parsemez-les de noix de coco.'),
(404, 55, 'Disposez six cakes dans le panier et insérez-le dans AirFryer. Réglez la minuterie sur 7 minutes et faites cuire les cakes jusqu\'à ce qu\'ils soient dorés et cuits. Faites frire les cakes restants de la même manière. '),
(405, 55, 'Disposez six cakes dans le panier et insérez-le dans AirFryer. Réglez la minuterie sur 7 minutes et faites cuire les cakes jusqu\'à ce qu\'ils soient dorés et cuits. Faites frire les cakes restants de la même manière. '),
(406, 56, 'Faites revenir le poisson dans une poêle avec un filet d’huile et le sachet de Mélange aux épices pour Fajitas Original Old El Paso™ pendant 4 min. Pressez le citron et remuez. '),
(407, 56, 'Sortez les Barquitas™ tortillas de leur étui plastique et disposez-les sur un plat adapté au micro-ondes (900W) : chauffez-les 35 secondes.\r\nAu four, préchauffé à 165°C (thermostat 5) : enveloppez-les dans un papier d’aluminium et chauffez-les 8 min.'),
(408, 56, 'Mélangez l’oignon avec la crème fraîche. Disposez sur la table les bols contenant les différentes garnitures : le poisson cuisiné, la salade coupée en lamelles, les dés de tomates, le fromage râpé et la crème fraîche. Nappez votre Barquitas™ tortillas de sauce à cuisiner pour Fajitas Old el Paso™ et garnissez-la à moitié avec les ingrédients de votre choix et dégustez !\r\n\r\nHuuummmm … Bon appétit ! '),
(409, 56, 'Note de l\'auteur:\r\nPssst ! La fiesta mexicaine commence d\'abord par un apéro aux multiples saveurs. Essayez le guacamole frais Old El Paso™ (un sachet d\'épices et deux avocats, et hop, le tour est joué !) ou les délicieuses chips croustillantes au maïs Old El Paso™ ! C’est vous le cuisinier en chef ! Alors n’hésitez pas à créer votre propre recette en ajoutant une touche de guacamole ou encore du fromage râpé. Pour les végétariens, remplacez le poisson par des légumes (champignons, haricots…), c’est tout aussi délicieux ! '),
(410, 57, 'Dans une grande poêle, chauffez la moitié de l’huile et faites sauter le poulet coupé en tranches fines pendant 5 à 10 minutes afin qu’il soit complètement cuit.\r\nMettez de côté et coupez l\'avocat en cubes ou tranches, selon votre préférence.'),
(411, 57, 'Mettez le restant d’huile dans la poêle, ajoutez l’oignon et les poivrons coupés en tranche et faites cuire 5 minutes jusqu’à ce qu’ils soient tendres. Ajoutez le mélange aux épices pour Fajitas Original Old El Paso™, et faites cuire 1 minute.'),
(412, 57, 'Pendant ce temps, chauffez les Barquitas™ tortillas en suivant les instructions. '),
(413, 57, 'Remplissez les Barquitas™ tortillas avec le poulet et le mélange d’oignon et poivrons, les morceaux d\'avocat et nappez de la sauce à cuisiner pour Fajitas Old el Paso™. Garnissez avec de la coriandre fraîche. Un repas rapide et facile à préparer et à manger !\r\nHuuummmm … Bon appétit !'),
(414, 57, 'Note de l\'auteur:\r\nPssst ! La fiesta mexicaine commence d\'abord par un apéro aux multiples saveurs. Essayez le guacamole frais Old El Paso™ (un sachet d\'épices et deux avocats, et hop, le tour est joué !) ou les délicieuses chips croustillantes au maïs Old El Paso™ ! Ces Barquitas™ se marient parfaitement avec une salade verte, des tomates et un peu de fromage râpé. Vous voulez encore plus faire plaisir à vos enfants avec les Mini Barquitas™ ? Réalisez des mini bateaux pirates ! Et mettez les voiles avec les Tortillas Chips Old El Paso pour encore plus de fun dans votre assiette. Idéal pour l\'apéritif… comme pour le repas '),
(415, 58, 'Faites chauffer l\'huile dans une cocotte ou un wok et faites-y revenir le poulet avec l\'ail, l\'oignon, le gingembre et les légumes, et faites revenir quelques minutes. Ajoutez le bouillon et laissez cuire de 12 à 15 min. '),
(416, 58, 'Délayez la maïzena avec du bouillon et versez-la dans le plat. Ajoutez les nouilles et les champignons préalablement réhydratés. Assaisonner à votre goût avec le piment, la sauce soja et le vinaigre et laissez cuire quelques minutes. C\'est prêt ! '),
(417, 58, 'Note de l\'auteur:\r\nLes ingrédients sont certes nombreux, mais le résultat vaut le coup : goût savoureux sans être trop fort. Plat très nourrissant qui peut servir de plat unique. '),
(418, 59, 'Mettre 1 litre d\'eau dans un autocuiseur. '),
(419, 59, 'Y ajouter les légumes épluchés, nettoyés et coupés en grosses rondelles, les lardons et la cuillère de miel. '),
(420, 59, 'Laissez cuire 25 minutes après la rotation de la soupape. '),
(421, 59, 'Mouliner le tout, ajouter selon les goûts un peu de sel et de poivre fraîchement moulu. '),
(422, 59, 'Vous pouvez aussi rajouter dans l\'assiette un peu de crème liquide et de la coriandre surgelée, cela se marie bien ensemble.'),
(423, 60, 'Cuire la saucisse de Morteau. '),
(424, 60, 'Couper le potimarron et le panais en dés.  '),
(425, 60, 'Mettre le potimarron à cuire recouvert d\'eau bouillante salée pour 30 minutes de cuisson. '),
(426, 60, 'Cuire les dés de panais dans un peu de beurre. '),
(427, 60, 'Lorsque le panais est cuit, ajouter les marrons, saler, poivrer et laisser réchauffer sur feu doux. '),
(428, 60, 'Mixer la soupe de potimarron.'),
(429, 60, 'Couper la saucisse en tranches. '),
(430, 60, 'Servir une assiette de soupe de potimarron et l\'agrémenter de panais, marrons et saucisse de Morteau. '),
(431, 60, 'Décorer d\'herbes. ');

-- --------------------------------------------------------

--
-- Table structure for table `t_ingredient`
--

CREATE TABLE `t_ingredient` (
  `idIngredient` int(11) UNSIGNED NOT NULL,
  `nomIngredient` varchar(120) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_ingredient`
--

INSERT INTO `t_ingredient` (`idIngredient`, `nomIngredient`) VALUES
(1, 'de pâte feuilletée'),
(2, 'de jambon blanc'),
(3, 'de gruyère'),
(4, 'de crème fraîche'),
(5, 'de ciboulette'),
(6, 'jaune(s) d\'oeuf(s)'),
(8, 'd\'huile de sésame'),
(9, 'd\'eau'),
(10, 'de chou'),
(11, 'de farine de pommes de terre'),
(12, 'd\'ail'),
(13, 'feuille(s) de ravioli'),
(14, 'de porc haché'),
(15, 'de lardons'),
(16, 'de champignons de paris'),
(17, 'oignon(s)'),
(18, 'oeuf(s)'),
(19, 'de crème liquide'),
(20, 'de fromage râpé'),
(21, 'poivre'),
(22, 'de viande de boeuf'),
(23, 'os à moelle'),
(24, 'de carottes'),
(25, 'de poireaux'),
(26, 'de navet'),
(27, 'de céleri'),
(28, 'clou(s) de girofle'),
(29, 'de thym'),
(30, 'de laurier'),
(31, 'de persil'),
(32, 'sel'),
(33, 'pommes de terre'),
(34, 'de farine'),
(35, 'd\'huile d\'olive'),
(36, 'd\'épinards'),
(37, 'citron(s)'),
(38, 'de pignons de pin'),
(44, 'tomate(s)'),
(45, 'de mozzarella'),
(46, 'basilic'),
(47, 'filet(s) de poulet'),
(48, 'poivron(s) rouge'),
(49, 'de beurre'),
(50, 'd\'encornets'),
(51, 'de crevettes'),
(52, 'de haricots verts'),
(53, 'radis noir'),
(54, 'd\'huile de friture'),
(55, 'de sauce tempura'),
(56, 'de lait'),
(57, 'de fromage de chèvre'),
(58, 'de courge'),
(59, 'de muscade'),
(60, 'de viande d\'agneau'),
(61, 'de concentré de tomates'),
(62, 'de bouillon de légumes'),
(63, 'de bouillon de viande'),
(64, 'de gros sel'),
(65, 'épices à couscous'),
(66, 'de riz long grain'),
(67, 'de poulet'),
(68, 'de côte(s) de porc'),
(69, 'de moules'),
(70, 'de calamar'),
(71, 'langoustine(s)'),
(72, 'poivron(s) vert'),
(73, 'de chorizo'),
(74, 'de petits pois'),
(75, 'd\'artichauts'),
(76, 'd\'épices à paella'),
(77, 'de lard'),
(78, 'de sauge'),
(79, 'de parmesan'),
(80, 'de menthe'),
(81, 'de coriandre'),
(82, 'batavia'),
(83, 'steak de boeuf'),
(84, 'de vermicelles de riz'),
(85, 'de nuoc mam'),
(86, 'de vinaigre'),
(87, 'cuisse(s) de poulet'),
(88, 'de bouillon de volaille'),
(89, 'de genièvre'),
(90, 'aubergine(s)'),
(91, 'tortilla(s)'),
(92, 'avocat(s)'),
(93, 'de jambon cru'),
(94, 'jus de citron '),
(95, 'de pesto'),
(96, 'de fromage blanc'),
(97, 'de courgettes'),
(98, 'de yaourt grec'),
(99, 'de feta'),
(100, 'de fines herbes'),
(101, 'de comté râpé'),
(102, 'd\'oignons rouges'),
(103, 'de bacon'),
(104, 'cornichon(s)'),
(105, 'de tomates séchées'),
(106, 'de poivrons grillés'),
(107, 'de pâte à pain'),
(108, 'oignon(s) nouveau(x)'),
(109, 'd\'origan'),
(110, 'de piment d\'Espelette'),
(111, 'de sauce bolognaise'),
(112, 'de semoule'),
(113, 'de pulpe de tomate'),
(114, 'de veau'),
(115, 'de romarin'),
(116, 'de paprika'),
(117, 'de thon'),
(118, 'de cumin'),
(119, 'de gingembre'),
(120, 'de vin rouge'),
(121, 'de couscous'),
(122, 'de fèves'),
(123, 'de tagliatelles'),
(124, 'de mascarpone'),
(125, 'bouquet(s) garni(s)'),
(126, 'de champignons parfumés (séchés)'),
(127, 'de boeuf bourguignon'),
(128, 'de viande hachée'),
(129, 'de thon rouge'),
(130, 'butternut'),
(131, 'de sumac'),
(132, 'de tomates en boîte'),
(133, 'de sucre'),
(134, 'de levure'),
(135, 'de flocons d\'avoine'),
(136, 'de truffe'),
(137, 'de sucre de canne'),
(138, 'de pain'),
(139, 'de cannelle'),
(140, 'de potiron'),
(141, 'de vanille'),
(143, 'd\'eau de fleurs d\'oranger'),
(144, 'de levure de boulanger'),
(145, 'de sucre perlé'),
(146, 'de miel'),
(147, 'de levure chimique'),
(148, 'de yaourt nature'),
(149, 'de farine de mais'),
(150, 'poire(s)'),
(151, 'de lait écrémé'),
(153, 'de stévia en poudre'),
(154, 'd\'avoine'),
(155, 'de tapioca'),
(156, 'biscuits briochés'),
(157, 'pains muffins'),
(158, 'de fromage'),
(160, 'de farine à gâteaux'),
(161, 'de farine complète'),
(162, 'de sucre vanillé'),
(163, 'de margarine'),
(164, 'banane(s)'),
(165, 'de pruneaux'),
(166, 'de noix de coco rapée'),
(167, 'noix'),
(168, 'd\'arôme vanille'),
(169, 'd\'amandes effilées'),
(170, 'de noix concassées'),
(171, 'de pépites de chocolat'),
(172, 'kiwi(s)'),
(173, 'orange(s)'),
(174, 'de lait de soja'),
(175, 'de sucre roux'),
(176, 'de lieu noir'),
(177, 'de vin blanc'),
(178, 'Kit Barquitas (8tacos+sauce tomate+mélange épices '),
(180, 'de poisson blanc (merlu, morue, cabillaud, eglefin)'),
(181, 'ananas'),
(183, 'de piment vert'),
(185, 'citron(s) vert(s)'),
(186, 'de piment rouge'),
(187, 'mangue(s)'),
(188, 'laitue(s)'),
(189, 'blanc(s) de poulet'),
(190, 'poivron(s) jaune(s)'),
(191, 'de germes de soja'),
(193, 'de maizena'),
(194, 'de gingembre en poudre'),
(195, 'de sauce soja'),
(196, 'de nouilles chinoises'),
(197, 'de champignons noirs'),
(198, 'chou-fleur'),
(199, 'rutabaga(s)'),
(200, 'saucisse(s) de morteau'),
(201, 'marrons cuits'),
(202, 'potimarron'),
(203, 'panais'),
(204, 'carotte(s)'),
(205, 'poireau(x)'),
(206, 'navet(s)'),
(207, 'beurre'),
(208, 'eau'),
(210, 'de sel'),
(211, 'de pommes de terre'),
(212, 'courgette(s)'),
(213, 'd\'aubergines');

-- --------------------------------------------------------

--
-- Table structure for table `t_ingredientrecette`
--

CREATE TABLE `t_ingredientrecette` (
  `idIngredientRecette` int(10) UNSIGNED NOT NULL,
  `idIngredient` int(11) UNSIGNED NOT NULL,
  `idRecette` int(10) UNSIGNED NOT NULL,
  `ingredientQuantite` smallint(4) UNSIGNED NOT NULL,
  `ingredientMesure` varchar(16) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_ingredientrecette`
--

INSERT INTO `t_ingredientrecette` (`idIngredientRecette`, `idIngredient`, `idRecette`, `ingredientQuantite`, `ingredientMesure`) VALUES
(1, 1, 2, 1, 'rouleau(x)'),
(2, 2, 2, 2, 'tranche(s)'),
(3, 3, 2, 100, 'g'),
(4, 4, 2, 2, 'c à soupe'),
(5, 5, 2, 1, 'botte(s)'),
(6, 6, 2, 1, ''),
(7, 191, 4, 4, 'c à soupe'),
(8, 8, 4, 4, 'c à soupe'),
(9, 9, 4, 4, 'c à soupe'),
(10, 10, 4, 10, 'feuille(s)'),
(11, 5, 4, 1, 'botte(s)'),
(12, 11, 4, 4, 'c à soupe'),
(13, 12, 4, 1, 'gousse(s)'),
(14, 13, 4, 50, ''),
(15, 14, 4, 500, 'g'),
(16, 1, 5, 1, 'rouleau(x)'),
(17, 15, 5, 200, 'g'),
(18, 16, 5, 120, 'g'),
(19, 17, 5, 1, ''),
(20, 18, 5, 3, ''),
(21, 19, 5, 20, 'cl'),
(22, 20, 5, 100, 'g'),
(23, 21, 5, 0, ''),
(24, 22, 6, 1, 'kg'),
(25, 23, 6, 4, ''),
(26, 204, 6, 5, ''),
(27, 205, 6, 2, ''),
(28, 206, 6, 4, ''),
(29, 27, 6, 2, 'branche(s)'),
(30, 17, 6, 1, ''),
(31, 12, 6, 1, 'gousse(s)'),
(32, 125, 6, 1, 'bouquet(s)'),
(33, 21, 6, 0, ''),
(34, 47, 7, 6, ''),
(35, 48, 7, 1, ''),
(36, 19, 7, 20, 'cl'),
(37, 4, 7, 2, 'c à soupe'),
(38, 207, 7, 0, ''),
(39, 21, 7, 0, ''),
(40, 32, 7, 0, ''),
(41, 50, 8, 200, 'g'),
(42, 51, 8, 400, 'g'),
(43, 17, 8, 1, ''),
(44, 52, 8, 1, 'poignée(s)'),
(45, 204, 8, 1, ''),
(46, 126, 8, 40, 'g'),
(47, 34, 8, 150, 'g'),
(48, 18, 8, 1, ''),
(49, 208, 8, 0, ''),
(50, 55, 8, 10, 'cl'),
(51, 53, 8, 1, ''),
(52, 54, 8, 10, 'cl'),
(53, 60, 9, 1, 'kg'),
(54, 204, 9, 8, ''),
(55, 206, 9, 8, ''),
(56, 17, 9, 12, ''),
(57, 33, 9, 10, ''),
(58, 12, 9, 8, 'gousse(s)'),
(59, 61, 9, 75, 'g'),
(60, 62, 9, 500, 'ml'),
(61, 64, 9, 3, 'c à café'),
(62, 125, 9, 1, ''),
(63, 34, 9, 1, 'c à soupe'),
(64, 35, 9, 3, 'c à soupe'),
(65, 31, 9, 1, 'bouquet(s)'),
(66, 65, 9, 0, ''),
(67, 66, 10, 1, 'kg'),
(68, 67, 10, 1, 'kg'),
(69, 68, 10, 500, 'g'),
(70, 69, 10, 1, 'kg'),
(71, 70, 10, 1, 'kg'),
(72, 71, 10, 12, ''),
(73, 35, 10, 35, 'cl'),
(74, 17, 10, 2, ''),
(75, 12, 10, 4, 'gousse(s)'),
(76, 44, 10, 6, ''),
(77, 48, 10, 1, 'pièce(s)'),
(78, 72, 10, 1, 'pièce(s)'),
(79, 73, 10, 1, 'entier(s)'),
(80, 74, 10, 1, 'pte boîte'),
(81, 76, 10, 0, ''),
(82, 21, 10, 0, ''),
(83, 32, 10, 0, ''),
(84, 127, 11, 1, 'kg'),
(85, 17, 11, 2, ''),
(86, 77, 11, 1, 'tranche(s)'),
(87, 61, 11, 1, 'pte boite'),
(88, 125, 11, 1, ''),
(89, 63, 11, 1, 'cube'),
(90, 12, 11, 2, 'gousse(s)'),
(91, 204, 11, 6, ''),
(92, 32, 11, 0, ''),
(93, 21, 11, 0, ''),
(94, 80, 12, 1, 'botte(s)'),
(95, 81, 12, 1, 'botte(s)'),
(96, 82, 12, 1, ''),
(97, 191, 12, 2, 'poignée(s)'),
(98, 83, 12, 1, ''),
(99, 84, 12, 200, 'g'),
(100, 204, 12, 3, ''),
(101, 17, 12, 1, ''),
(102, 12, 12, 1, 'gousse(s)'),
(103, 85, 12, 2, 'c à soupe'),
(104, 86, 12, 1, 'c à café'),
(105, 37, 12, 1, 'pièce(s)'),
(106, 32, 12, 0, ''),
(107, 87, 13, 4, ''),
(108, 9, 13, 50, 'cl'),
(109, 17, 13, 1, ''),
(110, 12, 13, 1, 'gousse(s)'),
(111, 125, 13, 1, ''),
(112, 88, 13, 1, 'cube'),
(113, 89, 13, 3, 'c à café'),
(114, 28, 13, 1, ''),
(115, 35, 13, 1, 'c à soupe'),
(116, 91, 14, 4, ''),
(117, 92, 14, 1, ''),
(118, 44, 14, 1, ''),
(119, 45, 14, 1, 'boule(s)'),
(120, 93, 14, 4, 'tranche(s)'),
(121, 94, 14, 1, 'c à soupe'),
(122, 95, 14, 4, 'c à café'),
(123, 44, 15, 2, ''),
(124, 102, 15, 40, 'g'),
(125, 128, 15, 160, 'g'),
(126, 16, 15, 100, 'g'),
(127, 103, 15, 2, 'tranche(s)'),
(128, 45, 15, 40, 'g'),
(129, 104, 15, 4, ''),
(130, 29, 15, 1, 'pincée(s)'),
(131, 31, 15, 1, 'c à soupe'),
(132, 21, 15, 0, ''),
(133, 32, 15, 0, ''),
(134, 90, 16, 2, ''),
(135, 15, 16, 200, 'g'),
(136, 4, 16, 20, 'cl'),
(137, 79, 16, 200, 'g'),
(138, 32, 16, 0, ''),
(139, 21, 16, 0, ''),
(140, 114, 17, 900, 'g'),
(141, 35, 17, 40, 'cl'),
(142, 29, 17, 3, 'brin(s)'),
(143, 30, 17, 2, 'feuille(s)'),
(144, 115, 17, 2, 'brin(s)'),
(145, 116, 17, 1, 'c à café'),
(146, 32, 17, 0, ''),
(147, 21, 17, 0, ''),
(148, 129, 18, 4, 'darne(s)'),
(149, 35, 18, 2, 'c à soupe'),
(150, 37, 18, 1, ''),
(151, 118, 18, 1, 'c à café'),
(152, 119, 18, 1, 'c à café'),
(153, 12, 18, 1, 'gousse(s)'),
(154, 81, 18, 0, ''),
(155, 21, 18, 0, ''),
(156, 32, 18, 0, ''),
(157, 211, 19, 500, 'g'),
(158, 130, 20, 1, ''),
(159, 35, 20, 3, 'c à soupe'),
(160, 79, 20, 50, 'g'),
(161, 31, 20, 1, 'c à soupe'),
(162, 12, 20, 1, 'gousses(s)'),
(163, 32, 20, 0, ''),
(164, 21, 20, 0, ''),
(165, 90, 21, 2, ''),
(166, 57, 21, 150, 'g'),
(167, 46, 21, 0, ''),
(168, 35, 21, 3, 'c à soupe'),
(169, 96, 22, 350, 'g'),
(170, 18, 22, 3, ''),
(171, 34, 22, 250, 'g'),
(172, 49, 22, 20, 'g'),
(173, 32, 22, 0, ''),
(174, 21, 22, 0, ''),
(175, 97, 23, 600, 'g'),
(176, 211, 23, 400, 'g'),
(177, 101, 23, 200, 'g'),
(178, 49, 23, 20, 'g'),
(179, 4, 23, 40, 'cl'),
(180, 56, 23, 15, 'cl'),
(181, 59, 23, 1, 'pincée(s)'),
(182, 32, 23, 0, ''),
(183, 21, 23, 0, ''),
(184, 112, 24, 200, 'g'),
(185, 113, 24, 1, 'boîte'),
(186, 17, 24, 1, ''),
(187, 37, 24, 1, ''),
(188, 80, 24, 1, 'botte(s)'),
(189, 121, 25, 500, 'g'),
(190, 204, 25, 2, ''),
(191, 206, 25, 2, ''),
(192, 75, 25, 2, ''),
(193, 74, 25, 1, 'poignée(s)'),
(194, 52, 25, 1, 'poignée(s)'),
(195, 122, 25, 1, 'poignée(s)'),
(196, 35, 25, 4, 'c à soupe'),
(197, 34, 26, 200, 'g'),
(198, 35, 26, 7, 'c à soupe'),
(199, 32, 26, 0, ''),
(200, 208, 26, 0, ''),
(201, 36, 26, 500, 'g'),
(202, 17, 26, 1, ''),
(203, 37, 26, 1, 'pièce(s)'),
(204, 35, 26, 0, ''),
(205, 38, 26, 1, 'c à soupe'),
(206, 131, 26, 1, 'c à café'),
(207, 44, 27, 8, ''),
(208, 45, 27, 800, 'g'),
(209, 35, 27, 4, 'c à soupe'),
(210, 46, 27, 0, ''),
(211, 21, 27, 0, ''),
(212, 32, 27, 0, ''),
(213, 18, 28, 4, ''),
(214, 34, 28, 150, 'g'),
(215, 19, 28, 25, 'cl'),
(216, 56, 28, 25, 'cl'),
(217, 57, 28, 1, 'bûche(s)'),
(218, 5, 28, 4, 'brin(s)'),
(219, 49, 28, 1, 'noisette(s)'),
(220, 58, 29, 600, 'g'),
(221, 18, 29, 2, ''),
(222, 4, 29, 2, 'c à soupe'),
(223, 3, 29, 100, 'g'),
(224, 32, 29, 0, ''),
(225, 21, 29, 0, ''),
(226, 59, 29, 1, 'c à café'),
(227, 90, 30, 2, ''),
(228, 212, 30, 3, ''),
(229, 48, 30, 3, ''),
(230, 17, 30, 4, ''),
(231, 98, 30, 500, 'g'),
(232, 99, 30, 800, 'g'),
(234, 132, 30, 2, 'gr boîte(s)'),
(235, 12, 30, 3, 'gousse(s)'),
(236, 45, 30, 10, 'tranche(s)'),
(237, 35, 30, 5, 'c à soupe'),
(238, 207, 30, 0, ''),
(239, 32, 30, 0, ''),
(240, 21, 30, 0, ''),
(241, 213, 32, 350, 'g'),
(242, 97, 32, 350, 'g'),
(243, 48, 32, 1, ''),
(244, 72, 32, 1, ''),
(245, 17, 32, 350, 'g'),
(246, 44, 32, 500, 'g'),
(247, 12, 32, 3, 'gousse(s)'),
(248, 29, 32, 1, 'brin(s)'),
(249, 30, 32, 1, 'feuille(s)'),
(250, 32, 32, 0, ''),
(251, 21, 32, 0, ''),
(252, 105, 33, 165, 'g'),
(253, 106, 33, 200, 'g'),
(254, 107, 33, 400, 'g'),
(255, 61, 33, 2, 'c à soupe'),
(256, 45, 33, 1, 'boule(s)'),
(257, 108, 33, 2, ''),
(258, 12, 33, 2, 'gousse(s)'),
(259, 46, 33, 0, ''),
(260, 109, 33, 1, 'c à café'),
(261, 29, 33, 1, 'brin(s)'),
(262, 110, 33, 1, 'c à café'),
(263, 32, 33, 0, ''),
(264, 21, 33, 0, ''),
(265, 90, 34, 1, ''),
(266, 111, 34, 20, 'cl'),
(267, 79, 34, 75, 'g'),
(268, 213, 35, 1, 'kg'),
(269, 132, 35, 800, 'g'),
(270, 61, 35, 2, 'c à soupe'),
(271, 45, 35, 250, 'g'),
(272, 12, 35, 2, 'gousse(s)'),
(273, 79, 35, 200, 'g'),
(274, 35, 35, 5, 'c à soupe'),
(275, 120, 35, 10, 'cl'),
(276, 9, 35, 10, 'cl'),
(277, 32, 35, 0, ''),
(278, 21, 35, 0, ''),
(279, 64, 35, 0, ''),
(280, 123, 36, 300, 'g'),
(281, 124, 36, 125, 'g'),
(282, 74, 36, 300, 'g'),
(283, 17, 36, 1, ''),
(284, 12, 36, 1, 'gousse(s)'),
(285, 79, 36, 40, 'g'),
(286, 35, 36, 2, 'c à soupe'),
(287, 21, 36, 0, ''),
(288, 32, 36, 0, ''),
(289, 18, 37, 2, ''),
(290, 56, 37, 150, 'ml'),
(291, 34, 37, 150, 'g'),
(292, 133, 37, 2, 'c à soupe'),
(293, 134, 37, 1, 'paquet(s)'),
(294, 32, 37, 0, ''),
(295, 135, 37, 5, 'c à soupe'),
(296, 56, 37, 25, 'cl'),
(297, 133, 37, 2, 'c à soupe'),
(298, 18, 39, 8, ''),
(299, 136, 39, 10, 'g'),
(300, 49, 39, 100, 'g'),
(301, 4, 39, 4, 'c à soupe'),
(302, 21, 39, 0, ''),
(303, 32, 39, 0, ''),
(304, 18, 40, 3, ''),
(305, 56, 40, 25, 'cl'),
(306, 137, 40, 75, 'g'),
(307, 138, 40, 6, 'tranche(s)'),
(308, 134, 41, 25, 'g'),
(309, 49, 41, 150, 'g'),
(310, 56, 41, 25, 'cl'),
(311, 210, 41, 2, 'g'),
(312, 34, 41, 175, 'cl'),
(313, 133, 41, 180, 'g'),
(314, 139, 41, 3, 'c à café'),
(315, 18, 41, 1, ''),
(316, 16, 42, 1, 'barquette(s)'),
(317, 33, 42, 4, ''),
(318, 17, 42, 1, 'pièce(s)'),
(319, 12, 42, 4, 'gousse(s)'),
(320, 19, 42, 20, 'cl'),
(321, 59, 42, 1, 'c à café'),
(322, 21, 42, 0, ''),
(323, 32, 42, 0, ''),
(325, 140, 43, 1, 'kg'),
(326, 24, 43, 300, 'g'),
(327, 102, 43, 200, 'g'),
(328, 25, 43, 200, 'g'),
(329, 207, 43, 0, ''),
(330, 12, 43, 3, 'gousse(s)'),
(331, 125, 43, 1, ''),
(332, 4, 43, 40, 'cl'),
(333, 32, 43, 0, 'selon goût'),
(341, 211, 31, 1, 'kg'),
(342, 17, 31, 4, ''),
(343, 212, 31, 4, ''),
(344, 35, 31, 5, 'c à soupe'),
(345, 20, 31, 200, 'g'),
(346, 21, 31, 0, ''),
(347, 32, 31, 0, ''),
(348, 135, 38, 5, 'c à soupe'),
(349, 56, 38, 25, 'cl'),
(350, 133, 38, 2, 'c à soupe'),
(351, 174, 44, 25, 'cl'),
(352, 164, 44, 2, ''),
(353, 172, 44, 4, ''),
(354, 173, 44, 2, ''),
(355, 34, 46, 150, 'g'),
(356, 161, 46, 150, 'g'),
(357, 133, 46, 50, 'g'),
(358, 146, 46, 50, 'g'),
(359, 18, 46, 1, ''),
(360, 49, 46, 100, 'g'),
(361, 148, 46, 100, 'g'),
(362, 162, 46, 1, 'sachet(s)'),
(363, 168, 46, 1, 'c à café'),
(364, 169, 46, 2, 'poignée(s)'),
(365, 170, 46, 1, 'poignée(s)'),
(366, 171, 46, 2, 'poignée(s)'),
(367, 154, 46, 80, 'g'),
(368, 160, 46, 60, 'g'),
(369, 161, 46, 100, 'g'),
(370, 175, 46, 90, 'g'),
(371, 162, 46, 1, 'sachet(s)'),
(372, 18, 46, 2, 'entier(s)'),
(373, 56, 46, 70, 'ml'),
(374, 163, 46, 20, 'g'),
(375, 134, 46, 1, 'sachet(s)'),
(376, 139, 46, 0, ''),
(377, 164, 46, 1, ''),
(378, 165, 46, 50, 'g'),
(379, 166, 46, 0, ''),
(380, 167, 46, 3, ''),
(381, 157, 47, 4, ''),
(382, 18, 47, 4, ''),
(383, 103, 47, 4, 'tranche(s)'),
(384, 158, 47, 4, 'fine tranche(s)'),
(385, 56, 48, 20, 'cl'),
(386, 155, 48, 3, 'c à soupe'),
(387, 156, 48, 3, ''),
(388, 146, 48, 1, 'c à soupe'),
(389, 154, 49, 3, 'c à soupe'),
(390, 153, 49, 5, 'g'),
(391, 96, 49, 1, 'pot(s)'),
(392, 151, 49, 5, 'c à soupe'),
(393, 210, 49, 1, 'pincée(s)'),
(394, 18, 49, 1, ''),
(395, 150, 49, 1, ''),
(396, 37, 49, 1, ''),
(397, 149, 50, 250, 'g'),
(398, 18, 50, 4, ''),
(399, 32, 50, 1, 'pincée(s)'),
(400, 49, 50, 100, 'g'),
(401, 148, 50, 2, 'pot(s)'),
(402, 147, 50, 1, 'sachet(s)'),
(403, 146, 50, 1, 'c à soupe'),
(404, 18, 51, 3, ''),
(405, 144, 51, 10, 'g'),
(406, 56, 51, 20, 'cl'),
(407, 210, 51, 1, 'pincée'),
(408, 133, 51, 65, 'g'),
(409, 143, 51, 20, 'ml'),
(410, 49, 51, 80, 'g'),
(411, 171, 51, 1, 'poignée(s)'),
(412, 34, 51, 560, 'g'),
(413, 145, 51, 1, 'c à soupe'),
(414, 34, 52, 275, 'g'),
(415, 32, 52, 1, 'c à café'),
(416, 18, 52, 1, ''),
(417, 133, 52, 55, 'g'),
(418, 49, 52, 55, 'g'),
(419, 144, 52, 1, 'sachet(s)'),
(420, 4, 52, 1, 'c à soupe'),
(421, 56, 52, 65, 'ml'),
(422, 141, 52, 1, 'gousse(s)'),
(423, 143, 52, 1, 'c à café'),
(424, 176, 53, 600, 'g'),
(425, 16, 53, 400, 'g'),
(426, 17, 53, 1, ''),
(427, 177, 53, 15, 'cl'),
(428, 19, 53, 15, 'cl'),
(429, 125, 53, 1, ''),
(430, 21, 53, 0, ''),
(431, 32, 53, 0, ''),
(432, 34, 53, 2, 'c à soupe'),
(433, 207, 53, 0, ''),
(434, 178, 54, 1, ''),
(435, 180, 54, 500, 'g'),
(436, 181, 54, 1, 'moitié(s)'),
(437, 102, 54, 100, 'g'),
(438, 81, 54, 1, 'botte(s)'),
(439, 183, 54, 1, ''),
(440, 92, 54, 2, 'pièce(s)'),
(441, 185, 54, 1, ''),
(442, 21, 54, 0, ''),
(443, 32, 54, 0, ''),
(444, 187, 55, 1, ''),
(445, 186, 55, 1, 'c à café'),
(446, 81, 55, 3, 'c à café'),
(447, 185, 55, 1, ''),
(448, 180, 55, 500, 'g'),
(449, 18, 55, 1, ''),
(450, 108, 55, 1, 'botte(s)'),
(451, 166, 55, 50, 'g'),
(461, 178, 56, 1, ''),
(462, 180, 56, 500, 'g'),
(463, 44, 56, 2, ''),
(464, 188, 56, 1, ''),
(465, 4, 56, 10, 'cl'),
(466, 20, 56, 125, 'g'),
(467, 37, 56, 1, ''),
(468, 17, 56, 1, ''),
(469, 35, 56, 1, 'c à soupe'),
(470, 178, 57, 1, ''),
(471, 189, 57, 500, 'g'),
(472, 102, 57, 150, 'g'),
(473, 48, 57, 1, ''),
(474, 190, 57, 1, ''),
(475, 92, 57, 1, ''),
(476, 35, 57, 1, 'c à café'),
(477, 81, 57, 5, 'brin(s)'),
(478, 189, 58, 2, ''),
(479, 35, 58, 1, 'c à soupe'),
(480, 12, 58, 1, 'gousse(s)'),
(481, 17, 58, 1, ''),
(482, 204, 58, 1, ''),
(483, 191, 58, 100, 'g'),
(484, 88, 58, 60, 'g'),
(485, 193, 58, 1, 'c à soupe'),
(486, 186, 58, 1, 'c à café'),
(487, 194, 58, 1, 'c à café'),
(488, 195, 58, 1, 'c à soupe'),
(489, 86, 58, 1, 'c à soupe'),
(490, 196, 58, 125, 'g'),
(491, 197, 58, 3, ''),
(492, 32, 58, 0, ''),
(493, 21, 58, 0, ''),
(494, 199, 59, 2, ''),
(495, 198, 59, 1, ''),
(496, 204, 59, 1, ''),
(497, 33, 59, 1, ''),
(498, 15, 59, 100, 'g'),
(499, 146, 59, 1, 'c à soupe'),
(500, 19, 59, 1, 'c à soupe'),
(501, 81, 59, 1, 'c à café'),
(502, 32, 59, 0, ''),
(503, 21, 59, 0, ''),
(504, 200, 60, 1, ''),
(505, 201, 60, 20, ''),
(506, 202, 60, 1, ''),
(507, 203, 60, 2, ''),
(508, 49, 60, 30, 'g'),
(509, 32, 60, 0, ''),
(510, 21, 60, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t_recette`
--

CREATE TABLE `t_recette` (
  `idRecette` int(10) UNSIGNED NOT NULL,
  `Code` int(4) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `difficulte` tinyint(4) NOT NULL,
  `cout` tinyint(4) NOT NULL,
  `duree` tinyint(3) UNSIGNED NOT NULL,
  `tempsDePrep` tinyint(3) UNSIGNED NOT NULL,
  `tempsDeCuisson` tinyint(3) UNSIGNED NOT NULL,
  `tempsDeRepos` tinyint(3) UNSIGNED NOT NULL,
  `cooking` tinyint(1) NOT NULL,
  `serving` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_recette`
--

INSERT INTO `t_recette` (`idRecette`, `Code`, `nom`, `image`, `difficulte`, `cout`, `duree`, `tempsDePrep`, `tempsDeCuisson`, `tempsDeRepos`, `cooking`, `serving`) VALUES
(2, 1523, 'Feuilleté rapide jambon fromage', '2.jpg', 1, 1, 25, 5, 20, 0, 1, 2),
(4, 4523, 'Gyoza (Ravioli Chinois à la Japonaise)', '4.jpg', 2, 3, 50, 40, 10, 0, 1, 4),
(5, 9632, 'Quiche très facile', '5.jpg', 1, 1, 40, 0, 0, 0, 1, 4),
(6, 6853, 'Pot-au-feu', '6.jpg', 2, 2, 150, 30, 120, 0, 1, 6),
(7, 3645, 'Filets de poulet à la crème de poivrons', '7.jpg', 1, 1, 45, 15, 30, 0, 1, 4),
(8, 7841, 'Beignets tempura au calamar', '8.jpg', 1, 2, 35, 30, 5, 0, 1, 4),
(9, 8659, 'Navarin d\'agneau', '9.jpg', 2, 2, 140, 20, 120, 0, 1, 4),
(10, 9965, 'Véritable paëlla espagnole', '10.jpg', 2, 2, 90, 0, 0, 0, 1, 12),
(11, 5847, 'Boeuf braisé aux carottes', '11.jpg', 1, 1, 80, 20, 60, 0, 1, 6),
(12, 5587, 'Bo Bun', '12.jpg', 1, 2, 40, 20, 20, 0, 1, 4),
(13, 6651, 'Cuisses de poulet au four', '13.jpg', 1, 1, 45, 10, 35, 0, 1, 4),
(14, 3566, 'Wrap à l\'italienne', '14.jpg', 1, 1, 5, 5, 0, 0, 0, 4),
(15, 3347, 'Tomate Burger', '15.jpg', 1, 1, 25, 15, 10, 0, 0, 2),
(16, 1244, 'Aubergines à la carbonara', '16.jpg', 1, 1, 25, 10, 15, 0, 1, 4),
(17, 1112, 'Brochettes de veau mariné', '17.jpg', 1, 2, 35, 15, 20, 0, 1, 6),
(18, 2245, 'Thon grillé marinade méditerranéenne', '18.jpg', 1, 1, 15, 10, 5, 0, 1, 4),
(19, 5445, 'Pommes de terre au four', '19.jpg', 1, 1, 55, 10, 45, 0, 1, 4),
(20, 5226, 'Zoodle de butternut', '20.jpg', 2, 1, 45, 30, 15, 0, 1, 4),
(21, 7880, 'Poêlée d\'aubergines au chèvre', '21.jpg', 1, 1, 35, 5, 30, 0, 1, 4),
(22, 2150, 'Pâtes alsaciennes', '22.jpg', 2, 1, 30, 15, 15, 0, 1, 4),
(23, 2003, 'Dauphinois de courgettes', '23.jpg', 2, 2, 80, 20, 60, 0, 1, 4),
(24, 9477, 'Taboulé express', '24.jpg', 2, 1, 10, 10, 0, 0, 0, 4),
(25, 6566, 'Couscous de printemps', '25.jpg', 1, 2, 55, 20, 35, 0, 0, 5),
(26, 3631, 'Chaussons aux épinards', '26.jpg', 1, 1, 140, 60, 20, 60, 1, 2),
(27, 3002, 'Tomates mozzarella au four', '27.jpg', 1, 1, 45, 15, 30, 0, 1, 4),
(28, 4255, 'Clafoutis salé au chèvre', '28.jpg', 1, 1, 45, 15, 30, 0, 1, 6),
(29, 5401, 'Gratin de courge facile', '29.jpg', 1, 1, 60, 30, 30, 0, 1, 4),
(30, 2100, 'Moussaka végétarienne', '30.jpg', 1, 1, 120, 60, 60, 0, 1, 8),
(31, 3700, 'Tian de pommes de terre et courgettes', '31.jpg', 1, 1, 65, 20, 45, 0, 1, 6),
(32, 3482, 'Ratatouille', '32.jpg', 1, 2, 80, 25, 55, 0, 1, 4),
(33, 7511, 'Pizza végétarienne aux légumes grillés et aux herbes', '33.jpg', 1, 1, 27, 15, 12, 0, 1, 4),
(34, 2958, 'Aubergine à la parmesane', '34.jpg', 1, 1, 75, 45, 30, 0, 1, 2),
(35, 8344, 'Aubergines à la Parmigiana', '35.jpg', 1, 1, 90, 30, 60, 0, 1, 4),
(36, 9924, 'Tagliatelles au mascarpone et petits pois', '36.jpg', 1, 2, 35, 20, 15, 0, 1, 4),
(37, 5983, 'Pancakes rapides', '37.jpg', 1, 1, 20, 10, 10, 0, 1, 2),
(38, 7815, 'Home made oatmeal', '38.jpg', 1, 1, 19, 2, 17, 0, 1, 2),
(39, 4880, 'Oeufs brouillés à la truffe', '39.jpg', 1, 2, 20, 5, 15, 0, 1, 4),
(40, 9783, 'Pain perdu', '40.jpg', 2, 2, 30, 15, 15, 0, 1, 4),
(41, 5470, 'Kanelbulle (viennoiserie suédoise à la cannelle)', '41.jpg', 1, 2, 70, 60, 10, 0, 1, 6),
(42, 2053, 'Soupe aux champignons', '42.jpg', 1, 1, 40, 15, 25, 0, 1, 5),
(43, 9568, 'Soupe au potiron', '43.jpg', 1, 1, 85, 25, 60, 0, 1, 6),
(44, 3114, 'Smoothie vitaminé', '44.jpg', 1, 1, 10, 10, 0, 0, 0, 2),
(45, 3119, 'Biscuits aux céréales', '45.jpg', 1, 1, 25, 15, 10, 0, 1, 8),
(46, 3175, 'Cake du petit déjeuner', '46.jpg', 1, 1, 55, 15, 40, 0, 1, 4),
(47, 3165, 'Egg Mcmuffin', '47.jpg', 1, 1, 13, 10, 3, 0, 1, 4),
(48, 3122, 'Tapioca du petit dejeuner', '48.jpg', 1, 1, 15, 5, 10, 0, 1, 1),
(49, 3147, 'Petit déjeuner allégé à l\'avoine et aux poires', '49.jpg', 1, 1, 10, 5, 5, 0, 1, 2),
(50, 3180, 'Gâteau de maïs', '50.jpg', 1, 1, 40, 15, 25, 0, 1, 6),
(51, 3102, 'Brioche tressée', '51.jpg', 2, 1, 240, 90, 30, 120, 1, 10),
(52, 3153, 'La gâche vendéenne', '52.jpg', 2, 1, 55, 10, 45, 0, 1, 4),
(53, 8152, 'Blanquette de poisson', '53.jpg', 1, 1, 40, 10, 40, 0, 1, 4),
(54, 8555, 'Tacos de poisson et salsa d’ananas', '54.jpg', 1, 1, 45, 20, 25, 0, 1, 4),
(55, 8321, 'Cakes thaï au poisson avec sauce à la mangue', '55.jpg', 1, 1, 34, 20, 14, 0, 1, 4),
(56, 3553, 'Fajitas au poisson fondant, tomates et citron', '56.jpg', 1, 1, 15, 10, 5, 0, 1, 4),
(57, 9971, 'Fajitas au poulet fondant', '57.jpg', 1, 1, 25, 5, 21, 0, 1, 4),
(58, 4552, 'Soupe chinoise au poulet', '58.jpg', 1, 2, 65, 45, 20, 0, 1, 3),
(59, 4442, 'Soupe de rutabagas', '59.jpg', 1, 1, 40, 15, 25, 0, 1, 4),
(60, 4443, 'Soupe gourmande', '60.jpg', 1, 1, 120, 30, 90, 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `t_repas`
--

CREATE TABLE `t_repas` (
  `idRepas` int(10) UNSIGNED NOT NULL,
  `nomRepas` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_repas`
--

INSERT INTO `t_repas` (`idRepas`, `nomRepas`) VALUES
(1, 'Petit-déjeuner'),
(2, 'Déjeuner'),
(3, 'Dîner');

-- --------------------------------------------------------

--
-- Table structure for table `t_repasrecette`
--

CREATE TABLE `t_repasrecette` (
  `idRepasRecette` int(10) UNSIGNED NOT NULL,
  `idRepas` int(10) UNSIGNED NOT NULL,
  `idRecette` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_repasrecette`
--

INSERT INTO `t_repasrecette` (`idRepasRecette`, `idRepas`, `idRecette`) VALUES
(1, 2, 2),
(2, 1, 37),
(3, 2, 16),
(4, 1, 38),
(5, 1, 39),
(6, 2, 10),
(7, 3, 11),
(8, 2, 4),
(9, 2, 5),
(10, 3, 6),
(11, 2, 8),
(12, 3, 9),
(13, 2, 7),
(14, 2, 12),
(15, 3, 13),
(16, 2, 14),
(17, 2, 15),
(18, 3, 17),
(19, 3, 2),
(20, 3, 4),
(21, 3, 5),
(22, 2, 6),
(23, 3, 7),
(24, 3, 8),
(25, 2, 9),
(26, 3, 10),
(27, 2, 11),
(28, 3, 12),
(29, 2, 13),
(31, 3, 15),
(32, 3, 16),
(33, 2, 17),
(34, 2, 18),
(35, 2, 18),
(36, 2, 19),
(37, 3, 19),
(38, 2, 20),
(39, 3, 20),
(40, 2, 21),
(41, 3, 21),
(42, 2, 22),
(43, 3, 22),
(44, 2, 23),
(45, 3, 23),
(46, 2, 24),
(47, 3, 24),
(48, 2, 25),
(49, 3, 25),
(50, 2, 26),
(51, 3, 26),
(52, 2, 27),
(53, 3, 27),
(54, 2, 28),
(55, 3, 28),
(56, 2, 29),
(57, 3, 29),
(58, 2, 30),
(59, 3, 30),
(60, 2, 31),
(61, 3, 31),
(62, 2, 32),
(63, 3, 32),
(64, 2, 33),
(65, 3, 33),
(66, 2, 34),
(67, 3, 34),
(68, 2, 35),
(69, 3, 35),
(70, 2, 36),
(71, 3, 36),
(72, 2, 42),
(73, 3, 42),
(74, 2, 43),
(75, 3, 43),
(76, 1, 40),
(77, 1, 41),
(78, 1, 44),
(79, 1, 45),
(80, 1, 46),
(81, 1, 47),
(82, 1, 48),
(83, 1, 49),
(84, 1, 50),
(85, 1, 51),
(86, 1, 52),
(87, 2, 53),
(88, 3, 53),
(89, 2, 54),
(90, 3, 54),
(91, 2, 55),
(92, 3, 55),
(93, 2, 56),
(94, 3, 56),
(95, 2, 57),
(96, 3, 57),
(97, 2, 58),
(98, 3, 58),
(99, 2, 59),
(100, 3, 59),
(101, 2, 60),
(102, 3, 60);

-- --------------------------------------------------------

--
-- Table structure for table `t_temps`
--

CREATE TABLE `t_temps` (
  `idTemps` int(10) UNSIGNED NOT NULL,
  `dureeTemps` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_temps`
--

INSERT INTO `t_temps` (`idTemps`, `dureeTemps`) VALUES
(1, 'moins de 30 min'),
(2, 'moins de 1h'),
(3, 'moins de 1h30'),
(4, 'plus de 1h30');

-- --------------------------------------------------------

--
-- Table structure for table `t_tempsrecette`
--

CREATE TABLE `t_tempsrecette` (
  `idTempsRecette` int(10) UNSIGNED NOT NULL,
  `idTemps` int(10) UNSIGNED NOT NULL,
  `idRecette` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `t_tempsrecette`
--

INSERT INTO `t_tempsrecette` (`idTempsRecette`, `idTemps`, `idRecette`) VALUES
(1, 1, 2),
(2, 2, 4),
(3, 2, 5),
(4, 4, 6),
(5, 2, 7),
(6, 2, 8),
(7, 4, 9),
(8, 3, 10),
(9, 3, 11),
(10, 2, 12),
(11, 2, 13),
(12, 1, 14),
(13, 1, 15),
(14, 1, 16),
(15, 2, 17),
(16, 1, 18),
(17, 2, 19),
(18, 2, 20),
(19, 2, 21),
(20, 1, 22),
(21, 3, 23),
(22, 1, 24),
(23, 2, 25),
(24, 4, 26),
(25, 2, 27),
(26, 2, 28),
(27, 2, 29),
(28, 4, 30),
(29, 3, 31),
(30, 3, 32),
(31, 1, 33),
(32, 3, 34),
(33, 3, 35),
(34, 2, 36),
(35, 1, 37),
(36, 1, 38),
(37, 1, 39),
(38, 1, 40),
(39, 3, 41),
(40, 2, 42),
(41, 3, 43),
(51, 1, 44),
(52, 1, 45),
(53, 2, 46),
(54, 1, 47),
(55, 1, 48),
(56, 1, 49),
(57, 2, 50),
(58, 4, 51),
(59, 2, 52),
(60, 2, 53),
(61, 2, 54),
(62, 2, 55),
(63, 1, 56),
(64, 1, 57),
(65, 3, 58),
(66, 2, 59),
(67, 4, 60);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_cook`
-- (See below for the actual view)
--
CREATE TABLE `view_cook` (
`idRecette` int(10) unsigned
,`nomRecette` varchar(100)
,`difficulte` tinyint(4)
,`tempsTotalMinutes` tinyint(3) unsigned
,`tempsDePrep` tinyint(3) unsigned
,`tempsDeCuisson` tinyint(3) unsigned
,`tempsDeRepos` tinyint(3) unsigned
,`cout` tinyint(4)
,`image` varchar(100)
,`typeDeRepas` varchar(50)
,`etapes` mediumtext
,`ingredient` varchar(120)
,`quantiteIngredient` smallint(4) unsigned
,`mesureIngredient` varchar(16)
,`categorie` varchar(50)
,`dureeEnTranche` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_recettes`
-- (See below for the actual view)
--
CREATE TABLE `view_recettes` (
`idRecette` int(10) unsigned
,`nomRecette` varchar(100)
,`image` varchar(100)
,`categorie` varchar(50)
,`typeDeRepas` varchar(50)
,`ingredient` varchar(120)
);

-- --------------------------------------------------------

--
-- Structure for view `view_cook`
--
DROP TABLE IF EXISTS `view_cook`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_cook`  AS  select distinct `t_recette`.`idRecette` AS `idRecette`,`t_recette`.`nom` AS `nomRecette`,`t_recette`.`difficulte` AS `difficulte`,`t_recette`.`duree` AS `tempsTotalMinutes`,`t_recette`.`tempsDePrep` AS `tempsDePrep`,`t_recette`.`tempsDeCuisson` AS `tempsDeCuisson`,`t_recette`.`tempsDeRepos` AS `tempsDeRepos`,`t_recette`.`cout` AS `cout`,`t_recette`.`image` AS `image`,`t_repas`.`nomRepas` AS `typeDeRepas`,`t_etapes`.`descriptEtapes` AS `etapes`,`t_ingredient`.`nomIngredient` AS `ingredient`,`t_ingredientrecette`.`ingredientQuantite` AS `quantiteIngredient`,`t_ingredientrecette`.`ingredientMesure` AS `mesureIngredient`,`t_categorie`.`nomCategorie` AS `categorie`,`t_temps`.`dureeTemps` AS `dureeEnTranche` from (((((((((`t_recette` join `t_repasrecette` on((`t_recette`.`idRecette` = `t_repasrecette`.`idRecette`))) join `t_repas` on((`t_repasrecette`.`idRepas` = `t_repas`.`idRepas`))) join `t_categorierecette` on((`t_recette`.`idRecette` = `t_categorierecette`.`idRecette`))) join `t_categorie` on((`t_categorierecette`.`idCategorie` = `t_categorie`.`idCategorie`))) join `t_ingredientrecette` on((`t_recette`.`idRecette` = `t_ingredientrecette`.`idRecette`))) join `t_ingredient` on((`t_ingredientrecette`.`idIngredient` = `t_ingredient`.`idIngredient`))) join `t_etapes` on((`t_recette`.`idRecette` = `t_etapes`.`idRecette`))) join `t_tempsrecette` on((`t_recette`.`idRecette` = `t_tempsrecette`.`idRecette`))) join `t_temps` on((`t_temps`.`idTemps` = `t_tempsrecette`.`idTemps`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_recettes`
--
DROP TABLE IF EXISTS `view_recettes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_recettes`  AS  select `t_recette`.`idRecette` AS `idRecette`,`t_recette`.`nom` AS `nomRecette`,`t_recette`.`image` AS `image`,`t_categorie`.`nomCategorie` AS `categorie`,`t_repas`.`nomRepas` AS `typeDeRepas`,`t_ingredient`.`nomIngredient` AS `ingredient` from ((((((`t_recette` join `t_repasrecette` on((`t_recette`.`idRecette` = `t_repasrecette`.`idRecette`))) join `t_repas` on((`t_repasrecette`.`idRepas` = `t_repas`.`idRepas`))) join `t_categorierecette` on((`t_recette`.`idRecette` = `t_categorierecette`.`idRecette`))) join `t_categorie` on((`t_categorierecette`.`idCategorie` = `t_categorie`.`idCategorie`))) join `t_ingredientrecette` on((`t_recette`.`idRecette` = `t_ingredientrecette`.`idRecette`))) join `t_ingredient` on((`t_ingredientrecette`.`idIngredient` = `t_ingredient`.`idIngredient`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_categorie`
--
ALTER TABLE `t_categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Indexes for table `t_categorierecette`
--
ALTER TABLE `t_categorierecette`
  ADD PRIMARY KEY (`idCategorieRecette`),
  ADD KEY `idCategorie` (`idCategorie`),
  ADD KEY `idRecette` (`idRecette`);

--
-- Indexes for table `t_etapes`
--
ALTER TABLE `t_etapes`
  ADD PRIMARY KEY (`idEtapes`) USING BTREE,
  ADD KEY `idRecette` (`idRecette`) USING BTREE;

--
-- Indexes for table `t_ingredient`
--
ALTER TABLE `t_ingredient`
  ADD PRIMARY KEY (`idIngredient`);

--
-- Indexes for table `t_ingredientrecette`
--
ALTER TABLE `t_ingredientrecette`
  ADD PRIMARY KEY (`idIngredientRecette`),
  ADD KEY `idRecette` (`idRecette`) USING BTREE,
  ADD KEY `idIngredient` (`idIngredient`) USING BTREE;

--
-- Indexes for table `t_recette`
--
ALTER TABLE `t_recette`
  ADD PRIMARY KEY (`idRecette`);

--
-- Indexes for table `t_repas`
--
ALTER TABLE `t_repas`
  ADD PRIMARY KEY (`idRepas`);

--
-- Indexes for table `t_repasrecette`
--
ALTER TABLE `t_repasrecette`
  ADD PRIMARY KEY (`idRepasRecette`),
  ADD KEY `idRepas` (`idRepas`),
  ADD KEY `idRecette` (`idRecette`);

--
-- Indexes for table `t_temps`
--
ALTER TABLE `t_temps`
  ADD PRIMARY KEY (`idTemps`);

--
-- Indexes for table `t_tempsrecette`
--
ALTER TABLE `t_tempsrecette`
  ADD PRIMARY KEY (`idTempsRecette`),
  ADD KEY `idTemps` (`idTemps`),
  ADD KEY `idRecette` (`idRecette`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_categorie`
--
ALTER TABLE `t_categorie`
  MODIFY `idCategorie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_categorierecette`
--
ALTER TABLE `t_categorierecette`
  MODIFY `idCategorieRecette` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `t_etapes`
--
ALTER TABLE `t_etapes`
  MODIFY `idEtapes` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `t_ingredient`
--
ALTER TABLE `t_ingredient`
  MODIFY `idIngredient` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `t_ingredientrecette`
--
ALTER TABLE `t_ingredientrecette`
  MODIFY `idIngredientRecette` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `t_recette`
--
ALTER TABLE `t_recette`
  MODIFY `idRecette` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `t_repas`
--
ALTER TABLE `t_repas`
  MODIFY `idRepas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_repasrecette`
--
ALTER TABLE `t_repasrecette`
  MODIFY `idRepasRecette` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `t_temps`
--
ALTER TABLE `t_temps`
  MODIFY `idTemps` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_tempsrecette`
--
ALTER TABLE `t_tempsrecette`
  MODIFY `idTempsRecette` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_categorierecette`
--
ALTER TABLE `t_categorierecette`
  ADD CONSTRAINT `t_categorierecette_ibfk_1` FOREIGN KEY (`idCategorie`) REFERENCES `t_categorie` (`idCategorie`),
  ADD CONSTRAINT `t_categorierecette_ibfk_2` FOREIGN KEY (`idRecette`) REFERENCES `t_recette` (`idRecette`);

--
-- Constraints for table `t_etapes`
--
ALTER TABLE `t_etapes`
  ADD CONSTRAINT `t_etapes_ibfk_1` FOREIGN KEY (`idRecette`) REFERENCES `t_recette` (`idRecette`);

--
-- Constraints for table `t_ingredientrecette`
--
ALTER TABLE `t_ingredientrecette`
  ADD CONSTRAINT `t_ingredientrecette_ibfk_1` FOREIGN KEY (`idRecette`) REFERENCES `t_recette` (`idRecette`),
  ADD CONSTRAINT `t_ingredientrecette_ibfk_2` FOREIGN KEY (`idIngredient`) REFERENCES `t_ingredient` (`idIngredient`);

--
-- Constraints for table `t_repasrecette`
--
ALTER TABLE `t_repasrecette`
  ADD CONSTRAINT `t_repasrecette_ibfk_1` FOREIGN KEY (`idRepas`) REFERENCES `t_repas` (`idRepas`),
  ADD CONSTRAINT `t_repasrecette_ibfk_2` FOREIGN KEY (`idRecette`) REFERENCES `t_recette` (`idRecette`);

--
-- Constraints for table `t_tempsrecette`
--
ALTER TABLE `t_tempsrecette`
  ADD CONSTRAINT `t_tempsrecette_ibfk_1` FOREIGN KEY (`idRecette`) REFERENCES `t_recette` (`idRecette`),
  ADD CONSTRAINT `t_tempsrecette_ibfk_2` FOREIGN KEY (`idTemps`) REFERENCES `t_temps` (`idTemps`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
