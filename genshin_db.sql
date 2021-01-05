-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: mysql-genshin.alwaysdata.net
-- Generation Time: Jan 05, 2021 at 04:06 PM
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
  `_GID` int(11) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Pieces` int(11) DEFAULT 5,
  `1P` varchar(1000) NOT NULL,
  `2P` varchar(1000) NOT NULL,
  `4P` varchar(1000) NOT NULL,
  `RarityMax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Artefact`
--

INSERT INTO `Artefact` (`_ID`, `_GID`, `Name`, `Pieces`, `1P`, `2P`, `4P`, `RarityMax`) VALUES
(1, 15003, 'Wanderer\'s Troupe', 5, '', 'Elemental Mastery +80.', 'Increases Charged Attack DMG by 35% if the character uses a Catalyst or Bow.', 5),
(2, 15002, 'Viridescent Venerer', 5, '', 'Gain a 15% Anemo DMG Bonus.', 'Increases Swirl DMG by 60%. Decreases opponent\'s Elemental RES to the element infused in the Swirl by 40% for 10s.', 5),
(3, 14002, 'Thundersoother', 5, '', 'Electro RES increased by 40%.', 'Increases DMG against enemies affected by Electro by 35%.', 5),
(4, 15005, 'Thundering Fury', 5, '', 'Gain a 15% Electro DMG Bonus.\r\n', 'Increases damage caused by Overloaded, Electro-Charged, and Superconduct DMG by 40%. Triggering such effects decreases Elemental Skill CD by 1s. Can only occur once every 0.8s.', 5),
(5, 19012, 'Retracing Bolide', 5, '', 'Increases Shield Strength by 35%.', 'While protected by a shield, gain an additional 40% Normal and Charged Attack DMG.', 5),
(6, 15007, 'Noblesse Oblige', 5, '', 'Elemental Burst DMG +20%.', 'Using an Elemental Burst increase all party memebers\' ATK by 20% for 12s. This effect cannot stack.', 5),
(7, 14004, 'Maiden Beloved', 5, '', 'Character Healing Effectiveness +15%.', 'Using an Elemental Skill or Burst increases healing received by all party members by 20% for 10s.', 5),
(8, 14003, 'Lavawalker', 5, '', 'Pyro RES increased by 40%.', 'Increases DMG against enemies that are Burning or affected by Pyro by 35%.', 5),
(9, 15001, 'Gladiator\'s Finale', 5, '', 'ATK +18%.', 'If the wielder of this artifact set uses a Sword, Claymore or Polearm, increases their Normal Attack DMG by 35%.', 5),
(10, 15006, 'Crimson Witch of Flames', 5, '', 'Gain a 15% Pyro DMG Bonus.', 'Increases Overloaded and Burning DMG by 40%. Increases Vaporize and Melt DMG by 15%. Using an Elemental Skill increases 2-Piece Set effects by 50% for 10s. Max 3 stacks.', 5),
(11, 15008, 'Bloodstained Chivalry', 5, '', 'Physical DMG +25%.', 'After defeating an opponent, increases Charged Attack DMG by 50%, and reduces its Stamina cost to 0 for 10s.', 5),
(12, 19013, 'Archaic Petra', 5, '', 'Gain a 15% Geo DMG Bonus.', 'Upon obtaining an Elemental Shard created through a Crystallize Reaction, all party members gain a 35% DMG Bonus for that particular element for 10s. Only one form of Elemental DMG Bonus can be gained in this manner at any one time.', 5),
(13, 10004, 'Tiny Miracle', 5, '', 'All Elemental RES increased by 20%.', 'Incoming elemental DMG increases corresponding Elemental RES by 30% for 10s. Can only occur once every 10s.', 4),
(14, 10009, 'The Exile', 5, '', 'Energy Recharge +20%.', 'Using an Elemental Burst regenerates 2 Energy for other party members every 2s for 6s. This effect cannot stack.', 4),
(15, 10012, 'Scholar', 5, '', 'Energy Recharge +20%.', 'Gaining Energy gives 3 Energy to all party members who have a bow or a catalyst equipped. Can only occurs once every 3s.', 4),
(16, 10001, 'Resolution of Sojourner', 5, '', 'ATK +18%.', 'Increases Charged Attack CRIT Rate by 30%.', 4),
(17, 10006, 'Martial Artist', 5, '', 'Increases Normal Attack and Charged Attack DMG by 15%.', 'After using Elemental Skill, increases Normal Attack and Charged Attack DMG by 25% for 8s.', 4),
(18, 10007, 'Instructor', 5, '', 'Increases Elemental Mastery by 80.', 'After using Elemental Skill, increases all party members\' Elemental Mastery by 120 for 8s.', 4),
(19, 10008, 'Gambler', 5, '', 'Elemental Skill DMG increased by 20%.', 'Defeating an enemy has 100% chance to remove Elemental Skill CD. Can only occur once every 15s.', 4),
(20, 10003, 'Defender\'s Will', 5, '', 'Base DEF +30%.', 'Increases Elemental RES by 30% for each element present in the party.', 4),
(21, 10002, 'Brave Heart', 5, '', 'ATK +18%.', 'Increases DMG by 30% against enemies with more than 50% HP.', 4),
(22, 10005, 'Berserker', 5, '', 'CRIT Rate +12%.', 'When HP is below 70%, CRIT Rate increases by an additional 24%.', 4),
(23, 10013, 'Traveling Doctor', 5, '', 'Increases incoming healing by 20%.', 'Using Elemental Burst restores 20% HP.', 3),
(24, 10011, 'Lucky Dog', 5, '', 'DEF increased by 100.', 'Picking up Mora restores 300 HP.', 3),
(25, 10010, 'Adventurer', 5, '', 'Max HP increased by 1,000.', 'Opening chest regenerates 30% Max HP over 5s.', 3),
(26, NULL, 'Heart of Depth', 5, '', 'Hydro DMG Bonus +15%', 'After using Elemental Skill, increases Normal Attack and Charged Attack DMG by 30% for 15s.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Box`
--

CREATE TABLE `Box` (
  `_IDBox` int(11) NOT NULL,
  `_IDUser` int(11) NOT NULL,
  `_IDCharacter` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Box`
--

INSERT INTO `Box` (`_IDBox`, `_IDUser`, `_IDCharacter`) VALUES
(6, 8, 'Razor'),
(9, 8, 'Klee'),
(10, 8, 'Xinyan'),
(11, 11, 'Xinyan'),
(12, 11, 'Jean'),
(13, 12, 'Fischl'),
(14, 12, 'Xiangling'),
(15, 12, 'Traveler (Anemo)'),
(16, 12, 'Ningguang');

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE `Characters` (
  `_ID` varchar(50) NOT NULL,
  `Element` varchar(10) DEFAULT NULL,
  `WeaponType` varchar(10) DEFAULT NULL,
  `Rarity` int(11) DEFAULT NULL,
  `Tiers` int(11) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `_IDArtefact` int(11) DEFAULT NULL,
  `_IDArtefact2` int(11) DEFAULT NULL,
  `_IDArme` int(11) DEFAULT NULL,
  `Skill1` int(11) DEFAULT NULL,
  `Skill2` int(11) DEFAULT NULL,
  `Skill3` int(11) DEFAULT NULL,
  `_IDPassive1` int(11) DEFAULT NULL,
  `_IDPassive2` int(11) DEFAULT NULL,
  `_IDPassive3` int(11) DEFAULT NULL,
  `_IDConstellations1` int(11) DEFAULT NULL,
  `_IDConstellations2` int(11) DEFAULT NULL,
  `_IDConstellations3` int(11) DEFAULT NULL,
  `_IDConstellations4` int(11) DEFAULT NULL,
  `_IDConstellations5` int(11) DEFAULT NULL,
  `_IDConstellations6` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`_ID`, `Element`, `WeaponType`, `Rarity`, `Tiers`, `Description`, `_IDArtefact`, `_IDArtefact2`, `_IDArme`, `Skill1`, `Skill2`, `Skill3`, `_IDPassive1`, `_IDPassive2`, `_IDPassive3`, `_IDConstellations1`, `_IDConstellations2`, `_IDConstellations3`, `_IDConstellations4`, `_IDConstellations5`, `_IDConstellations6`) VALUES
('Albedo', 'Geo', 'Sword', 5, NULL, 'Albedo — an alchemist based in Mondstadt, in the service of the Knights of Favonius.\r\n\r\n\"Genius,\" \"Kreideprinz,\" or \"Captain of the Investigation Team\"... Such titles and honors are of no consequence to him when there is so much more research to conduct.\r\n\r\nThe pursuit of fortune and connections cannot hold a candle to his heart\'s desire — acquiring the limitless, obscure knowledge left behind by previous generations of scholars.', 12, 6, 0, 89, 90, 91, 83, 84, 89, 169, 170, 171, 172, 173, 174),
('Amber', 'Pyro', 'Bow', 4, NULL, 'Always energetic and full of life, Amber\'s the best - albeit only - Outrider of the Knights of Favonius.', 6, NULL, 79, 1, 2, 3, 1, 2, 3, 1, 2, 3, 4, 5, 6),
('Barbara', 'Hydro', 'Catalyst', 4, NULL, 'Every denizen of Mondstadt adores Barbara. However, she learned the word \"idol\" from a magazine.', 7, NULL, 66, 4, 5, 6, 4, 5, 6, 7, 8, 9, 10, 11, 12),
('Beidou', 'Electro', 'Claymore', 4, NULL, 'Beidou is the leader of the Crux — an armed fleet based in Liyue Harbor. An armed fleet means exactly what it sounds like: a fleet of ships armed to the teeth.', 9, NULL, 37, 7, 8, 9, 7, 8, 9, 13, 14, 15, 16, 17, 18),
('Bennett', 'Pyro', 'Sword', 4, NULL, 'A righteous and good-natured adventurer from Mondstadt who\'s unfortunately extremely unlucky.', 6, NULL, 0, 10, 11, 12, 10, 11, 12, 19, 20, 21, 22, 23, 24),
('Chongyun', 'Cryo', 'Claymore', 4, NULL, 'A young exortcist from a family of exorcists. He does everything he can to suppress his pure positive energy.', 6, NULL, 39, 13, 14, 15, 13, 14, 15, 25, 26, 27, 28, 29, 30),
('Diluc', 'Pyro', 'Claymore', 5, NULL, 'The tycoon of a winery empire in Mondstadt, unmatched in every possible way.', 10, NULL, 37, 16, 17, 18, 16, 17, 18, 31, 32, 33, 34, 35, 36),
('Diona', 'Cryo', 'Bow', 4, NULL, 'The incredibly popular bartender of the Cat\'s Tail tavern, rising star of Mondstadt\'s wine industry, and the greatest challenger to its traditional powerhouses.\r\n\r\nA feisty feline young lady from Springvale, any drink mixed by Diona\'s hand tastes delicious beyond belief.\r\n\r\nYet given her extreme distaste for alcohol, is her talent a blessing or a curse?', 7, NULL, 83, 19, 20, 21, 19, 20, 21, 37, 38, 39, 40, 41, 42),
('Fischl', 'Electro', 'Bow', 4, NULL, 'A mysterious girl who calls herself \"Prinzessia der Verurteilung\" and travels with a night raven named Oz.', 4, NULL, 79, 22, 23, 24, 22, 23, 24, 43, 44, 45, 46, 47, 48),
('Jean', 'Anemo', 'Sword', 5, NULL, 'The righteous and rigorous Dandelion Knight, and Acting Grand Master of the Knights of Favonius in Mondstadt.', 6, NULL, 0, 25, 26, 27, 25, 26, 27, 49, 50, 51, 52, 53, 54),
('Kaeya', 'Cryo', 'Sword', 4, NULL, 'A thinker in the Knights of Favonius with a somewhat exotic appearance.', 6, NULL, 0, 28, 29, 30, 28, 29, 30, 55, 56, 57, 58, 59, 60),
('Keqing', 'Electro', 'Sword', 5, NULL, 'The Yuheng of the Liyue Qixing. Has much to say about Rex Lapis\' unilateral approach to policymaking in Liyue - but in truth, gods admire skeptics such as her quite a lot.', 4, NULL, 3, 31, 32, 33, 31, 32, 33, 61, 62, 63, 64, 65, 66),
('Klee', 'Pyro', 'Catalyst', 5, NULL, 'An explosives expert and a regular at the Knights of Favonius\' confinement room. Also known as Fleeing Sunlight.', 10, NULL, 58, 34, 35, 36, 34, 35, 36, 67, 68, 69, 70, 71, 72),
('Lisa', 'Electro', 'Catalyst', 4, NULL, 'The languid but knowledgeable Librarian of the Knights of Favonius who was deemed by Sumeru Academia to be their most distinguised graduate in the past two centuries.', 6, NULL, 58, 37, 38, 39, 37, 38, 39, 73, 74, 75, 76, 77, 78),
('Mona', 'Hydro', 'Catalyst', 5, NULL, 'A mysterious young astrologer who proclaims herself to be \"Astrologist Mona Megistus,\" and who possesses abilities to match the title.\r\n\r\nThough she is often strapped for cash and lives a life of thrift, she is resolved to never use astrology for profit... It is this very resolution that has caused her to constantly fret about money.', 6, NULL, 58, 40, 41, 42, 40, 41, 42, 79, 80, 81, 82, 83, 84),
('Ningguang', 'Geo', 'Catalyst', 4, NULL, 'The Tianquan of Liyue Qixing. Her wealth is unsurpassed in all of Teyvat.', 12, 9, 59, 44, 45, 46, 43, 44, 45, 85, 86, 87, 88, 89, 90),
('Noelle', 'Geo', 'Claymore', 4, NULL, 'A maid in the service of the Knights of Favonius that dreams of joining their ranks someday.', 7, 5, 39, 47, 48, 49, 46, 47, 48, 91, 92, 93, 94, 95, 96),
('Qiqi', 'Cryo', 'Sword', 5, NULL, 'An apprentice and herb-picker Bubu Pharmacy. An undead with a bone-white complexion, she seldom has much in the way of words or emotion.', 7, NULL, 0, 50, 51, 52, 49, 50, 51, 97, 98, 99, 100, 101, 102),
('Razor', 'Electro', 'Claymore', 4, NULL, 'A boy who lives among the wolves in Wolvendom of Mondstadt, away from human civilization. As agile as lightning.', 9, NULL, 37, 53, 54, 55, 52, 53, 54, 103, 104, 105, 106, 107, 108),
('Sucrose', 'Anemo', 'Catalyst', 4, NULL, 'An alchemist filled with curiosity about all things. She researches bio-alchemy.', 2, NULL, NULL, 56, 57, 58, 55, 56, 57, 109, 110, 111, 112, 113, 114),
('Tartaglia', 'Hydro', 'Bow', 5, NULL, 'No. 11 of The Harbingers, also known as \"Childe\". His name is highly feared on the battlefield.', NULL, NULL, 79, 59, 60, 61, 58, 59, 60, 115, 116, 117, 118, 119, 120),
('Traveler (Anemo)', 'Anemo', 'Sword', 5, NULL, 'A traveler from another world who had their only kin taken away, forcing them to embark on a journey to find The Seven.', 2, NULL, 0, 62, 63, 64, 61, 62, NULL, 121, 122, 123, 124, 125, 126),
('Traveler (Geo)', 'Geo', 'Sword', 5, NULL, 'A traveler from another world who had their only kin taken away, forcing them to embark on a journey to find The Seven.', 12, NULL, 0, 65, 66, 67, 63, 64, NULL, 127, 128, 129, 130, 131, 132),
('Venti', 'Anemo', 'Bow', 5, NULL, 'One of the many bards of Mondstadt, who freely wanders the city\'s streets and alleys.', 2, NULL, 82, 68, 69, 70, 65, 66, 67, 133, 134, 135, 136, 137, 138),
('Xiangling', 'Pyro', 'Polearm', 4, NULL, 'A renowned chef from Liyue. She\'s extremely passionate about cooking and excels at making her signature hot and spicy dishes.', 10, NULL, 21, 71, 72, 73, 68, 69, 70, 139, 140, 141, 142, 143, 144),
('Xiao', 'Anemo', 'Polearm', 5, NULL, 'A yaksha adeptus that defends Liyue. Also heralded as the \"Conqueror of Demons\" or \"Vigilant Yaksha.\"', 9, NULL, 22, 74, 75, 76, 71, 72, 73, 145, 146, 147, 148, 149, 150),
('Xingqiu', 'Hydro', 'Sword', 4, NULL, 'A young man carrying a longsword who is frequently seen at book booths. He has a chivalrous heart and yearns for justice and fairness for all.', 6, NULL, 5, 77, 78, 79, 74, 75, 76, 151, 152, 153, 154, 155, 156),
('Xinyan', 'Pyro', 'Claymore', 4, NULL, 'Liyue\'s sole rock \'n\' roll musician. She rebels against ossified prejudices using her music and passionate singing.', 9, NULL, 37, 80, 81, 82, 77, 78, 79, 157, 158, 159, 160, 161, 162),
('Zhongli', 'Geo', 'Polearm', 5, NULL, 'Wangsheng Funeral Parlor mysterious consultant. Handsome, elegant, and surpassingly learned.<br>\r\nThough no one knows where Zhongli is from, he is a master of courtesy and rules. From his seat at Wangsheng Funeral Parlor, he performs all manner of rituals.', 6, NULL, 30, 83, 84, 85, 80, 81, 82, 163, 164, 165, 166, 167, 168);

-- --------------------------------------------------------

--
-- Table structure for table `Constellations`
--

CREATE TABLE `Constellations` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(5000) DEFAULT NULL,
  `_IDCharacter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Constellations`
--

INSERT INTO `Constellations` (`_ID`, `Name`, `Description`, `_IDCharacter`) VALUES
(1, 'One Arrow to Rule Them All', 'Fires 2 arrows per Aimed Shot. The second arrow deals 20% of the first arrow\'s DMG.', 'Amber'),
(2, 'Bunny Triggered', 'Baron Bunny, new and improved! Hitting Baron Bunny\'s foot with a fully-charged Aimed Shot manually detonates it.\n<br>\nExplosion via manual detonation deals 200% additional DMG.', 'Amber'),
(3, 'It Burns!', 'Increases the Level of Fiery Rain by 3.<br>\nMaximum upgrade level is 15.', 'Amber'),
(4, 'It\'s Not Just Any Doll...', 'Decreases Explosive Puppet\'s CD by 20%. Adds 1 additional charge.', 'Amber'),
(5, 'It\'s Baron Bunny!', 'Increase the Level of Explosive Puppet by 3.<br>\nMaximum upgrade level is 15.', 'Amber'),
(6, 'Wildfire', 'Fiery Rain increases Amber\'s Movement SPD by 15% and Base ATK by 15% for 10s.', 'Amber'),
(7, 'Gleeful Songs', 'Barbara regenerates 1 Energy every 10s.', 'Barbara'),
(8, 'Vitality Burst', 'Decreases the CD of Let the Show Begin by 15%.\n<br>\nDuring the ability\'s duration, the current character gains 15% Hydro DMG Bonus.', 'Barbara'),
(9, 'Star of Tomorrow', 'Increases the Level of Shining Miracle by 3.<br>\nMaximum upgrade level is 15.', 'Barbara'),
(10, 'Attentiveness be My Power', 'Every enemy hit by Barbara\'s Charged Attack regenerates 1 Energy for her. A maximum of 5 energy can be regenerated in this manner with any one Charged Attack.', 'Barbara'),
(11, 'The Purest Companionship', 'Increase the Level of Let the Show Begin by 3.<br>\nMaximum upgrade level is 15.', 'Barbara'),
(12, 'Dedicating Everything to You', 'When Barbara is not on the field, and the character in play falls:\n<ul>\n<li>Automatically revives this character.</li>\n</ul>\nFully regenerates this characters HP by 100%.\n<br>\nThis effect can only occur once every 15 mins.', 'Barbara'),
(13, 'Sea Beast\'s Scourge', 'When Stormbreaker is used:\n<br>\nCreates a shield that absorbs up to 16% of Beidou\'s Max HP for 15s.\n<br>\nThis shield absorbs Electro DMG 250% more effectively.', 'Beidou'),
(14, 'Upon the Turbulent Sea, the Thunder Arises', 'Stormbreaker\'s arc lightning can jump 2 additional targets.', 'Beidou'),
(15, 'Summoner of Storm', 'Increases the Level of Tidecaller by 3.<br>\nMaximum upgrade level is 15.', 'Beidou'),
(16, 'Stunning Revenge', 'Within 10s of taking DMG, Beidou\'s Normal Attacks gain 20% additional Electro DMG.', 'Beidou'),
(17, 'Crimson Tidewalker', 'Increase the Level of Stormbreaker by 3.<br>\nMaximum upgrade level is 15.', 'Beidou'),
(18, 'Bane of Evil', 'During the duration of Stormbreaker, the Electro RES of surrounding enemies is decreased by 15%.', 'Beidou'),
(19, 'Grand Expectation', 'Fantastic Voyage\'s ATK increases no longer has an HP restriction, and gains an additional 20% Base ATK.', 'Bennett'),
(20, 'Impasse Conqueror', 'When Bennett\'s HP falls below 70%, his Energy Recharge is increased by 30%.', 'Bennett'),
(21, 'Unstoppable Fervor', 'Increases the Level of Passion Overload by 3.<br>\nMaximum upgrade level is 15.', 'Bennett'),
(22, 'Unexpected Odyssey', 'Using a Normal Attack when executing the second attack of Passion Overload\'s Charge Level 1 allows an additional attack to be performed. This additional attack does 135% of the second attack\'s DMG.', 'Bennett'),
(23, 'True Explorer', 'Increase the Level of Fantastic Voyage by 3.<br>\nMaximum upgrade level is 15.', 'Bennett'),
(24, 'Fire Ventures with Me', 'Sword, Claymore, or Polearm-wielding characters inside Fantastic Voyage\'s radius gain a 15% Pyro DMG Bonus. Normal and Charged Attacks now do Pyro DMG.', 'Bennett'),
(25, 'Ice Unleashed', 'The last attack of Chongyun\'s Normal Attack combo releases 3 ice blades. Each blade deals 50% of Chongyun\'s ATK as Cryo DMG to all enemies in its path.', 'Chongyun'),
(26, 'Atmospheric Revolution', 'Elemental Skills and Elemental Bursts cast within the Frost Field created by Spirit Blade - Chongyun\'s Layered Frost have their CD time decreased by 15%.', 'Chongyun'),
(27, 'Cloudburst', 'Increases the Level of Spirit Blade - Cloud-parting Star by 3.<br>\nMaximum upgrade level is 15.', 'Chongyun'),
(28, 'Frozen Skies', 'Chongyun regenerates 1 Energy every time he hits an enemy affected by Cold or Frozen status effects.\n<br>\nThis effect can only occur once every 2s.', 'Chongyun'),
(29, 'The True Path', 'Increases the level of Spirit Blade - Chongyun\'s Layered Frost by 3.<br>\nMaximum upgrade level is 15.', 'Chongyun'),
(30, 'Rally of Four Blades', 'Spirit Blade - Cloud-parting Star deals 15% more DMG to enemies with a lower percentage of their Max HP remaining than Chongyun.\n<br>\nThis skill will also summon 1 additional spirt blade.', 'Chongyun'),
(31, 'Conviction', 'Diluc deals 15% more DMG to enemies whose HP is above 50%.', 'Diluc'),
(32, 'Searing Ember', 'When Diluc takes DMG, his Base ATK increases by 10% and his ATK SPD increases by 5%. Lasts for 10s.\n<br>\nThis effect can stack up to 3 times and can only occur once every 1.5s.', 'Diluc'),
(33, 'Steel and Fire', 'Increases the Level of Searing Onslaught by 3.<br>\nMaximum upgrade level is 15.', 'Diluc'),
(34, 'Flowing Flame', 'Casting Searing Onslaught in sequence greatly increases damage dealt.\n<br>\nWithin 2s of using Searing Onslaught, casting the next Searing Onslaught in the combo deals 40% additional DMG. This effect lasts for the next 2s.', 'Diluc'),
(35, 'Phoenix, Harbinger of Dawn', 'Increases the level of Dawn by 3.<br>\nMaximum upgrade level is 15.', 'Diluc'),
(36, 'Flaming Sword, Nemesis of Dark', 'After casting Searing Onslaught, the next 2 Normal Attacks within the next 6s will have their DMG and ATK SPD increased by 30%.\n<br>\nAdditionally, Searing Onslaught will not interrupt the Normal Attack combo.', 'Diluc'),
(37, 'A Lingering Flavor', 'Regenerates 15 Energy for Diona after the effects of Signature Mix end.', 'Diona'),
(38, 'Shaken, Not Purred', 'Increases Icy Paws\' DMG by 15%, and increases its shield\'s DMG Absorption by 15%. Additionally, when paws hit their targets, creates a shield for other nearby characters on the field with 50% of the Icy Paws shield\'s DMG Absorption for 5s.', 'Diona'),
(39, 'A-Another Round?', 'Increases the Level of Signature Mix by 3.<br>\nMaximum upgrade level is 15.', 'Diona'),
(40, 'Wine Industry Slayer', 'Within the radius of Signature Mix, Diona\'s charge time for aimed shots is reduced by 60%.', 'Diona'),
(41, 'Double Shot, On The Rocks', 'Increases the level of Icy Paws by 3.<br>\nMaximum upgrade level is 15.', 'Diona'),
(42, 'Cat\'s Tail Closing Time', 'Characters within Signature Mix\'s radius will gain the following effects based on their HP amounts:\n<ul>\n<li>Increasing Incoming Healing Bonus by 30% when HP falls below or is equal to 50%.</li>\n<li>Elemental Mastery is increased by 200 when HP is above 50%.</li>\n</ul>', 'Diona'),
(43, 'Gaze of the Deep', 'Even when Oz is not present in combat, he can still watch over Fischl through his raven eyes. When Fischl attacks an enemy, Oz fires a joint attack, dealing 22% of ATK DMG.', 'Fischl'),
(44, 'Devourer of All-Sins', 'When Nightrider is used, it deals an additional 200% ATK as DMG, and its AoE is increased by 50%.', 'Fischl'),
(45, 'Wings of Nightmare', 'Increases the Level of Nightrider by 3.<br>\nMaximum upgrade level is 15.', 'Fischl'),
(46, 'Her Pilgrimage of Bleak', 'When Midnight Phatasmagoria is used, it deals 222% of ATK as Electro DMG to surrounding enemies.\n<br>\nWhen the skill duration ends, Fischl regenerates 20% of her HP.', 'Fischl'),
(47, 'Against the Fleeing Light', 'Increase the Level of Midnight Phantasmagoria by 3.<br>\nMaximum upgrade level is 15.', 'Fischl'),
(48, 'Evernight Raven', 'Increases the duration of Oz\'s summoning by 2s. Additionally, Oz attacks with the current character when present, dealing 30% of Fischl\'s ATK as Electro DMG.', 'Fischl'),
(49, 'Spiraling Tempest', 'Increases the pulling speed of Gale Blade after holding for more than 1s, and increases the DMG dealt by 40%.', 'Jean'),
(50, 'People\'s Aegis', 'When Jean picks up an Elemental Orb/Particle, all party members have their Movement SPD and ATK SPD increased by 15% for 15s.', 'Jean'),
(51, 'When the West Wind Arises', 'Increases the Level of Dandelion Breeze by 3.<br>\nMaximum upgrade level is 15.', 'Jean'),
(52, 'Lands of Dandelion', 'Within the Field created by Dandelion Breeze, all enemies have their Anemo RES decreased by 40%.', 'Jean'),
(53, 'Outbursting Gust', 'Increase the Level of Gale Blade by 3.<br>\nMaximum upgrade level is 15.', 'Jean'),
(54, 'Lion\'s Fang, Fair Protector of Mondstadt', 'Incoming DMG is decreased by 35% within the Field created by Dandelion Breeze. Upon leaving the Dandelion Field, this effect lasts for 3 attacks or 10s.', 'Jean'),
(55, 'Excellent Blood', 'The CRIT Rate of Normal Attack and Charged Attack DMG against enemies affected by the Cold or Frozen status effects is increased by 15%.', 'Kaeya'),
(56, 'Never-Ending Performance', 'Every time Glacial Waltz defeats an enemy, its duration is increased by 2.5s, up to a maximum of 15s.', 'Kaeya'),
(57, 'Dance of Frost', 'Increases the Level of Frostgnaw by 3.<br>\nMaximum upgrade level is 15.', 'Kaeya'),
(58, 'Frozen Kiss', 'Triggers automatically when Kaeya\'s HP falls below 20%:\n<br>\nCreates a shield that absorbs damage equal to 30% of Kaeya\'s Max HP. Lasts for 20s.\n<br>\nThis shield absorbs Cryo DMG with 250% efficiency.\n<br>\nCan only occur once every 60s.', 'Kaeya'),
(59, 'Frostbiting Embrace', 'Increase the Level of Glacial Waltz by 3.<br>\nMaximum upgrade level is 15.', 'Kaeya'),
(60, 'Glacial Whirlwind', 'Glacial Waltz will generate 1 additional icicle, and will regenerate 15 Energy when cast.', 'Kaeya'),
(61, 'Thundering Might', 'Recasting Stellar Restoration while a Lightning Stiletto is present causes Keqing to deal 50% of her ATK as AoE Electro DMG at the start point and terminus of her Blink.', 'Keqing'),
(62, 'Keen Extraction', 'When Keqing\'s Normal and Charged Attack\'s hit enemies affected by Electro, they have a 50% chance of producing an Elemental Particle. This effect can only  occur once every 5s.', 'Keqing'),
(63, 'Forseen Reformation', 'Increases the Level of Starward Sword by 3.<br>\nMaximum upgrade level is 15.', 'Keqing'),
(64, 'Attunement', 'For 10s after Keqing triggers an Electro-related Elemental Reaction, her ATK is increased by 25%.', 'Keqing'),
(65, 'Beckoning Stars', 'Increase the Level of Stellar Restoration by 3.<br>\nMaximum upgrade level is 15.', 'Keqing'),
(66, 'Tenacious Star', 'When initiating a Normal Attack, Charged Attack, Elemental Skill or Elemental Burst, Keqing gains a 6% Electro DMG Bonus for 8s. Effects triggered by Normal Attacks, Charged Attacks, Elemental Skills and Elemental Bursts are considered independent entities.', 'Keqing'),
(67, 'Chained Reaction', 'Attacks and Skills have a certain chance to summon a spark that bombards enemies, dealing DMG equal to 120% of Sparks \'n\' Splash\'s DMG.', 'Klee'),
(68, 'Explosive Frags', 'Being hit by Jumpy Dumpty\'s mines decreases enemy DEF by 23% for 10s.', 'Klee'),
(69, 'Exquisite Compound', 'Increases the Level of Jumpy Dumpty by 3.<br>\nMaximum upgrade level is 15.', 'Klee'),
(70, 'Sparkly Explosion', 'If Klee leaves the field during the duration of Sparks \'n\' Splash, her departure triggers an explosion that deals 555% of her ATK as AoE Pyro DMG.', 'Klee'),
(71, 'Nova Burst', 'Increase the Level of Sparks \'n\' Splash by 3.<br>\nMaximum upgrade level is 15.', 'Klee'),
(72, 'Blazing Delight', 'While under the effects of Sparks \'n\' Splash, other members of the party will continuously regenerate Energy.\n<br>\nWhen Sparks \'n\' Splash is used, all party members will gain 10% Pyro DMG Bonus for 25s.', 'Klee'),
(73, 'Infinite Circuit', 'Lisa recovers 2 Energy for every opponent hit while holding Violet Arc.\n<br>\nA maximum of 10 Energy can be regenerated in this manner at any one time.', 'Lisa'),
(74, 'Electromagnetic Field', 'Holding Violet Arc has the following effects:\n<ul>\n<li>Increases DEF by 25%.</li>\r\n<li>Increases Lisa\'s resistance to interruption.</li>\n</ul>', 'Lisa'),
(75, 'Resonant Thunder', 'Increases the Level of Lightning Rose by 3.<br>\nMaximum upgrade level is 15.', 'Lisa'),
(76, 'Plasma Eruption', 'Increases the number of lightning bolts released by Lightning Rose by 1-3.', 'Lisa'),
(77, 'Electrocute', 'Increase the Level of Violet Arc by 3.<br>\nMaximum upgrade level is 15.', 'Lisa'),
(78, 'Pulsating Witch', 'When Lisa takes the field, she applies 3 stacks of Violet Arc\'s Conductive status onto nearby enemies.\n<br>\nThis effect can only occur once every 5s.', 'Lisa'),
(79, 'Prophecy of Submersion', 'The effects of Hydro-related Elemental Reactions are enhanced for 8s after a character hits an enemy affected by an Omen:\n<ul>\n<li>Electro-Charged DMG is increased by 15%.</li>\n<li>Vaporize DMG is increased by 15%.</li>\n<li>Hydro Swirl DMG is increased by 15%.</li>\n<li>The duration for which enemies are Frozen is increased by 15%.</li>\n</ul>', 'Mona'),
(80, 'Lunar Chain', 'When a Normal Attack hits, there is a 20% chance that it will be automatically followed by a Charged Attack.\n<br>\nThis effect can only occur once every 5s.', 'Mona'),
(81, 'Restless Revolution', 'Increases the Level of Stellaris Phantasm by 3.<br>\nMaximum upgrade level is 15.', 'Mona'),
(82, 'Prophecy of Oblivion', 'When a character attacks an enemy affected by the Omen status effect, their CRIT Rate is increased by 15%.', 'Mona'),
(83, 'Mockery of Fortuna', 'Increase the Level of Mirror Reflection of Doom by 3.<br>\nMaximum upgrade level is 15.', 'Mona'),
(84, 'Rhetorics of Calamitas', 'Upon entering Illusory Torrent, Mona gain a 60% increase to the DMG her next Charged Attack per second of movement.\n<br>\nA maximum DMG Bonus of 180% can be achieved in this manner. The effect lasts for no more than 8s.', 'Mona'),
(85, 'Piercing Fragments', 'When a Normal Attack hits, it deals AoE DMG.', 'Ningguang'),
(86, 'Shock Effect', 'When Jade Screen is shattered, its CD will reset.\n<br>\nCan occur once every 6s.', 'Ningguang'),
(87, 'Majesty be the Array of Stars', 'Increases the Level of Starshatter by 3.<br>\nMaximum upgrade level is 15.', 'Ningguang'),
(88, 'Exquisite be the Jade, Outshining All the Beneath', 'Jade Screen increases nearby characters\' Elemental RES by 10%.', 'Ningguang'),
(89, 'Invincible be the Jade Screen', 'Increase the Level of Jade Screen by 3.<br>\nMaximum upgrade level is 15.', 'Ningguang'),
(90, 'Grandeur be the Seven Stars', 'When Starshatter is used, Ningguang gains 7 Star Jades.', 'Ningguang'),
(91, 'I Got Your Back', 'While Sweeping Time and Breastplate are both in effect, the chance of Breastplate\'s healing effects activating is increased to 100%.', 'Noelle'),
(92, 'Combat Maid', 'Decreases the Stamina Consumption of Noelle\'s Charged Attacks by 20% and increases her Charged Attack DMG by 15%.', 'Noelle'),
(93, 'Invulnerable Maid', 'Increases the Level of Breastplate by 3.<br>\nMaximum upgrade level is 15.', 'Noelle'),
(94, 'To Be Cleaned', 'When Breastplate\'s duration expires or it is destroyed by DMG, it will deal 400% ATK of Geo DMG to surrounding enemies.', 'Noelle'),
(95, 'Favonius Sweeper Master', 'Increase the Level of Sweeping Time by 3.<br>\nMaximum upgrade level is 15.', 'Noelle'),
(96, 'Must Be Spotless', 'Sweeping Time increases Noelle\'s ATK by an additional 50% of her DEF.\n<br>\nAdditionally, every enemy defeated during the skill\'s duration adds 1s to the duration, up to 10s.', 'Noelle'),
(97, 'Ascetics of Frost', 'When the Herald of Frost hits an enemy marked by a Fortune-Preserving Talisman, Qiqi regenerates 2 Energy.', 'Qiqi'),
(98, 'Frozen to the Bone', 'Qiqi\'s Normal and Charge Attack DMG against enemies affected by Cryo is increased by 15%.', 'Qiqi'),
(99, 'Ascendant Praise', 'Increases the Level of Adeptus Art: Preserver of Fortune by 3.<br>\nMaximum upgrade level is 15.', 'Qiqi'),
(100, 'Divine Suppression', 'Targets marked by the Fortune-Preserving Talisman have their ATK decreased by 20%.', 'Qiqi'),
(101, 'Crimson Lotus Bloom', 'Increase the Level of Adeptus Art: Herald of Frost by 3.<br>\nMaximum upgrade level is 15.', 'Qiqi'),
(102, 'Rite of Resurrection', 'Using Adeptus Art: Preserve of Fortune revives all nearby fallen characters and regenerates 50% of their HP.\n<br>\nThis effect can only occur once every 15 mins.', 'Qiqi'),
(103, 'Wolf\'s Instinct', 'Picking up an Elemental Orb or Particle increases Razor\'s DMG by 10% for 8s.', 'Razor'),
(104, 'Suppression', 'Increases CRIT Rate against enemies with less than 30% HP by 10%.', 'Razor'),
(105, 'Soul Companion', 'Increases the Level of Lightning Fang by 3.<br>\nMaximum upgrade level is 15.', 'Razor'),
(106, 'Bite', 'When casting Claw and Thunder (Press), enemies hit will have their DEF decreased by 15% for 7s.', 'Razor'),
(107, 'Sharpened Claws', 'Increase the Level of Claw and Thunder by 3.<br>\nMaximum upgrade level is 15.', 'Razor'),
(108, 'Lupus Fulguris', 'Every 10s, Razor\'s sword charges up, causing the next Normal Attack to release lightning that deals 100% of Razor\'s ATK as Electro DMG.\n<br>\nWhen Razor is not using Lightning Fang, a lightning strike on an enemy will grant Razor an Electro Sigil for Claw and Thunder.', 'Razor'),
(109, 'Clustered Vacuum Field', 'Astable Anemohypostasis Creation - 6308 gains 1 additional charge.', 'Sucrose'),
(110, 'Beth - Unbound Form', 'The duration of Forbidden Creation - Isomer 75 / Type II is increased by 2s.', 'Sucrose'),
(111, 'Flawless Alchemistress', 'Increases the Level of Astable Anemohypostasis Creation - 6308 by 3.<br>\nMaximum upgrade level is 15.', 'Sucrose'),
(112, 'Alchemania', 'Every 7 Normal and Charged Attacks, Sucrose will reduce the CD of Astable Anemohypostasis Creation - 6308 by 1-7s.', 'Sucrose'),
(113, 'Caution: Standard Flask', 'Increase the Level of Forbidden Creation - Isomer 75 / Type II by 3.<br>\nMaximum upgrade level is 15.', 'Sucrose'),
(114, 'Chaotic Entropy', 'If Forbidden Creation - Isomer 75 / Type II triggers an Elemental Absorption, all party members gain a 20% Elemental DMG Bonus for the corresponding absorbed element during its duration.', 'Sucrose'),
(115, 'Foul Legacy: Tide Withholder', 'Decreases the CD of Foul Legacy: Raging Tide by 20%.', 'Tartaglia'),
(116, 'Foul Legacy: Understream', 'When opponents affected by Riptide are defeated, Tartaglia regenerates 4 Elemental Energy.', 'Tartaglia'),
(117, 'Abyssal Mayhem: Vortex of Turmoil', 'Increases the Level of Foul Legacy: Raging Tide by 3.<br>\nMaximum upgrade level is 15.', 'Tartaglia'),
(118, 'Abyssal Mayhem: Hydrospout', 'If Tartaglia is in Foul Legacy: Raging Tide\'s Melee Stance, triggers Riptide Slash against opponents on the field affected by Riptide every 4s, otherwise, triggers Riptide Flash.<br>\nRiptide Slashes and Riptide Flashes triggered by this Constellation effect are not subject to the time intervals that would typically apply to these two Riptide effects, nor do they have any effect on those time intervals.', 'Tartaglia'),
(119, 'Havoc: Formless Blade', 'Increase the Level of Havoc: Obliteration by 3.<br>\nMaximum upgrade level is 15.', 'Tartaglia'),
(120, 'Havoc: Annihilation', 'When Havoc: Obliteration is cast in Melee Stance, the CD of Foul Legacy: Raging Tide is reset.<br>\nThis effect will only take place once Tartaglia returns to his Ranged Stance.', 'Tartaglia'),
(121, 'Raging Vortex', 'Palm Vortex pulls in enemies within a 5m radius.', 'Traveler (Anemo)'),
(122, 'Uprising Whirlwind', 'Increases Energy Recharge by 16%.', 'Traveler (Anemo)'),
(123, 'Sweeping Gust', 'Increases the Level of Gust Surge by 3.<br>\nMaximum upgrade level is 15.', 'Traveler (Anemo)'),
(124, 'Cherishing Breezes', 'Reduces DMG taken while casting Palm Vortex by 10%.', 'Traveler (Anemo)'),
(125, 'Vortex Stellaris', 'Increase the Level of Palm Vortex by 3.<br>\nMaximum upgrade level is 15.', 'Traveler (Anemo)'),
(126, 'Intertwined Winds', 'Targets who take DMG from Gust Surge have their Anemo RES decreased by 20%.\n<br>\nIf an Elemental Absorption occurred, then their RES towards the corresponding Element is also decreased by 20%.', 'Traveler (Anemo)'),
(127, 'Invincible Stonewall', 'Allies within the radius of Wake of Earth have their CRIT Rate increased by 10% and have increased resistance against interruption.', 'Traveler (Geo)'),
(128, 'Rockcore Meltdown', 'When the meteorite created by Starfell Sword is destroyed, it will also explode, dealing additional AoE Geo DMG equal to the amount of damage dealt by Starfell Sword.', 'Traveler (Geo)'),
(129, 'Will of the Rock', 'Increases the Level of Wake of Earth by 3.<br>\nMaximum upgrade level is 15.', 'Traveler (Geo)'),
(130, 'Reaction Force', 'The shockwave triggered by Wake of Earth regenerates 5 Energy for every enemy hit.\n<br></br>\nA maximum of 25 Energy can be recovered in this manner at any one time.', 'Traveler (Geo)'),
(131, 'Meteorite Impact', 'Increase the Level of Starfell Sword by 3.<br>\nMaximum upgrade level is 15.', 'Traveler (Geo)'),
(132, 'Everlasting Boulder', 'The barrier created by Wake of Earth lasts 5s longer.\n<br></br>\nThe meteorite created by Starfell Sword lasts 10s longer.', 'Traveler (Geo)'),
(133, 'Splitting Gale', 'Fires 2 additional arrows per Aimed Shot, each dealing 33% of the original arrow\'s DMG.', 'Venti'),
(134, 'Breeze of Reminiscence', 'Skyward Sonnet decreases enemy Anemo RES by 12% for 10s.\n<br>\nEnemies launched by Skyward Sonnet suffer an additional 12% Anemo RES and Physical RES decrease while airborne.', 'Venti'),
(135, 'Ode to Thousand Winds', 'Increases the Level of Wind\'s Grand Ode by 3.<br>\nMaximum upgrade level is 15.', 'Venti'),
(136, 'Hurricane of Freedom', 'When Venti picks up an Elemental Orb or Particle, he receives a 25% Anemo DMG Bonus for 10s.', 'Venti'),
(137, 'Concierto dal Cielo', 'Increase the Level of Skyward Sonnet by 3.<br>\nMaximum upgrade level is 15.', 'Venti'),
(138, 'Storm of Defiance', 'Targets who take DMG from Wind\'s Grand Ode have their Anemo RES decreased by 20%.\n<br>\nIf an Elemental Absorption occurred, then their RES towards the corresponding Element is also decreased by 20%.', 'Venti'),
(139, 'Crispy Outside, Tender Inside', 'Enemies hit by Guoba\'s attacks have their Pyro RES reduced by 15% for 6s.', 'Xiangling'),
(140, 'Oil Meets Fire', 'The last attack in a Normal Attack sequence applies the Implode status onto the enemy for 2s. An explosion will occur once this duration ends, dealing 75% of Xiangling\'s ATK as AoE Pyro DMG.', 'Xiangling'),
(141, 'Deepfry', 'Increases the Level of Pyronado by 3.<br>\nMaximum upgrade level is 15.', 'Xiangling'),
(142, 'Slowbake', 'Pyronado\'s duration is increased by 40%.', 'Xiangling'),
(143, 'Guoba Mad', 'Increase the Level of Guoba Attack by 3.<br>\nMaximum upgrade level is 15.', 'Xiangling'),
(144, 'Condensed Pyronado', 'For the duration of Pyronado, all party members receive a 15% Pyro DMG Bonus.', 'Xiangling'),
(145, 'Dissolution Eon - Destroyer of Worlds', 'Increases Lemniscatic Wind Cycling\'s charges by 1.', 'Xiao'),
(146, 'Annihilation Eon - Blossom of Kaleidos', 'When in party but not the currently active character, Xiao\'s Energy Recharge is increased by 25%.', 'Xiao'),
(147, 'Evil Conqueror - Wrath Deity', 'Increases the Level of Lemniscatic Wind Cycling by 3.<br>\nMaximum upgrade level is 15.', 'Xiao'),
(148, 'Transcension - Extinction of Suffering', 'When Xiao\'s HP falls below 50%, gains a 100% DEF Bonus.', 'Xiao'),
(149, 'Evolution Eon - Origin of Ignorance', 'Increase the Level of Bane of All Evil by 3.<br>\nMaximum upgrade level is 15.', 'Xiao'),
(150, 'Evil Conqueror - Vigilant Yaksha', 'During Bane of All Evil, hitting 2 or more enemies with a Charged Attack grants Lemniscatic Wind Cycling 1 additional charge and reduces Lemniscatic Wind Cycling\'s CD by 1s.', 'Xiao'),
(151, 'The Scent Remained', 'Increases the maximum number of Rain Swords by 1.', 'Xingqiu'),
(152, 'Rainbow Upon the Azure Sky', 'Extends the duration of Guhua Sword - Raincutter by 3s.\n<br>\nDecreases the Hydro RES of enemies hit by sword rain attacks by 15% for 4s.', 'Xingqiu'),
(153, 'Weaver of Verses', 'Increases the Level of Guhua Sword - Raincutter by 3.<br>\nMaximum upgrade level is 15.', 'Xingqiu'),
(154, 'Evilsoother', 'Throughout the duration of Guhua Sword: Raincutter, the DMG dealt by Guhua Sword: Fatal Rainscreen is increased by 50%.', 'Xingqiu'),
(155, 'Embrace of Rain', 'Increase the Level of Guhua Sword - Fatal Rainscreen by 3.<br>\nMaximum upgrade level is 15.', 'Xingqiu'),
(156, 'Hence, Call Them My Own Verses', 'Activating 2 of Guhua Sword - Raincutter\'s sword rain attacks greatly increases the DMG of the third. Xingqiu regenerates 3 Energy when sword rain attacks hit enemies.', 'Xingqiu'),
(157, 'Fatal Acceleration', 'Upon scoring a CRIT hit, increases ATK SPD of Xinyan\'s Normal and Charged Attacks by 12% for 5s.\n<br>\nCan only occur once every 5s.', 'Xinyan'),
(158, 'Impromptu Opening', 'Riff Revolution Physical DMG has its Crit rate increased by 100%, and will form a shield at Shield Level 3: Rave when cast.', 'Xinyan'),
(159, 'Double Stop', 'Increases the Level of Sweeping Fervor by 3.<br>\nMaximum upgrade level is 15.', 'Xinyan'),
(160, 'Wildfire Rhythm', 'Sweeping Fervor\'s swing DMG decrease opponents Physical RES by 15% for 12s.', 'Xinyan'),
(161, 'Screaming for Encore', 'Increases the Level of Riff Revolution by 3. Maximum upgrade level is 15.', 'Xinyan'),
(162, 'Rocking in Flaming', 'Decrease the stamina consumption of Xinyan Charged Attacks by 30%. Additionally, Xinyan Charged Attack gain an ATK bonus equal to 50% of her DEF.', 'Xinyan'),
(163, 'Rock, the Backbone of Earth', 'Increases the maximum number of Stone Steles created by Dominus Lapidis that may exist simultaneously by 2.', 'Zhongli'),
(164, 'Stone, the Cradle of Jade', 'Planet Befall grants nearby characters on the field a Jade Shield when it descends.', 'Zhongli'),
(165, 'Jade, Shimmering through Darkness', 'Increases the Level of Dominus Lapidis by 3.<br>\nMaximum upgrade level is 15.', 'Zhongli'),
(166, 'Topaz, Unbreakable and Fearless', 'Increases Planet Befall\'s AoE by 20% and increases the duration of Planet Befall\'s Petrification effect by 2s.', 'Zhongli'),
(167, 'Lazuli, Herald of the Order', 'Increase the Level of Planet Befall by 3.<br>\nMaximum upgrade level is 15.', 'Zhongli'),
(168, 'Chrysos, Bounty of Dominator', 'When the Jade Shield takes DMG, 40% of that incoming DMG is converted to HP for the current character.\n<br>\nA single instance of regeneration cannot exceed 8% of that character\'s Max HP.', 'Zhongli'),
(169, 'Flower of Eden', 'Transient Blossoms generated by Albedo\'s Abiogenesis: Solar Isotoma regenerate 1.2 Energy for Albedo.', 'Albedo'),
(170, 'Opening of Phanerozoic', '<p>Transient Blossoms generated by Abiogenesis: Solar Isotoma grant Albedo Fatal Reckoning for 30s:</p>\r\n<ul>\r\n<li>Each stack of Fatal Reckoning increases DMG by of Albedo\'s DEF.</li>\r\n<li>The effect stacks up to 4 times.</li>\r\n</ul>\r\n<p>Unleashing Rite of Progeniture: Tectonic Tide consumes all stacks of Fatal Reckoning, increasing the DMG dealt by the Tectonic Tide and Fatal Blossoms based on the number of stacks consumed.</p>', 'Albedo'),
(171, 'Grace of Helios', 'Increases the level of Abiogenesis: Solar Isotoma by 3.\r\nMaximum upgrade level is 15.', 'Albedo'),
(172, 'Descent of Divinity', 'Solar Isotoma increases Plunging Attack DMG by 30% for active party members within the AoE.', 'Albedo'),
(173, 'Tide of Hadaen', 'Increases the level of Rite of Progeniture: Tectonic Tide by 3.\r\nMaximum upgrade level is 15.', 'Albedo'),
(174, 'Dust of Purification', 'If active party members within the AoE are protected by a shield created by Crystallize, Solar Isotoma increases their DMG by 17%.', 'Albedo');

-- --------------------------------------------------------

--
-- Table structure for table `Passives`
--

CREATE TABLE `Passives` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Obtention` varchar(50) DEFAULT NULL,
  `Description` varchar(5000) DEFAULT NULL,
  `_IDCharacter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Passives`
--

INSERT INTO `Passives` (`_ID`, `Name`, `Obtention`, `Description`, `_IDCharacter`) VALUES
(1, 'Every Arrow Finds Its Target', 'Ascension 1', 'Increases the CRIT Rate of Fiery Rain by 10% and widens its AoE by 30%.', 'Amber'),
(2, 'Precise Shot', 'Ascension 4', 'Aimed Shot hits on weak spots increase Base ATK by 15% for 10s.', 'Amber'),
(3, 'Gliding Champion', NULL, 'Decreases all party members\' gliding Stamina Consumption by 20%.\n<br>\nThe greatest effect out of all Talents of the same type prevails.', 'Amber'),
(4, 'Glorious Season', 'Ascension 1', 'The Stamina Consumption of characters within Let the Show Begin\'s Melody Loop is reduced by 12%.', 'Barbara'),
(5, 'Encore', 'Ascension 4', 'When a character gains an Elemental Orb/Particle, the duration of Let the Show Begin\'s Melody Loop is extended by 1s.\n<br>\nThe maximum extension is 5s.', 'Barbara'),
(6, 'With My Whole Heart', NULL, 'When a Perfect Cooking is achieved on a dish with restorative effects, there is a 12% chance to obtain double the product.', 'Barbara'),
(7, 'Retribution', 'Ascension 1', 'Counterattacking with Tidecaller at the precise moment when the character is hit grants the maximum DMG Bonus.', 'Beidou'),
(8, 'Leviathan\'s Protection', 'Ascension 4', 'Gain the following effects for 10s after unleashing Tidecaller with its maximum DMG Bonus:\n<ul>\n<li>DMG dealt by Normal and Charged Attacks is increased by 15%. ATK SPD of Normal and Charged Attacks is increased by 15%.</li>\r\n<li>Greatly reduced delay before unleashing Charged Attacks.</li>\n</ul>', 'Beidou'),
(9, 'Conqueror of Tides', NULL, 'Decreases all party member\'s swimming Stamina consumption by 20%.', 'Beidou'),
(10, 'Rekindle', 'Ascension 1', 'Decreases Passion Overload\'s CD by 20%.', 'Bennett'),
(11, 'Fearnaught', 'Ascension 4', 'When inside the area created by Fantastic Voyage, Passion Overload takes on the following effects:\n<ul>\n<li>CD is reduced by 50%.</li>\n<li>Bennett will not be launched by the effects of Charge Level 2.</li>\n</ul>', 'Bennett'),
(12, 'It Should Be Safe...', NULL, 'When dispatched on an expedition in Mondstadt, time consumed is reduced by 25%.', 'Bennett'),
(13, 'Steady Breathing', 'Ascension 1', 'Sword, Claymore, or Polearm-wielding characters within the field created by Spirit Blade - Chonghua\'s Layered Frost have their Normal Attack SPD increased by 8%.', 'Chongyun'),
(14, 'Rimechaser Blade', 'Ascension 4', 'When the field created by Spirit Blade - Chonghua\'s Layered Frost disappears, another spirit will be summoned to strike nearby enemies, dealing 100% of Chonghua\'s Layered Frost\'s Skill DMG as AoE Cryo DMG. Enemies hit by this blade will have their Cryo RES decreased by 10% for 8s.', 'Chongyun'),
(15, 'Gallant Journey', NULL, 'When dispatched on an expedition in Liyue, time consumed is reduced by 25%.', 'Chongyun'),
(16, 'Relentless', 'Ascension 1', 'Diluc\'s Charged Attack Stamina Cost is decreased by 50%, and its duration is increased by 3s.', 'Diluc'),
(17, 'Blessing of Phoenix', 'Ascension 4', 'The Pyro Enchantment provided by Dawn lasts for 4s longer. Additionally, Diluc gains 20% Pyro DMG Bonus during the duration of this effect.', 'Diluc'),
(18, 'Tradition of the Dawn Knight', NULL, 'Refunds 15% of the ores used when crafting Claymore-type weapons.', 'Diluc'),
(19, 'Cat\'s Tail Secret Menu', 'Ascension 1', 'Characters shielded by Icy Paws have their Movement SPD increased by 10% and their Stamina Consumption decreased by 10%.', 'Diona'),
(20, 'Drunkard\'s Farce', 'Ascension 4', 'Opponents who enter the AoE of Signature Mix have 10% decreased ATK for 15s.', 'Diona'),
(21, 'Complimentary Bar Food', NULL, 'When a Perfect Cooking is achieved on a dish with restorative effects, there is a 12% chance to obtain double the product.', 'Diona'),
(22, 'Stellar Predator', 'Ascension 1', 'When Fischl hits Oz with a fully-charged Aimed Shot, Oz brings down Thundering Retribution, dealing AoE Electro DMG equal to 152.7% of the arrow\'s DMG.', 'Fischl'),
(23, 'Lightning Smite', 'Ascension 4', 'If a character triggers an Electro-related Elemental Reaction when Oz is on the field, the enemy shall be stricken with Thundering Retribution, dealing Electro DMG equal to 80% of Fischl\'s ATK.', 'Fischl'),
(24, 'Mein Hausgarten', NULL, 'When dispatched on an expedition in Mondstadt, time consumed is reduced by 25%.', 'Fischl'),
(25, 'Wind Companion', 'Ascension 1', 'Hits by Normal Attacks have a 50% chance to regenerate HP equal to 15% of Jean\'s ATK for all party members.', 'Jean'),
(26, 'Let the Wind Lead', 'Ascension 4', 'Using Dandelion Breeze will regenerate 20% of its Energy.', 'Jean'),
(27, 'Guiding Breeze', NULL, 'When a Perfect Cooking is achieved on a dish with restorative effects, there is a 12% chance to obtain double the product.', 'Jean'),
(28, 'Cold-Blooded Strike', 'Ascension 1', 'Every hit with Frostgnaw regenerates HP for Kaeya equal to 15% of ATK.', 'Kaeya'),
(29, 'Heart of the Abyss', 'Ascension 4', 'Enemies Frozen by Frostgnaw will drop additional Elemental Particles.\n<br>\nFrostgnaw may only produce a maximum of 2 additional Elemental Particles per use.', 'Kaeya'),
(30, 'Hidden Strength', NULL, 'Decreases all party member\'s sprinting Stamina consumption by 20%.', 'Kaeya'),
(31, 'Thundering Penance', 'Ascension 1', 'Within 5s of recasting Stellar Restoration while a Lightning Stiletto is present, Keqing\'s Normal and Charged Attacks are converted to Electro DMG.', 'Keqing'),
(32, 'Aristocratic Dignity', 'Ascension 4', 'When casting Starward Sword, Keqing\'s CRIT Rate is increased by 15%, and her Energy Recharge is increased by 15%. This effect lasts for 8s.', 'Keqing'),
(33, 'Land\'s Overseer', NULL, 'When dispatched on an expedition in Liyue, time consumed is reduced by 25%.', 'Keqing'),
(34, 'Pounding Surprise', 'Ascension 1', 'When Jumpy Dumpty and Normal Attacks deal DMG, Klee has a 50% chance to obtain an Explosive Spark. This Explosive Spark is consumed by the next Charged Attack, which costs no Stamina and deals 50% increased DMG.', 'Klee'),
(35, 'Sparkling Burst', 'Ascension 4', 'When a Charged Attack results in a CRIT, all party members gain 2 Elemental Energy.', 'Klee'),
(36, 'All Of My Treasures!', NULL, 'Displays the location of nearby resources unique to Mondstadt on the mini-map.', 'Klee'),
(37, 'Induced Aftershock', 'Ascension 1', 'Hits by charged Attacks apply Violet Arc\'s Conductive status to enemies.', 'Lisa'),
(38, 'Static Electricity Field', 'Ascension 4', 'Enemies hit by Lightning Rose have their DEF decreased by 15% for 10s.', 'Lisa'),
(39, 'General Pharmaceutics', NULL, 'When Lisa crafts a potion, she has a 20% chance to refund a portion of the crafting materials used.', 'Lisa'),
(40, 'Come \'n\' Get Me, Hag!', 'Ascension 1', 'After she has used Illusory Torrent for 2s, if there are any enemies nearby, Mona will automatically create a Phantom.\n<br>\nA Phantom created in this manner lasts for 2s, and its explosion DMG is equal to 50% of Mirror Reflection of Doom.', 'Mona'),
(41, 'Waterborne Destiny', 'Ascension 4', 'Increases Mona\'s Hydro DMG Bonus by a degree equivalent to 20% of her Energy Recharge rate.', 'Mona'),
(42, 'Principium of Astrology', NULL, 'When Mona crafts Weapon Ascension Materials, she has a 25% chance to refund a portion of the crafting materials used.', 'Mona'),
(43, 'Backup Plan', 'Ascension 1', 'When Ningguang is in possession of Star Jades, her Charged Attack does not consume Stamina.', 'Ningguang'),
(44, 'Strategic Reserve', 'Ascension 4', 'A character that passes through the Jade Screen will gain a 12% Geo DMG Bonus for 10s.', 'Ningguang'),
(45, 'Trove of Marvelous Treasure', NULL, 'Displays the location of nearby ore veins (Iron Ore, White Iron Ore, Crystal Ore, and Magical Crystal Ore) on the mini-map.', 'Ningguang'),
(46, 'Devotion', 'Ascension 1', 'When Noelle is in the party but not on the field, this ability triggers automatically when the active character\'s HP falls below 30%:\n<br>\nCreates a shield that lasts for 20s and absorbs DMG equal to 400% of Noelle\'s DEF. This effect can only occur once every 60s.', 'Noelle'),
(47, 'Nice and Clean', 'Ascension 4', 'Every 4 Normal or Charged Attack hits will decrease the CD of Breastplate by 1s.\n<br>\nHitting multiple enemies with a single attack is only counted as 1 hit.', 'Noelle'),
(48, 'Maid\'s Knighthood', NULL, 'When a Perfect Cooking is achieved on a DEF-boosting dish, Noelle has a 12% chance to obtain double the product.', 'Noelle'),
(49, 'Life-Prolonging Methods', 'Ascension 1', 'When a character under the effects of Adeptus Art: Herald of Frost triggers an Elemental Reaction, their Incoming Healing Bonus is increased by 20% for 8s.', 'Qiqi'),
(50, 'A Glimpse into Arcanum', 'Ascension 4', 'When Qiqi hits enemies with her Normal and Charged Attacks, she has a 50% chance to apply a Fortune-Preserving Talisman to them for 6s. This effect can only occur once every 30s.', 'Qiqi'),
(51, 'Former Life Memories', NULL, 'Displays the location of nearby resources unique to Liyue on the mini-map.', 'Qiqi'),
(52, 'Awakening', 'Ascension 1', 'Decreases Claw and Thunder\'s CD by 18%.\n<br>\nUsing Lightning Fang resets the CD of Claw and Thunder.', 'Razor'),
(53, 'Hunger', 'Ascension 4', 'When Razor\'s Energy is below 50%, increases Energy Recharge by 30%.', 'Razor'),
(54, 'Wolvensprint', NULL, 'Decreases all party member\'s sprinting Stamina Consumption by 20%.', 'Razor'),
(55, 'Catalyst Conversion', 'Ascension 1', 'When Sucrose triggers a Swirl effect, characters in the party with the matching element have their Elemental Mastery increased by 50 for 8s.', 'Sucrose'),
(56, 'Mollis Favonius', 'Ascension 4', 'When Astable Anemohypostatis Creation - 6308 or Forbidden Creation - Isomer 75 / Type II hit an enemy, increases other party member\'s Elemental Mastery based on 20% of Sucrose\'s Elemental Mastery for 8s.', 'Sucrose'),
(57, 'Astable Invention', NULL, 'When Sucrose crafts Character and Weapon Enhancement Materials, she has a 10% to obtain double the product.', 'Sucrose'),
(58, 'Never Ending', 'Ascension 1', 'Extends Riptide duration by 8s.', 'Tartaglia'),
(59, 'Sword of Torrents', 'Ascension 4', 'When Tartaglia is in Foul Legacy: Raging Tide\'s Melee Stance, or if his Normal and Charged Attacks do CRIT DMG, they will apply the Riptide status effect on the hit enemy.', 'Tartaglia'),
(60, 'Master of Weaponry', NULL, 'Increases your own party member\'s Normal Attack Level by 1.', 'Tartaglia'),
(61, 'Slitting Wind', 'Ascension 1', 'The last hit of a Normal Attack combo unleashes a wind blade, dealing 60% of ATK as Anemo DMG to all opponents in its path.', 'Traveler (Anemo)'),
(62, 'Second Wind', 'Ascension 4', 'Palm Vortex kills renegerate 2% HP for 5s. This effect can only occur once every 5s.', 'Traveler (Anemo)'),
(63, 'Shattered Darkrock', 'Ascension 1', 'Reduces Starfell Sword\'s CD by 2s.', 'Traveler (Geo)'),
(64, 'Frenzied Rockslide', 'Ascension 4', 'The final hit of a Normal Attack combo triggers a collapse, dealing 60% of ATK as AoE Geo DMG.', 'Traveler (Geo)'),
(65, 'Embrace of Winds', 'Ascension 1', 'Holding Skyward Sonnet creates an upcurrent that lasts for 20s.', 'Venti'),
(66, 'Stormeye', 'Ascension 4', 'Regenerates 15 Energy for Venti after the effects of Wind\'s Grand Ode end.\n<br>\nIf an Elemental Absorption occurred, this also restores 15 Energy to all characters of that corresponding element.', 'Venti'),
(67, 'Windrider', NULL, 'Decreases all party member\'s gliding Stamina Consumption by 20%.', 'Venti'),
(68, 'Crossfire', 'Ascension 1', 'Increases the flame range of Guoba by 20%.', 'Xiangling'),
(69, 'Beware, It\'s Super Hot!', 'Ascension 4', 'When Guoba Attack\'s effect ends, Guoba leaves a chili pepper on the spot where it disappeared. Picking up a chili pepper increases ATK by 10% for 10s.', 'Xiangling'),
(70, 'Chef de Cuisine', NULL, 'When Xiangling cooks an ATK-boosting dish perfectly, she has a 12% chance to receive double the product.', 'Xiangling'),
(71, 'Evil Conqueror - Tamer of Demons', 'Ascension 1', 'Starting Bane of All Evil increases Xiao\'s DMG by 5%. After this, Xiao\'s DMG continues to increase by 5% every 3s until the skill ends. Max 25% increase.', 'Xiao'),
(72, 'Dissolution Eon - Heaven Fall', 'Ascension 4', 'When Lemniscatic Wind Cycling is used, increases all subsequent Lemniscatic Wind Cycling\'s DMG by 10% for 6s. Max 3 stacks. Duration refreshes with new stacks.', 'Xiao'),
(73, 'Transcension - Gravity Defier', NULL, 'Decreases all party member\'s falling DMG by 30%.<br>\nThe greatest effect out of all Talents of the same type prevails.', 'Xiao'),
(74, 'Hydropathic', 'Ascension 1', 'When a Rain Sword is shattered or when its duration expires, it regenerates the current character\'s HP based on 6% of Xingqiu\'s Max HP.', 'Xingqiu'),
(75, 'Blades Amidst Raindrops', 'Ascension 4', 'Xingqiu gains a 20% Hydro DMG Bonus.', 'Xingqiu'),
(76, 'Flash of Genius', NULL, 'When Xingqiu crafts Character Talent Materials, he has a 25% chance to refund a portion of the crafting materials used.', 'Xingqiu'),
(77, '\"The Show Goes On, Even Without an Audience...\"', 'Ascension 1', '<p>Decreases the number of enemies Sweeping Fervor must hit to trigger each level of shielding.</p>\n<ul>\r\n<li>Shield Level 2: Lead-In requirement reduced to 1 enemy hit.</li>\r\n<li>Shield Level 3: Rave requirement reduced to 2 enemies hit or more.</li>\n</ul>', 'Xinyan'),
(78, '\"...Now That\'s Rock \'N\' Roll!\"', 'Ascension 4', 'Characters shielded by Sweeping Fervor deal 15% increased Physical DMG.', 'Xinyan'),
(79, 'A Rad Recipe', NULL, 'When a Perfect Cooking is achieved on an DEF-boosting dish, Xinyan has a 12% chance to obtain double the product.', 'Xinyan'),
(80, 'Resonant Waves', 'Ascension 1', '<p>When the Jade Shield takes DMG, it will Fortify:</p>\n<ul>\n<li>Fortified characters have 5% increased Shield Strength.</li>\n</ul>\n<p>Can stack up to 5 times, and lasts until the Jade Shield dissapears.</p>', 'Zhongli'),
(81, 'Dominance of Earth', 'Ascension 4', 'Planet Befall deals additional DMG equal to 33% of Zhongli\'s Max HP.', 'Zhongli'),
(82, 'Arcanum of Crystal', NULL, 'Refunds 15% of the ores used when crafting Polearm-type weapons.', 'Zhongli'),
(83, 'Calcite Might', 'Ascension 1', 'Transient Blossoms generated by Abiogenesis: Solar Isotoma deal 25% more DMG to enemies whose HP is below 50%.', 'Albedo'),
(84, 'Homuncular Nature', 'Ascension 4', 'Using Rite of Progeniture: Tectonic Tide increases the Elemental Mastery of nearby party members by 125 for 10s.', 'Albedo'),
(89, 'Flash of Genius', NULL, 'When Albedo crafts Weapon Ascension Materials, he has a 10% chance to receive double the product.', 'Albedo');

-- --------------------------------------------------------

--
-- Table structure for table `Skills`
--

CREATE TABLE `Skills` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(5000) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Data` varchar(10000) DEFAULT NULL,
  `_IDCharacter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Skills`
--

INSERT INTO `Skills` (`_ID`, `Name`, `Description`, `Type`, `Data`, `_IDCharacter`) VALUES
(1, 'Sharpshooter', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive shots with a bow.</p>\n<h3>Charged Attack</h3>\n<p>Perform a more precise Aimed Shot with increased DMG.\n<br>\nWhile aiming, flames accumulates on the arrowhead. A fully charged flaming arrow will deal Pyro DMG.</p>\n<h3>Plunging Attack</h3>\n<p>Fires off a shower of arrows in mid-air before falling and striking the ground, dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"36.1%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"36.1%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"46.4%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"47.3%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"59.3%\"},{\"stat\":\"Aimed Shot\",\"value\":\"43.9%\"},{\"stat\":\"Fully-Charged Aimed Shot\",\"value\":\"124%\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Amber'),
(2, 'Explosive Puppet', '<h3>Baron Bunny</h3>\n<ul>\n<li>Continuously taunts the enemy, drawing their fire.</li>\n<li>Baron Bunny\'s HP scales with Amber\'s Max HP.</li>\n<li>When destroyed or when its timer expires, Baron Bunny explodes, dealing AoE Pyro DMG.</li>\n</ul>\n<h3>Hold</h3>\n<p>Adjusts the throwing direction of Baron Bunny.\n<br>\nThe longer the button is held, the further the throw.</p>', 'Elemental Skill', '[{\"stat\":\"Inherited HP\",\"value\":\"41.4%\"},{\"stat\":\"Explosion DMG\",\"value\":\"123%\"},{\"stat\":\"CD\",\"value\":\"15s\"}]', 'Amber'),
(3, 'Fiery Rain', 'Fires of a shower of arrows, dealing continuous AoE Pyro DMG.', 'Elemental Burst', '[{\"stat\":\"Fiery Rain DMG Per Wave\",\"value\":\"28.1%\"},{\"stat\":\"Total Fiery Rain DMG\",\"value\":\"505%\"},{\"stat\":\"Duration\",\"value\":\"2s\"},{\"stat\":\"CD\",\"value\":\"12s\"},{\"stat\":\"Energy Cost\",\"value\":\"40\"}]', 'Amber'),
(4, 'Whisper of Water', '<h3>Normal Attack</h3>\n<p>Perform up to 4 water splashes attacks that deal Hydro DMG.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to deal AoE Hydro DMG after a short casting time.</p>\n<h3>Plunging Attack</h3>\n<p>Gathering the might of Hydro, Barbara plunges towards the ground from mid-air, damaging all enemies in her path. Deals AoE Hydro DMG upon impact with the ground.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"37.8%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"35.5%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"41%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"55.2%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"166%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"50\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Barbara'),
(5, 'Let the Show Begin', '<p>Summons water droplets resembling musical notes that form a Melody Loop, dealing Hydro DMG to surrounding enemies and afflicting them with the Wet status.</p>\n<h3>Melody Loop</h3>\n<ul>\n<li>Barbara\'s Normal Attacks heal all party members and nearby allied characters for a certain amount of HP, which scales with Barbara\'s Max HP.</li>\r\n<li>Her Charged Attack generates 4 times the amount of healing.</li>\r\n<li>Regenerates a certain amount of the current character\'s HP at regular intervals.</li>\r\n<li>Applies the Wet status to the character and enemies who come in contact with them.</li>\n</ul>', 'Elemental Skill', '[{\"stat\":\"HP Regeneration Per Hit\",\"value\":\"0.75% Max HP + 72\"},{\"stat\":\"Continuous Regeneration\",\"value\":\"4% Max HP + 385\"},{\"stat\":\"Droplet DMG\",\"value\":\"58.4%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"32s\"}]', 'Barbara'),
(6, 'Shining Miracle', 'Heals friendly forces and all parties for a large amount of HP that scales with Barbara\'s Max HP.', 'Elemental Burst', '[{\"stat\":\"Healing Amount\",\"value\":\"17.6% Max HP + 1694\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Barbara'),
(7, 'Oceanborne', '<h3>Normal Attack</h3>\n<p>Performs up to 5 successive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Drains Stamina over time to perform continuous slashes.\n<br>\nAt end of the sequence, perform a more powerful slash.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"71.1%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"70.9%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"88.3%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"86.5%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"112%\"},{\"stat\":\"Charged Attack Spinning DMG\",\"value\":\"56.2%\"},{\"stat\":\"Charged Attack Final DMG\",\"value\":\"102%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"40/s\"},{\"stat\":\"Max Duration\",\"value\":\"5s\"},{\"stat\":\"Plunge DMG\",\"value\":\"74.6%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"149% / 186%\"}]', 'Beidou'),
(8, 'Tidecaller', '<p>Nothing to worry about. Should anyone raise a hand against her or her men, she will avenge it ten-fold with sword and thunder.</p>\n<h3>Press</h3>\n<p>Accumulating the power of lightning, Beidou swings her blade forward fiercely, dealing Electro DMG.</p>\n<h3>Hold</h3>\nLifts her weapon up as a shield. Max DMG absorbed scales off Beidou\'s Max HP.\n<br>\nAttacks using the energy stored within the greatsword upon release or once this ability\'s duration expires, dealing Electro DMG. DMG dealt scales with the number of times Beidou is attacked in the skill\'s duration. The greatest DMG Bonus will be attained once this effect is triggered twice.\n<br>\nThe shield possesses the following properties:\n<ul>\n<li>Has 250% Electro DMG Absorption Efficiency.</li>\n<li>Applies the Electro element to Beidou upon activation.</li>', 'Elemental Skill', '[{\"stat\":\"Shield DMG Absorption\",\"value\":\"14.4% Max HP + 1386\"},{\"stat\":\"Base DMG\",\"value\":\"122%\"},{\"stat\":\"DMG Bonus on Hit Taken\",\"value\":\"160%\"},{\"stat\":\"CD\",\"value\":\"7.5s\"}]', 'Beidou'),
(9, 'Stormbreaker', '<p>Recalling her slaying of the great beast Haishan. Beidou calls upon that monstrous strength and the lightning to create a Thunderbeast\'s Targe around herself.</p>\n<h3>Thunderbeast\'s Target</h3>\n<ul>\n<li>When Normal and Charged Attacks hit, they create a lightning discharge that can jump between enemies, dealing Electro DMG.</li>\n<li>Increases the character\'s resistance to interruption, and decreases DMG taken.</li>\n</ul>', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"122%\"},{\"stat\":\"Lightning DMG\",\"value\":\"96%\"},{\"stat\":\"DMG Reduction\",\"value\":\"20%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Beidou'),
(10, 'Strike of Fortune', '<h3>Normal Attack</h3>\n<p>Perform up to 5 rapid strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword swings.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"44.5%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"42.7%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"54.6%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"59.7%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"71.9%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"55.9% + 60.7%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Bennett'),
(11, 'Passion Overload', '<p>Bennett puts all his fire and passion for adventuring into his sword. Results may very based on how fired up he is.</p>\n<h3>Press</h3>\n<p>A single, swift flame strike that deals Pyro DMG.</p>\n<h3>Hold (Short)</h3>\n<p>Charges up, resulting in different effects when unleashed based on the Charge Level.</p>\n<ul>\n<li>Level 1: Strikes twice, dealing Pyro DMG and launching enemies.</li>\n<li>Level 2: Unleashes 3 consecutive attacks that deal impressive Pyro DMG, but the last attack triggers an explosion that launches both Bennet and the enemy.</li>\n</ul>\n<p>Bennett takes no damage from being launched.</p>', 'Elemental Skill', '[{\"stat\":\"Press DMG\",\"value\":\"138%\"},{\"stat\":\"Charge Level 1 DMG\",\"value\":\"84% + 92%\"},{\"stat\":\"Charge Level 2 DMG\",\"value\":\"88% + 96%\"},{\"stat\":\"Explosion DMG\",\"value\":\"132%\"},{\"stat\":\"CD\",\"value\":\"5 / 7.5 / 10s\"}]', 'Bennett'),
(12, 'Fantastic Voyage', '<p>Bennett leaps towards the enemy and performs a plunging attack, dealing Pyro DMG, creating an Inspiration Field.</p>\n<h3>Inspiration Field</h3>\n<ul>\n<li>If the health of a character in the circle is equal to or falls below 70%, their health will continuously regenerate. Regeneration scales based on Bennett\'s Max HP.</li>\n<li>If the health of a character in the circle is higher than 70%, they gain an ATK Bonus that is based on Bennett\'s Base ATK.</li>\n<li>Applies the Pyro element to characters within the Field.</li>\n</ul>', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"233%\"},{\"stat\":\"Continuous Renegeration Per Sec\",\"value\":\"6% max HP + 577\"},{\"stat\":\"ATK Bonus Ratio\",\"value\":\"56%\"},{\"stat\":\"Duration\",\"value\":\"12s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Bennett'),
(13, 'Demonbane', '<h3>Normal Attack</h3>\n<p>Performs up to 4 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Drains Stamina over time to perform continuous swirling attacks against all nearby enemies.\n<br>\nAt end of the sequence, perform a more powerful slash.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"70%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"63.1%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"80.3%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"101%\"},{\"stat\":\"Charged Attack Spinning DMG\",\"value\":\"56.3%\"},{\"stat\":\"Charged Attack Final DMG\",\"value\":\"102%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"40/s\"},{\"stat\":\"Max Duration\",\"value\":\"5s\"},{\"stat\":\"Plunge DMG\",\"value\":\"74.6%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"149% / 186%\"}]', 'Chongyun'),
(14, 'Spirit Blade - Chonghua\'s Layered Frost', 'Chongyun strikes the ground with his greatsword, causing a Cryo explosion in a circular AoE in front of him that deals Cryo DMG.\n<br>\nAfter a short delay, the cold air created by the Cryo explosion will coalesce into a Chonghua Frost Field, within which all DMG done through Normal and Charged Attacks by Sword, Greatsword and Polearm-wielding characters will be converted to Cryo DMG.', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"172%\"},{\"stat\":\"Delay\",\"value\":\"2s\"},{\"stat\":\"Duration\",\"value\":\"10s\"},{\"stat\":\"CD\",\"value\":\"15s\"}]', 'Chongyun'),
(15, 'Spirit Blade - Cloud-parting Star', 'Performing the secret hand seals, Chongyun summons 3 giant spirit blades in mid-air that fall to the earth one by one after a short delay, exploding as they hit the ground.\n<br>\nWhen the spirit blades explode, they will deal AoE Cryo DMG and launch enemies.', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"142%\"},{\"stat\":\"CD\",\"value\":\"12s\"},{\"stat\":\"Energy Cost\",\"value\":\"40\"}]', 'Chongyun'),
(16, 'Tempered Sword', '<h3>Normal Attack</h3>\n<p>Performs up to 4 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Drains Stamina over time to perform continuous slashes.\n<br>\nAt the end of the sequence, perform a more powerful slash.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"89.7%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"87.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"98.8%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"134%\"},{\"stat\":\"Charged Attack Spinning DMG\",\"value\":\"68.8%\"},{\"stat\":\"Charged Attack Final DMG\",\"value\":\"125%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"40/s\"},{\"stat\":\"Max Duration\",\"value\":\"5s\"},{\"stat\":\"Plunge DMG\",\"value\":\"89.5%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"179% / 224%\"}]', 'Diluc'),
(17, 'Searing Onslaught', '<p>Performs a forward slash that deals Pyro DMG.</p>\n<p>This skill can be used 3 times consecutively. Enters CD if not cast again within a short period.</p>', 'Elemental Skill', '[{\"stat\":\"1-Hit DMG\",\"value\":\"94.4%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"97.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"129%\"},{\"stat\":\"CD\",\"value\":\"10s\"}]', 'Diluc'),
(18, 'Dawn', '<p>Releases intense flames to knock nearby enemies back, dealing Pyro DMG. The flames then converge into the weapon, summoning a Phoenix that flies forward and deals massive Pyro DMG to all enemies in its path. The Phoenix explodes upon reaching its destination, causing a large amount of AoE Pyro DMG.\n<br>\nThe searing flames that run down his blade cause Diluc\'s Normal and Charged Attacks to deal Pyro DMG for a time.</p>', 'Elemental Burst', '[{\"stat\":\"Slashing DMG\",\"value\":\"204%\"},{\"stat\":\"DoT\",\"value\":\"60%\"},{\"stat\":\"Explosion DMG\",\"value\":\"204%\"},{\"stat\":\"CD\",\"value\":\"12s\"},{\"stat\":\"Enchantment Duration\",\"value\":\"8s\"},{\"stat\":\"Energy Cost\",\"value\":\"40\"}]', 'Diluc'),
(19, 'Katzlein Style', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive shots with a bow.</p>\n<h3>Charged Attack</h3>\n<p>Perform a more precise Aimed Shot with increased DMG.\n<br>\nWhile aiming, biting frost accumulates on the arrowhead. A fully charged frost arrow will deal Cryo DMG.</p>\n<h3>Plunging Attack</h3>\n<p>Fires off a shower of arrows in mid-air before falling and striking the ground, dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"36.1%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"33.5%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"45.6%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"43%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"53.8%\"},{\"stat\":\"Aimed Shot\",\"value\":\"43.9%\"},{\"stat\":\"Fully-Charged Aimed Shot\",\"value\":\"124%\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Diona'),
(20, 'Icy Paws', '<p>Fires an Icy Paw that deals Cryo DMG to opponents and forms a shield on hit. The shield\'s DMG Absorption scales based on Diona\'s Max HP, and its duration scales off the number of Icy Paws that hit their target.</p>\n<h3>Press</h3>\n<p>Rapidly fires off 2 Icy Paws.</p>\n<h3>Hold</h3>\n<p>Dashes back quickly before firing five Icy Paws.<br>\nThe shield created by a Hold attack will gain a 75% DMG Absorption Bonus.</p>\n<p>The shield has a 250% Cryo DMG Absorption Bonus, and will cause your active character to become affected by Cryo at the point of formation for a short duration.</p>', 'Elemental Skill', '[{\"stat\":\"Icy Paw DMG\",\"value\":\"41.9% per paw\"},{\"stat\":\"Base Shield DMG Absorption\",\"value\":\"7.2% max hp + 693\"},{\"stat\":\"Duration\",\"value\":\"1.8s per claw\"},{\"stat\":\"Press CD\",\"value\":\"6s\"},{\"stat\":\"Holding CD\",\"value\":\"15s\"}]', 'Diona'),
(21, 'Signature Mix', '<p>Tosses out a special cold brew that deals AoE Cryo DMG and creates a Drunken Mist in an AoE.</p>\n<h3>Drunken Mist</h3>\n<ul>\n<li>Deals continuous Cryo DMG to opponents within the AoE.</li>\n<li>Continuously regenerates the HP of characters within the AoE.</li>\n</ul>', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"80%\"},{\"stat\":\"Continuous Field DMG\",\"value\":\"52.6%\"},{\"stat\":\"HP Regeneration Over Time\",\"value\":\"5.34% max hp + 513\"},{\"stat\":\"Duration\",\"value\":\"12s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Diona'),
(22, 'Bolts of Downfall', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive shots with a bow.</p>\n<h3>Charged Attack</h3>\n<p>Perform a more precise Aimed Shot with increased DMG.\n<br>\nWhile aiming, the dark lightning spirits of Immernachtreich shall heed the call of their Prinzessin and indwell the enchanted arrowhead. When fully indwelt, the Rachsuchtig Blitz shall deal immense Electro DMG.</p>\n<h3>Plunging Attack</h3>\n<p>Fires off a shower of arrows in mid-air before falling and striking the ground, dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"44.1%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"46.8%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"58.1%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"57.7%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"72.1%\"},{\"stat\":\"Aimed Shot\",\"value\":\"43.9%\"},{\"stat\":\"Fully-Charged Aimed Shot\",\"value\":\"124%\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Fischl'),
(23, 'Nightrider', '<p>Summons Oz, the night raven forged of darkness and lightning descends upon the land, dealing Electro DMG in a small AoE.\n<br>\nFor the ability\'s duration, Oz will continuously attack nearby enemies with Freikugel.</p>\n<p>Hold to adjust the location Oz will be summoned to.\n<br>\nPress again any time during the ability\'s duration to once again summon him to Fischl\'s side.</p>', 'Elemental Skill', '[{\"stat\":\"Oz\' ATK DMG\",\"value\":\"88.8%\"},{\"stat\":\"Summoning DMG\",\"value\":\"115%\"},{\"stat\":\"Oz\'s Duration\",\"value\":\"10s\"},{\"stat\":\"CD\",\"value\":\"25s\"}]', 'Fischl'),
(24, 'Midnight Phantasmagoria', 'Summons Oz to spread his twin swings of twilight and defend Fischl.\n<br>\nHas the following properties during the ability\'s duration:\n<ul>\n<li>Fischl takes on Oz\'s form, greatly increasing her Movement Speed.</li>\n<li>Strikes nearby enemies with lightning, dealing Electro DMG to enemies she comes into contact with. Each enemy can only be struck once.</li>\n<li>Once this ability\'s effects end, Oz will remain on the battlefield and attack his Prinzessin\'s foes. If Oz is already on the field, then this will reset the duration of his presence.</li>\n</ul>', 'Elemental Burst', '[{\"stat\":\"Falling Thunder DMG\",\"value\":\"208%\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Fischl'),
(25, 'Favonius Bladework', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to launch an enemy using the power of wind.\n<br>\nLaunched enemies will slowly fall to the ground.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"48.3%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"45.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"60.3%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"65.9%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"79.2%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"162%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Jean'),
(26, 'Gale Blade', '<p>Focusing the might of the formless wind around her blade, Jean releases a miniature storm, launching enemies in the direction she aims at, dealing massive Anemo DMG.</p>\n<h3>Hold</h3>\n<p>At the cost of continued Stamina consumption, Jean can command the whirlwind to pull surrounding enemies towards her front.\n<br>\nDirection can be adjusted.\n<br>\nCharacter is immobile during skill duration.</p>', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"292%\"},{\"stat\":\"Stamina Consumption\",\"value\":\"20 per second\"},{\"stat\":\"Max Duration\",\"value\":\"5s\"},{\"stat\":\"CD\",\"value\":\"6s\"}]', 'Jean'),
(27, 'Dandelion Breeze', '<p>Calling upon the wind\'s protection, Jean creates a swirling Dandelion Field, launching surrounding enemies and causing Anemo DMG.\n<br>\nAt the same time, she instantly regenerates a large amount of HP for nearby allied units and all party members. HP restored scale off Jean\'s ATK.</p>\n<h3>Dandelion Field</h3>\n<ul>\n<li>Continuously regenerates HP for one ally and imbues them with the Anemo attribute.</li>\n<li>Deals Anemo DMG to enemies entering or exiting the field.</li>\n</ul>', 'Elemental Burst', '[{\"stat\":\"Elemental Burst DMG\",\"value\":\"425%\"},{\"stat\":\"Field Entering / Exiting DMG\",\"value\":\"78.4%\"},{\"stat\":\"Field Activation Healing\",\"value\":\"251% atk + 1540\"},{\"stat\":\"Continuous Regeneration\",\"value\":\"25.12% atk + 154\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Jean'),
(28, 'Ceremonial Bladework', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemeies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"53.8%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"51.7%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"65.3%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"70.9%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"88.2%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"55% + 73.1%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Kaeya'),
(29, 'Frostgnaw', 'Unleashes a frigit blast, dealing Cryo DMG to enemies in front of Kaeya.', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"191%\"},{\"stat\":\"CD\",\"value\":\"6s\"}]', 'Kaeya'),
(30, 'Glacial Waltz', 'Coalescing the frost in the air, Kaeya summons 3 icicles that revolve around him.\n<br>\nThese icicles will follow the character around and deal Cryo DMG to enemies in their path for so long as they persist.', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"77.6%\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Duration\",\"value\":\"8s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Kaeya'),
(31, 'Yunlai Swordsmanship', '<h3>Normal Attack</h3>\n<p>Performs up to 5 rapid strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemeies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"41%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"41%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"54.4%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"31.5% + 34.4%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"67%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"76.8% + 86%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"25\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Keqing'),
(32, 'Stellar Restoration', '<p>Hurls a Lightning Stiletto that annihilates her enemies like the swift thunder.\n<br>\nWhen the Stiletto hits its target, it deals Electro DMG to enemies in a small AoE, and places a Stiletto Mark on the spot hit.</p>\n<h3>Hold</h3>\n<p>Hold to adjust the direction in which the Stiletto shall be thrown.\n<br>\nStilettos thrown by the Hold attack mode can be suspended in mid-air, allowing Keqing to jump to them when using Stellar Restoration a second time.</p>\n<h3>Lightning Stiletto</h3>\nIf Keqing uses Stellar Restoration again or uses a Charged Attack while its duration lasts, it will clear the Stiletto Mark and produce different effects:\n<ul>\n<li>If she uses Stellar Restoration again, she will blink to the location of the Mark and unleashed one slashing attack that deals AoE Electro DMG. When blinking to a Stiletto that was thrown from a Holding attack, Keqing can leap across obstructing terrain.</li>\n<li>If Keqing uses a Charged Attack, she will ignite a series of thundering cuts at the Mark\'s location, dealing AoE Electro DMG.</li>\n</ul>', 'Elemental Skill', '[{\"stat\":\"Lightning Stiletto DMG\",\"value\":\"50.4%\"},{\"stat\":\"Slashing DMG\",\"value\":\"168%\"},{\"stat\":\"Thunderclap Slash DMG\",\"value\":\"84% * 2\"},{\"stat\":\"CD\",\"value\":\"7.5s\"}]', 'Keqing'),
(33, 'Starward Sword', '<p>Keqing unleashes the power of lightning, dealing Electro DMG in an AoE.</p>\n<p>She then blends into the shadow of her blade, striking a series of thunderclap-blows to nearby enemies simultaneous that deal multiple instance of Electro DMG. The final attack deals massive AoE Electro DMG.</p>', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"88%\"},{\"stat\":\"Consecutive Slash DMG\",\"value\":\"24% * 8\"},{\"stat\":\"Last Attack DMG\",\"value\":\"189%\"},{\"stat\":\"CD\",\"value\":\"12s\"},{\"stat\":\"Energy Cost\",\"value\":\"40\"}]', 'Keqing'),
(34, 'Kaboom!', '<h3>Normal Attack</h3>\n<p>Throws things that go boom when they hit things! Perform up to 3 explosive attacks, dealing AoE Pyro DMG.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina and deals Pyro DMG to enemies after a short casting time.</p>\n<h3>Plunging Attack</h3>\n<p>Gathering the power of Pyro, Klee plunges towards the ground from mid-air, damaging all enemies in her path. Deals AoE Pyro DMG upon impact with the ground.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"72.2%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"62.4%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"89.9%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"157%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"50\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Klee'),
(35, 'Jumpy Dumpty', '<p>Jumpy Dumpty is tons of boom-bang-fun!\n<br>\nWhen thrown, Jumpy Dumpty bounces thrice, igniting and dealing AoE Pyro DMG with every bounce.</p>\n<p>On the third bounce, the bomb splits into many mines.\n<br>\nThe mines will explode upon contact with enemies, or after a short period of time, dealing AoE Pyro DMG.</p>\n<p>Starts with 2 charges.</p>', 'Elemental Skill', '[{\"stat\":\"Jumpy Dumpty DMG\",\"value\":\"95%\"},{\"stat\":\"Mine DMG\",\"value\":\"33%\"},{\"stat\":\"Mine Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"20s\"}]', 'Klee'),
(36, 'Sparks \'n\' Splash', 'Klee\'s Blazing Delight! For the duration of this ability, continuously summons Sparks \'n\' Splash to attack nearby enemies, dealing AoE Pyro DMG.', 'Elemental Burst', '[{\"stat\":\"Sparks \'n\' Splash DMG\",\"value\":\"42.6%\"},{\"stat\":\"Duration\",\"value\":\"10s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Klee'),
(37, 'Lightning Touch', '<h3>Normal Attack</h3>\n<p>Perform up to 4 lightning attacks that deal Electro DMG.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to deal AoE Electro DMG after a short casting time.</p>\n<h3>Plunging Attack</h3>\n<p>Gathering the might of Electro, Lisa plunges towards the ground from mid-air, damaging all enemies in her path. Deals AoE Electro DMG upon impact with the ground.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"39.6%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"35.9%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"42.8%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"55%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"177%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"50\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Lisa'),
(38, 'Violet Arc', '<p>Channels the power of lightning to sweep bothersome matters away.</p>\n<h3>Press</h3>\n<p>Releases a homing Lightning Orb. On hit, it deals Electro DMG, and applies a stack of Conductive status (Max 3 stacks) to enemies in a small AoE.</p>\n<h3>Hold</h3>\n<p>After an extended casting time, calls down lightning from the heavens, dealing massive Electro DMG to all nearby enemies.\n<br>\nDeals great amounts of extra damage to enemies based on the number of Conductive stacks applied to them, and clears their Conductive status.</p>', 'Elemental Skill', '[{\"stat\":\"Press DMG\",\"value\":\"80%\"},{\"stat\":\"Press CD\",\"value\":\"1s\"},{\"stat\":\"Non-Conductive Hold DMG\",\"value\":\"320%\"},{\"stat\":\"Stack 1 Conductive Hold DMG\",\"value\":\"368%\"},{\"stat\":\"Stack 2 Conductive Hold DMG\",\"value\":\"424%\"},{\"stat\":\"Stack 3 Conductive Hold DMG\",\"value\":\"487%\"},{\"stat\":\"CD (hold)\",\"value\":\"16s\"}]', 'Lisa'),
(39, 'Lightning Rose', 'Summons a Lightning Rose that unleashes powerful lightning bolts, launching surrounding enemies and dealing Electro DMG.\n<br>\nThe Lightning Rose will continuously emit lightning to knock back enemies and deal Electro DMG for so long as it persists.', 'Elemental Burst', '[{\"stat\":\"Discharge DMG\",\"value\":\"36.6%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Lisa'),
(40, 'Ripple of Fate', '<h3>Normal Attack</h3>\n<p>Performs up to 4 water splash attacks that deal Hydro DMG.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina and deals AoE Hydro DMG after a short casting time.</p>\n<h3>Plunging Attack</h3>\n<p>Gathering the might of Hydro, Mona plunges towards the ground from mid-air, damaging all enemies in her path. Deals AoE Hydro DMG upon impact with the ground.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"37.6%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"36%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"44.8%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"56.2%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"150%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"50\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Mona'),
(41, 'Reflection of Doom', '<p>Creates an illusory Phantom of fate from coalesced waterspouts.\n<br>\nThe Phantom has the following special properties:</p>\n<ul>\n<li>Continuously taunts nearby enemies, attracting their fire.</li>\n<li>Continuously deals Hydro DMG to nearby enemies.</li>\n<li>When its duration expires, the Phantom explodes, dealing AoE Hydro DMG.</li>\n</ul>\n<h3>Hold</h3>\n<p>Utilizes water currents to move backwards swiftly before conjuring a Phantom.\n<br>\nOnly one Phantom created by Mirror Reflection of Doom can exist at any time.\n</p>', 'Elemental Skill', '[{\"stat\":\"DoT\",\"value\":\"32%\"},{\"stat\":\"Explosion DMG\",\"value\":\"133%\"},{\"stat\":\"CD\",\"value\":\"12s\"}]', 'Mona'),
(42, 'Stellaris Phantasm', '<p>Mona summons the sparkling waves and creates a reflection of the starry sky, applying the Illusory Bubble status to opponents in a large AoE.</p>\n<h3>Illusory Bubble</h3>\n<p>Traps opponents inside a pocket of destiny and also makes them Wet. Renders weaker opponents immobile. When an opponent affected by Illusory Bubble sustains DMG, the following effects are produced:</p>\n<ul>\n<li>Applies an Omen to the opponent, which gives a DMG Bonus, also increasing the DMG of the attack that causes it.</li>\n<li>Removes the Illusory Bubble, dealing Hydro Elemental DMG in the process. The DMG Bonus does not apply to the Hydro Elemental DMG dealt in this instance.</li>\n</ul>\n<h3>Omen</h3>\n<p>During its duration, increases DMG taken by enemies.</p>', 'Elemental Burst', '[{\"stat\":\"Illusory Bubble Duration\",\"value\":\"8s\"},{\"stat\":\"Illusory Bubble Explosion DMG\",\"value\":\"442%\"},{\"stat\":\"DMG Bonus\",\"value\":\"42%\"},{\"stat\":\"Omen Duration\",\"value\":\"4s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Mona'),
(43, 'Illusory Torrent', '<h3>Alternate Spirit</h3>\n<p>Mona cloaks herself within the water\'s flow, consuming Stamina to move rapidly.\n<br>\nWhen under the effect of Illusory Torrent, Mona can move at high speed on water.\n<br>\nApplies the Wet status to nearby enemies when she reappears.\n</p>', 'Right Click', '[{\"stat\":\"Activation Stamina Consumption\",\"value\":\"10\"},{\"stat\":\"Stamina Drain\",\"value\":\"15/s\"}]', 'Mona'),
(44, 'Sparkling Scatter', '<h3>Normal Attack</h3>\n<p>Shoots gems that deal Geo DMG.\n<br>\nUpon hit, this grants Ningguang 1 Star Jade.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to fire off a giant gem that deals Geo DMG.\n<br>\nIf Ningguang has any Star Jades, unleashing a Charged Attack will cause the Star Jades to be fired at the enemy as well, dealing additional DMG.</p>\n<h3>Plunging Attack</h3>\n<p>Gathering the might of Geo, Ningguang plunges towards the ground from mid-air, damaging all enemies in her path. Deals AoE Geo DMG upon impact with the ground.</p>', 'Normal Attack', '[{\"stat\":\"Normal Attack DMG\",\"value\":\"28%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"174%\"},{\"stat\":\"DMG per Star Jade\",\"value\":\"49.6%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"50\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Ningguang'),
(45, 'Jade Screen', '<p>Ningguang creates a Jade Screen out of gold, obsidian and her great opulence, dealing AoE Geo DMG.</p>\n<h3>Jade Screen</h3>\n<ul>\n<li>Blocks enemy projectiles.</li>\n<li>Endurance scales based on Ningguang\'s Max HP.</li>\n</ul>\n<p>Jade Screen is considered a Geo Construct and can be used to block certain attacks, but cannot be climbed. Only one Jade Screen may exist at any one time.</p>', 'Elemental Skill', '[{\"stat\":\"Inherited HP\",\"value\":\"50.1%\"},{\"stat\":\"Skill DMG\",\"value\":\"230%\"},{\"stat\":\"CD\",\"value\":\"12s\"}]', 'Ningguang'),
(46, 'Starshatter', 'Gathering a great number of gems, Ningguang scatters them all at once, sending homing projectiles at her enemies that deal massive Geo DMG.\n<br>\nIf Starshatter is cast when a Jade Screen is nearby, the Jade Screen will fire additional gem projectiles at the same time.', 'Elemental Burst', '[{\"stat\":\"DMG Per Gem\",\"value\":\"87%\"},{\"stat\":\"CD\",\"value\":\"12s\"},{\"stat\":\"Energy Cost\",\"value\":\"40\"}]', 'Ningguang'),
(47, 'Favonius Bladework - Maid', '<h3>Normal Attack</h3>\n<p>Performs up to 4 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Drains Stamina over time to perform continuous swirling attacks against all nearby enemies.\n<br>\nAt end of the sequence, perform a more powerful slash.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"79.1%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"73.4%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"86.3%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"113%\"},{\"stat\":\"Charged Attack Spinning DMG\",\"value\":\"50.7%\"},{\"stat\":\"Charged Attack Final DMG\",\"value\":\"90.5%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"40/s\"},{\"stat\":\"Max Duration\",\"value\":\"5s\"},{\"stat\":\"Plunge DMG\",\"value\":\"74.6%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"149% / 186%\"}]', 'Noelle'),
(48, 'Breastplate', 'Summons a protective stone armor, dealing Geo DMG to surrounding enemies and creating a shield. The shield\'s DMG Absorption scaled based on Noelle\'s DEF.\n<br>\nThe shield has the following properties:\n<ul>\n<li>When Noelle\'s Normal and Charged Attacks hit a target, they have a certain chance to regenerate HP for all characters, both on and off the field.</li>\r\n<li>Applies the Geo element to the character.</li>\r\n<li>Possesses 250% Absorption Efficiency against Geo DMG.</li>\n</ul>\nThe amount of HP healed when regeneration is triggered scales based on Noelle\'s DEF.', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"120% DEF\"},{\"stat\":\"DMG Absorption\",\"value\":\"160% DEF + 770\"},{\"stat\":\"Healing\",\"value\":\"21.3% DEF + 103\"},{\"stat\":\"Healing Triggering Chance\",\"value\":\"50%\"},{\"stat\":\"Duration\",\"value\":\"12s\"},{\"stat\":\"CD\",\"value\":\"24s\"}]', 'Noelle'),
(49, 'Sweeping Time', 'Gathering the strength of stone around her weapon, Noelle strikes the enemies surrounding her within a large AoE, dealing Geo DMG.\n<br>\nAfterwards, Noelle gains the following effects:\n<ul>\n<li>Larger attack AoE.</li>\n<li>Converts attack DMG to Geo DMG.</li>\n<li>Increased ATK that scales based on her DEF.</li>\n</ul>', 'Elemental Burst', '[{\"stat\":\"Elemental Burst DMG\",\"value\":\"67.2%\"},{\"stat\":\"Skill DMG\",\"value\":\"92.8%\"},{\"stat\":\"ATK Bonus\",\"value\":\"40% DEF\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Noelle'),
(50, 'Ancient Sword Art', '<h3>Normal Attack</h3>\n<p>Performs up to 5 rapid strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"37.8%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"38.9%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"24.2% + 24.2%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"24.7% + 24.7%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"63%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"64.3% + 64.3%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Qiqi'),
(51, 'Adeptus Art: Herald of Frost', '<p>Using the Icevein Talisman, Qiqi brings forth the Herald of Frost, dealing Cryo DMG to nearby enemies.</p>\n<h3>Herald of Frost</h3>\n<ul>\n<li>When Qiqi hits a target with her Normal or Charged Attacks, she regenerates HP for all party members and all nearby allied characters. Healing scales based on Qiqi\'s ATK.</li>\n<li>Regenerates HP for current character at regular intervals.</li>\n<li>Follows the character around, dealing Cryo DMG to enemies in its path.</li>\n</ul>', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"96%\"},{\"stat\":\"Regeneration on Hit\",\"value\":\"10.56% atk + 67\"},{\"stat\":\"Continuous Regeneration\",\"value\":\"69.60% atk + 451\"},{\"stat\":\"Herald of Frost DMG\",\"value\":\"36%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"30s\"}]', 'Qiqi'),
(52, 'Adeptus Art: Preserver of Fortune', '<p>Qiqi releases the adeptus power sealed within her body, marking nearby enemies with a Fortune-Preserving Talisman that deals Cryo DMG.</p>\n<h3>Fortune-Preserving Talisman</h3>\nWhen enemies affected by this Talisman take DMG, the character that dealt this DMG regenerates HP.', 'Elemental Burst', '[{\"stat\":\"Skill DMG\",\"value\":\"285%\"},{\"stat\":\"Healing\",\"value\":\"90% atk + 577\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Qiqi'),
(53, 'Steel Fang', '<h3>Normal Attack</h3>\n<p>Performs up to 4 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Drains Stamina over time to perform continuous swirling attacks against all nearby enemies.\n<br>\nAt end of the sequence, perform a more powerful slash.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"95.9%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"82.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"103%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"136%\"},{\"stat\":\"Charged Attack Spinning DMG\",\"value\":\"62.5%\"},{\"stat\":\"Charged Attack Final DMG\",\"value\":\"113%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"40/s\"},{\"stat\":\"Max Duration\",\"value\":\"5s\"},{\"stat\":\"Plunge DMG\",\"value\":\"82%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"164% / 205%\"}]', 'Razor'),
(54, 'Claw and Thunder', '<p>Hunts his prey using the techniques taught to him by his master and his Lupical.</p>\n<h3>Press</h3>\n<p>Swings the Thunder Wolf Claw, dealing Electro DMG to enemies in front of Razor.\n<br>\nUpon striking an enemy, Razor will gain an Electro Sigil, which increases his Energy Recharge rate.\n<br>\nRazor can have up to 3 Electro Sigils simultaneously, and gaining a new Electro Sigil refreshes their duration.</p>\n<h3>Hold</h3>\n<p>Gathers Electro energy to unleash a lightning storm over a small AoE, causing massive Electro DMG, and clears all of Razor\'s Electro Sigils.\n<br>\nEach Electro Sigil cleared in this manner will be converted into Energy for Razor.</p>', 'Elemental Skill', '[{\"stat\":\"Press Skill DMG\",\"value\":\"199%\"},{\"stat\":\"Hold Skill DMG\",\"value\":\"295%\"},{\"stat\":\"Energy Recharge Bonus\",\"value\":\"20% per electro sigil\"},{\"stat\":\"Energy Regenerated\",\"value\":\"5 per electro sigil absorbed\"},{\"stat\":\"Electro Sigil Duration\",\"value\":\"18s\"},{\"stat\":\"Press CD\",\"value\":\"6s\"},{\"stat\":\"CD (hold)\",\"value\":\"10s\"}]', 'Razor'),
(55, 'Lightning Fang', '<p>Summons the Wolf Within which deals Electro DMG to all nearby opponents. This clears all of Razor\'s Electro Sigils, which will be converted into elemental energy for him.\n<br>\nThe Wolf Within will fight alongside Razor for the skill\'s duration.</p>\n<h3>The Wolf Within</h3>\n<ul>\n<li>Strikes alongside Razor\'s normal attacks, dealing Electro DMG.</li>\n<li>Raises Razor\'s ATK SPD and Electro RES.</li>\n<li>Causes Razor to be immune to DMG inflicted by the Electro-Charged status.</li>\n<li>Disables Razor\'s Charged Attacks.</li>\n</ul>\n<p>The effects end when Razor leaves the battlefield.\n<br>\nWhen Razor leaves the field, a maximum of 10 Energy will be returned to him based off the duration remaining on this skill.</p>', 'Elemental Burst', '[{\"stat\":\"Elemental Burst DMG\",\"value\":\"125%\"},{\"stat\":\"Soul Companion DMG\",\"value\":\"20% normal attack dmg\"},{\"stat\":\"Normal ATK SPD Bonus\",\"value\":\"20%\"},{\"stat\":\"Electro RES Bonus\",\"value\":\"50%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Razor'),
(56, 'Wind Spirit Creation', '<h3>Normal Attack</h3>\n<p>Performs up to 4 attacks using Wind Spirits, dealing Anemo DMG.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina and deals AoE Anemo DMG after a short casting time.</p>\n<h3>Plunging Attack</h3>\n<p>Calling upon the power of her Wind Spirits, Sucrose plunges towards the ground from mid-air, damaging all enemies in her path. Deals AoE Anemo DMG upon impact with the ground.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"33.5%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"30.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"38.4%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"47.9%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"120%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"50\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Sucrose'),
(57, 'Astable Anemohypostasis Creation - 6308', '<p>Creates a small Wind Spirit that deals Anemo DMG to enemies in an AoE, pulling them towards the location of the Wind Spirit before launching them.</p>', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"211%\"},{\"stat\":\"CD\",\"value\":\"15s\"}]', 'Sucrose'),
(58, 'Forbidden Creation - Isomer 75 / Type II', '<p>Sucrose hurls an unstable concoction that creates a Large Wind Spirit. While it persists, the Large Wind Spirit will continuously pull and launch nearby enemies, dealing AoE Anemo DMG.</p>\n<h3>Elemental Absorption</h3>\n<p>If the Wind Spirit comes into contact with Hydro / Pyro / Cryo / Electro elements, it will deal additional DMG of that type.\n<br>\nElemental Absorption may only occur once per use.</p>', 'Elemental Burst', '[{\"stat\":\"DoT\",\"value\":\"148%\"},{\"stat\":\"Additional Elemental DMG\",\"value\":\"44%\"},{\"stat\":\"Duration\",\"value\":\"6s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Sucrose'),
(59, 'Cutting Torrent', '<h3>Normal Attack</h3>\n<p>Performs up to 6 consecutive shots with a bow.</p>\n<h3>Charged Attack</h3>\n<p>Perform a more precise Aimed Shot with increased DMG.\n<br>\nWhile aiming, the power of Hydro will accumulate on the arrowhead. An arrow fully charged with the torrent will deal Hydro DMG and apply Riptide status..</p>\n<h3>Riptide</h3>\n<p>Opponents affected by Riptide will suffer from AoE Hydro DMG effects when attacked by Tartaglia in various ways. DMG dealt in this way is considered Normal Attack DMG.</p>\n<ul>\n<li>Riptide Flash: A fully-charged Aimed Shot that hits an opponent affected by Riptide deals consecutive bouts of AoE DMG. Can occur once every 0.7s.</li>\n<li>Riptide Burst: Defeating an opponent affected by Riptide created a Hydro burst that inflicts the Riptide status on nearby opponents hit.</li>\n</ul>\n<h3>Plunging Attack</h3>\r\n<p>Fires off a shower of arrows in mid-air before falling and striking the ground, dealing AoE DMG upon impact. When Tartaglia is in Foul Legacy: Raging Tide\'s Melee Stance, he cannot perform a plunging attack.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"41.3%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"46.3%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"55.4%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"57%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"60.9%\"},{\"stat\":\"6-Hit DMG\",\"value\":\"72.8%\"},{\"stat\":\"Aimed Shot\",\"value\":\"43.9%\"},{\"stat\":\"Fully-Charged Aimed Shot\",\"value\":\"124%\"},{\"stat\":\"Riptide Flash DMG\",\"value\":\"12.4% x 3\"},{\"stat\":\"Riptide Burst DMG\",\"value\":\"62%\"},{\"stat\":\"Riptide Duration\",\"value\":\"10s\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Tartaglia'),
(60, 'Foul Legacy: Raging Tide', '<p>Unleashes a set of weaponry made of pure water, dealing Hydro DMG to surrounding opponents and entering a Melee Stance.<br>\nIn this Stance, Tartaglia\'s Normal and Charged Attacks change as follows:</p>\n<h3>Normal Attack</h3>\n<p>Performs up to 6 consecutive Hydro strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash a cross slash, dealing Hydro DMG.</p>\n<h3>Riptide Slash</h3>\n<p>Hitting an opponent affected by Riptide with a melee attack unleashes a Riptide Slash that deals AoE Hydro DMG. DMG dealt in this way is considered Elemental Skill DMG, and can only occur once every 1.5s.</p>\n<p>After 30s, or when the ability is unleashed again, this skill will end. Tartaglia will return to his Ranged Stance and this ability will enter CD. The longer Tartaglia stays in his Melee Stance, the longer the CD.<br>\nIf the return to a ranged stance occurs automatically after 30s, the CD is even longer.</p>', 'Elemental Skill', '[{\"stat\":\"Stance Change DMG\",\"value\":\"72%\"},{\"stat\":\"1-Hit DMG\",\"value\":\"38.9%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"41.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"56.3%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"59.9%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"55.3%\"},{\"stat\":\"6-Hit DMG\",\"value\":\"35.4% + 37.7%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"60.2% + 72%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Riptide Slash\",\"value\":\"60%\"},{\"stat\":\"Max Duration\",\"value\":\"30s\"},{\"stat\":\"Preemptive CD\",\"value\":\"6 - 36s\"},{\"stat\":\"Max CD\",\"value\":\"45s\"}]', 'Tartaglia'),
(61, 'Havor: Obliteration', '<p>Performs different attacks based on what stance Tartaglia is in when casting.</p>\n<h3>Ranged Stance: Flash of Havoc</h3>\n<p>Swiftly fires a Hydro-imbued magic arrow, dealing AoE Hydro DMG and applying the Riptide status.<br>\nReturns a portion of its Energy Cost after use.</p>\n<h3>Melee Stance: Light Obliteration</h3>\n<p>Performs a slash with a large AoE, dealing massive Hydro DMG to all surrounding opponents, which triggers Riptide Blast.</p>\n<h3>Riptide Blast</h3>\n<p>When the obliterating waters hit an opponent affected by Riptide, it clears their Riptide status and triggers a Hydro Explosion that deals AoE Hydro DMG.<br>\nDMG dealt in this way is considered Elemental Burst DMG.</p>', 'Elemental Burst', '[{\"stat\":\"Skill DMG: Melee\",\"value\":\"464%\"},{\"stat\":\"Skill DMG: Ranged\",\"value\":\"378%\"},{\"stat\":\"Riptide Blast DMG\",\"value\":\"120%\"},{\"stat\":\"Energy Return (Ranged)\",\"value\":\"20\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Tartaglia'),
(62, 'Foreign Ironwind', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"44.5%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"43.4%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"53%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"58.3%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"70.8%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"55.9% + 72.2%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Traveler (Anemo)');
INSERT INTO `Skills` (`_ID`, `Name`, `Description`, `Type`, `Data`, `_IDCharacter`) VALUES
(63, 'Palm Vortex', '<p>Grasping the wind\'s might, you form a vortex of vacuum in your palm, causing continuous Anemo DMG to enemies in front of you.\n<br>\nThe vacuum vortex explodes when the skill duration ends, causing a greater amount of Anemo DMG over a larger area.</p>\n<h3>Hold</h3>\n<p>DMG and AoE will gradually increase</p>\n<h3>Elemental Absorption</h3>\n<p>If the vortex comes in contact with Hydro/Pyro/Cryo/Electro elements, it will deal additional elemental DMG of that type.\n<br>\nElemental Absorption may only occur once per use.</p>', 'Elemental Skill', '[{\"stat\":\"Initial Cutting DMG\",\"value\":\"12%\"},{\"stat\":\"Max Cutting DMG\",\"value\":\"16.8%\"},{\"stat\":\"Initial Storm DMG\",\"value\":\"176%\"},{\"stat\":\"Max Storm DMG\",\"value\":\"192%\"},{\"stat\":\"Base CD\",\"value\":\"5s\"},{\"stat\":\"Max Charging CD\",\"value\":\"8s\"}]', 'Traveler (Anemo)'),
(64, 'Gust Surge', '<p>Guiding the path of the wind currents, you summon a forward-moving tornado that pulls objects and opponents towards itself, dealing continuous Anemo DMG.</p>\n<h3>Elemental Absorption</h3>\n<p>If the tornado comes in contact with Hydro/Pyro/Cryo/Electro elements, it will deal additional elemental DMG of that type.\n<br>\nElemental Absorption may only occur once per use.</p>', 'Elemental Burst', '[{\"stat\":\"Tornado DMG\",\"value\":\"80.8%\"},{\"stat\":\"Additional Elemental DMG\",\"value\":\"24.8%\"},{\"stat\":\"Duration\",\"value\":\"6s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Traveler (Anemo)'),
(65, 'Foreign Rockblade', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"44.5%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"43.4%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"53%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"58.3%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"70.8%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"55.9% + 72.2%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Traveler (Geo)'),
(66, 'Starfell Sword', '<p>You disgorge a meteorite from the depths of the earth, dealing AoE Geo DMG.\n<br>\nThe meteorite is considered a Geo Construct, and can be climbed or used to block attacks.</p>\n<h3>Hold</h3>\n<p>The skill\'s positioning may be adjusted.</p>', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"248%\"},{\"stat\":\"Meteorite Duration\",\"value\":\"30s\"},{\"stat\":\"CD\",\"value\":\"8s\"}]', 'Traveler (Geo)'),
(67, 'Wake of Earth', 'Energizing the Geo elements deep underground, you set off expanding shockwaves.\n<br></br>\nLaunches surrounding enemies back and deals AoE Geo DMG.\n<br></br>\nA stone wall is erected at the edges of the shockwave.\n<br></br>\nThe stone wall is considered a Geo Construct, and may be used to block attacks.', 'Elemental Burst', '[{\"stat\":\"DMG Per Shockwave\",\"value\":\"148%\"},{\"stat\":\"Stonewall Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Traveler (Geo)'),
(68, 'Divine Marksmanship', '<h3>Normal Attack</h3>\n<p>Performs up to 6 consecutive shots with a bow.</p>\n<h3>Charged Attack</h3>\n<p>Perform a more precise Aimed Shot with increased DMG.\n<br>\nWhile aiming, favorable winds will accumulate on the arrowhead. A fully charged arrow will deal Anemo DMG.</p>\n<h3>Plunging Attack</h3>\n<p>Fires off a shower of arrows in mid-air before falling and striking the ground, dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"20.4% + 20.4%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"44.4%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"52.4%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"26.1% + 26.1%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"50.7%\"},{\"stat\":\"6-Hit DMG\",\"value\":\"71%\"},{\"stat\":\"Aimed Shot\",\"value\":\"43.9%\"},{\"stat\":\"Fully-Charged Aimed Shot\",\"value\":\"124%\"},{\"stat\":\"Plunge DMG\",\"value\":\"56.8%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"114% / 142%\"}]', 'Venti'),
(69, 'Skyward Sonnet', '<p>O wind upon which all hymns and songs fly, bear these earth-walkers up into the sky!</p>\n<h3>Press</h3>\n<p>Summons a Wind Domain at the enemy\'s location, dealing AoE Anemo DMG and launching enemies into the air.</p>\n<h3>Hold</h3>\n<p>Summons an even larger Wind Domain with Venti as the epicenter, dealing AoE Anemo DMG and launching affected enemies into the air.\n<br>\nAfter unleashing the Hold version of this ability, Venti rides the wind into the air.</p>\nEnemies hit by Skyward Sonnet will fall to the ground slowly.', 'Elemental Skill', '[{\"stat\":\"Press DMG\",\"value\":\"276%\"},{\"stat\":\"Press CD\",\"value\":\"6s\"},{\"stat\":\"Hold DMG\",\"value\":\"380%\"},{\"stat\":\"CD (hold)\",\"value\":\"15s\"}]', 'Venti'),
(70, 'Wind\'s Grand Ode', '<p>Fires off an arrow made of countless coalesced winds, creating a huge Stormeye that sucks in objects and enemies along its path, dealing continuous Anemo DMG.</p>\n<h3>Elemental Absorption</h3>\n<p>If the Stormeye comes into contact with Hydro/Pyro/Cryo/Electro elements, it will deal additional elemental DMG of that type.\n<br>\nElemental Absorption may only occur once per use.</p>', 'Elemental Burst', '[{\"stat\":\"DoT\",\"value\":\"47%\"},{\"stat\":\"Additional Elemental DMG\",\"value\":\"23.5%\"},{\"stat\":\"Duration\",\"value\":\"8s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Venti'),
(71, 'Dough-Fu', '<h3>Normal Attack</h3>\n<p>Performs up to 5 consecutive spear strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to lunge forward, dealing damage to enemies along the way.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"42.1%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"42.1%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"26.1% + 26.1%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"14.1% x 4\"},{\"stat\":\"5-Hit DMG\",\"value\":\"71%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"122%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"25\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Xiangling'),
(72, 'Guoba Attack', 'Summons Guoba the Panda. Guoba continuously breathes fire, dealing AoE Pyro DMG.', 'Elemental Skill', '[{\"stat\":\"Flame DMG\",\"value\":\"111%\"},{\"stat\":\"CD\",\"value\":\"12s\"}]', 'Xiangling'),
(73, 'Pyronado', 'Displaying her mastery over both fire and polearms, Xiangling sends a Pyronado whirling around her.\n<br>\nThe Pyronado will move with your character for so long as the ability persists, dealing Pyro DMG to all enemies in its path.', 'Elemental Burst', '[{\"stat\":\"1-Hit DMG\",\"value\":\"72%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"88%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"110%\"},{\"stat\":\"Pyronado DMG\",\"value\":\"112%\"},{\"stat\":\"Duration\",\"value\":\"10s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Xiangling'),
(74, 'Whirlwind Thrust', '<h3>Normal Attack</h3>\r\n<p>Perform up to 6 rapid strikes.</p>\r\n<h3>Charged Attack</h3>\r\n<p>Dive down and impact the ground, causing damage relative to the falling height. Can only be triggered in mid-air.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"24% + 24%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"50%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"60%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"33% + 33%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"63%\"},{\"stat\":\"6-Hit DMG\",\"value\":\"84%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"65%\"},{\"stat\":\"Height DMG\",\"value\":\"130% / 195%\"}]', 'Xiao'),
(75, 'Lemniscatic Wind Cycling', 'He lunges forward, dealing Anemo DMG to enemies along the path.<br>\nCan be used in mid-air.<br>\nHas 2 charges to begin with.', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"229%\"},{\"stat\":\"CD\",\"value\":\"10s\"}]', 'Xiao'),
(76, 'Bane of All Evil', 'Takes on the form of the yaksha that terrified both demons and archons alike millennia ago. For its duration, increases Xiao\'s attack range and DMG, while converting damage type to Anemo and enhancing Xiao\'s jumping ability.<br>\nMaintaining this form continuously drains Xiao\'s HP.', 'Elemental Burst', '[{\"stat\":\"Increased DMG\",\"value\":\"68.8%\"},{\"stat\":\"HP Loss\",\"value\":\"3% HP/s\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"15s\"},{\"stat\":\"Energy Cost\",\"value\":\"60\"}]', 'Xiao'),
(77, 'Guhua Style', '<h3>Normal Attack</h3>\n<p>Performs up to 5 rapid strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-aur to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[{\"stat\":\"1-Hit DMG\",\"value\":\"46.6%\"},{\"stat\":\"2-Hit DMG\",\"value\":\"47.6%\"},{\"stat\":\"3-Hit DMG\",\"value\":\"28.6% + 28.6%\"},{\"stat\":\"4-Hit DMG\",\"value\":\"56%\"},{\"stat\":\"5-Hit DMG\",\"value\":\"35.9% + 35.9%\"},{\"stat\":\"Charged Attack DMG\",\"value\":\"47.3% + 56.2%\"},{\"stat\":\"Charged Attack Stamina Cost\",\"value\":\"20\"},{\"stat\":\"Plunge DMG\",\"value\":\"63.9%\"},{\"stat\":\"Low / High Plunge DMG\",\"value\":\"128% / 160%\"}]', 'Xingqiu'),
(78, 'Guhua Sword - Fatal Rainscreen', 'Xingqiu performs twin strikes with his sword, dealing Hydro DMG. At the same time, this ability creates the maximum number of Rain Swords, which will orbit the character.\n<br>\nThe Rain Swords have the following properties:\n<ul>\n<li>When a character takes DMG, the Rain Sword will shatter, reducing the amount of DMG taken.</li>\n<li>Increases the character\'s resistance to interruption.</li>\n</ul>\n<p>20% of Xingqiu\'s Hydro DMG Bonus will be converted to additional DMG Reduction for the Rain Swords.</p>\n<p>The maximum amount of additional DMG Reduction that can be gained this way is 24%.\n<br>\nThe initial maximum number of Rain Swords is 3.\n<br>\nUsing this ability applies the Wet status onto the character.</p>', 'Elemental Skill', '[{\"stat\":\"Skill DMG\",\"value\":\"168% + 191%\"},{\"stat\":\"Damage Reduction Ratio\",\"value\":\"20%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"21s\"}]', 'Xingqiu'),
(79, 'Guhua Sword - Raincutter', '<p>Initiate Rainbow Bladework and fight using an illusory sword rain, while creating the maximum number of Rain Swords.</p>\n<h3>Rainbow Bladework</h3>\n<ul>\n<li>Normal Attacks will trigger consecutive sword rain attacks, dealing Hydro DMG.</li>\n<li>Rain Swords will remain at the maximum number throughout the ability\'s duration.</li>\n</ul>\n<p>These effects carry over to other characters.</p>', 'Elemental Burst', '[{\"stat\":\"Sword Rain DMG\",\"value\":\"54.3%\"},{\"stat\":\"Duration\",\"value\":\"15s\"},{\"stat\":\"CD\",\"value\":\"20s\"},{\"stat\":\"Energy Cost\",\"value\":\"80\"}]', 'Xingqiu'),
(80, 'Dance on Fire', '<h3>Normal Attack</h3>\n<p>Performs up to 4 consecutive strikes.</p>\n<h3>Charged Attack</h3>\n<p>Drains Stamina over time to perform continuous spinning attacks against all nearby enemies.\n<br>\nAt the end of the sequence, perform a more powerful slash.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[]', 'Xinyan'),
(81, 'Sweeping Fervor', '<p>Xinyan brandishes her instrument, dealing Pyro DMG on nearby enemies, forming a shield made out of her audience\'s passion.<br>\nThe shield\'s DMG Absorption scales based on Xinyan\'s DEF and on the number of enemies hit.</p>\n<ul>\n<li>Hitting 0-1 enemies grants Shield Level 1: Ad Lib.</li>\n<li>Hitting 2 enemies grants Shield Level 2: Lead-In.</li>\n<li>Hitting 3 or more enemies grants Shield Level 3: Rave, which will also deal intermittent Pyro DMG to nearby enemies.</li>\n</ul>\n<p>The shield has the following special properties:</p>\n<ul>\n<li>When unleashed, it infuses Xinyan with Pyro.</li>\n<li>It has 250% DMG Absorption effectiveness against Pyro DMG.</li>\n</ul>', 'Elemental Skill', '[]', 'Xinyan'),
(82, 'Riff Revolution', 'Strumming rapidly, Xinyan launches nearby enemies and deals Physical DMG to them, hyping up the crowd. The sheer intensity of the atmosphere will cause explosions that deal Pyro DMG to nearby enemies.', 'Elemental Burst', '[]', 'Xinyan'),
(83, 'Rain of Stone', '<h3>Normal Attack</h3>\n<p>Performs up to 6 consecutive spear strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to lunge forward, dealing damage to enemies along the way.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging enemies along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[]', 'Zhongli'),
(84, 'Dominus Lapidis', '<h3>Press</h3>\n<p>Commands the omnipresent power of earth to solidify into a Stone Stele, dealing AoE Geo DMG.<br>\nAdditionally, the Stone Stele will resonate with other Geo Constructs in the vicinity, dealing Geo DMG to surrounding enemies.<br>\nThe Stone Stele is considered a Geo Construct, and can both be climbed and used to block attacks. Only one may exist at any one time.</p>\n<h3>Hold</h3>\n<p>Causes nearby Geo energy to explode, causing the following effects:</p>\n<ul>\n<li>Creates a shield of jade. The shield\'s DMG Absorption scales based on Zhongli\'s Max HP, and absorbs Geo DMG 250% more effectively.</li>\n<li>Causes AoE Geo DMG.</li>\n<li>If there are nearby targets with the Geo element, it will drain a large amount of Geo element from a maximum of 2 such targets. This effect does not cause DMG.</li>\n</ul>', 'Elemental Skill', '[]', 'Zhongli'),
(85, 'Planet Befall', '<p>Brings a falling meteor down to earth, dealing massive Geo DMG to opponents caught in its AoE and applying the Petrification status to them.</p>\n<h3>Petrification</h3>\n<p>Opponents affected by the Petrification status cannot move.</p>', 'Elemental Burst', '[]', 'Zhongli'),
(89, 'Favonius Bladework - Weiss', '<h3>Normal Attack</h3>\n<p>Perform up to 5 rapid strikes.</p>\n<h3>Charged Attack</h3>\n<p>Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.</p>\n<h3>Plunging Attack</h3>\n<p>Plunges from mid-air to strike the ground below, damaging opponents along the path and dealing AoE DMG upon impact.</p>', 'Normal Attack', '[]', 'Albedo'),
(90, 'Abiogenesis: Solar Isotoma', '<p>Albedo creates a Solar Isotoma using alchemy, which deals AoE Geo DMG on appearance.</p>\r\n<h3>Solar Isotoma</h3>\r\n<ul>\n<li>When enemies within the Solar Isotoma zone are hit, the Solar Isotoma will generate Transient Blossoms which deal AoE Geo DMG. DMG dealt scales off Albedo\'s DEF.</li>\r\n<li>Transient Blossoms can only be generated once every 2s.</li>\r\n<li>When a character is located at the locus of the Solar Isotoma, the Solar Isotoma will accumulate Geo power to form a crystallized platform that lifts the character up to a certain height. Only one crystallized platform can exist at a time.</li>\r\n<li>Solar Isotoma is considered a Geo construct.</li>\n</ul>\r\n<p>Hold to designate the location of the skill.</p>', 'Elemental Skill', '[]', 'Albedo'),
(91, 'Rite of Progeniture: Tectonic Tide', '<p>Under Albedo\'s command, Geo crystals surge and burst forth, dealing AoE Geo DMG in front of him.<br>\nIf a Solar Isotoma created by Albedo himself is on the field, 7 Fatal Blossoms will be generated in the Solar Isotoma field, bursting violently into bloom and dealing AoE Geo DMG</p>\n<p>Tecotonic Tide DMG and Fatal Blossom DMG will not generate Transient Blossoms.</p>', 'Elemental Burst', '[]', 'Albedo');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `_ID` int(11) NOT NULL,
  `Pseudo` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Mail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`_ID`, `Pseudo`, `Password`, `Mail`) VALUES
(1, 'admin', 'admin', ''),
(3, 'Julien', '$2y$10$5FvtL6b1a558SzqusSDPBOwo.sRWKvUI7QIJS7hQHDHKFfVteTar.', ''),
(6, 'Thomas', '$2y$10$omnoMQcPmwAb0hnJhhKege7US2L21wgdCoxWQdtHGUaXusObM.irK', 'truhkjdyj@gmail.com'),
(8, 'Asgarrrr', '$2y$10$Mw5xQ31689fxpJ.TfiUZJO1fWRf6.kSYLL5MG.1dZ83KgTqGPHhxK', ''),
(9, 'Lucas', '$2y$10$GDvcI6b3I.ynSGEYdcQ1cOAE6Haehc5Vgi.V97FBpbIf/TUQDzIsa', ''),
(10, 'Sharko', '$2y$10$JPR2A2mSSXuDfKaT69PYY.P9ixmvTZmzjfL6GyIitrSCR7hD2Xz1m', ''),
(11, 'Langlace', '$2y$10$IRNavgKlNbeX3vMS59Yf.ekgeRgqjPm3RCYmun9o44PPjA84PT.yu', ''),
(12, 'Over_Draw', '$2y$10$/wM6yMShfPakjT3ek8gXROoknfr9rlEArL2YIHlqEEE3.naqKPmGi', '');

-- --------------------------------------------------------

--
-- Table structure for table `Weapons`
--

CREATE TABLE `Weapons` (
  `_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL,
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
(0, 'Skyward Blade', '0', 5, 44, 'Energy Recharge', NULL, 'Sky-Piercing Fang', 'CRIT Rate increased by 4%. Gains Skypiercing Might upon using an Elemental Burst:\r\nIncreases Movement SPD by 10%, increases ATK SPD by 10%, and increases the DMG of Normal and Charged Attack hits by 20% for 12s.', 'Gacha'),
(1, 'Aquila Favonia', '0', 5, 48, 'Physical DMG Bonus', NULL, 'Falcon\'s Defiance', 'ATK is increased by 20/25/30/35/40%. Triggers on taking DMG: the soul of the Falcon of the West awakens, holding the banner of the resistance aloft, regenerating HP equal to 100/115/130/145/160% of ATK and dealing 200/230/260/290/320% of ATK as DMG to surrounding enemies. This effect can only occur once every 15s.', 'Gacha'),
(2, 'The Flute', '0', 4, 42, 'ATK', NULL, 'Chord', 'Normal or Charged Attacks grant Harmonic on hits. Gaining 5 Harmonics triggers the power of music and deals 100/125/150/175/200% ATK DMG to surrounding enemies. Harmonics last up to 30s, and a maximum of 1 can be gained every 0.5s.', 'Gacha'),
(3, 'The Black Sword', '0', 4, 42, 'CRIT Rate', NULL, 'Justice', 'Increases DMG dealt by Normal and Charged Attacks by 20%.\r\nAdditionally, regenerates 60% of ATK as HP when Normal and Charged Attacks score a CRIT Hit. This effect can occur once every 5s.', 'BP Bounty'),
(5, 'Sacrificial Sword', '0', 4, 41, 'Energy Recharge', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(6, 'Royal Longsword', '0', 4, 42, 'ATK', NULL, 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(7, 'Prototype Rancour', '0', 4, 44, 'Physical DMG Bonus', NULL, 'Smashed Stone', 'On hit, Normal or Charged Attacks increase Base ATK and DEF by 4/4.5/5/5.5/6% for 6s. Max 4 stacks. Can only occur once every 0.3s.', 'Crafting'),
(8, 'Lion\'s Roar', '0', 4, 42, 'ATK', NULL, 'Bane of Fire and Thunder', 'Increases DMG against enemies affected by Pyro or Electro by 20/24/28/32/36%.', 'Gacha'),
(9, 'Iron Sting', '0', 4, 42, 'Elemental Mastery', NULL, 'Infusion Stinger', 'Dealing Elemental DMG increases all DMG by 6% for 6s. Max 2 stacks. Can only occur once every 1s.', 'Crafting'),
(10, 'Favonius Sword', '0', 4, 41, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(11, 'Blackcliff Longsword', '0', 4, 44, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(12, 'Traveler\'s Handy Sword', '0', 3, 40, 'DEF', NULL, 'Journey', 'Each Elemental Orb or Particle collected restores 1/1.25/1.5/1.75/2% HP.', 'Chest'),
(13, 'Skyrider Sword', '0', 3, 38, 'Energy Recharge', NULL, 'Determination', 'Using an Elemental Burst grants a 12/15/18/21/24% increase in ATK and Movement SPD for 12s.', 'Gacha'),
(14, 'Harbinger of Dawn', '0', 3, 39, 'CRIT DMG', NULL, 'Vigorous', 'When HP is above 90%, increases CRIT Rate by 14/18/22/24/28%.', 'Gacha'),
(15, 'Fillet Blade', '0', 3, 39, 'ATK', NULL, 'Gash', 'On hit, has 50% chance to deal 240/280/320/360/400% ATK DMG to a single enemy. Can only occur once every 15/14/13/12/11s.', 'Gacha'),
(16, 'Dark Iron Sword', '0', 3, 40, 'Elemental Mastery', NULL, 'Overloaded', 'Upon causing an Overloaded, Superconduct, Electro-Charged, or an Electro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha'),
(17, 'Cool Steel', '0', 3, 39, 'ATK', NULL, 'Bane of Water and Ice', 'Increases DMG against enemies affected by Hydro or Cryo by 12/15/18/21/24%.', 'Gacha'),
(18, 'Silver Sword', '0', 2, 33, '', NULL, '', '', 'Chest'),
(19, 'Dull Blade', '0', 1, 23, '', NULL, '', '', 'Chest'),
(20, 'Vortex Vanquisher', '1', 5, 46, 'ATK', NULL, 'Golden Majesty', 'Increases Shield Strength by 20/25/30/35/40%, scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield this ATK increase effect is increased by 100%.', 'Gacha'),
(21, 'Skyward Spine', '1', 5, 48, 'Energy Recharge', NULL, 'Black Wing', 'Increases CRIT Rate by 8% and increases Normal ATK SPD by 12%. Additionally, Normal and Charged Attacks hits on enemies have a 50% chance to trigger a vacuum blade that deals 40% of ATK as DMG in a small AoE. This effect can occur no more than once every 2s.', 'Gacha'),
(22, 'Primordial Jade Winged-Spear', '1', 5, 48, 'CRIT Rate', NULL, 'Eagle Spear of Justice', 'On hit, increases ATK by 3.2/3.9/4.6/5.3/6% for 6s. Max 7 stacks. Can only occur once every 0.3s. Full stacks increase Skill DMG by 12/16/20/24/28%.', 'Gacha'),
(25, 'Prototype Grudge', '1', 4, 42, 'Energy Recharge', NULL, 'Magic Affinity', 'After using an Elemental Skill, increases Normal and Charged Attack DMG by 8% for 12s. Max 2 stacks.', 'Crafting'),
(27, 'Favonius Lance', '1', 4, 44, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(28, 'Dragon\'s Bane', '1', 4, 41, 'Elemental Mastery', NULL, 'Bane of Flame and Water', 'Increases DMG against enemies affected by Hydro or Pyro by 20/24/28/32/36%.', 'Gacha'),
(29, 'Deathmatch', '1', 4, 41, 'CRIT Rate', NULL, 'Gladiator', 'If there are at least 2 opponents nearby, ATK is increased by 16% and DEF is increased by 16%. If there are less than 2 enemies nearby, ATK is increased by 24%.', 'BP Bounty'),
(30, 'Crescent Pike', '1', 4, 44, 'Physical DMG Bonus', NULL, 'Infusion Needle', 'After picking up an Elemental Orb/Particle, Normal and Charged Attacks deal an additional 20% ATK as DMG for 5s.', 'Crafting'),
(31, 'Blackcliff Pole', '1', 4, 42, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(32, 'White Tassel', '1', 3, 39, 'CRIT Rate', NULL, 'Sharp', 'Increases Normal Attack DMG by 24/30/36/42/48%.', 'Chest'),
(33, 'Halberd', '1', 3, 40, 'ATK', NULL, 'Heavy', 'Normal Attacks deal an additional 160/200/240/280/320% DMG. Can only occur once every 10s.', 'Gacha'),
(34, 'Black Tassel', '1', 3, 38, 'HP', NULL, 'Bane of the Soft', 'Increases DMG against slimes by 40/50/60/70/80%.', 'Gacha'),
(35, 'Iron Point', '1', 2, 33, '', NULL, '', '', 'Chest'),
(36, 'Beginner\'s Protector', '1', 1, 23, '', NULL, '', '', 'Gacha'),
(37, 'Wolf\'s Gravestone', '2', 5, 46, 'ATK', NULL, 'Wolfish Tracker', 'Increases Base ATK by 20/25/30/35/40%. On hit, attacks against enemies with less than 30% HP increase all party members\' Base ATK by 40/50/60/70/80% for 12s. Can only occur once every 30s.', 'Gacha'),
(38, 'The Unforged', '2', 5, 46, 'ATK', NULL, 'Golden Majesty', '\r\nIncreases Shield Strength by 20%, scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield this ATK increase effect is increased by 100%', 'Gacha'),
(39, 'Skyward Pride', '2', 5, 45, 'Energy Recharge', NULL, 'Sky-Ripping Dragon Spine', 'Increases all DMG by 8/10/12/14/16%. After using an Elemental Burst, Normal or Charged Attack, on hit, creates a vacuum blade that does 80/100/120/140/160% Physical DMG to enemies along its path. Lasts for 20s or 8 vacuum blades.', 'Gacha'),
(40, 'Whiteblind', '2', 4, 42, 'DEF', NULL, 'Infusion Blade', 'On hit, Normal or Charged Attacks increase Base ATK and DEF by 6/7.5/9/10.5/12% for 6s. Max 4 stacks. Can only occur once every 0.5s.', 'Crafting'),
(41, 'The Bell', '2', 4, 42, 'HP', NULL, 'Rebellious Guardian', 'Taking DMG generates a shield which absorbs DMG up to 20/23/26/29/32% of Max HP. This shield lasts for 10s or until broken, and can only be triggered once every 45s. While protected by the shield, the character gains 12/15/18/21/24% increased DMG.', 'Gacha'),
(42, 'Serpent Spine', '2', 4, 42, 'CRIT Rate', NULL, 'Wavesplitter', 'Every 4s a character is on the field, they will deal 6% more DMG and take 3% more DMG. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be cleared when the character takes DMG.', 'BP Bounty'),
(43, 'Sacrificial Greatsword', '2', 4, 44, 'Energy Recharge', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(44, 'Royal Greatsword', '2', 4, 43, 'ATK', NULL, 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(45, 'Rainslasher', '2', 4, 42, 'Elemental Mastery', NULL, 'Bane of Storm and Tide', 'Increases DMG against enemies affected by Hydro or Electro by 20/25/30/35/40%.', 'Gacha'),
(46, 'Prototype Aminus', '2', 4, 44, 'ATK', NULL, 'Crush', 'On hit, Normal or Charged Attacks have a 50% chance to deal an additional 240/300/360/420/480% ATK DMG to enemies within a small radius. Can only occur once every 15s.', 'Crafting'),
(48, 'Favonius Greatsword', '2', 4, 41, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(49, 'Blackcliff Slasher', '2', 4, 42, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(50, 'White Iron Greatsword', '2', 3, 39, 'DEF', NULL, 'Cull the Weak', 'Defeating an opponent restores 8/10/12/14/16% HP.', 'Gacha'),
(51, 'Skyrider Greatsword', '2', 3, 39, 'Physical DMG Bonus', NULL, 'Courage', 'On hit, Normal or Charged Attacks increase ATK by 6/7/8/9/10% for 6s. Max 4 stacks. Can only occur once every 0.5s.', 'Gacha'),
(52, 'Quartz', '2', 3, 40, ' Elemental Mastery', NULL, 'Residual Heat', 'Upon causing an Overloaded, Melt, Burning, Vaporize, or a Pyro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha'),
(53, 'Ferrous Shadow', '2', 3, 39, 'HP', NULL, 'Unbending', 'When HP falls below 70/75/80/85/90%, increases Charged Attack DMG by 30/35/40/45/50%, and Charged Attacks become much harder to interrupt.', 'Gacha'),
(54, 'Debate Club', '2', 3, 39, 'ATK', NULL, 'Blunt Conclusion', 'After using an Elemental Skill, Normal or Charged Attacks, on hit, deal an additional 60/75/90/105/120% ATK DMG in a small area. Effect lasts 15s. DMG can only occur once every 3s.', 'Gacha'),
(55, 'Bloodtainted Greatsword', '2', 3, 38, 'Elemental Mastery', NULL, 'Bane of Fire and Thunder', 'Increases DMG against enemies affected by Pyro or Electro by 12/15/18/21/24%.', 'Gacha'),
(56, 'Old Merc\'s Pal', '2', 2, 33, '', NULL, '', '', 'Chest'),
(57, 'Waster Greatsword', '2', 1, 23, '', NULL, '', '', 'Chest'),
(58, 'Skyward Atlas', '3', 5, 45, 'ATK', NULL, 'Wandering Clouds', 'Increases Elemental DMG Bonus by 12/15/18/21/24%. Normal Attack hits have a 50% chance to earn the favor of the clouds. which actively seek out nearby enemies to attack for 15s, dealing 160/200/240/280/320% ATK DMG. Can only occur once every 30s.', 'Gacha'),
(59, 'Lost Prayer to the Sacred Winds', '3', 5, 44, ' CRIT Rate', NULL, 'Boundless Blessing', 'Increases Movement SPD by 10%. When in battle, earn a 6/8/10/12/14% Elemental DMG Bonus every 4s. Max 4 stacks. Lasts until the character falls or leaves combat.', 'Gacha'),
(60, 'Memory of Dust', '3', 5, 46, 'ATK', NULL, 'Golden Majesty', 'Increase Shield Strength by 20/25/30/35/40%. Scoring hits on opponents increases ATK by 4/5/6/7/8% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.', 'Gacha'),
(62, 'The Widsith', '3', 4, 42, 'CRIT DMG', NULL, 'Debut', 'When the character takes the field, they gain a random theme song for 10s:\r\nRecitative: Increases Base ATK by 60%\r\nInterlude: Elemental Mastery is increased by 240\r\nAria: Increases all Elemental DMG by 48%\r\nCan only occur once every 30s', 'Gacha'),
(63, 'Solar Pearl', '3', 4, 42, ' CRIT Rate', NULL, 'Solar Shine', 'Normal Attack hits increase Elemental Skill and Elemental Burst DMG by 20/25/30/35/40% for 6s. Likewise, Elemental Skill or Elemental Burst hits increase Normal Attack DMG by 20/25/30/35/40% for 6s.', 'BP Bounty'),
(64, 'Sacrificial Fragments', '3', 4, 41, 'Elemental Mastery', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(65, 'Royal Grimoire', '3', 4, 44, 'ATK', NULL, 'Focus', 'Upon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(66, 'Prototype Malice', '3', 4, 42, 'HP', NULL, 'Gilding', 'Using an Elemental Burst regenerates 4/4.5/5/5.5/6 Energy every 2s for 6s. Additionally, all party members will regenerate 4/4.5/5/5.5/6% HP every 2s for this duration.', 'Crafting'),
(67, 'Mappa Mare', '3', 4, 44, 'Elemental Mastery', NULL, 'Infusion Scroll', 'Triggering an Elemental reaction grants a 8/10/12/14/16% Elemental DMG Bonus for 10s. Max 2 stacks.', 'Crafting'),
(68, 'Favonius Codex', '3', 4, 42, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(69, 'Eye of Perception', '3', 4, 41, 'ATK', NULL, 'Echo', 'Normal and Charged Attacks have a 50% chance to fire a Bolt of Perception, dealing 240/270/300/330/360% ATK as DMG. This bolt can bounce between enemies a maximum of 4 times. This effect can occur once every 12/11/10/9/8s.', 'Gacha'),
(70, 'Blackcliff Amulet', '3', 4, 42, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(71, 'Twin Nephrite', '3', 3, 40, 'CRIT Rate', NULL, 'Guerilla Tactic', 'Defeating an enemy increases Movement SPD and ATK by 12/14/16/18/20% for 15s.', 'Gacha'),
(72, 'Thrilling Tales of Dragon Slayers', '3', 3, 39, 'HP', NULL, 'Legacy', 'When switching characters, the new character taking the field has their ATK increased by 24/30/36/42/48% for 10s. This effect can only occur once every 20s.', 'Gacha'),
(73, 'Otherworldly Story', '3', 3, 39, 'Energy Recharge', NULL, 'Energy Shower', 'Each Elemental Orb or Particle collected restores 1/1.25/1.5/1.75/2% HP.', 'Gacha'),
(74, 'Magic Guide', '3', 3, 38, 'Elemental Mastery', NULL, 'Bane of Storm and Tide', 'Increases DMG against enemies affected by Hydro or Electro by 12/15/18/21/24%.', 'Gacha'),
(75, 'Emerald Orb', '3', 3, 40, 'Elemental Mastery', NULL, 'Rapids', 'Upon causing a Vaporize, Electro-Charged, Frozen, or a Hydro-infused Swirl reaction, increases Base ATK by 20/25/30/35/40% for 12s.', 'Gacha'),
(76, 'Amber Catalyst', '3', 3, 40, 'Elemental Mastery', NULL, 'Elemental Mastery', 'Normal Attack hits increase all Elemental DMG by 6/7.5/9/10.5/12% for 6s. Max 2 stacks.', 'Gacha'),
(77, 'Pocket Grimoire', '3', 2, 33, '', NULL, '', '', 'Gacha'),
(78, 'Apprentice\'s Notes', '3', 1, 23, '', NULL, '', '', 'Gacha'),
(79, 'Skyward Harp', '4', 5, 45, 'CRIT Rate', NULL, 'Echoing Ballad', 'Increases CRIT DMG by 20/25/30/35/40%. Hits have a 60/70/80/90/100% chance to inflict a small AoE attack, dealing 100% Physical ATK DMG. Can only occur once every 4s.', 'Gacha'),
(80, 'Amos\' Bow', '4', 5, 46, 'ATK', NULL, 'Strong-Willed', 'Increases Normal Attack and Aimed Shot DMG by 12/15/18/21/24%. Increases DMG from arrows shot by a further 8/10/12/14/16% for every 0.1s that the arrow is in flight, up to 0.5s. Stacks up to 5 times on each arrow.', 'Gacha'),
(81, 'The Viridescent Hunt', '4', 4, 42, 'CRIT Rate', NULL, 'Verdant Wind', 'Upon hit, Normal and Aimed Shot Attacks have a 50% chance to generate a Cyclone, which will continuously attract surrounding enemies, dealing 40% of ATK as DMG to these enemies every 0.5s for 4s. This effect can only occur once every 14s.', 'BP Bounty'),
(82, 'The Stringless', '4', 4, 42, 'Elemental Mastery', NULL, 'Arrowless Song', 'Increases Elemental Skill and Elemental Burst DMG by 24/30/36/42/48%.', 'Gacha'),
(83, 'Sacrificial Bow', '4', 4, 44, 'Energy Recharge', NULL, 'Composed', 'After damaging an opponent with an Elemental Skill, the skill has a 40/50/60/70/80% chance to end its own CD. Can only occur once every 30/26/22/18/14s.', 'Gacha'),
(84, 'Rust', '4', 4, 42, 'ATK', NULL, 'Rapid Firing', 'Increases Normal Attack DMG by 40/50/60/70/80% but decreases Aimed Shot DMG by 8/9/10/11/12%', 'Gacha'),
(85, 'Royal Bow', '4', 4, 42, 'ATK', NULL, 'Focus', '\r\nUpon damaging an enemy, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all stacks.', 'Starglitter Exchange'),
(86, 'Prototype Crescent', '4', 4, 42, 'ATK', NULL, 'Unreturning', 'Aimed Shot hits on weak points increase Movement SPD by 10% and ATK by 6% for 10s.', 'Crafting'),
(87, 'Favonius Warbow', '4', 4, 41, 'Energy Recharge', NULL, 'Windfall', 'CRIT hits have a 60/70/80/90/100% chance to generate 1 Elemental Orb, which will regenerate 6 Energy for the character. Can only occur once every 12/10.5/9/7.5/6s.', 'Gacha'),
(88, 'Compound Bow', '4', 4, 41, 'Physical DMG Bonus', NULL, 'Infusion Arrow', 'Normal Attack and Aimed Shot hits increase ATK by 4/5/6/7/8% and Normal Attack SPD by 1.2/1.5/1.8/2.1/2.4% for 6s. Max 4 stacks. Can only occur once every 0.3s.', 'Crafting'),
(89, 'Blackcliff Warbow', '4', 4, 44, 'CRIT DMG', NULL, 'Press the Advantage', 'After defeating an enemy, ATK is increased by 12/15/18/21/24% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.', 'Starglitter Exchange'),
(91, 'Slingshot', '4', 3, 38, 'CRIT Rate', NULL, 'Slingshot', 'If a Normal Attack or Aimed Shot hits a target within 0.3s of being fired, increases DMG by 36/42/48/54/60%; otherwise, it decreases DMG by 10%.', 'Gacha'),
(92, 'Sharpshooter\'s Oath', '4', 3, 39, 'CRIT DMG', NULL, 'Precise', 'Increases DMG against weak spots by 24/30/36/42/48%.', 'Gacha'),
(93, 'Recurve Bow', '4', 3, 38, 'HP', NULL, 'Cull the Weak', 'Defeating an opponent restores 8/10/12/14/16% HP.', 'Chest'),
(94, 'Raven Bow', '4', 3, 40, 'Elemental Mastery', NULL, 'Bane of Flame and Water', 'Increases DMG against enemies affected by Hydro or Pyro by 12/15/18/21/24%', 'Gacha'),
(95, 'Messenger', '4', 3, 40, 'CRIT DMG', NULL, 'Archer\'s Message', 'Aimed Shot hits on weak spots deal an additional 100/125/150/175/200% ATK DMG as CRIT DMG. Can only occur once every 10s.', 'Chest'),
(96, 'Ebony Bow', '4', 3, 40, 'ATK', NULL, 'Decimate', 'Increases DMG against mechanoid Ruin enemies by 40/50/60/70/80%.', 'Gacha'),
(97, 'Seasoned Hunter\'s Bow', '4', 2, 33, '', NULL, '', '', 'Gacha'),
(98, 'Hunter\'s Bow', '4', 1, 23, '', NULL, '', '', 'Gacha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artefact`
--
ALTER TABLE `Artefact`
  ADD PRIMARY KEY (`_ID`),
  ADD UNIQUE KEY `_GID` (`_GID`);

--
-- Indexes for table `Box`
--
ALTER TABLE `Box`
  ADD PRIMARY KEY (`_IDBox`),
  ADD KEY `_IDUser` (`_IDUser`),
  ADD KEY `_IDCharacter` (`_IDCharacter`);

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`_ID`),
  ADD UNIQUE KEY `_IDArtefact` (`_IDArtefact2`,`_IDArme`),
  ADD KEY `Skill1` (`Skill1`),
  ADD KEY `Skill2` (`Skill2`),
  ADD KEY `Skill3` (`Skill3`),
  ADD KEY `_IDConstellations6` (`_IDConstellations6`),
  ADD KEY `_IDConstellations5` (`_IDConstellations5`),
  ADD KEY `_IDConstellations4` (`_IDConstellations4`),
  ADD KEY `_IDConstellations3` (`_IDConstellations3`),
  ADD KEY `_IDConstellations2` (`_IDConstellations2`),
  ADD KEY `_IDConstellations1` (`_IDConstellations1`),
  ADD KEY `_IDPassive3` (`_IDPassive3`),
  ADD KEY `_IDPassive2` (`_IDPassive2`),
  ADD KEY `_IDPassive1` (`_IDPassive1`),
  ADD KEY `_IDArme` (`_IDArme`),
  ADD KEY `_IDArtefact_2` (`_IDArtefact`);

--
-- Indexes for table `Constellations`
--
ALTER TABLE `Constellations`
  ADD PRIMARY KEY (`_ID`),
  ADD KEY `_IDCharacter` (`_IDCharacter`);

--
-- Indexes for table `Passives`
--
ALTER TABLE `Passives`
  ADD PRIMARY KEY (`_ID`),
  ADD KEY `_IDCharacter` (`_IDCharacter`);

--
-- Indexes for table `Skills`
--
ALTER TABLE `Skills`
  ADD PRIMARY KEY (`_ID`),
  ADD KEY `_IDCharacter` (`_IDCharacter`);

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
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `Box`
--
ALTER TABLE `Box`
  MODIFY `_IDBox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Constellations`
--
ALTER TABLE `Constellations`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `Passives`
--
ALTER TABLE `Passives`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `Skills`
--
ALTER TABLE `Skills`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Weapons`
--
ALTER TABLE `Weapons`
  MODIFY `_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Box`
--
ALTER TABLE `Box`
  ADD CONSTRAINT `Box_ibfk_1` FOREIGN KEY (`_IDUser`) REFERENCES `User` (`_ID`),
  ADD CONSTRAINT `Box_ibfk_2` FOREIGN KEY (`_IDCharacter`) REFERENCES `Characters` (`_ID`);

--
-- Constraints for table `Characters`
--
ALTER TABLE `Characters`
  ADD CONSTRAINT `Characters_ibfk_12` FOREIGN KEY (`_IDPassive1`) REFERENCES `Passives` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_13` FOREIGN KEY (`_IDPassive2`) REFERENCES `Passives` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_14` FOREIGN KEY (`_IDPassive3`) REFERENCES `Passives` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_15` FOREIGN KEY (`_IDConstellations1`) REFERENCES `Constellations` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_16` FOREIGN KEY (`_IDConstellations2`) REFERENCES `Constellations` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_17` FOREIGN KEY (`_IDConstellations3`) REFERENCES `Constellations` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_18` FOREIGN KEY (`_IDConstellations4`) REFERENCES `Constellations` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_19` FOREIGN KEY (`_IDConstellations5`) REFERENCES `Constellations` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_20` FOREIGN KEY (`_IDConstellations6`) REFERENCES `Constellations` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_21` FOREIGN KEY (`Skill1`) REFERENCES `Skills` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_22` FOREIGN KEY (`Skill2`) REFERENCES `Skills` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_23` FOREIGN KEY (`Skill3`) REFERENCES `Skills` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_24` FOREIGN KEY (`_IDArme`) REFERENCES `Weapons` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_25` FOREIGN KEY (`_IDArtefact`) REFERENCES `Artefact` (`_ID`),
  ADD CONSTRAINT `Characters_ibfk_26` FOREIGN KEY (`_IDArtefact2`) REFERENCES `Artefact` (`_ID`);

--
-- Constraints for table `Constellations`
--
ALTER TABLE `Constellations`
  ADD CONSTRAINT `Constellations_ibfk_1` FOREIGN KEY (`_IDCharacter`) REFERENCES `Characters` (`_ID`);

--
-- Constraints for table `Passives`
--
ALTER TABLE `Passives`
  ADD CONSTRAINT `Passives_ibfk_1` FOREIGN KEY (`_IDCharacter`) REFERENCES `Characters` (`_ID`);

--
-- Constraints for table `Skills`
--
ALTER TABLE `Skills`
  ADD CONSTRAINT `Skills_ibfk_1` FOREIGN KEY (`_IDCharacter`) REFERENCES `Characters` (`_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
