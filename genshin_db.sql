-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql-genshin.alwaysdata.net
-- Generation Time: Dec 15, 2020 at 11:17 AM
-- Server version: 10.5.5-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genshin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artefact`
--

CREATE TABLE `Artefact` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `1P` varchar(1000) NOT NULL,
  `2P` varchar(1000) NOT NULL,
  `4P` varchar(1000) NOT NULL,
  `RarityMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Artefact`
--

INSERT INTO `Artefact` (`_ID`, `Name`, `1P`, `2P`, `4P`, `RarityMax`) VALUES
(1, 'Wanderer\'s Troupe', '', 'Elemental Mastery +80.', 'Increases Charged Attack DMG by 35% if the character uses a Catalyst or Bow.', 5),
(2, 'Viridescent Venerer', '', 'Gain a 15% Anemo DMG Bonus.', 'Increases Swirl DMG by 60%. Decreases opponent\'s Elemental RES to the element infused in the Swirl by 40% for 10s.', 5),
(3, 'Thundersoother', '', 'Electro RES increased by 40%.', 'Increases DMG against enemies affected by Electro by 35%.', 5),
(4, 'Thundering Fury', '', 'Gain a 15% Electro DMG Bonus.\r\n', 'Increases damage caused by Overloaded, Electro-Charged, and Superconduct DMG by 40%. Triggering such effects decreases Elemental Skill CD by 1s. Can only occur once every 0.8s.', 5),
(5, 'Retracing Bolide', '', 'Increases Shield Strength by 35%.', 'While protected by a shield, gain an additional 40% Normal and Charged Attack DMG.', 5),
(6, 'Noblesse Oblige', '', 'Elemental Burst DMG +20%.', 'Using an Elemental Burst increase all party memebers\' ATK by 20% for 12s. This effect cannot stack.', 5),
(7, 'Maiden Beloved', '', 'Character Healing Effectiveness +15%.', 'Using an Elemental Skill or Burst increases healing received by all party members by 20% for 10s.', 5),
(8, 'Lavawalker', '', 'Pyro RES increased by 40%.', 'Increases DMG against enemies that are Burning or affected by Pyro by 35%.', 5),
(9, 'Gladiator\'s Finale', '', 'ATK +18%.', 'If the wielder of this artifact set uses a Sword, Claymore or Polearm, increases their Normal Attack DMG by 35%.', 5),
(10, 'Crimson Witch of Flames', '', 'Gain a 15% Pyro DMG Bonus.', 'Increases Overloaded and Burning DMG by 40%. Increases Vaporize and Melt DMG by 15%. Using an Elemental Skill increases 2-Piece Set effects by 50% for 10s. Max 3 stacks.', 5),
(11, 'Bloodstained Chivalry', '', 'Physical DMG +25%.', 'After defeating an opponent, increases Charged Attack DMG by 50%, and reduces its Stamina cost to 0 for 10s.', 5),
(12, 'Archaic Petra', '', 'Gain a 15% Geo DMG Bonus.', 'Upon obtaining an Elemental Shard created through a Crystallize Reaction, all party members gain a 35% DMG Bonus for that particular element for 10s. Only one form of Elemental DMG Bonus can be gained in this manner at any one time.', 5),
(13, 'Tiny Miracle', '', 'All Elemental RES increased by 20%.', 'Incoming elemental DMG increases corresponding Elemental RES by 30% for 10s. Can only occur once every 10s.', 4),
(14, 'The Exile', '', 'Energy Recharge +20%.', 'Using an Elemental Burst regenerates 2 Energy for other party members every 2s for 6s. This effect cannot stack.', 4),
(15, 'Scholar', '', 'Energy Recharge +20%.', 'Gaining Energy gives 3 Energy to all party members who have a bow or a catalyst equipped. Can only occurs once every 3s.', 4),
(16, 'Resolution of Sojourner', '', 'ATK +18%.', 'Increases Charged Attack CRIT Rate by 30%.', 4),
(17, 'Martial Artist', '', 'Increases Normal Attack and Charged Attack DMG by 15%.', 'After using Elemental Skill, increases Normal Attack and Charged Attack DMG by 25% for 8s.', 4),
(18, 'Instructor', '', 'Increases Elemental Mastery by 80.', 'After using Elemental Skill, increases all party members\' Elemental Mastery by 120 for 8s.', 4),
(19, 'Gambler', '', 'Elemental Skill DMG increased by 20%.', 'Defeating an enemy has 100% chance to remove Elemental Skill CD. Can only occur once every 15s.', 4),
(20, 'Defender\'s Will', '', 'Base DEF +30%.', 'Increases Elemental RES by 30% for each element present in the party.', 4),
(21, 'Brave Heart', '', 'ATK +18%.', 'Increases DMG by 30% against enemies with more than 50% HP.', 4),
(22, 'Berserker', '', 'CRIT Rate +12%.', 'When HP is below 70%, CRIT Rate increases by an additional 24%.', 4),
(23, 'Traveling Doctor', '', 'Increases incoming healing by 20%.', 'Using Elemental Burst restores 20% HP.', 3),
(24, 'Lucky Dog', '', 'DEF increased by 100.', 'Picking up Mora restores 300 HP.', 3),
(25, 'Adventurer', '', 'Max HP increased by 1,000.', 'Opening chest regenerates 30% Max HP over 5s.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE `Characters` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Element` int(11) NOT NULL,
  `WeaponType` int(11) NOT NULL,
  `Rarity` int(11) NOT NULL,
  `Tiers` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `SArtefacts` int(11) NOT NULL,
  `_IDArtefact` int(11) NOT NULL,
  `_IDArme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `_ID` int(11) NOT NULL,
  `Pseudo` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Weapons`
--

CREATE TABLE `Weapons` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` int(11) NOT NULL,
  `Rarity` int(11) NOT NULL,
  `MSValue` int(11) NOT NULL,
  `SStat` varchar(30) NOT NULL,
  `SSValue` float DEFAULT NULL,
  `Passive` varchar(100) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `Location` varchar(100) NOT NULL DEFAULT 'Gacha'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Weapons`
--

INSERT INTO `Weapons` (`_ID`, `Name`, `Type`, `Rarity`, `MSValue`, `SStat`, `SSValue`, `Passive`, `Description`, `Location`) VALUES
(1, 'Skyward Blade', 1, 5, 44, 'Energy Recharge', NULL, 'Sky-Piercing Fang', 'CRIT Rate increased by 4%. Gains Skypiercing Might upon using an Elemental Burst:\r\nIncreases Movement SPD by 10%, increases ATK SPD by 10%, and increases the DMG of Normal and Charged Attack hits by 20% for 12s.', 'Gacha'),
(2, 'Aquila Favonia', 1, 5, 48, 'Physical DMG Bonus', NULL, 'Falcon\'s Defiance', 'ATK is increased by 20/25/30/35/40%. Triggers on taking DMG: the soul of the Falcon of the West awakens, holding the banner of the resistance aloft, regenerating HP equal to 100/115/130/145/160% of ATK and dealing 200/230/260/290/320% of ATK as DMG to surrounding enemies. This effect can only occur once every 15s.', 'Gacha'),
(3, 'The Flute', 1, 4, 42, 'ATK', NULL, 'Chord', 'Normal or Charged Attacks grant Harmonic on hits. Gaining 5 Harmonics triggers the power of music and deals 100/125/150/175/200% ATK DMG to surrounding enemies. Harmonics last up to 30s, and a maximum of 1 can be gained every 0.5s.', 'Gacha'),
(4, 'The Black Sword', 1, 4, 42, 'CRIT Rate', NULL, 'Justice', 'Increases DMG dealt by Normal and Charged Attacks by 20%.\r\nAdditionally, regenerates 60% of ATK as HP when Normal and Charged Attacks score a CRIT Hit. This effect can occur once every 5s.', 'BP Bounty'),
(5, 'The Alley Flash', 1, 4, 44, 'CRIT Rate', NULL, 'Itinerant Hero', 'Continuously sprinting for at least 1s increases ATK by 28% for 6s. This effect cannot stack.', 'Gacha'),
(6, 'Sacrificial Sword', 1, 4, 41, 'Energy Recharge', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(7, 'Royal Longsword', 1, 4, 42, 'ATK', NULL, 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(8, 'Prototype Rancour', 1, 4, 44, 'Physical DMG Bonus', NULL, 'Smashed Stone', 'On hit, Normal or Charged Attacks increase Base ATK and DEF by 4/4.5/5/5.5/6% for 6s. Max 4 stacks. Can only occur once every 0.3s.', 'Crafting'),
(9, 'Lion\'s Roar', 1, 4, 42, 'ATK', NULL, 'Bane of Fire and Thunder', 'Increases DMG against enemies affected by Pyro or Electro by 20/24/28/32/36%.', 'Gacha'),
(10, 'Iron Sting', 1, 4, 42, 'Elemental Mastery', NULL, 'Infusion Stinger', 'Dealing Elemental DMG increases all DMG by 6% for 6s. Max 2 stacks. Can only occur once every 1s.', 'Crafting'),
(11, 'Favonius Sword', 1, 4, 41, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(12, 'Blackcliff Longsword', 1, 4, 44, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artefact`
--
ALTER TABLE `Artefact`
  ADD PRIMARY KEY (`_ID`);

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD UNIQUE KEY `_ID` (`_ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`_ID`);

--
-- Indexes for table `Weapons`
--
ALTER TABLE `Weapons`
  ADD PRIMARY KEY (`_ID`),
  ADD UNIQUE KEY `_ID` (`_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Artefact`
--
ALTER TABLE `Artefact`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Characters`
--
ALTER TABLE `Characters`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Weapons`
--
ALTER TABLE `Weapons`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
