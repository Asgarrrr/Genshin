-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql-genshin.alwaysdata.net
-- Generation Time: Dec 15, 2020 at 05:16 PM
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
  `Name` varchar(50) DEFAULT NULL,
  `Element` int(11) DEFAULT NULL,
  `WeaponType` int(11) DEFAULT NULL,
  `Rarity` int(11) DEFAULT NULL,
  `Tiers` int(11) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `SArtefacts` int(11) DEFAULT NULL,
  `_IDArtefact` int(11) DEFAULT NULL,
  `_IDArme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`_ID`, `Name`, `Element`, `WeaponType`, `Rarity`, `Tiers`, `Description`, `SArtefacts`, `_IDArtefact`, `_IDArme`) VALUES
(1, 'Amber', 1, 1, 4, 0, '', 0, 0, 0);

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
(12, 'Blackcliff Longsword', 1, 4, 44, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(13, 'Traveler\'s Handy Sword', 1, 3, 40, 'DEF', NULL, 'Journey', 'Each Elemental Orb or Particle collected restores 1/1.25/1.5/1.75/2% HP.', 'Chest'),
(14, 'Skyrider Sword', 1, 3, 38, 'Energy Recharge', NULL, 'Determination', 'Using an Elemental Burst grants a 12/15/18/21/24% increase in ATK and Movement SPD for 12s.', 'Gacha'),
(15, 'Harbinger of Dawn', 1, 3, 39, 'CRIT DMG', NULL, 'Vigorous', 'When HP is above 90%, increases CRIT Rate by 14/18/22/24/28%.', 'Gacha'),
(16, 'Fillet Blade', 1, 3, 39, 'ATK', NULL, 'Gash', 'On hit, has 50% chance to deal 240/280/320/360/400% ATK DMG to a single enemy. Can only occur once every 15/14/13/12/11s.', 'Gacha'),
(17, 'Dark Iron Sword', 1, 3, 40, 'Elemental Mastery', NULL, 'Overloaded', 'Upon causing an Overloaded, Superconduct, Electro-Charged, or an Electro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha'),
(18, 'Cool Steel', 1, 3, 39, 'ATK', NULL, 'Bane of Water and Ice', 'Increases DMG against enemies affected by Hydro or Cryo by 12/15/18/21/24%.', 'Gacha'),
(19, 'Silver Sword', 1, 2, 33, '', NULL, '', '', 'Chest'),
(20, 'Dull Blade', 1, 1, 23, '', NULL, '', '', 'Chest'),
(21, 'Vortex Vanquisher\r\n', 2, 5, 46, 'ATK', NULL, 'Golden Majesty', 'Increases Shield Strength by 20/25/30/35/40%, scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield this ATK increase effect is increased by 100%.', 'Gacha'),
(22, 'Skyward Spine', 2, 5, 48, 'Energy Recharge', NULL, 'Black Wing', 'Increases CRIT Rate by 8% and increases Normal ATK SPD by 12%. Additionally, Normal and Charged Attacks hits on enemies have a 50% chance to trigger a vacuum blade that deals 40% of ATK as DMG in a small AoE. This effect can occur no more than once every 2s.', 'Gacha'),
(23, 'Primordial Jade Winged-Spear', 2, 5, 48, 'CRIT Rate', NULL, 'Eagle Spear of Justice', 'On hit, increases ATK by 3.2/3.9/4.6/5.3/6% for 6s. Max 7 stacks. Can only occur once every 0.3s. Full stacks increase Skill DMG by 12/16/20/24/28%.', 'Gacha'),
(24, 'Kunwu\'s Iris Rift', 2, 5, 46, 'ATK', NULL, 'Rainbow-Piercing Stinger', 'Increases Normal Attack SPD by 10/12/14/16/18%. Increases DMG against enemies affected by any element by 24/30/36/42/48%.', 'Gacha'),
(25, 'Royal Spear', 2, 4, 44, 'ATK', NULL, 'Focus', 'Upon damaging an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(26, 'Prototype Grudge', 2, 4, 42, 'Energy Recharge', NULL, 'Magic Affinity', 'After using an Elemental Skill, increases Normal and Charged Attack DMG by 8% for 12s. Max 2 stacks.', 'Crafting'),
(27, 'Lithic Spear', 2, 4, 42, 'Physical DMG Bonus', NULL, 'Lithic Axiom - Subjugating Evil', 'Normal Attack hits have a 20% chance of causing the next Charged Attack performed in the following 10s to deal 40% increased DMG.', 'Gacha'),
(28, 'Favonius Lance', 2, 4, 44, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(29, 'Dragon\'s Bane', 2, 4, 41, 'Elemental Mastery', NULL, 'Bane of Flame and Water', 'Increases DMG against enemies affected by Hydro or Pyro by 20/24/28/32/36%.', 'Gacha'),
(30, 'Deathmatch', 2, 4, 41, 'CRIT Rate', NULL, 'Gladiator', 'If there are at least 2 opponents nearby, ATK is increased by 16% and DEF is increased by 16%. If there are less than 2 enemies nearby, ATK is increased by 24%.', 'BP Bounty'),
(31, 'Crescent Pike', 2, 4, 44, 'Physical DMG Bonus', NULL, 'Infusion Needle', 'After picking up an Elemental Orb/Particle, Normal and Charged Attacks deal an additional 20% ATK as DMG for 5s.', 'Crafting'),
(32, 'Blackcliff Pole', 2, 4, 42, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(33, 'White Tassel', 2, 3, 39, 'CRIT Rate', NULL, 'Sharp', 'Increases Normal Attack DMG by 24/30/36/42/48%.', 'Chest'),
(34, 'Halberd', 2, 3, 40, 'ATK', NULL, 'Heavy', 'Normal Attacks deal an additional 160/200/240/280/320% DMG. Can only occur once every 10s.', 'Gacha'),
(35, 'Black Tassel', 2, 3, 38, 'HP', NULL, 'Bane of the Soft', 'Increases DMG against slimes by 40/50/60/70/80%.', 'Gacha'),
(36, 'Iron Point', 2, 2, 33, '', NULL, '', '', 'Chest'),
(37, 'Beginner\'s Protector', 2, 1, 23, '', NULL, '', '', 'Gacha'),
(38, 'Wolf\'s Gravestone', 3, 5, 46, 'ATK', NULL, 'Wolfish Tracker', 'Increases Base ATK by 20/25/30/35/40%. On hit, attacks against enemies with less than 30% HP increase all party members\' Base ATK by 40/50/60/70/80% for 12s. Can only occur once every 30s.', 'Gacha'),
(39, 'The Unforged', 3, 5, 46, 'ATK', NULL, 'Golden Majesty', '\r\nIncreases Shield Strength by 20%, scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield this ATK increase effect is increased by 100%', 'Gacha'),
(40, 'Skyward Pride', 3, 5, 45, 'Energy Recharge', NULL, 'Sky-Ripping Dragon Spine', 'Increases all DMG by 8/10/12/14/16%. After using an Elemental Burst, Normal or Charged Attack, on hit, creates a vacuum blade that does 80/100/120/140/160% Physical DMG to enemies along its path. Lasts for 20s or 8 vacuum blades.', 'Gacha'),
(41, 'Whiteblind', 3, 4, 42, 'DEF', NULL, 'Infusion Blade', 'On hit, Normal or Charged Attacks increase Base ATK and DEF by 6/7.5/9/10.5/12% for 6s. Max 4 stacks. Can only occur once every 0.5s.', 'Crafting'),
(42, 'The Bell', 3, 4, 42, 'HP', NULL, 'Rebellious Guardian', 'Taking DMG generates a shield which absorbs DMG up to 20/23/26/29/32% of Max HP. This shield lasts for 10s or until broken, and can only be triggered once every 45s. While protected by the shield, the character gains 12/15/18/21/24% increased DMG.', 'Gacha'),
(43, 'Serpent Spine', 3, 4, 42, 'CRIT Rate', NULL, 'Wavesplitter', 'Every 4s a character is on the field, they will deal 6% more DMG and take 3% more DMG. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be cleared when the character takes DMG.', 'BP Bounty'),
(44, 'Sacrificial Greatsword\r\n', 3, 4, 44, 'Energy Recharge', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(45, 'Royal Greatsword', 3, 4, 43, 'ATK', NULL, 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(46, 'Rainslasher', 3, 4, 42, 'Elemental Mastery', NULL, 'Bane of Storm and Tide', 'Increases DMG against enemies affected by Hydro or Electro by 20/25/30/35/40%.', 'Gacha'),
(47, 'Prototype Aminus', 3, 4, 44, 'ATK', NULL, 'Crush', 'On hit, Normal or Charged Attacks have a 50% chance to deal an additional 240/300/360/420/480% ATK DMG to enemies within a small radius. Can only occur once every 15s.', 'Crafting'),
(48, 'Lithic Blade', 3, 4, 41, 'CRIT DMG', NULL, 'Lithic Axiom - Unity', 'For every character in the party who hails from Liyue, the character who equips this weapon gains 6/7/8/9/10% ATK increase and 2/3/4/5/6% CRIT Rate increase.', 'Gacha'),
(49, 'Favonius Greatsword\r\n', 3, 4, 41, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(50, 'Blackcliff SlasherBlackcliff Slasher', 3, 4, 42, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(51, 'White Iron Greatsword', 3, 3, 39, 'DEF', NULL, 'Cull the Weak', 'Defeating an opponent restores 8/10/12/14/16% HP.', 'Gacha'),
(52, 'Skyrider Greatsword', 3, 3, 39, 'Physical DMG Bonus', NULL, 'Courage', 'On hit, Normal or Charged Attacks increase ATK by 6/7/8/9/10% for 6s. Max 4 stacks. Can only occur once every 0.5s.', 'Gacha'),
(53, 'Quartz', 3, 3, 40, ' Elemental Mastery', NULL, 'Residual Heat', 'Upon causing an Overloaded, Melt, Burning, Vaporize, or a Pyro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha'),
(54, 'Ferrous ShadowFerrous Shadow', 3, 3, 39, 'HP', NULL, 'Unbending', 'When HP falls below 70/75/80/85/90%, increases Charged Attack DMG by 30/35/40/45/50%, and Charged Attacks become much harder to interrupt.', 'Gacha'),
(55, 'Debate Club', 3, 3, 39, 'ATK', NULL, 'Blunt Conclusion', 'After using an Elemental Skill, Normal or Charged Attacks, on hit, deal an additional 60/75/90/105/120% ATK DMG in a small area. Effect lasts 15s. DMG can only occur once every 3s.', 'Gacha'),
(56, 'Bloodtainted Greatsword', 3, 3, 38, 'Elemental Mastery', NULL, 'Bane of Fire and Thunder', 'Increases DMG against enemies affected by Pyro or Electro by 12/15/18/21/24%.', 'Gacha'),
(57, 'Old Merc\'s Pal', 3, 2, 33, '', NULL, '', '', 'Chest'),
(58, 'Waster Greatsword', 3, 1, 23, '', NULL, '', '', 'Chest'),
(59, 'Skyward Atlas', 4, 5, 45, 'ATK', NULL, 'Wandering Clouds', 'Increases Elemental DMG Bonus by 12/15/18/21/24%. Normal Attack hits have a 50% chance to earn the favor of the clouds. which actively seek out nearby enemies to attack for 15s, dealing 160/200/240/280/320% ATK DMG. Can only occur once every 30s.', 'Gacha'),
(60, 'Lost Prayer to the Sacred Winds', 4, 5, 44, ' CRIT Rate', NULL, 'Boundless Blessing', 'Increases Movement SPD by 10%. When in battle, earn a 6/8/10/12/14% Elemental DMG Bonus every 4s. Max 4 stacks. Lasts until the character falls or leaves combat.', 'Gacha'),
(61, 'Memory of Dust', 4, 5, 46, 'ATK', NULL, 'Golden Majesty', 'Increase Shield Strength by 20/25/30/35/40%. Scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', 'Gacha'),
(62, 'Wine and Song', 4, 4, 42, 'Energy Recharge', NULL, 'Wind in the Square', 'For every character in the party who hails from Mondstadt, the character who equips this weapon gains 8/10/12/14/16% ATK increase and 3/3.5/4/4.5/5% Movement SPD increase.', 'Gacha'),
(63, 'The Widsith', 4, 4, 42, 'CRIT DMG', NULL, 'Debut', 'When the character takes the field, they gain a random theme song for 10s:\r\nRecitative: Increases Base ATK by 60%\r\nInterlude: Elemental Mastery is increased by 240\r\nAria: Increases all Elemental DMG by 48%\r\nCan only occur once every 30s', 'Gacha'),
(64, 'Solar Pearl', 4, 4, 42, ' CRIT Rate', NULL, 'Solar Shine', 'Normal Attack hits increase Elemental Skill and Elemental Burst DMG by 20/25/30/35/40% for 6s. Likewise, Elemental Skill or Elemental Burst hits increase Normal Attack DMG by 20/25/30/35/40% for 6s.', 'BP Bounty'),
(65, 'Sacrificial Fragments\r\n', 4, 4, 41, 'Elemental Mastery', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(66, 'Royal Grimoire', 4, 4, 44, 'ATK', NULL, 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(67, 'Prototype Malice', 4, 4, 42, 'HP', NULL, 'Gilding', 'Using an Elemental Burst regenerates 4/4.5/5/5.5/6 Energy every 2s for 6s. Additionally, all party members will regenerate 4/4.5/5/5.5/6% HP every 2s for this duration.', 'Crafting'),
(68, 'Mappa Mare', 4, 4, 44, 'Elemental Mastery', NULL, 'Infusion Scroll', 'Triggering an Elemental reaction grants a 8/10/12/14/16% Elemental DMG Bonus for 10s. Max 2 stacks.', 'Crafting'),
(69, 'Favonius Codex', 4, 4, 42, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(70, 'Eye of Perception', 4, 4, 41, 'ATK', NULL, 'Echo', 'Normal and Charged Attacks have a 50% chance to fire a Bolt of Perception, dealing 240/270/300/330/360% ATK as DMG. This bolt can bounce between enemies a maximum of 4 times. This effect can occur once every 12/11/10/9/8s.', 'Gacha'),
(71, 'Blackcliff Amulet', 4, 4, 42, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(72, 'Twin Nephrite', 4, 3, 40, 'CRIT Rate', NULL, 'Guerilla Tactic', 'Defeating an enemy increases Movement SPD and ATK by 12/14/16/18/20% for 15s.', 'Gacha'),
(73, 'Thrilling Tales of Dragon Slayers', 4, 3, 39, 'HP', NULL, 'Legacy', 'When switching characters, the new character taking the field has their ATK increased by 24/30/36/42/48% for 10s. This effect can only occur once every 20s.', 'Gacha'),
(74, 'Otherworldly Story', 4, 3, 39, 'Energy Recharge', NULL, 'Energy Shower', 'Each Elemental Orb or Particle collected restores 1/1.25/1.5/1.75/2% HP.', 'Gacha'),
(75, 'Magic Guide', 4, 3, 38, 'Elemental Mastery', NULL, 'Bane of Storm and Tide', 'Increases DMG against enemies affected by Hydro or Electro by 12/15/18/21/24%.', 'Gacha'),
(76, 'Emerald Orb', 4, 3, 40, 'Elemental Mastery', NULL, 'Rapids', 'Upon causing a Vaporize, Electro-Charged, Frozen, or a Hydro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha'),
(77, 'Amber Catalyst', 4, 3, 40, 'Elemental Mastery', NULL, 'Elemental Mastery', 'Normal Attack hits increase all Elemental DMG by 6/7.5/9/10.5/12% for 6s. Max 2 stacks.', 'Gacha'),
(78, 'Pocket Grimoire', 4, 2, 33, '', NULL, '', '', 'Gacha'),
(79, 'Apprentice\'s Notes', 4, 1, 23, '', NULL, '', '', 'Gacha');

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
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Weapons`
--
ALTER TABLE `Weapons`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
