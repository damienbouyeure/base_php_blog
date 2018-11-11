-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id`      int(11)      NOT NULL AUTO_INCREMENT,
  `title`   varchar(255) NOT NULL,
  `content` longtext     NOT NULL,
  `image`   varchar(255) NOT NULL,
  `author`  int(11)      NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `author`)
VALUES (1,
        'Test',
        'Philomena Parasprite Smarty Pants Ms. Harshwhinny mane Lord Tirek Pound Cake Ponyville Sonata Dusk Soarin Princess Celestia pony cloud. Horn Fancy Pants Lightning Dust, Ms. Harshwhinny Hoity Toity Silver Shill Trixie Spitfire Aria Blaze. And that\'s how Equestria was made! Aria Blaze Smarty Pants cupcakes Apple Jack alicorn Pound Cake, Mayor Mare Maud Pie Seabreeze Flash Sentry Steven Magnet Philomena Winona.',
        'mlp-subscribe.jpg',
        1),
       (2,
        'Test',
        'Tank moon Flim, mane Cranky Doodle Donkey Big McIntosh muffins generosity Photo Finish Fancy Pants Caramel Ms. Harshwhinny hoof. Rainbow Dash Bon Bon Babs Seed, Cheese Sandwich Pumpkin Cake Aria Blaze Ponyville pegasai Daring Do friendship sun Spitfire rainbow power Canterlot. Apple Bloom Flam Dr. Caballeron Cranky Doodle Donkey Seabreeze. Tank Filthy Rich loyalty Parasprite, Snips Equestria Photo Finish elements of harmony Dr Hooves rainbow power. Flim Mr. Cake Big McIntosh Winona. A. K. Yearling muffins Caramel mane Silver Shill Peewee Matilda wing Ms. Peachbottom Scootaloo Flash Sentry Cheerilee.',
        '5be73f3fa1c5d-twilight_low.png',
        1),
       (3,
        'Test 3',
        'Lord Tirek breezies magic Gummy Queen Chrysalis. Rainbow power Shadowbolts friend Flim Ponyville. Cutie mark Adagio Dazzle Smarty Pants, Twilight Sparkle laugher honesty Dr Hooves clop magic Discord Ponyville dragon Lord Tirek friends. Braeburn pie Goldie Delicious Princess Cadance Mrs. Cake Rarity Maud Pie Flam party Ms. Harshwhinny Big McIntosh Matilda Gilda Soarin pegasus. Big McIntosh Winona Caramel Princess Cadance.\r\n\r\nIt needs to be about 20% cooler. Apples Steven Magnet Flam horn, Ms. Peachbottom Queen Chrysalis Flim Pinkie Pie Rainbow Dash Lord Tirek Aria Blaze. Clop Big McIntosh friends Dr. Caballeron Adagio Dazzle, Apple Jack Aria Blaze Fancy Pants honesty flank Matilda Bon Bon Lord Tirek. Snails Dr. Caballeron Dr Hooves Seabreeze horn Trixie Aria Blaze Mayor Mare. Aria Blaze pie Coco Pommel, harmony Rainbow Dash Filthy Rich Photo Finish Silver Shill Pinkie Pie Queen Chrysalis. Coco Pommel horn Shining Armor Maud Pie Scootaloo. It needs to be about 20% cooler.',
        '5be745ad476be-images (1).jpg',
        1),
       (6,
        'toto',
        'Granny Smith Braeburn Canterlot Everfree Forest Pound Cake Lightning Dust Prince Blueblood Pipsqueak Apple Bloom sun. Seabreeze chaos King Sombra Diamond Tiara, friendship unicorn Parasprite Derpy. And then I said &quot;Oatmeal? Are you crazy?&quot; Hooves Prince Blueblood Flim pie Gilda wing. Party Matilda Hoity Toity Sunset Shimmer wing cupcake Canterlot Snips apples Pound Cake Adagio Dazzle muffin Bloomberg Lightning Dust. Twilight Sparkle friend Lord Tirek Coco Pommel Wonderbolts Steven Magnet Big McIntosh Nightmare Moon Gummy friendship pies Seabreeze Adagio Dazzle Soarin Bon Bon. Shining Armor pony waterfall kindness Photo Finish hoof elements of harmony Apple Bloom Aria Blaze Princess Cadance Dr Hooves Vinyl Scratch Seabreeze.\r\n\r\nFeatherweight Braeburn Equestria breezies Ponyville Cheerilee Scootaloo Opalescence Princess Celestia Twist friendship Daring Do rainbow Lyra Dr Hooves. You\'re going to love me! Cupcakes Owlowiscious pies Steven Magnet. Derpy Angel unicorn, chaos Fluttershy Discord kindness Adagio Dazzle Coco Pommel breezies Soarin Diamond Tiara cutie mark. Pipsqueak moon Princess Celestia kindness Braeburn King Sombra sun Silver Shill Lightning Dust. Bon Bon Lord Tirek Babs Seed Filthy Rich generosity magic Smarty Pants Mayor Mare Braeburn.',
        '5be7463a6151e-my-little-pony-the-movie.jpg',
        1),
       (7,
        'petit poney 2',
        'Twist Snips Ponyville elements of harmony Lightning Dust Diamond Tiara chaos King Sombra Owlowiscious Snails harmony. Zecora unicorn Opalescence, Seabreeze Pipsqueak Silver Shill Gummy Suri Polomare Coco Pommel Shadowbolts breezies Shining Armor. Dr Hooves Snails Shining Armor Bloomberg hot air balloon Lord Tirek tail friend Equestria. Everfree Forest Gummy Sunset Shimmer Featherweight Lyra, Cherry Jubilee muffins Princess Celestia Spitfire Twist Queen Chrysalis apple Vinyl Scratch Shining Armor cupcake. Gryphon sun hot air balloon, harmony Fluttershy friendship Canterlot moon party Adagio Dazzle pony Opalescence Cherry Jubilee.\r\n\r\nSnips alicorn Twilight Sparkle chaos party. Pegasai loyalty party, hay Princess Cadance clop Trenderhoof Mrs. Cake Lord Tirek Donut Joe. Muffin elements of harmony pies Apple Jack Princess Luna Lord Tirek Snails. Friend Queen Chrysalis clop Tank Gummy Shining Armor Steven Magnet Silver Spoon breezies Derpy Sweetie Drops Cherry Jubilee. Wing moon Featherweight Rainbow Dash Twilight Sparkle Ahuizotl Flim elements of harmony Matilda honesty chaos apple loyalty Princess Celestia.',
        '5be857198fe1e-mlp-film.jpg',
        1);

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id`       int(11)                         NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content`  longtext CHARACTER SET utf8     NOT NULL,
  `article`  int(11)                         NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article` (`article`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article`) REFERENCES `articles` (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

INSERT INTO `comments` (`id`, `username`, `content`, `article`)
VALUES (1, 'test', 'test commentaire', 2),
       (2, 'damien', 'test de commentaire', 2),
       (5, 'damien', 'je fais des test', 1),
       (7, 'damien', 'test', 2);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id`       int(11)      NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO `users` (`id`, `username`, `password`)
VALUES (1, 'damien', '$2y$12$s/wGRary2Xq31SiSd3j3Pu5Muiy5ne5Is96FEiPQj06n5hmgSj0kS');

-- 2018-11-11 17:11:52
