-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: mangos_zero_clean
-- ------------------------------------------------------
-- Server version	5.1.40-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areatrigger_involvedrelation`
--

DROP TABLE IF EXISTS `areatrigger_involvedrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatrigger_involvedrelation`
--

LOCK TABLES `areatrigger_involvedrelation` WRITE;
/*!40000 ALTER TABLE `areatrigger_involvedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_involvedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_scripts`
--

DROP TABLE IF EXISTS `areatrigger_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_scripts` (
  `entry` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatrigger_scripts`
--

LOCK TABLES `areatrigger_scripts` WRITE;
/*!40000 ALTER TABLE `areatrigger_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_tavern`
--

DROP TABLE IF EXISTS `areatrigger_tavern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_tavern` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatrigger_tavern`
--

LOCK TABLES `areatrigger_tavern` WRITE;
/*!40000 ALTER TABLE `areatrigger_tavern` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_tavern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatrigger_teleport`
--

DROP TABLE IF EXISTS `areatrigger_teleport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_teleport` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `name` text,
  `required_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required_item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `required_item2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `heroic_key` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `heroic_key2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `required_quest_done` int(11) unsigned NOT NULL DEFAULT '0',
  `required_failed_text` text,
  `target_map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_position_x` float NOT NULL DEFAULT '0',
  `target_position_y` float NOT NULL DEFAULT '0',
  `target_position_z` float NOT NULL DEFAULT '0',
  `target_orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatrigger_teleport`
--

LOCK TABLES `areatrigger_teleport` WRITE;
/*!40000 ALTER TABLE `areatrigger_teleport` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatrigger_teleport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battleground_events`
--

DROP TABLE IF EXISTS `battleground_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battleground_events` (
  `map` smallint(5) NOT NULL,
  `event1` tinyint(3) unsigned NOT NULL,
  `event2` tinyint(3) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`map`,`event1`,`event2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battleground_events`
--

LOCK TABLES `battleground_events` WRITE;
/*!40000 ALTER TABLE `battleground_events` DISABLE KEYS */;
INSERT INTO `battleground_events` VALUES (489,0,0,'Alliance Flag'),(489,1,0,'Horde Flag'),(489,2,0,'Spirit Guides'),(489,254,0,'Doors'),(529,0,0,'Stables - neutral'),(529,0,1,'Stables - alliance contested'),(529,0,2,'Stables - horde contested'),(529,0,3,'Stables - alliance owned'),(529,0,4,'Stables - horde owned'),(529,1,0,'Blacksmith - neutral'),(529,1,1,'Blacksmith - alliance contested'),(529,1,2,'Blacksmith - horde contested'),(529,1,3,'Blacksmith - alliance owned'),(529,1,4,'Blacksmith - horde owned'),(529,2,0,'Farm - neutral'),(529,2,1,'Farm - alliance contested'),(529,2,2,'Farm - horde contested'),(529,2,3,'Farm - alliance owned'),(529,2,4,'Farm - horde owned'),(529,3,0,'Lumber Mill - neutral'),(529,3,1,'Lumber Mill - alliance contested'),(529,3,2,'Lumber Mill - horde contested'),(529,3,3,'Lumber Mill - alliance owned'),(529,3,4,'Lumber Mill - horde owned'),(529,4,0,'Gold Mine - neutral'),(529,4,1,'Gold Mine - alliance contested'),(529,4,2,'Gold Mine - horde contested'),(529,4,3,'Gold Mine - alliance owned'),(529,4,4,'Gold Mine - horde owned'),(529,254,0,'doors'),(566,0,0,'Fel Reaver - alliance'),(566,0,1,'Fel Reaver - horde'),(566,0,2,'Fel Reaver - neutral'),(566,1,0,'Blood Elf - alliance'),(566,1,1,'Blood Elf - horde'),(566,1,2,'Blood Elf - neutral'),(566,2,0,'Draenei Ruins - alliance'),(566,2,1,'Draenei Ruins - horde'),(566,2,2,'Draenei Ruins - neutral'),(566,3,0,'Mage Tower - alliance'),(566,3,1,'Mage Tower - horde'),(566,3,2,'Mage Tower - neutral'),(566,4,0,'capture flag - Fel Reaver'),(566,4,1,'capture flag - Blood Elf'),(566,4,2,'capture flag - Draenei Ruins'),(566,4,3,'capture flag - Mage Tower'),(566,4,4,'capture flag - center'),(566,254,0,'doors'),(30,254,0,'Doors'),(30,0,0,'Firstaid Station - Alliance assaulted'),(30,0,1,'Firstaid Station - ALliance control'),(30,0,2,'Firstaid Station - Horde assaulted'),(30,0,3,'Firstaid Station - Horde control'),(30,1,0,'Stormpike Grave - Alliance assaulted'),(30,1,1,'Stormpike Grave - ALliance control'),(30,1,2,'Stormpike Grave - Horde assaulted'),(30,1,3,'Stormpike Grave - Horde control'),(30,2,0,'Stoneheart Grave - Alliance assaulted'),(30,2,1,'Stoneheart Grave - ALliance control'),(30,2,2,'Stoneheart Grave - Horde assaulted'),(30,2,3,'Stoneheart Grave - Horde control'),(30,3,0,'Snowfall Grave - Alliance assaulted'),(30,3,1,'Snowfall Grave - ALliance control'),(30,3,2,'Snowfall Grave - Horde assaulted'),(30,3,3,'Snowfall Grave - Horde control'),(30,3,5,'Snowfall Grave - Neutral control'),(30,4,0,'Iceblood Grave - Alliance assaulted'),(30,4,1,'Iceblood Grave - ALliance control'),(30,4,2,'Iceblood Grave - Horde assaulted'),(30,4,3,'Iceblood Grave - Horde control'),(30,5,0,'Frostwolf Grave - Alliance assaulted'),(30,5,1,'Frostwolf Grave - ALliance control'),(30,5,2,'Frostwolf Grave - Horde assaulted'),(30,5,3,'Frostwolf Grave - Horde control'),(30,6,0,'Frostwolf Hut - Alliance assaulted'),(30,6,1,'Frostwolf Hut - ALliance control'),(30,6,2,'Frostwolf Hut - Horde assaulted'),(30,6,3,'Frostwolf Hut - Horde control'),(30,7,1,'Dunbaldar South - ALliance control'),(30,7,2,'Dunbaldar South - Horde assaulted'),(30,7,3,'Dunbaldar South - Horde control'),(30,8,1,'Dunbaldar North - ALliance control'),(30,8,2,'Dunbaldar North - Horde assaulted'),(30,8,3,'Dunbaldar North - Horde control'),(30,9,1,'Icewing Bunker - ALliance control'),(30,9,2,'Icewing Bunker - Horde assaulted'),(30,9,3,'Icewing Bunker - Horde control'),(30,10,1,'Stoneheart Bunker - ALliance control'),(30,10,2,'Stoneheart Bunker - Horde assaulted'),(30,10,3,'Stoneheart Bunker - Horde control'),(30,11,0,'Iceblood Tower - Alliance assaulted'),(30,11,1,'Iceblood Tower - ALliance control'),(30,11,3,'Iceblood Tower - Horde control'),(30,12,0,'Tower Point - Alliance assaulted'),(30,12,1,'Tower Point - ALliance control'),(30,12,3,'Tower Point - Horde control'),(30,13,0,'Frostwolf east Tower - Alliance assaulted'),(30,13,1,'Frostwolf east Tower - ALliance control'),(30,13,3,'Frostwolf east Tower - Horde control'),(30,14,0,'Frostwolf west Tower - Alliance assaulted'),(30,14,1,'Frostwolf west Tower - ALliance control'),(30,14,3,'Frostwolf west Tower - Horde control'),(30,15,0,'Firstaid Station - Alliance Defender Quest0'),(30,15,1,'Firstaid Station - Alliance Defender Quest1'),(30,15,2,'Firstaid Station - Alliance Defender Quest2'),(30,15,3,'Firstaid Station - Alliance Defender Quest3'),(30,15,4,'Firstaid Station - Horde Defender Quest0'),(30,15,5,'Firstaid Station - Horde Defender Quest1'),(30,15,6,'Firstaid Station - Horde Defender Quest2'),(30,15,7,'Firstaid Station - Horde Defender Quest3'),(30,16,0,'Stormpike Grave - Alliance Defender Quest0'),(30,16,1,'Stormpike Grave - Alliance Defender Quest1'),(30,16,2,'Stormpike Grave - Alliance Defender Quest2'),(30,16,3,'Stormpike Grave - Alliance Defender Quest3'),(30,16,4,'Stormpike Grave - Horde Defender Quest0'),(30,16,5,'Stormpike Grave - Horde Defender Quest1'),(30,16,6,'Stormpike Grave - Horde Defender Quest2'),(30,16,7,'Stormpike Grave - Horde Defender Quest3'),(30,17,0,'Stoneheart Grave - Alliance Defender Quest0'),(30,17,1,'Stoneheart Grave - Alliance Defender Quest1'),(30,17,2,'Stoneheart Grave - Alliance Defender Quest2'),(30,17,3,'Stoneheart Grave - Alliance Defender Quest3'),(30,17,4,'Stoneheart Grave - Horde Defender Quest0'),(30,17,5,'Stoneheart Grave - Horde Defender Quest1'),(30,17,6,'Stoneheart Grave - Horde Defender Quest2'),(30,17,7,'Stoneheart Grave - Horde Defender Quest3'),(30,18,0,'Snowfall Grave - Alliance Defender Quest0'),(30,18,1,'Snowfall Grave - Alliance Defender Quest1'),(30,18,2,'Snowfall Grave - Alliance Defender Quest2'),(30,18,3,'Snowfall Grave - Alliance Defender Quest3'),(30,18,4,'Snowfall Grave - Horde Defender Quest0'),(30,18,5,'Snowfall Grave - Horde Defender Quest1'),(30,18,6,'Snowfall Grave - Horde Defender Quest2'),(30,18,7,'Snowfall Grave - Horde Defender Quest3'),(30,19,0,'Iceblood Grave - Alliance Defender Quest0'),(30,19,1,'Iceblood Grave - Alliance Defender Quest1'),(30,19,2,'Iceblood Grave - Alliance Defender Quest2'),(30,19,3,'Iceblood Grave - Alliance Defender Quest3'),(30,19,4,'Iceblood Grave - Horde Defender Quest0'),(30,19,5,'Iceblood Grave - Horde Defender Quest1'),(30,19,6,'Iceblood Grave - Horde Defender Quest2'),(30,19,7,'Iceblood Grave - Horde Defender Quest3'),(30,20,0,'Frostwolf Grave - Alliance Defender Quest0'),(30,20,1,'Frostwolf Grave - Alliance Defender Quest1'),(30,20,2,'Frostwolf Grave - Alliance Defender Quest2'),(30,20,3,'Frostwolf Grave - Alliance Defender Quest3'),(30,20,4,'Frostwolf Grave - Horde Defender Quest0'),(30,20,5,'Frostwolf Grave - Horde Defender Quest1'),(30,20,6,'Frostwolf Grave - Horde Defender Quest2'),(30,20,7,'Frostwolf Grave - Horde Defender Quest3'),(30,21,0,'Frostwolf Hut - Alliance Defender Quest0'),(30,21,1,'Frostwolf Hut - Alliance Defender Quest1'),(30,21,2,'Frostwolf Hut - Alliance Defender Quest2'),(30,21,3,'Frostwolf Hut - Alliance Defender Quest3'),(30,21,4,'Frostwolf Hut - Horde Defender Quest0'),(30,21,5,'Frostwolf Hut - Horde Defender Quest1'),(30,21,6,'Frostwolf Hut - Horde Defender Quest2'),(30,21,7,'Frostwolf Hut - Horde Defender Quest3'),(30,46,0,'North Mine - Alliance Boss'),(30,46,1,'North Mine - Horde Boss'),(30,46,2,'North Mine - Neutral Boss'),(30,47,0,'South Mine - Alliance Boss'),(30,47,1,'South Mine - Horde Boss'),(30,47,2,'South Mine - Neutral Boss'),(30,48,0,'Alliance Captain'),(30,49,0,'Horde Captain'),(30,50,0,'North Mine - Alliance Control'),(30,50,1,'North Mine - Horde Control'),(30,50,2,'North Mine - Neutral Control'),(30,51,0,'South Mine - Alliance Control'),(30,51,1,'South Mine - Horde Control'),(30,51,2,'South Mine - Neutral Control'),(30,52,0,'Alliance Marshal - Dunbaldar South'),(30,53,0,'Alliance Marshal - Dunbaldar North'),(30,54,0,'Alliance Marshal - Icewing Bunker'),(30,55,0,'Alliance Marshal - Stoneheart Bunker'),(30,56,0,'Horde Marshal - Iceblood Tower'),(30,57,0,'Horde Marshal - Towerpoint'),(30,58,0,'Horde Marshal - East Frostwolf Tower'),(30,59,0,'Horde Marshal - West Frostwolf Tower'),(30,60,0,'Herald - that guy who yells all the time ;)'),(30,61,0,'Alliance - Boss'),(30,62,0,'Horde - Boss'),(30,63,0,'Alliance - Captain Dead'),(30,64,0,'Horde - Captain Dead');
/*!40000 ALTER TABLE `battleground_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battleground_template`
--

DROP TABLE IF EXISTS `battleground_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battleground_template` (
  `id` mediumint(8) unsigned NOT NULL,
  `MinPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinLvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceStartLoc` mediumint(8) unsigned NOT NULL,
  `AllianceStartO` float NOT NULL,
  `HordeStartLoc` mediumint(8) unsigned NOT NULL,
  `HordeStartO` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battleground_template`
--

LOCK TABLES `battleground_template` WRITE;
/*!40000 ALTER TABLE `battleground_template` DISABLE KEYS */;
INSERT INTO `battleground_template` VALUES (1,0,0,0,0,611,2.72532,610,2.27452),(2,0,0,0,0,769,3.14159,770,3.14159),(4,0,2,10,70,929,0,936,3.14159),(3,0,0,0,0,890,3.40156,889,0.263892),(5,0,2,10,70,939,0,940,3.14159),(6,0,2,10,70,0,0,0,0),(7,0,0,0,0,1103,3.40156,1104,0.263892),(8,0,2,10,70,1258,0,1259,3.14159);
/*!40000 ALTER TABLE `battleground_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battlemaster_entry`
--

DROP TABLE IF EXISTS `battlemaster_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battlemaster_entry` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of a creature',
  `bg_template` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battlemaster_entry`
--

LOCK TABLES `battlemaster_entry` WRITE;
/*!40000 ALTER TABLE `battlemaster_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlemaster_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `security` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `help` longtext,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Chat System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
INSERT INTO `command` VALUES ('account',0,'Syntax: .account\r\n\r\nDisplay the access level of your account.'),('account create',4,'Syntax: .account create $account $password\r\n\r\nCreate account and set password to it.'),('account delete',4,'Syntax: .account delete $account\r\n\r\nDelete account with all characters.'),('account lock',0,'Syntax: .account lock [on|off]\r\n\r\nAllow login from account only from current used IP or remove this requirement.'),('account onlinelist',4,'Syntax: .account onlinelist\r\n\r\nShow list of online accounts.'),('account password',0,'Syntax: .account password $old_password $new_password $new_password\r\n\r\nChange your account password.'),('account set addon',3,'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (possible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),('account set gmlevel',4,'Syntax: .account set gmlevel [$account] #level\r\n\r\nSet the security level for targeted player (can\'t be used at self) or for account $name to a level of #level.\r\n\r\n#level may range from 0 to 3.'),('account set password',4,'Syntax: .account set password $account $password $password\r\n\r\nSet password for account.'),('additem',3,'Syntax: .additem #itemid/[#itemname]/#shift-click-item-link #itemcount\r\n\r\nAdds the specified number of items of id #itemid (or exact (!) name $itemname in brackets, or link created by shift-click at item in inventory or recipe) to your or selected character inventory. If #itemcount is omitted, only one item will be added.\r\n.'),('additemset',3,'Syntax: .additemset #itemsetid\r\n\r\nAdd items from itemset of id #itemsetid to your or selected character inventory. Will add by one example each item from itemset.'),('announce',1,'Syntax: .announce $MessageToBroadcast\r\n\r\nSend a global message to all players online in chat log.'),('aura',3,'Syntax: .aura #spellid\r\n\r\nAdd the aura from spell #spellid to the selected Unit.'),('ban account',3,'Syntax: .ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),('ban character',3,'Syntax: .ban character $Name $bantime $reason\r\nBan account and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),('ban ip',3,'Syntax: .ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),('baninfo account',3,'Syntax: .baninfo account $accountid\r\nWatch full information about a specific ban.'),('baninfo character',3,'Syntax: .baninfo character $charactername \r\nWatch full information about a specific ban.'),('baninfo ip',3,'Syntax: .baninfo ip $ip\r\nWatch full information about a specific ban.'),('bank',3,'Syntax: .bank\r\n\r\nShow your bank inventory.'),('banlist account',3,'Syntax: .banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.'),('banlist character',3,'Syntax: .banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.'),('banlist ip',3,'Syntax: .banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.'),('cast',3,'Syntax: .cast #spellid [triggered]\r\n  Cast #spellid to selected target. If no target selected cast to self. If \'trigered\' or part provided then spell casted with triggered flag.'),('cast back',3,'Syntax: .cast back #spellid [triggered]\r\n  Selected target will cast #spellid to your character. If \'trigered\' or part provided then spell casted with triggered flag.'),('cast dist',3,'Syntax: .cast dist #spellid [#dist [triggered]]\r\n  You will cast spell to pint at distance #dist. If \'trigered\' or part provided then spell casted with triggered flag. Not all spells can be casted as area spells.'),('cast self',3,'Syntax: .cast self #spellid [triggered]\r\nCast #spellid by target at target itself. If \'trigered\' or part provided then spell casted with triggered flag.'),('cast target',3,'Syntax: .cast target #spellid [triggered]\r\n  Selected target will cast #spellid to his victim. If \'trigered\' or part provided then spell casted with triggered flag.'),('character delete',4,'Syntax: .character delete $name\r\n\r\nDelete character $name.'),('character level',3,'Syntax: .character level [$playername] [#level]\r\n\r\nSet the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent values recalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.'),('character rename',2,'Syntax: .character rename [$name]\r\n\r\nMark selected in game or by $name in command character for rename at next login.'),('character reputation',2,'Syntax: .character reputation [$player_name]\r\n\r\nShow reputation information for selected player or player find by $player_name.'),('combatstop',2,'Syntax: .combatstop [$playername]\r\nStop combat for selected character. If selected non-player then command applied to self. If $playername provided then attempt applied to online player $playername.'),('commands',0,'Syntax: .commands\r\n\r\nDisplay a list of available commands for your account level.'),('cooldown',3,'Syntax: .cooldown [#spell_id]\r\n\r\nRemove all (if spell_id not provided) or #spel_id spell cooldown from selected character or you (if no selection).'),('damage',3,'Syntax: .damage $damage_amount [$school [$spellid]]\r\n\r\nApply $damage to target. If not $school and $spellid provided then this flat clean melee damage without any modifiers. If $school provided then damage modified by armor reduction (if school physical), and target absorbing modifiers and result applied as melee damage to target. If spell provided then damage modified and applied as spell damage. $spellid can be shift-link.'),('debug anim',2,'Syntax: .debug anim #emoteid\r\n\r\nPlay emote #emoteid for your character.'),('debug bg',3,'Syntax: .debug bg\r\n\r\nToggle debug mode for battlegrounds. In debug mode GM can start battleground with single player.'),('debug getvalue',3,'Syntax: .debug getvalue #field #isInt\r\n\r\nGet the field #field of the selected creature. If no creature is selected, get the content of your field.\r\n\r\nUse a #isInt of value 1 if the expected field content is an integer.'),('debug play cinematic',1,'Syntax: .debug play cinematic #cinematicid\r\n\r\nPlay cinematic #cinematicid for you. You stay at place while your mind fly.\r\n'),('debug play sound',1,'Syntax: .debug play sound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...'),('debug setvalue',3,'Syntax: .debug setvalue #field #value #isInt\r\n\r\nSet the field #field of the selected creature with value #value. If no creature is selected, set the content of your field.\r\n\r\nUse a #isInt of value 1 if #value is an integer.'),('debug update',3,'Syntax: .debug update #field #value\r\n\r\nUpdate the field #field of the selected character or creature with value #value.\r\n\r\nIf no #value is provided, display the content of field #field.'),('debug Mod32Value',3,'Syntax: .debug Mod32Value #field #value\r\n\r\nAdd #value to field #field of your character.'),('delticket',2,'Syntax: .delticket all\r\n        .delticket #num\r\n        .delticket $character_name\r\n\rall to dalete all tickets at server, $character_name to delete ticket of this character, #num to delete ticket #num.'),('demorph',2,'Syntax: .demorph\r\n\r\nDemorph the selected player.'),('die',3,'Syntax: .die\r\n\r\nKill the selected player. If no player is selected, it will kill you.'),('dismount',0,'Syntax: .dismount\r\n\r\nDismount you, if you are mounted.'),('distance',3,'Syntax: .distance [$name/$link]\r\n\r\nDisplay the distance from your character to the selected creature/player, or player with name $name, or player/creature/gameobject pointed to shift-link with guid.'),('event',2,'Syntax: .event #event_id\r\nShow details about event with #event_id.'),('event list',2,'Syntax: .event list\r\nShow list of currently active events.\r\nShow list of all events'),('event start',2,'Syntax: .event start #event_id\r\nStart event #event_id. Set start time for event to current moment (change not saved in DB).'),('event stop',2,'Syntax: .event stop #event_id\r\nStop event #event_id. Set start time for event to time in past that make current moment is event stop time (change not saved in DB).'),('explorecheat',3,'Syntax: .explorecheat #flag\r\n\r\nReveal  or hide all maps for the selected player. If no player is selected, hide or reveal maps to you.\r\n\r\nUse a #flag of value 1 to reveal, use a #flag value of 0 to hide all maps.'),('gm',1,'Syntax: .gm [on/off]\r\n\r\nEnable or Disable in game GM MODE or show current state of on/off not provided.'),('gm chat',1,'Syntax: .gm chat [on/off]\r\n\r\nEnable or disable chat GM MODE (show gm badge in messages) or show current state of on/off not provided.'),('gm fly',3,'Syntax: .gm fly [on/off]\r\nEnable/disable gm fly mode.'),('gm ingame',0,'Syntax: .gm ingame\r\n\r\nDisplay a list of available in game Game Masters.'),('gm list',3,'Syntax: .gm list\r\n\r\nDisplay a list of all Game Masters accounts and security levels.'),('gm online',0,'Syntax: .gm online\r\n\r\nDisplay a list of available Game Masters.'),('gm visible',1,'Syntax: .gm visible on/off\r\n\r\nOutput current visibility state or make GM visible(on) and invisible(off) for other players.'),('go creature',1,'Syntax: .go creature #creature_guid\r\nTeleport your character to creature with guid #creature_guid.\r\n.gocreature #creature_name\r\nTeleport your character to creature with this name.\r\n.gocreature id #creature_id\r\nTeleport your character to a creature that was spawned from the template with this entry.\r\n*If* more than one creature is found, then you are teleported to the first that is found inside the database.'),('go graveyard',1,'Syntax: .go graveyard #graveyardId\r\n Teleport to graveyard with the graveyardId specified.'),('go grid',1,'Syntax: .go grid #gridX #gridY [#mapId]\r\n\r\nTeleport the gm to center of grid with provided indexes at map #mapId (or current map if it not provided).'),('go object',1,'Syntax: .go object #object_guid\r\nTeleport your character to gameobject with guid #object_guid'),('go taxinode',1,'Syntax: .go taxinode #taxinode\r\n\r\nTeleport player to taxinode coordinates. You can look up zone using .lookup taxinode $namepart'),('go trigger',1,'Syntax: .go trigger #trigger_id\r\n\r\nTeleport your character to areatrigger with id #trigger_id. Character will be teleported to trigger target if selected areatrigger is telporting trigger.'),('go xy',1,'Syntax: .go xy #x #y [#mapid]\r\n\r\nTeleport player to point with (#x,#y) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),('go xyz',1,'Syntax: .go xyz #x #y #z [#mapid]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at ground(water) level at map #mapid or same map if #mapid not provided.'),('go zonexy',1,'Syntax: .go zonexy #x #y [#zone]\r\n\r\nTeleport player to point with (#x,#y) client coordinates at ground(water) level in zone #zoneid or current zone if #zoneid not provided. You can look up zone using .lookup area $namepart'),('gobject add',2,'Syntax: .gobject add #id <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nspawntimesecs sets the spawntime, it is optional.\r\n\r\nNote: this is a copy of .gameobject.'),('gobject delete',2,'Syntax: .gobject delete #go_guid\r\nDelete gameobject with guid #go_guid.'),('gobject move',2,'Syntax: .gobject move #goguid [#x #y #z]\r\n\r\nMove gameobject #goguid to character coordinates (or to (#x,#y,#z) coordinates if its provide).'),('gobject near',2,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),('gobject turn',2,'Syntax: .gobject turn #goguid \r\n\r\nSet for gameobject #goguid orientation same as current character orientation.'),('gobject target',2,'Syntax: .gobject target [#go_id|#go_name_part]\r\n\r\nLocate and show position nearest gameobject. If #go_id or #go_name_part provide then locate and show position of nearest gameobject with gameobject template id #go_id or name included #go_name_part as part.'),('goname',1,'Syntax: .goname [$charactername]\r\n\r\nTeleport to the given character. Either specify the character name or click on the character\'s portrait, e.g. when you are in a group. Character can be offline.'),('gps',1,'Syntax: .gps [$name|$shift-link]\r\n\r\nDisplay the position information for a selected character or creature (also if player name $name provided then for named player, or if creature/gameobject shift-link provided then pointed creature/gameobject if it loaded). Position information includes X, Y, Z, and orientation, map Id and zone Id'),('groupgo',1,'Syntax: .groupgo [$charactername]\r\n\r\nTeleport the given character and his group to you. Teleported only online characters but original selected group member can be offline.'),('guid',2,'Syntax: .guid\r\n\r\nDisplay the GUID for the selected character.'),('guild create',2,'Syntax: .guild create [$GuildLeaderName] \"$GuildName\"\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName (or selected) as leader.  Guild name must in quotes.'),('guild delete',2,'Syntax: .guild delete \"$GuildName\"\r\n\r\nDelete guild $GuildName. Guild name must in quotes.'),('guild invite',2,'Syntax: .guild invite [$CharacterName] \"$GuildName\"\r\n\r\nAdd player $CharacterName (or selected) into a guild $GuildName. Guild name must in quotes.'),('guild rank',2,'Syntax: .guild rank $CharacterName #Rank\r\n\r\nSet for $CharacterName rank #Rank in a guild.'),('guild uninvite',2,'Syntax: .guild uninvite [$CharacterName]\r\n\r\nRemove player $CharacterName (or selected) from a guild.'),('help',0,'Syntax: .help [$command]\r\n\r\nDisplay usage instructions for the given $command. If no $command provided show list available commands.'),('hidearea',3,'Syntax: .hidearea #areaid\r\n\r\nHide the area of #areaid to the selected character. If no character is selected, hide this area to you.'),('honor add',2,'Syntax: .honor add $amount\r\n\r\nAdd a certain amount of honor (gained in lifetime) to the selected player.'),('honor addkill',2,'Syntax: .honor addkikll\r\n\r\nAdd the targeted unit as one of your pvp kills today (you only get honor if it\'s a racial leader or a player)'),('honor show',1,'Syntax: .honor show\r\n\r\nDisplay the honor stats of the selected player'),('honor update',2,'Syntax: .honor update\r\n\r\nForce honor to be update'),('hover',3,'Syntax: .hover #flag\r\n\r\nEnable or disable hover mode for your character.\r\n\r\nUse a #flag of value 1 to enable, use a #flag value of 0 to disable hover.'),('instance unbind',3,'Syntax: .instance unbind all\r\n  All of the selected player\'s binds will be cleared.\r\n.instance unbind #mapid\r\n Only the specified #mapid instance will be cleared.'),('instance listbinds',3,'Syntax: .instance listbinds\r\n  Lists the binds of the selected player.'),('instance stats',3,'Syntax: .instance stats\r\n  Shows statistics about instances.'),('instance savedata',3,'Syntax: .instance savedata\r\n  Save the InstanceData for the current player\'s map to the DB.'),('itemmove',2,'Syntax: .itemmove #sourceslotid #destinationslotid\r\n\r\nMove an item from slots #sourceslotid to #destinationslotid in your inventory\r\n\r\nNot yet implemented'),('kick',2,'Syntax: .kick [$charactername]\r\n\r\nKick the given character name from the world. If no character name is provided then the selected player (except for yourself) will be kicked.'),('learn',3,'Syntax: .learn #spell [all]\r\n\r\nSelected character learn a spell of id #spell. If \'all\' provided then all ranks learned.'),('learn all',3,'Syntax: .learn all\r\n\r\nLearn all big set different spell maybe useful for Administaror.'),('learn all_crafts',2,'Syntax: .learn crafts\r\n\r\nLearn all professions and recipes.'),('learn all_default',1,'Syntax: .learn all_default [$playername]\r\n\r\nLearn for selected/$playername player all default spells for his race/class and spells rewarded by completed quests.'),('learn all_gm',2,'Syntax: .learn all_gm\r\n\r\nLearn all default spells for Game Masters.'),('learn all_lang',1,'Syntax: .learn all_lang\r\n\r\nLearn all languages'),('learn all_myclass',3,'Syntax: .learn all_myclass\r\n\r\nLearn all spells and talents available for his class.'),('learn all_myspells',3,'Syntax: .learn all_myspells\r\n\r\nLearn all spells (except talents and spells with first rank learned as talent) available for his class.'),('learn all_mytalents',3,'Syntax: .learn all_mytalents\r\n\r\nLearn all talents (and spells with first rank learned as talent) available for his class.'),('learn all_recipes',2,'Syntax: .learn all_recipes [$profession]\r\rLearns all recipes of specified profession and sets skill level to max.\rExample: .learn all_recipes enchanting'),('levelup',3,'Syntax: .levelup [$playername] [#numberoflevels]\r\n\r\nIncrease/decrease the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent VALUESrecalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.'),('linkgrave',3,'Syntax: .linkgrave #graveyard_id [alliance|horde]\r\n\r\nLink current zone to graveyard for any (or alliance/horde faction ghosts). This let character ghost from zone teleport to graveyard after die if graveyard is nearest from linked to zone and accept ghost of this faction. Add only single graveyard at another map and only if no graveyards linked (or planned linked at same map).'),('list creature',3,'Syntax: .list creature #creature_id [#max_count]\r\n\r\nOutput creatures with creature id #creature_id found in world. Output creature guids and coordinates sorted by distance from character. Will be output maximum #max_count creatures. If #max_count not provided use 10 as default value.'),('list item',3,'Syntax: .list item #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails, auctions, and guild banks. Output item guids, item owner guid, owner account and owner name (guild name and guid in case guild bank). Will be output maximum #max_count items. If #max_count not provided use 10 as default value.'),('list object',3,'Syntax: .list object #gameobject_id [#max_count]\r\n\r\nOutput gameobjects with gameobject id #gameobject_id found in world. Output gameobject guids and coordinates sorted by distance from character. Will be output maximum #max_count gameobject. If #max_count not provided use 10 as default value.'),('loadscripts',3,'Syntax: .loadscripts $scriptlibraryname\r\n\r\nUnload current and load the script library $scriptlibraryname or reload current if $scriptlibraryname omitted, in case you changed it while the server was running.'),('lookup area',1,'Syntax: .lookup area $namepart\r\n\r\nLooks up an area by $namepart, and returns all matches with their area ID\'s.'),('lookup creature',3,'Syntax: .lookup creature $namepart\r\n\r\nLooks up a creature by $namepart, and returns all matches with their creature ID\'s.'),('lookup event',2,'Syntax: .lookup event $name\r\nAttempts to find the ID of the event with the provided $name.'),('lookup faction',3,'Syntax: .lookup faction $name\r\nAttempts to find the ID of the faction with the provided $name.'),('lookup item',3,'Syntax: .lookup item $itemname\r\n\r\nLooks up an item by $itemname, and returns all matches with their Item ID\'s.'),('lookup itemset',3,'Syntax: .lookup itemset $itemname\r\n\r\nLooks up an item set by $itemname, and returns all matches with their Item set ID\'s.'),('lookup object',3,'Syntax: .lookup object $objname\r\n\r\nLooks up an gameobject by $objname, and returns all matches with their Gameobject ID\'s.'),('lookup player account',2,'Syntax: .lookup player account $account ($limit) \r\n\r\n Searchs players, which account username is $account with optional parametr $limit of results.'),('lookup player ip',2,'Syntax: .lookup player ip $ip ($limit) \r\n\r\n Searchs players, which account ast_ip is $ip with optional parametr $limit of results.'),('lookup player email',2,'Syntax: .lookup player email $email ($limit) \r\n\r\n Searchs players, which account email is $email with optional parametr $limit of results.'),('lookup quest',3,'Syntax: .lookup quest $namepart\r\n\r\nLooks up a quest by $namepart, and returns all matches with their quest ID\'s.'),('lookup skill',3,'Syntax: .lookup skill $$namepart\r\n\r\nLooks up a skill by $namepart, and returns all matches with their skill ID\'s.'),('lookup spell',3,'Syntax: .lookup spell $namepart\r\n\r\nLooks up a spell by $namepart, and returns all matches with their spell ID\'s.'),('lookup taxinode',3,'Syntax: .lookup taxinode $substring\r\n\r\nSearch and output all taxinodes with provide $substring in name.'),('lookup tele',1,'Syntax: .lookup tele $substring\r\n\r\nSearch and output all .tele command locations with provide $substring in name.'),('maxskill',3,'Syntax: .maxskill\r\nSets all skills of the targeted player to their maximum VALUESfor its current level.'),('modify aspeed',1,'Syntax: .modify aspeed #rate\r\n\r\nModify all speeds -run,swim,run back,swim back- of the selected player to \"normalbase speed for this move type\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify bit',1,'Syntax: .modify bit #field #bit\r\n\r\nToggle the #bit bit of the #field field for the selected player. If no player is selected, modify your character.'),('modify bwalk',1,'Syntax: .modify bwalk #rate\r\n\r\nModify the speed of the selected player while running backwards to \"normal walk back speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify drunk',1,'Syntax: .modify drunk #value\r\n Set drunk level to #value (0..100). Value 0 remove drunk state, 100 is max drunked state.'),('modify energy',1,'Syntax: .modify energy #energy\r\n\r\nModify the energy of the selected player. If no player is selected, modify your energy.'),('modify faction',1,'Syntax: .modify faction #factionid #flagid #npcflagid #dynamicflagid\r\n\r\nModify the faction and flags of the selected creature. Without arguments, display the faction and flags of the selected creature.'),('modify gender',2,'Syntax: .modify gender male/female\r\n\r\nChange gender of selected player.'),('modify honor',2,'Syntax: .modify honor $field $value\r\n\r\nAdd $value to an honor $field (it\'s just for debug , values won\'t be saved at player logout)\r\nField list: points / rank / todaykills / yesterdaykills / yesterdayhonor /\r\nthisweekkills / thisweekhonor / lastweekkills / lastweekhonor /\r\nlastweekstanding / lifetimedishonorablekills / lifetimehonorablekills '),('modify hp',1,'Syntax: .modify hp #newhp\r\n\r\nModify the hp of the selected player. If no player is selected, modify your hp.'),('modify mana',1,'Syntax: .modify mana #newmana\r\n\r\nModify the mana of the selected player. If no player is selected, modify your mana.'),('modify money',1,'Syntax: .modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.'),('modify morph',2,'Syntax: .modify morph #displayid\r\n\r\nChange your current model id to #displayid.'),('modify mount',1,'Syntax: .modify mount #id #speed\r\nDisplay selected player as mounted at #id creature and set speed to #speed value.'),('modify rage',1,'Syntax: .modify rage #newrage\r\n\r\nModify the rage of the selected player. If no player is selected, modify your rage.'),('modify rep',2,'Syntax: .modify rep #repId (#repvalue | $rankname [#delta])\r\nSets the selected players reputation with faction #repId to #repvalue or to $reprank.\r\nIf the reputation rank name is provided, the resulting reputation will be the lowest reputation for that rank plus the delta amount, if specified.\r\nYou can use \'.pinfo rep\' to list all known reputation ids, or use \'.lookup faction $name\' to locate a specific faction id.'),('modify scale',1,''),('modify speed',1,'Syntax: .modify speed #rate\r\n.speed #rate\r\n\r\nModify the running speed of the selected player to \"normal base run speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify spell',1,''),('modify standstate',2,'Syntax: .modify standstate #emoteid\r\n\r\nChange the emote of your character while standing to #emoteid.'),('modify swim',1,'Syntax: .modify swim #rate\r\n\r\nModify the swim speed of the selected player to \"normal swim speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),('modify titles',1,'Syntax: .modify titles #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field'),('movegens',3,'Syntax: .movegens\r\n  Show movement generators stack for selected creature or player.'),('mute',1,'Syntax: .mute [$playerName] $timeInMinutes\r\n\r\nDisible chat messaging for any character from account of character $playerName (or currently selected) at $timeInMinutes minutes. Player can be offline.'),('namego',1,'Syntax: .namego [$charactername]\r\n\r\nTeleport the given character to you. Character can be offline.'),('neargrave',3,'Syntax: .neargrave [alliance|horde]\r\n\r\nFind nearest graveyard linked to zone (or only nearest from accepts alliance or horde faction ghosts).'),('notify',1,'Syntax: .notify $MessageToBroadcast\r\n\r\nSend a global message to all players online in screen.'),('npc add',2,'Syntax: .npc add #creatureid\r\n\r\nSpawn a creature by the given template id of #creatureid.'),('npc additem',2,'Syntax: .npc additem #itemId <#maxcount><#incrtime><#extendedcost>r\r\n\r\nAdd item #itemid to item list of selected vendor. Also optionally set max count item in vendor item list and time to item count restoring and items ExtendedCost.'),('npc addmove',2,'Syntax: .npc addmove #creature_guid [#waittime]\r\n\r\nAdd your current location as a waypoint for creature with guid #creature_guid. And optional add wait time.'),('npc addweapon',3,'Not yet implemented.'),('npc allowmove',3,'Syntax: .npc allowmove\r\n\r\nEnable or disable movement creatures in world. Not implemented.'),('npc changelevel',2,'Syntax: .npc changelevel #level\r\n\r\nChange the level of the selected creature to #level.\r\n\r\n#level may range from 1 to 63.'),('npc delete',2,'Syntax: .npc delete [#guid]\r\n\r\nDelete creature with guid #guid (or the selected if no guid is provided)'),('npc delitem',2,'Syntax: .npc delitem #itemId\r\n\r\nRemove item #itemid from item list of selected vendor.'),('npc factionid',2,'Syntax: .npc factionid #factionid\r\n\r\nSet the faction of the selected creature to #factionid.'),('npc flag',2,'Syntax: .npc flag #npcflag\r\n\r\nSet the NPC flags of creature template of the selected creature and selected creature to #npcflag. NPC flags will applied to all creatures of selected creature template after server restart or grid unload/load.'),('npc follow',2,'Syntax: .npc follow\r\n\r\nSelected creature start follow you until death/fight/etc.'),('npc info',3,'Syntax: .npc info\r\n\r\nDisplay a list of details for the selected creature.\r\n\r\nThe list includes:\r\n- GUID, Faction, NPC flags, Entry ID, Model ID,\r\n- Level,\r\n- Health (current/maximum),\r\n\r\n- Field flags, dynamic flags, faction template, \r\n- Position information,\r\n- and the creature type, e.g. if the creature is a vendor.'),('npc move',2,'Syntax: .npc move [#creature_guid]\r\n\r\nMove the targeted creature spawn point to your coordinates.'),('npc name',2,'Syntax: .npc name $name\r\n\r\nChange the name of the selected creature or character to $name.\r\n\r\nCommand disabled.'),('npc playemote',3,'Syntax: .npc playemote #emoteid\r\n\r\nMake the selected creature emote with an emote of id #emoteid.'),('npc setdeathstate',2,'Syntax: .npc setdeathstate on/off\r\n\r\nSet default death state (dead/alive) for npc at spawn.'),('npc setmodel',2,'Syntax: .npc setmodel #displayid\r\n\r\nChange the model id of the selected creature to #displayid.'),('npc setmovetype',2,'Syntax: .npc setmovetype [#creature_guid] stay/random/way [NODEL]\r\n\r\nSet for creature pointed by #creature_guid (or selected if #creature_guid not provided) movement type and move it to respawn position (if creature alive). Any existing waypoints for creature will be removed from the database if you do not use NODEL. If the creature is dead then movement type will applied at creature respawn.\r\nMake sure you use NODEL, if you want to keep the waypoints.'),('npc spawndist',2,'Syntax: .npc spawndist #dist\r\n\r\nAdjust spawndistance of selected creature to dist.'),('npc spawntime',2,'Syntax: .npc spawntime #time \r\n\r\nAdjust spawntime of selected creature to time.'),('npc subname',2,'Syntax: .npc subname $Name\r\n\r\nChange the subname of the selected creature or player to $Name.\r\n\r\nCommand disabled.'),('npc tame',2,'Syntax: .npc tame\r\n\r\nTame selected creature (tameable non pet creature). You don\'t must have pet.'),('npc textemote',1,'Syntax: .npc textemote #emoteid\r\n\r\nMake the selected creature to do textemote with an emote of id #emoteid.'),('npc whisper',1,'Syntax: .npc whisper #playerguid #text\r\nMake the selected npc whisper #text to  #playerguid.'),('npc unfollow',2,'Syntax: .npc unfollow\r\n\r\nSelected creature (non pet) stop follow you.'),('pdump write',3,'Syntax: .pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.'),('pdump load',3,'Syntax: .pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.'),('pinfo',2,'Syntax: .pinfo [$player_name]\r\n\r\nOutput account information for selected player or player find by $player_name.'),('quest add',3,'Syntax: .quest add #quest_id\r\n\r\nAdd to character quest log quest #quest_id. Quest started from item can\'t be added by this command but correct .additem call provided in command output.'),('quest complete',3,'Syntax: .quest complete #questid\r\nMark all quest objectives as completed for target character active quest. After this target character can go and get quest reward.'),('quest remove',3,'Syntax: .quest remove #quest_id\r\n\r\nSet quest #quest_id state to not completed and not active (and remove from active quest list) for selected player.'),('recall',1,'Syntax: .recall [$playername]\r\n\r\nTeleport $playername or selected player to the place where he has been before last use of a teleportation command. If no $playername is entered and no player is selected, it will teleport you.'),('reload all',3,'Syntax: .reload all\r\n\r\nReload all tables with reload support added and that can be _safe_ reloaded.'),('reload all_area',3,'Syntax: .reload all_area\r\n\r\nReload all `areatrigger_*` tables if reload support added for this table and this table can be _safe_ reloaded.'),('reload all_loot',3,'Syntax: .reload all_loot\r\n\r\nReload all `*_loot_template` tables. This can be slow operation with lags for server run.'),('reload all_quest',3,'Syntax: .reload all_quest\r\n\r\nReload all quest related tables if reload support added for this table and this table can be _safe_ reloaded.'),('reload all_spell',3,'Syntax: .reload all_spell\r\n\r\nReload all `spell_*` tables with reload support added and that can be _safe_ reloaded.'),('reload all_locales',3,'Syntax: .reload all_locales\r\n\r\nReload all `locales_*` tables with reload support added and that can be _safe_ reloaded.'),('reload config',3,'Syntax: .reload config\r\n\r\nReload config settings (by default stored in mangosd.conf). Not all settings can be change at reload: some new setting values will be ignored until restart, some values will applied with delay or only to new objects/maps, some values will explicitly rejected to change at reload.'),('repairitems',2,'Syntax: .repairitems\r\n\r\nRepair all selected player\'s items.'),('reset all',3,'Syntax: .reset all spells\r\n\r\nSyntax: .reset all talents\r\n\r\nRequest reset spells or talents at next login each existed character.'),('reset honor',3,'Syntax: .reset honor [Playername]\r\n  Reset all honor data for targeted character.'),('reset level',3,'Syntax: .reset level [Playername]\r\n  Reset level to 1 including reset stats and talents.  Equipped items with greater level requirement can be lost.'),('reset spells',3,'Syntax: .reset spells [Playername]\r\n  Removes all non-original spells from spellbook.\r\n. Playername can be name of offline character.'),('reset stats',3,'Syntax: .reset stats [Playername]\r\n  Resets(recalculate) all stats of the targeted player to their original VALUESat current level.'),('reset talents',3,'Syntax: .reset talents [Playername]\r\n  Removes all talents of the targeted player. Playername can be name of offline character.'),('respawn',3,'Syntax: .respawn\r\n\r\nRespawn selected creature or respawn all nearest creatures (if none selected) and GO without waiting respawn time expiration.'),('revive',3,'Syntax: .revive\r\n\r\nRevive the selected player. If no player is selected, it will revive you.'),('save',0,'Syntax: .save\r\n\r\nSaves your character.'),('saveall',1,'Syntax: .saveall\r\n\r\nSave all characters in game.'),('send items',3,'Syntax: .send items #playername \"#subject\" \"#text\" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in \"\". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),('send mail',1,'Syntax: .send mail #playername \"#subject\" \"#text\"\r\n\r\nSend a mail to a player. Subject and mail text must be in \"\".'),('send message',3,'Syntax: .send message $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.'),('send money',3,'Syntax: .send money #playername \"#subject\" \"#text\" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in \"\".'),('server corpses',2,'Syntax: .server corpses\r\n\r\nTriggering corpses expire check in world.'),('server exit',4,'Syntax: .server exit\r\n\r\nTerminate mangosd NOW. Exit code 0.'),('server info',0,'Syntax: .server info\r\n\r\nDisplay server version and the number of connected players.'),('server idleshutdown',3,'Syntax: .server idleshutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players). Use #exist_code or 0 as program exist code.'),('server idleshutdown cancel',3,'Syntax: .server idleshutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('server idlerestart',3,'Syntax: .server idlerestart #delay\r\n\r\nRestart the server after #delay seconds if no active connections are present (no players). Use #exist_code or 2 as program exist code.'),('server idlerestart cancel',3,'Syntax: .server idlerestart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('server motd',0,'Syntax: .server motd\r\n\r\nShow server Message of the day.'),('server plimit',3,'Syntax: .server plimit [#num|-1|-2|-3|reset|player|moderator|gamemaster|administrator]\r\n\r\nWithout arg show current player amount and security level limitations for login to server, with arg set player linit ($num > 0) or securiti limitation ($num < 0 or security leme name. With `reset` sets player limit to the one in the config file'),('server restart',3,'Syntax: .server restart #delay\r\n\r\nRestart the server after #delay seconds. Use #exist_code or 2 as program exist code.'),('server restart cancel',3,'Syntax: .server restart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('server set loglevel',4,'Syntax: .server set loglevel #level\r\n\r\nSet server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).'),('server set motd',3,'Syntax: .server set motd $MOTD\r\n\r\nSet server Message of the day.'),('server shutdown',3,'Syntax: .server shutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds. Use #exist_code or 0 as program exist code.'),('server shutdown cancel',3,'Syntax: .server shutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),('setskill',3,'Syntax: .setskill #skill #level [#max]\r\n\r\nSet a skill of id #skill with a current skill value of #level and a maximum value of #max (or equal current maximum if not provide) for the selected character. If no character is selected, you learn the skill.'),('showarea',3,'Syntax: .showarea #areaid\r\n\r\nReveal the area of #areaid to the selected character. If no character is selected, reveal this area to you.'),('start',0,'Syntax: .start\r\n\r\nTeleport you to the starting area of your character.'),('taxicheat',1,'Syntax: .taxicheat on/off\r\n\r\nTemporary grant access or remove to all taxi routes for the selected character. If no character is selected, hide or reveal all routes to you.\r\n\r\nVisited taxi nodes sill accessible after removing access.'),('tele',1,'Syntax: .tele #location\r\n\r\nTeleport player to a given location.'),('tele add',3,'Syntax: .tele add $name\r\n\r\nAdd current your position to .tele command target locations list with name $name.'),('tele del',3,'Syntax: .tele del $name\r\n\r\nRemove location with name $name for .tele command locations list.'),('tele group',1,'Syntax: .tele group#location\r\n\r\nTeleport a selected player and his group members to a given location.'),('tele name',1,'Syntax: .tele name [#playername] #location\r\n\r\nTeleport the given character to a given location. Character can be offline.'),('ticket',2,'Syntax: .ticket on\r\n        .ticket off\r\n        .ticket #num\r\n        .ticket $character_name\r\n\r\non/off for GMs to show or not a new ticket directly, $character_name to show ticket of this character, #num to show ticket #num.'),('unaura',3,'Syntax: .unaura #spellid\r\n\r\nRemove aura due to spell #spellid from the selected Unit.'),('unban account',3,'Syntax: .unban account $Name\r\nUnban accounts for account name pattern.'),('unban character',3,'Syntax: .unban character $Name\r\nUnban accounts for character name pattern.'),('unban ip',3,'Syntax : .unban ip $Ip\r\nUnban accounts for IP pattern.'),('unlearn',3,'Syntax: .unlearn #spell [all]\r\n\r\nUnlearn for selected player a spell #spell.  If \'all\' provided then all ranks unlearned.'),('unmute',1,'Syntax: .unmute $playerName\r\n\r\nRestore chat messaging for any character from account of character $playerName.'),('waterwalk',2,'Syntax: .waterwalk on/off\r\n\r\nSet on/off waterwalk state for selected player.'),('wchange',3,'Syntax: .wchange #weathertype #status\r\n\r\nSet current weather to #weathertype with an intensity of #status.\r\n\r\n#weathertype can be 1 for rain, 2 for snow, and 3 for sand. #status can be 0 for disabled, and 1 for enabled.'),('whispers',1,'Syntax: .whispers on|off\r\nEnable/disable accepting whispers by GM from players. By default use mangosd.conf setting.'),('wp',2,'Using WP Command:\r\nEach Waypoint Command has it\'s own description!'),('wp add',2,'Syntax: .wp add [#creature_guid or Select a Creature]'),('wp export',3,'Syntax: .wp export [#creature_guid or Select a Creature] $filename'),('wp import',3,'Syntax: .wp import $filename'),('wp modify',2,'Syntax: .wp modify [#creature_guid or Select a Creature]\r\nadd - Add a waypoint after the selected visual\r\nwaittime $time\r\nemote ID\r\nspell ID\r\ntext1| text2| text3| text4| text5 <text>\r\nmodel1 ID\r\nmodel2 ID\r\nmove(moves wp to player pos)\r\ndel (deletes the wp)\r\n\r\nOnly one parameter per time!'),('wp show',2,'Syntax: .wp show [#creature_guid or Select a Creature]\r\non\r\nfirst\r\nlast\r\noff\r\ninfo\r\n\r\nFor using info you have to do first show on and than select a Visual-Waypoint and do the show info!');
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature`
--

DROP TABLE IF EXISTS `creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` mediumint(9) NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(10) unsigned NOT NULL DEFAULT '120',
  `spawndist` float NOT NULL DEFAULT '5',
  `currentwaypoint` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `DeathState` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_map` (`map`),
  KEY `index_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature`
--

LOCK TABLES `creature` WRITE;
/*!40000 ALTER TABLE `creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_addon`
--

DROP TABLE IF EXISTS `creature_addon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_addon` (
  `guid` int(11) NOT NULL DEFAULT '0',
  `mount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bytes0` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `emote` int(10) unsigned NOT NULL DEFAULT '0',
  `moveflags` int(10) unsigned NOT NULL DEFAULT '0',
  `auras` text,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_addon`
--

LOCK TABLES `creature_addon` WRITE;
/*!40000 ALTER TABLE `creature_addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_ai_scripts`
--

DROP TABLE IF EXISTS `creature_ai_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_ai_scripts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `creature_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Template Identifier',
  `event_type` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type',
  `event_inverse_phase_mask` int(11) NOT NULL DEFAULT '0' COMMENT 'Mask which phases this event will not trigger in',
  `event_chance` int(3) unsigned NOT NULL DEFAULT '100',
  `event_flags` int(3) unsigned NOT NULL DEFAULT '0',
  `event_param1` int(11) NOT NULL DEFAULT '0',
  `event_param2` int(11) NOT NULL DEFAULT '0',
  `event_param3` int(11) NOT NULL DEFAULT '0',
  `event_param4` int(11) NOT NULL DEFAULT '0',
  `action1_type` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type',
  `action1_param1` int(11) NOT NULL DEFAULT '0',
  `action1_param2` int(11) NOT NULL DEFAULT '0',
  `action1_param3` int(11) NOT NULL DEFAULT '0',
  `action2_type` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type',
  `action2_param1` int(11) NOT NULL DEFAULT '0',
  `action2_param2` int(11) NOT NULL DEFAULT '0',
  `action2_param3` int(11) NOT NULL DEFAULT '0',
  `action3_type` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type',
  `action3_param1` int(11) NOT NULL DEFAULT '0',
  `action3_param2` int(11) NOT NULL DEFAULT '0',
  `action3_param3` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Event Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Scripts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_ai_scripts`
--

LOCK TABLES `creature_ai_scripts` WRITE;
/*!40000 ALTER TABLE `creature_ai_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_ai_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_ai_summons`
--

DROP TABLE IF EXISTS `creature_ai_summons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_ai_summons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(11) unsigned NOT NULL DEFAULT '120',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Summon Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_ai_summons`
--

LOCK TABLES `creature_ai_summons` WRITE;
/*!40000 ALTER TABLE `creature_ai_summons` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_ai_summons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_ai_texts`
--

DROP TABLE IF EXISTS `creature_ai_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_ai_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_ai_texts`
--

LOCK TABLES `creature_ai_texts` WRITE;
/*!40000 ALTER TABLE `creature_ai_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_ai_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_battleground`
--

DROP TABLE IF EXISTS `creature_battleground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_battleground` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Creature''s GUID',
  `event1` tinyint(3) unsigned NOT NULL COMMENT 'main event',
  `event2` tinyint(3) unsigned NOT NULL COMMENT 'sub event',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature battleground indexing system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_battleground`
--

LOCK TABLES `creature_battleground` WRITE;
/*!40000 ALTER TABLE `creature_battleground` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_battleground` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_equip_template`
--

DROP TABLE IF EXISTS `creature_equip_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_equip_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique entry',
  `equipmodel1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipmodel2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipmodel3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipinfo1` int(10) unsigned NOT NULL DEFAULT '0',
  `equipinfo2` int(10) unsigned NOT NULL DEFAULT '0',
  `equipinfo3` int(10) unsigned NOT NULL DEFAULT '0',
  `equipslot1` int(11) NOT NULL DEFAULT '0',
  `equipslot2` int(11) NOT NULL DEFAULT '0',
  `equipslot3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Equipment)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_equip_template`
--

LOCK TABLES `creature_equip_template` WRITE;
/*!40000 ALTER TABLE `creature_equip_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_equip_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_involvedrelation`
--

DROP TABLE IF EXISTS `creature_involvedrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_involvedrelation`
--

LOCK TABLES `creature_involvedrelation` WRITE;
/*!40000 ALTER TABLE `creature_involvedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_involvedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_loot_template`
--

DROP TABLE IF EXISTS `creature_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_loot_template`
--

LOCK TABLES `creature_loot_template` WRITE;
/*!40000 ALTER TABLE `creature_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_model_info`
--

DROP TABLE IF EXISTS `creature_model_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_model_info` (
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bounding_radius` float NOT NULL DEFAULT '0',
  `combat_reach` float NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `modelid_other_gender` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Model related info)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_model_info`
--

LOCK TABLES `creature_model_info` WRITE;
/*!40000 ALTER TABLE `creature_model_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_model_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_movement`
--

DROP TABLE IF EXISTS `creature_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_movement` (
  `id` int(10) unsigned NOT NULL COMMENT 'Creature GUID',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `waittime` int(10) unsigned NOT NULL DEFAULT '0',
  `textid1` int(11) NOT NULL DEFAULT '0',
  `textid2` int(11) NOT NULL DEFAULT '0',
  `textid3` int(11) NOT NULL DEFAULT '0',
  `textid4` int(11) NOT NULL DEFAULT '0',
  `textid5` int(11) NOT NULL DEFAULT '0',
  `emote` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `wpguid` int(11) NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `model1` mediumint(9) NOT NULL DEFAULT '0',
  `model2` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_movement`
--

LOCK TABLES `creature_movement` WRITE;
/*!40000 ALTER TABLE `creature_movement` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_movement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_onkill_reputation`
--

DROP TABLE IF EXISTS `creature_onkill_reputation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_onkill_reputation` (
  `creature_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `RewOnKillRepFaction1` smallint(6) NOT NULL DEFAULT '0',
  `RewOnKillRepFaction2` smallint(6) NOT NULL DEFAULT '0',
  `MaxStanding1` tinyint(4) NOT NULL DEFAULT '0',
  `IsTeamAward1` tinyint(4) NOT NULL DEFAULT '0',
  `RewOnKillRepValue1` mediumint(9) NOT NULL DEFAULT '0',
  `MaxStanding2` tinyint(4) NOT NULL DEFAULT '0',
  `IsTeamAward2` tinyint(4) NOT NULL DEFAULT '0',
  `RewOnKillRepValue2` mediumint(9) NOT NULL DEFAULT '0',
  `TeamDependent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature OnKill Reputation gain';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_onkill_reputation`
--

LOCK TABLES `creature_onkill_reputation` WRITE;
/*!40000 ALTER TABLE `creature_onkill_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_onkill_reputation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_questrelation`
--

DROP TABLE IF EXISTS `creature_questrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_questrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_questrelation`
--

LOCK TABLES `creature_questrelation` WRITE;
/*!40000 ALTER TABLE `creature_questrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_questrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_respawn`
--

DROP TABLE IF EXISTS `creature_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_respawn`
--

LOCK TABLES `creature_respawn` WRITE;
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_template`
--

DROP TABLE IF EXISTS `creature_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `KillCredit1` int(11) unsigned NOT NULL DEFAULT '0',
  `KillCredit2` int(11) unsigned NOT NULL DEFAULT '0',
  `modelid_A` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid_A2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid_H` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid_H2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL DEFAULT '0',
  `subname` char(100) DEFAULT NULL,
  `IconName` char(100) DEFAULT NULL,
  `minlevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxlevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `minhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `minmana` int(10) unsigned NOT NULL DEFAULT '0',
  `maxmana` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faction_A` smallint(5) unsigned NOT NULL DEFAULT '0',
  `faction_H` smallint(5) unsigned NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `speed` float NOT NULL DEFAULT '1',
  `scale` float NOT NULL DEFAULT '1',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mindmg` float NOT NULL DEFAULT '0',
  `maxdmg` float NOT NULL DEFAULT '0',
  `dmgschool` tinyint(4) NOT NULL DEFAULT '0',
  `attackpower` int(10) unsigned NOT NULL DEFAULT '0',
  `baseattacktime` int(10) unsigned NOT NULL DEFAULT '0',
  `rangeattacktime` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `dynamicflags` int(10) unsigned NOT NULL DEFAULT '0',
  `family` tinyint(4) NOT NULL DEFAULT '0',
  `trainer_type` tinyint(4) NOT NULL DEFAULT '0',
  `trainer_spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `trainer_class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `trainer_race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minrangedmg` float NOT NULL DEFAULT '0',
  `maxrangedmg` float NOT NULL DEFAULT '0',
  `rangedattackpower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `lootid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pickpocketloot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `skinloot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `resistance1` smallint(5) NOT NULL DEFAULT '0',
  `resistance2` smallint(5) NOT NULL DEFAULT '0',
  `resistance3` smallint(5) NOT NULL DEFAULT '0',
  `resistance4` smallint(5) NOT NULL DEFAULT '0',
  `resistance5` smallint(5) NOT NULL DEFAULT '0',
  `resistance6` smallint(5) NOT NULL DEFAULT '0',
  `spell1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mingold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxgold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `AIName` char(64) NOT NULL DEFAULT '',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InhabitType` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `unk16` float NOT NULL DEFAULT '1',
  `unk17` float NOT NULL DEFAULT '1',
  `RacialLeader` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RegenHealth` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `equipment_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mechanic_immune_mask` int(10) unsigned NOT NULL DEFAULT '0',
  `flags_extra` int(10) unsigned NOT NULL DEFAULT '0',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_template`
--

LOCK TABLES `creature_template` WRITE;
/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
INSERT INTO `creature_template` VALUES (1,0,0,10045,0,10045,0,'Waypoint(Only GM can see it)','Visual',NULL,1,1,64,64,0,0,0,35,35,0,0.91,1,0,14,15,0,100,2000,2200,4096,0,0,0,0,0,0,1.76,2.42,100,8,5242886,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,0,1,0,0,130,'');
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_template_addon`
--

DROP TABLE IF EXISTS `creature_template_addon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_template_addon` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bytes0` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `emote` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `moveflags` int(10) unsigned NOT NULL DEFAULT '0',
  `auras` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_template_addon`
--

LOCK TABLES `creature_template_addon` WRITE;
/*!40000 ALTER TABLE `creature_template_addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_template_addon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_script_string`
--

DROP TABLE IF EXISTS `db_script_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_script_string` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_script_string`
--

LOCK TABLES `db_script_string` WRITE;
/*!40000 ALTER TABLE `db_script_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_script_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_version`
--

DROP TABLE IF EXISTS `db_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_version` (
  `version` varchar(120) DEFAULT NULL,
  `creature_ai_version` varchar(120) DEFAULT NULL,
  `required_078_8749_01_mangos_mail_loot_template` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Used DB version notes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_version`
--

LOCK TABLES `db_version` WRITE;
/*!40000 ALTER TABLE `db_version` DISABLE KEYS */;
INSERT INTO `db_version` VALUES ('Mangos default database.','Creature EventAI not provided.',NULL);
/*!40000 ALTER TABLE `db_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disenchant_loot_template`
--

DROP TABLE IF EXISTS `disenchant_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disenchant_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Recommended id selection: item_level*100 + item_quality',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disenchant_loot_template`
--

LOCK TABLES `disenchant_loot_template` WRITE;
/*!40000 ALTER TABLE `disenchant_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `disenchant_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_scripts`
--

DROP TABLE IF EXISTS `event_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_scripts`
--

LOCK TABLES `event_scripts` WRITE;
/*!40000 ALTER TABLE `event_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exploration_basexp`
--

DROP TABLE IF EXISTS `exploration_basexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exploration_basexp` (
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `basexp` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Exploration System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exploration_basexp`
--

LOCK TABLES `exploration_basexp` WRITE;
/*!40000 ALTER TABLE `exploration_basexp` DISABLE KEYS */;
INSERT INTO `exploration_basexp` VALUES (0,0),(1,5),(2,15),(3,25),(4,35),(5,45),(6,55),(7,65),(8,70),(9,80),(10,85),(11,90),(12,90),(13,90),(14,100),(15,105),(16,115),(17,125),(18,135),(19,145),(20,155),(21,165),(22,175),(23,185),(24,195),(25,200),(26,210),(27,220),(28,230),(29,240),(30,245),(31,250),(32,255),(33,265),(34,270),(35,275),(36,280),(37,285),(38,285),(39,300),(40,315),(41,330),(42,345),(43,360),(44,375),(45,390),(46,405),(47,420),(48,440),(49,455),(50,470),(51,490),(52,510),(53,530),(54,540),(55,560),(56,580),(57,600),(58,620),(59,640),(60,660),(61,970),(62,1000),(63,1050),(64,1080),(65,1100),(66,1130),(67,1160),(68,1200),(69,1230),(70,1250);
/*!40000 ALTER TABLE `exploration_basexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishing_loot_template`
--

DROP TABLE IF EXISTS `fishing_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fishing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fishing_loot_template`
--

LOCK TABLES `fishing_loot_template` WRITE;
/*!40000 ALTER TABLE `fishing_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `fishing_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event`
--

DROP TABLE IF EXISTS `game_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '86400' COMMENT 'Delay in hours between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '43200' COMMENT 'Length in hours of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event`
--

LOCK TABLES `game_event` WRITE;
/*!40000 ALTER TABLE `game_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_creature`
--

DROP TABLE IF EXISTS `game_event_creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_creature` (
  `guid` int(10) unsigned NOT NULL,
  `event` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_creature`
--

LOCK TABLES `game_event_creature` WRITE;
/*!40000 ALTER TABLE `game_event_creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_creature_quest`
--

DROP TABLE IF EXISTS `game_event_creature_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_creature_quest` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `event` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_creature_quest`
--

LOCK TABLES `game_event_creature_quest` WRITE;
/*!40000 ALTER TABLE `game_event_creature_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_creature_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_gameobject`
--

DROP TABLE IF EXISTS `game_event_gameobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_gameobject` (
  `guid` int(10) unsigned NOT NULL,
  `event` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_gameobject`
--

LOCK TABLES `game_event_gameobject` WRITE;
/*!40000 ALTER TABLE `game_event_gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_model_equip`
--

DROP TABLE IF EXISTS `game_event_model_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_model_equip` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `event` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_model_equip`
--

LOCK TABLES `game_event_model_equip` WRITE;
/*!40000 ALTER TABLE `game_event_model_equip` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_model_equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_pool`
--

DROP TABLE IF EXISTS `game_event_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_event_pool` (
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Id of the pool',
  `event` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_pool`
--

LOCK TABLES `game_event_pool` WRITE;
/*!40000 ALTER TABLE `game_event_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_graveyard_zone`
--

DROP TABLE IF EXISTS `game_graveyard_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_graveyard_zone` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ghost_zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`ghost_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_graveyard_zone`
--

LOCK TABLES `game_graveyard_zone` WRITE;
/*!40000 ALTER TABLE `game_graveyard_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_graveyard_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_tele`
--

DROP TABLE IF EXISTS `game_tele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_tele` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tele Command';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_tele`
--

LOCK TABLES `game_tele` WRITE;
/*!40000 ALTER TABLE `game_tele` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_tele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_weather`
--

DROP TABLE IF EXISTS `game_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_weather` (
  `zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spring_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `spring_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `spring_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `summer_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `summer_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `summer_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `fall_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `fall_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `fall_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `winter_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `winter_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `winter_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  PRIMARY KEY (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Weather System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_weather`
--

LOCK TABLES `game_weather` WRITE;
/*!40000 ALTER TABLE `game_weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject`
--

DROP TABLE IF EXISTS `gameobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Gameobject Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `rotation0` float NOT NULL DEFAULT '0',
  `rotation1` float NOT NULL DEFAULT '0',
  `rotation2` float NOT NULL DEFAULT '0',
  `rotation3` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(11) NOT NULL DEFAULT '0',
  `animprogress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject`
--

LOCK TABLES `gameobject` WRITE;
/*!40000 ALTER TABLE `gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_battleground`
--

DROP TABLE IF EXISTS `gameobject_battleground`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_battleground` (
  `guid` int(10) unsigned NOT NULL COMMENT 'GameObject''s GUID',
  `event1` tinyint(3) unsigned NOT NULL COMMENT 'main event',
  `event2` tinyint(3) unsigned NOT NULL COMMENT 'sub event',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='GameObject battleground indexing system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_battleground`
--

LOCK TABLES `gameobject_battleground` WRITE;
/*!40000 ALTER TABLE `gameobject_battleground` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_battleground` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_involvedrelation`
--

DROP TABLE IF EXISTS `gameobject_involvedrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_involvedrelation`
--

LOCK TABLES `gameobject_involvedrelation` WRITE;
/*!40000 ALTER TABLE `gameobject_involvedrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_involvedrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_loot_template`
--

DROP TABLE IF EXISTS `gameobject_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_loot_template`
--

LOCK TABLES `gameobject_loot_template` WRITE;
/*!40000 ALTER TABLE `gameobject_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_questrelation`
--

DROP TABLE IF EXISTS `gameobject_questrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_questrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_questrelation`
--

LOCK TABLES `gameobject_questrelation` WRITE;
/*!40000 ALTER TABLE `gameobject_questrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_questrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_respawn`
--

DROP TABLE IF EXISTS `gameobject_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL DEFAULT '0',
  `instance` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_respawn`
--

LOCK TABLES `gameobject_respawn` WRITE;
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_scripts`
--

DROP TABLE IF EXISTS `gameobject_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_scripts`
--

LOCK TABLES `gameobject_scripts` WRITE;
/*!40000 ALTER TABLE `gameobject_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_template`
--

DROP TABLE IF EXISTS `gameobject_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `castBarCaption` varchar(100) NOT NULL DEFAULT '',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `size` float NOT NULL DEFAULT '1',
  `data0` int(10) unsigned NOT NULL DEFAULT '0',
  `data1` int(10) unsigned NOT NULL DEFAULT '0',
  `data2` int(10) unsigned NOT NULL DEFAULT '0',
  `data3` int(10) unsigned NOT NULL DEFAULT '0',
  `data4` int(10) unsigned NOT NULL DEFAULT '0',
  `data5` int(10) unsigned NOT NULL DEFAULT '0',
  `data6` int(10) unsigned NOT NULL DEFAULT '0',
  `data7` int(10) unsigned NOT NULL DEFAULT '0',
  `data8` int(10) unsigned NOT NULL DEFAULT '0',
  `data9` int(10) unsigned NOT NULL DEFAULT '0',
  `data10` int(10) unsigned NOT NULL DEFAULT '0',
  `data11` int(10) unsigned NOT NULL DEFAULT '0',
  `data12` int(10) unsigned NOT NULL DEFAULT '0',
  `data13` int(10) unsigned NOT NULL DEFAULT '0',
  `data14` int(10) unsigned NOT NULL DEFAULT '0',
  `data15` int(10) unsigned NOT NULL DEFAULT '0',
  `data16` int(10) unsigned NOT NULL DEFAULT '0',
  `data17` int(10) unsigned NOT NULL DEFAULT '0',
  `data18` int(10) unsigned NOT NULL DEFAULT '0',
  `data19` int(10) unsigned NOT NULL DEFAULT '0',
  `data20` int(10) unsigned NOT NULL DEFAULT '0',
  `data21` int(10) unsigned NOT NULL DEFAULT '0',
  `data22` int(10) unsigned NOT NULL DEFAULT '0',
  `data23` int(10) unsigned NOT NULL DEFAULT '0',
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_template`
--

LOCK TABLES `gameobject_template` WRITE;
/*!40000 ALTER TABLE `gameobject_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_template`
--

DROP TABLE IF EXISTS `instance_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `levelMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `levelMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reset_delay` int(10) unsigned NOT NULL DEFAULT '0',
  `startLocX` float DEFAULT NULL,
  `startLocY` float DEFAULT NULL,
  `startLocZ` float DEFAULT NULL,
  `startLocO` float DEFAULT NULL,
  `script` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_template`
--

LOCK TABLES `instance_template` WRITE;
/*!40000 ALTER TABLE `instance_template` DISABLE KEYS */;
INSERT INTO `instance_template` VALUES (33,0,22,30,10,7200,NULL,NULL,NULL,NULL,''),(34,0,24,32,10,7200,NULL,NULL,NULL,NULL,''),(36,0,15,20,10,7200,NULL,NULL,NULL,NULL,''),(43,0,15,21,10,7200,NULL,NULL,NULL,NULL,''),(47,0,29,38,10,7200,NULL,NULL,NULL,NULL,''),(48,0,24,32,10,7200,NULL,NULL,NULL,NULL,''),(70,0,35,47,10,7200,NULL,NULL,NULL,NULL,''),(90,0,29,38,10,7200,NULL,NULL,NULL,NULL,''),(109,0,45,55,10,7200,NULL,NULL,NULL,NULL,''),(129,0,37,46,10,7200,NULL,NULL,NULL,NULL,''),(189,0,34,45,10,7200,NULL,NULL,NULL,NULL,''),(209,0,44,54,10,7200,NULL,NULL,NULL,NULL,''),(229,0,58,0,10,120000,78.5083,-225.044,49.839,5.1,''),(230,0,52,0,5,7200,NULL,NULL,NULL,NULL,''),(249,0,60,0,40,432000,NULL,NULL,NULL,NULL,''),(289,0,57,0,5,7200,NULL,NULL,NULL,NULL,''),(309,0,60,0,20,259200,NULL,NULL,NULL,NULL,''),(329,0,58,60,5,7200,NULL,NULL,NULL,NULL,''),(349,0,46,55,10,7200,NULL,NULL,NULL,NULL,''),(389,0,13,18,10,7200,NULL,NULL,NULL,NULL,''),(409,0,60,0,40,604800,NULL,NULL,NULL,NULL,''),(429,0,55,60,5,7200,NULL,NULL,NULL,NULL,''),(469,0,60,0,40,604800,NULL,NULL,NULL,NULL,''),(509,0,60,0,20,259200,NULL,NULL,NULL,NULL,''),(531,0,60,0,40,604800,NULL,NULL,NULL,NULL,''),(533,0,60,0,40,604800,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `instance_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_enchantment_template`
--

DROP TABLE IF EXISTS `item_enchantment_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_enchantment_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ench` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`ench`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item Random Enchantment System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_enchantment_template`
--

LOCK TABLES `item_enchantment_template` WRITE;
/*!40000 ALTER TABLE `item_enchantment_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_enchantment_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_loot_template`
--

DROP TABLE IF EXISTS `item_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_loot_template`
--

LOCK TABLES `item_loot_template` WRITE;
/*!40000 ALTER TABLE `item_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_required_target`
--

DROP TABLE IF EXISTS `item_required_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_required_target` (
  `entry` mediumint(8) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `targetEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `entry_type_target` (`entry`,`type`,`targetEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_required_target`
--

LOCK TABLES `item_required_target` WRITE;
/*!40000 ALTER TABLE `item_required_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_required_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_template`
--

DROP TABLE IF EXISTS `item_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subclass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk0` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `displayid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `BuyCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `BuyPrice` int(10) unsigned NOT NULL DEFAULT '0',
  `SellPrice` int(10) unsigned NOT NULL DEFAULT '0',
  `InventoryType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllowableClass` mediumint(9) NOT NULL DEFAULT '-1',
  `AllowableRace` mediumint(9) NOT NULL DEFAULT '-1',
  `ItemLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredSkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `requiredspell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `requiredhonorrank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredCityRank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredReputationFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredReputationRank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxcount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stackable` smallint(5) unsigned NOT NULL DEFAULT '1',
  `ContainerSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_type1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value1` smallint(6) NOT NULL DEFAULT '0',
  `stat_type2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value2` smallint(6) NOT NULL DEFAULT '0',
  `stat_type3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value3` smallint(6) NOT NULL DEFAULT '0',
  `stat_type4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value4` smallint(6) NOT NULL DEFAULT '0',
  `stat_type5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value5` smallint(6) NOT NULL DEFAULT '0',
  `stat_type6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value6` smallint(6) NOT NULL DEFAULT '0',
  `stat_type7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value7` smallint(6) NOT NULL DEFAULT '0',
  `stat_type8` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value8` smallint(6) NOT NULL DEFAULT '0',
  `stat_type9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value9` smallint(6) NOT NULL DEFAULT '0',
  `stat_type10` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stat_value10` smallint(6) NOT NULL DEFAULT '0',
  `dmg_min1` float NOT NULL DEFAULT '0',
  `dmg_max1` float NOT NULL DEFAULT '0',
  `dmg_type1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dmg_min2` float NOT NULL DEFAULT '0',
  `dmg_max2` float NOT NULL DEFAULT '0',
  `dmg_type2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dmg_min3` float NOT NULL DEFAULT '0',
  `dmg_max3` float NOT NULL DEFAULT '0',
  `dmg_type3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dmg_min4` float NOT NULL DEFAULT '0',
  `dmg_max4` float NOT NULL DEFAULT '0',
  `dmg_type4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dmg_min5` float NOT NULL DEFAULT '0',
  `dmg_max5` float NOT NULL DEFAULT '0',
  `dmg_type5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `armor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `holy_res` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fire_res` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nature_res` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frost_res` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shadow_res` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `arcane_res` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delay` smallint(5) unsigned NOT NULL DEFAULT '1000',
  `ammo_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RangedModRange` float NOT NULL DEFAULT '0',
  `spellid_1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spelltrigger_1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellcharges_1` tinyint(4) NOT NULL DEFAULT '0',
  `spellppmRate_1` float NOT NULL DEFAULT '0',
  `spellcooldown_1` int(11) NOT NULL DEFAULT '-1',
  `spellcategory_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellcategorycooldown_1` int(11) NOT NULL DEFAULT '-1',
  `spellid_2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spelltrigger_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellcharges_2` tinyint(4) NOT NULL DEFAULT '0',
  `spellppmRate_2` float NOT NULL DEFAULT '0',
  `spellcooldown_2` int(11) NOT NULL DEFAULT '-1',
  `spellcategory_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellcategorycooldown_2` int(11) NOT NULL DEFAULT '-1',
  `spellid_3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spelltrigger_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellcharges_3` tinyint(4) NOT NULL DEFAULT '0',
  `spellppmRate_3` float NOT NULL DEFAULT '0',
  `spellcooldown_3` int(11) NOT NULL DEFAULT '-1',
  `spellcategory_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellcategorycooldown_3` int(11) NOT NULL DEFAULT '-1',
  `spellid_4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spelltrigger_4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellcharges_4` tinyint(4) NOT NULL DEFAULT '0',
  `spellppmRate_4` float NOT NULL DEFAULT '0',
  `spellcooldown_4` int(11) NOT NULL DEFAULT '-1',
  `spellcategory_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellcategorycooldown_4` int(11) NOT NULL DEFAULT '-1',
  `spellid_5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spelltrigger_5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellcharges_5` tinyint(4) NOT NULL DEFAULT '0',
  `spellppmRate_5` float NOT NULL DEFAULT '0',
  `spellcooldown_5` int(11) NOT NULL DEFAULT '-1',
  `spellcategory_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellcategorycooldown_5` int(11) NOT NULL DEFAULT '-1',
  `bonding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `PageText` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `LanguageID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PageMaterial` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `startquest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lockid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Material` tinyint(4) NOT NULL DEFAULT '0',
  `sheath` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RandomProperty` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `block` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemset` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MaxDurability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Map` smallint(6) NOT NULL DEFAULT '0',
  `BagFamily` mediumint(9) NOT NULL DEFAULT '0',
  `TotemCategory` tinyint(4) NOT NULL DEFAULT '0',
  `RequiredDisenchantSkill` smallint(6) NOT NULL DEFAULT '-1',
  `ArmorDamageModifier` float NOT NULL DEFAULT '0',
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  `DisenchantID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `FoodType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minMoneyLoot` int(10) unsigned NOT NULL DEFAULT '0',
  `maxMoneyLoot` int(10) unsigned NOT NULL DEFAULT '0',
  `Duration` int(11) NOT NULL DEFAULT '0' COMMENT 'Duration in seconds. Negative value means realtime, postive value ingame time',
  PRIMARY KEY (`entry`),
  KEY `items_index` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_template`
--

LOCK TABLES `item_template` WRITE;
/*!40000 ALTER TABLE `item_template` DISABLE KEYS */;
INSERT INTO `item_template` VALUES (25,2,7,-1,'Worn Shortsword',1542,1,0,1,35,7,21,32767,511,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1900,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,0,0,1,3,0,0,0,20,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(35,2,10,-1,'Bent Staff',472,1,0,1,47,9,17,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2900,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,2,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(36,2,4,-1,'Worn Mace',5194,1,0,1,38,7,21,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1900,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,3,0,0,0,20,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(37,2,0,-1,'Worn Axe',14029,1,0,1,38,7,21,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,3,0,0,0,20,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(38,4,0,-1,'Recruit\'s Shirt',9891,1,0,1,1,1,4,-1,-1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(39,4,1,-1,'Recruit\'s Pants',9892,0,0,1,5,1,7,32767,511,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(40,4,0,-1,'Recruit\'s Boots',10141,1,0,1,4,1,8,32767,511,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(43,4,0,-1,'Squire\'s Boots',9938,1,0,1,4,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(44,4,1,-1,'Squire\'s Pants',9937,0,0,1,4,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(45,4,0,-1,'Squire\'s Shirt',3265,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(47,4,0,-1,'Footpad\'s Shoes',9915,1,0,1,4,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(48,4,1,-1,'Footpad\'s Pants',9913,0,0,1,4,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(49,4,0,-1,'Footpad\'s Shirt',9906,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(51,4,0,-1,'Neophyte\'s Boots',9946,1,0,1,5,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(52,4,1,-1,'Neophyte\'s Pants',9945,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(53,4,0,-1,'Neophyte\'s Shirt',9944,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(55,4,0,-1,'Apprentice\'s Boots',9929,1,0,1,5,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(56,4,1,-1,'Apprentice\'s Robe',12647,0,0,1,5,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(57,4,1,-1,'Acolyte\'s Robe',12645,0,0,1,5,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(59,4,0,-1,'Acolyte\'s Shoes',3261,1,0,1,5,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(117,0,0,-1,'Tough Jerky',2473,1,0,6,25,1,0,2047,255,5,1,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,433,0,-1,0,-1,11,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(120,4,1,-1,'Thug Pants',10006,0,0,1,4,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(121,4,0,-1,'Thug Boots',10008,1,0,1,4,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(127,4,0,-1,'Trapper\'s Shirt',9996,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(139,4,1,-1,'Brawler\'s Pants',9988,0,0,1,4,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(140,4,0,-1,'Brawler\'s Boots',9992,1,0,1,4,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(147,4,1,-1,'Rugged Trapper\'s Pants',9975,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(148,4,0,-1,'Rugged Trapper\'s Shirt',9976,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(153,4,2,-1,'Primitive Kilt',10050,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,8,0,0,0,0,30,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(154,4,0,-1,'Primitive Mantle',10058,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(159,0,0,-1,'Refreshing Spring Water',18084,1,0,6,25,1,0,2047,255,5,1,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,430,0,-1,0,-1,59,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(1395,4,1,-1,'Apprentice\'s Pants',9924,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(1396,4,1,-1,'Acolyte\'s Pants',3260,0,0,1,4,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2070,0,0,-1,'Darnassian Bleu',6353,1,0,6,25,1,0,2047,255,5,1,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,433,0,-1,0,-1,11,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2092,2,15,-1,'Worn Dagger',6442,1,0,1,35,7,13,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1600,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,3,0,0,0,16,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2101,1,2,-1,'Light Quiver',21328,1,0,1,4,1,18,2047,255,1,1,0,0,0,0,0,0,0,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,14824,1,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2102,1,3,-1,'Small Ammo Pouch',1816,1,0,1,4,1,18,2047,255,1,1,0,0,0,0,0,0,0,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,14824,1,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2105,4,0,-1,'Thug Shirt',10005,1,0,1,5,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2361,2,5,-1,'Battleworn Hammer',8690,1,0,1,45,9,17,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2900,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,1,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2362,4,6,-1,'Worn Wooden Shield',18730,0,0,1,7,1,14,32767,511,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,4,0,1,0,20,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2504,2,2,-1,'Worn Shortbow',8106,1,0,1,29,5,15,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2300,2,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,0,0,0,0,20,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2508,2,3,-1,'Old Blunderbuss',6606,1,0,1,27,5,26,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2300,3,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,0,0,0,0,20,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(2512,6,2,-1,'Rough Arrow',5996,1,0,1,10,0,24,2047,255,5,1,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,0,0,0,0,0,0,0,1,0,-1,0,'internalItemHandler',0,0,0,0,0),(2516,6,3,-1,'Light Shot',5998,1,0,1,10,0,24,2047,255,5,1,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,-1,0,'internalItemHandler',0,0,0,0,0),(2947,2,16,-1,'Small Throwing Knife',16754,1,0,1,15,0,25,2047,255,3,1,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,4,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(3661,2,10,-1,'Handcrafted Staff',18530,1,0,1,45,9,17,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2900,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,2,2,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(4536,0,0,-1,'Shiny Red Apple',6410,1,0,6,25,1,0,2047,255,5,1,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,433,0,-1,0,-1,11,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(4540,0,0,-1,'Tough Hunk of Bread',6399,1,0,6,25,1,0,2047,255,5,1,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,433,0,-1,0,-1,11,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(4604,0,0,-1,'Forest Mushroom Cap',15852,1,0,6,25,1,0,2047,255,5,1,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,433,0,-1,0,-1,11,1000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6096,4,0,-1,'Apprentice\'s Shirt',2163,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6097,4,0,-1,'Acolyte\'s Shirt',2470,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6098,4,1,-1,'Neophyte\'s Robe',12679,0,0,1,4,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6119,4,1,-1,'Neophyte\'s Robe',12681,0,0,1,4,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6123,4,1,-1,'Novice\'s Robe',12683,0,0,1,4,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6124,4,1,-1,'Novice\'s Pants',9987,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6125,4,0,-1,'Brawler\'s Harness',9995,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6126,4,1,-1,'Trapper\'s Pants',10002,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6127,4,0,-1,'Trapper\'s Boots',10003,1,0,1,5,1,8,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6129,4,1,-1,'Acolyte\'s Robe',12646,0,0,1,5,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6134,4,0,-1,'Primitive Mantle',10108,1,0,1,1,1,4,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6135,4,2,-1,'Primitive Kilt',10109,0,0,1,5,1,7,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,8,0,0,0,0,30,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6139,4,1,-1,'Novice\'s Robe',12684,0,0,1,4,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6140,4,1,-1,'Apprentice\'s Robe',12649,0,0,1,4,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6144,4,1,-1,'Neophyte\'s Robe',12680,0,0,1,5,1,20,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,7,0,0,0,0,35,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(6948,15,0,-1,'Hearthstone',6418,1,64,1,0,0,0,32767,511,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8690,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(12282,2,1,-1,'Worn Battleaxe',22291,1,0,1,43,8,17,2047,255,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2900,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,1,0,0,0,25,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(14646,12,0,-1,'Northshire Gift Voucher',18499,1,0,1,0,0,0,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,'',0,0,0,5805,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(14647,12,0,-1,'Coldridge Valley Gift Voucher',18499,1,0,1,0,0,0,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,'',0,0,0,5841,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(14648,12,0,-1,'Shadowglen Gift Voucher',18499,1,0,1,0,0,0,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,'',0,0,0,5842,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(14649,12,0,-1,'Valley of Trials Gift Voucher',18499,1,0,1,0,0,0,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,'',0,0,0,5843,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(14650,12,0,-1,'Camp Narache Gift Voucher',18499,1,0,1,0,0,0,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,'',0,0,0,5844,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(14651,12,0,-1,'Deathknell Gift Voucher',18499,1,0,1,0,0,0,2047,255,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1000,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,'',0,0,0,5847,0,0,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0),(25861,2,16,-1,'Crude Throwing Axe',20777,1,0,1,15,0,25,2047,255,3,1,0,0,0,0,0,0,0,0,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2000,4,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,0,'internalItemHandler',0,0,0,0,0);
/*!40000 ALTER TABLE `item_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_creature`
--

DROP TABLE IF EXISTS `locales_creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_creature` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  `subname_loc1` varchar(100) DEFAULT NULL,
  `subname_loc2` varchar(100) DEFAULT NULL,
  `subname_loc3` varchar(100) DEFAULT NULL,
  `subname_loc4` varchar(100) DEFAULT NULL,
  `subname_loc5` varchar(100) DEFAULT NULL,
  `subname_loc6` varchar(100) DEFAULT NULL,
  `subname_loc7` varchar(100) DEFAULT NULL,
  `subname_loc8` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_creature`
--

LOCK TABLES `locales_creature` WRITE;
/*!40000 ALTER TABLE `locales_creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_gameobject`
--

DROP TABLE IF EXISTS `locales_gameobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_gameobject` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc1` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc2` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc3` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc4` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc5` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc6` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc7` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc8` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_gameobject`
--

LOCK TABLES `locales_gameobject` WRITE;
/*!40000 ALTER TABLE `locales_gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_item`
--

DROP TABLE IF EXISTS `locales_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_item` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  `description_loc1` varchar(255) DEFAULT NULL,
  `description_loc2` varchar(255) DEFAULT NULL,
  `description_loc3` varchar(255) DEFAULT NULL,
  `description_loc4` varchar(255) DEFAULT NULL,
  `description_loc5` varchar(255) DEFAULT NULL,
  `description_loc6` varchar(255) DEFAULT NULL,
  `description_loc7` varchar(255) DEFAULT NULL,
  `description_loc8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_item`
--

LOCK TABLES `locales_item` WRITE;
/*!40000 ALTER TABLE `locales_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_npc_option`
--

DROP TABLE IF EXISTS `locales_npc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_npc_option` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_text_loc1` text,
  `option_text_loc2` text,
  `option_text_loc3` text,
  `option_text_loc4` text,
  `option_text_loc5` text,
  `option_text_loc6` text,
  `option_text_loc7` text,
  `option_text_loc8` text,
  `box_text_loc1` text,
  `box_text_loc2` text,
  `box_text_loc3` text,
  `box_text_loc4` text,
  `box_text_loc5` text,
  `box_text_loc6` text,
  `box_text_loc7` text,
  `box_text_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_npc_option`
--

LOCK TABLES `locales_npc_option` WRITE;
/*!40000 ALTER TABLE `locales_npc_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_npc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_npc_text`
--

DROP TABLE IF EXISTS `locales_npc_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_npc_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Text0_0_loc1` longtext,
  `Text0_0_loc2` longtext,
  `Text0_0_loc3` longtext,
  `Text0_0_loc4` longtext,
  `Text0_0_loc5` longtext,
  `Text0_0_loc6` longtext,
  `Text0_0_loc7` longtext,
  `Text0_0_loc8` longtext,
  `Text0_1_loc1` longtext,
  `Text0_1_loc2` longtext,
  `Text0_1_loc3` longtext,
  `Text0_1_loc4` longtext,
  `Text0_1_loc5` longtext,
  `Text0_1_loc6` longtext,
  `Text0_1_loc7` longtext,
  `Text0_1_loc8` longtext,
  `Text1_0_loc1` longtext,
  `Text1_0_loc2` longtext,
  `Text1_0_loc3` longtext,
  `Text1_0_loc4` longtext,
  `Text1_0_loc5` longtext,
  `Text1_0_loc6` longtext,
  `Text1_0_loc7` longtext,
  `Text1_0_loc8` longtext,
  `Text1_1_loc1` longtext,
  `Text1_1_loc2` longtext,
  `Text1_1_loc3` longtext,
  `Text1_1_loc4` longtext,
  `Text1_1_loc5` longtext,
  `Text1_1_loc6` longtext,
  `Text1_1_loc7` longtext,
  `Text1_1_loc8` longtext,
  `Text2_0_loc1` longtext,
  `Text2_0_loc2` longtext,
  `Text2_0_loc3` longtext,
  `Text2_0_loc4` longtext,
  `Text2_0_loc5` longtext,
  `Text2_0_loc6` longtext,
  `Text2_0_loc7` longtext,
  `Text2_0_loc8` longtext,
  `Text2_1_loc1` longtext,
  `Text2_1_loc2` longtext,
  `Text2_1_loc3` longtext,
  `Text2_1_loc4` longtext,
  `Text2_1_loc5` longtext,
  `Text2_1_loc6` longtext,
  `Text2_1_loc7` longtext,
  `Text2_1_loc8` longtext,
  `Text3_0_loc1` longtext,
  `Text3_0_loc2` longtext,
  `Text3_0_loc3` longtext,
  `Text3_0_loc4` longtext,
  `Text3_0_loc5` longtext,
  `Text3_0_loc6` longtext,
  `Text3_0_loc7` longtext,
  `Text3_0_loc8` longtext,
  `Text3_1_loc1` longtext,
  `Text3_1_loc2` longtext,
  `Text3_1_loc3` longtext,
  `Text3_1_loc4` longtext,
  `Text3_1_loc5` longtext,
  `Text3_1_loc6` longtext,
  `Text3_1_loc7` longtext,
  `Text3_1_loc8` longtext,
  `Text4_0_loc1` longtext,
  `Text4_0_loc2` longtext,
  `Text4_0_loc3` longtext,
  `Text4_0_loc4` longtext,
  `Text4_0_loc5` longtext,
  `Text4_0_loc6` longtext,
  `Text4_0_loc7` longtext,
  `Text4_0_loc8` longtext,
  `Text4_1_loc1` longtext,
  `Text4_1_loc2` longtext,
  `Text4_1_loc3` longtext,
  `Text4_1_loc4` longtext,
  `Text4_1_loc5` longtext,
  `Text4_1_loc6` longtext,
  `Text4_1_loc7` longtext,
  `Text4_1_loc8` longtext,
  `Text5_0_loc1` longtext,
  `Text5_0_loc2` longtext,
  `Text5_0_loc3` longtext,
  `Text5_0_loc4` longtext,
  `Text5_0_loc5` longtext,
  `Text5_0_loc6` longtext,
  `Text5_0_loc7` longtext,
  `Text5_0_loc8` longtext,
  `Text5_1_loc1` longtext,
  `Text5_1_loc2` longtext,
  `Text5_1_loc3` longtext,
  `Text5_1_loc4` longtext,
  `Text5_1_loc5` longtext,
  `Text5_1_loc6` longtext,
  `Text5_1_loc7` longtext,
  `Text5_1_loc8` longtext,
  `Text6_0_loc1` longtext,
  `Text6_0_loc2` longtext,
  `Text6_0_loc3` longtext,
  `Text6_0_loc4` longtext,
  `Text6_0_loc5` longtext,
  `Text6_0_loc6` longtext,
  `Text6_0_loc7` longtext,
  `Text6_0_loc8` longtext,
  `Text6_1_loc1` longtext,
  `Text6_1_loc2` longtext,
  `Text6_1_loc3` longtext,
  `Text6_1_loc4` longtext,
  `Text6_1_loc5` longtext,
  `Text6_1_loc6` longtext,
  `Text6_1_loc7` longtext,
  `Text6_1_loc8` longtext,
  `Text7_0_loc1` longtext,
  `Text7_0_loc2` longtext,
  `Text7_0_loc3` longtext,
  `Text7_0_loc4` longtext,
  `Text7_0_loc5` longtext,
  `Text7_0_loc6` longtext,
  `Text7_0_loc7` longtext,
  `Text7_0_loc8` longtext,
  `Text7_1_loc1` longtext,
  `Text7_1_loc2` longtext,
  `Text7_1_loc3` longtext,
  `Text7_1_loc4` longtext,
  `Text7_1_loc5` longtext,
  `Text7_1_loc6` longtext,
  `Text7_1_loc7` longtext,
  `Text7_1_loc8` longtext,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_npc_text`
--

LOCK TABLES `locales_npc_text` WRITE;
/*!40000 ALTER TABLE `locales_npc_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_npc_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_page_text`
--

DROP TABLE IF EXISTS `locales_page_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_page_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Text_loc1` longtext,
  `Text_loc2` longtext,
  `Text_loc3` longtext,
  `Text_loc4` longtext,
  `Text_loc5` longtext,
  `Text_loc6` longtext,
  `Text_loc7` longtext,
  `Text_loc8` longtext,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_page_text`
--

LOCK TABLES `locales_page_text` WRITE;
/*!40000 ALTER TABLE `locales_page_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_page_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales_quest`
--

DROP TABLE IF EXISTS `locales_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locales_quest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title_loc1` text,
  `Title_loc2` text,
  `Title_loc3` text,
  `Title_loc4` text,
  `Title_loc5` text,
  `Title_loc6` text,
  `Title_loc7` text,
  `Title_loc8` text,
  `Details_loc1` text,
  `Details_loc2` text,
  `Details_loc3` text,
  `Details_loc4` text,
  `Details_loc5` text,
  `Details_loc6` text,
  `Details_loc7` text,
  `Details_loc8` text,
  `Objectives_loc1` text,
  `Objectives_loc2` text,
  `Objectives_loc3` text,
  `Objectives_loc4` text,
  `Objectives_loc5` text,
  `Objectives_loc6` text,
  `Objectives_loc7` text,
  `Objectives_loc8` text,
  `OfferRewardText_loc1` text,
  `OfferRewardText_loc2` text,
  `OfferRewardText_loc3` text,
  `OfferRewardText_loc4` text,
  `OfferRewardText_loc5` text,
  `OfferRewardText_loc6` text,
  `OfferRewardText_loc7` text,
  `OfferRewardText_loc8` text,
  `RequestItemsText_loc1` text,
  `RequestItemsText_loc2` text,
  `RequestItemsText_loc3` text,
  `RequestItemsText_loc4` text,
  `RequestItemsText_loc5` text,
  `RequestItemsText_loc6` text,
  `RequestItemsText_loc7` text,
  `RequestItemsText_loc8` text,
  `EndText_loc1` text,
  `EndText_loc2` text,
  `EndText_loc3` text,
  `EndText_loc4` text,
  `EndText_loc5` text,
  `EndText_loc6` text,
  `EndText_loc7` text,
  `EndText_loc8` text,
  `ObjectiveText1_loc1` text,
  `ObjectiveText1_loc2` text,
  `ObjectiveText1_loc3` text,
  `ObjectiveText1_loc4` text,
  `ObjectiveText1_loc5` text,
  `ObjectiveText1_loc6` text,
  `ObjectiveText1_loc7` text,
  `ObjectiveText1_loc8` text,
  `ObjectiveText2_loc1` text,
  `ObjectiveText2_loc2` text,
  `ObjectiveText2_loc3` text,
  `ObjectiveText2_loc4` text,
  `ObjectiveText2_loc5` text,
  `ObjectiveText2_loc6` text,
  `ObjectiveText2_loc7` text,
  `ObjectiveText2_loc8` text,
  `ObjectiveText3_loc1` text,
  `ObjectiveText3_loc2` text,
  `ObjectiveText3_loc3` text,
  `ObjectiveText3_loc4` text,
  `ObjectiveText3_loc5` text,
  `ObjectiveText3_loc6` text,
  `ObjectiveText3_loc7` text,
  `ObjectiveText3_loc8` text,
  `ObjectiveText4_loc1` text,
  `ObjectiveText4_loc2` text,
  `ObjectiveText4_loc3` text,
  `ObjectiveText4_loc4` text,
  `ObjectiveText4_loc5` text,
  `ObjectiveText4_loc6` text,
  `ObjectiveText4_loc7` text,
  `ObjectiveText4_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locales_quest`
--

LOCK TABLES `locales_quest` WRITE;
/*!40000 ALTER TABLE `locales_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_loot_template`
--

DROP TABLE IF EXISTS `mail_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_loot_template`
--

LOCK TABLES `mail_loot_template` WRITE;
/*!40000 ALTER TABLE `mail_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mangos_string`
--

DROP TABLE IF EXISTS `mangos_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mangos_string` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mangos_string`
--

LOCK TABLES `mangos_string` WRITE;
/*!40000 ALTER TABLE `mangos_string` DISABLE KEYS */;
INSERT INTO `mangos_string` VALUES (1,'You should select a character or a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'You should select a creature.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'|cffff0000[System Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'|cffff0000[Event Message]: %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'There is no help for that command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'There is no such command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'There is no such subcommand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Command %s have subcommands:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Commands available to you:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Incorrect syntax.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Your account level is: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Online players: %u (max: %u) Queued players: %u (max: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Server uptime: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Player saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'All players saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'There are the following active GMs on this server:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'There are no GMs currently logged in on this server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Cannot do that while flying.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Cannot do that in Battlegrounds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Target is flying you can\'t do that.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'%s is flying command failed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'You are not mounted so you can\'t dismount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Cannot do that while fighting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'You used it recently.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Password not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'The password was changed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'The new passwords do not match or the old password is wrong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Your account is now locked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Your account is now unlocked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,', rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,' [known]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,' [learn]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,' [passive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,' [talent]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,' (offline)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'You are: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'visible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'invisible',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'You',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,' <unknown> ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'<error>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'<non-existing character>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'You must be at least level %u to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'You must be at least level %u and have item %s to enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Hello! Ready for some training?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Invaid item count (%u) for item %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Mail can\'t have more %u item stacks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'The new passwords do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Current Message of the day: \r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Using World DB: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Using script library: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Using creature EventAI: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,'Global notify: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s)\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'%s is already being teleported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'You can summon a player to your instance only if he is in your party with you as leader.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,'You cannot go to the player\'s instance because you are in a party now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,'You can go to the player\'s instance while not being in his party only if your GM mode is on.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,'You can not go to player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,'You can not summon player %s from instance to instance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,'You are summoning %s%s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'You are being summoned by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,'You are teleporting %s%s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,'You are being teleported by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,'Player (%s) does not exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,'Appearing at %s\'s location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,'%s is appearing to your location.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,'Incorrect values.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'No character selected.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,'%s is not in a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,'You changed HP of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,'%s changed your HP to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,'You changed MANA of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,'%s changed your MANA to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,'You changed ENERGY of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,'%s changed your ENERGY to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,'Current energy: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,'You changed rage of %s to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,'%s changed your rage to %i/%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,'You changed level of %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,'GUID %i, faction is %i, flags is %i, npcflag is %i, DY flag is %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,'Wrong faction: %u (not found in factiontemplate.dbc).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,'You changed GUID=%i \'s Faction to %i, flags to %i, npcflag to %i, dyflag to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,'You changed the spellflatid=%i, val= %i, mark =%i to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,'%s changed your spellflatid=%i, val= %i, mark =%i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,'%s has access to all taxi nodes now (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'%s has no more access to all taxi nodes now (only visited accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'%s has given you access to all taxi nodes (until logout).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,'%s has removed access to all taxi nodes (only visited still accessible).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,'You set all speeds to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,'%s set all your speeds to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,'You set the speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,'%s set your speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,'You set the swim speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,'%s set your swim speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,'You set the backwards run speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,'%s set your backwards run speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,'You set the fly speed to %2.2f from normal of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,'%s set your fly speed to %2.2f from normal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,'You set the size %2.2f of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,'%s set your size to %2.2f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,'There is no such mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,'You give a mount to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,'%s gave you a mount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,'USER1: %i, ADD: %i, DIF: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,'You take all copper of %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,'%s took you all of your copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,'You take %i copper from %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,'%s took %i copper from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,'You give %i copper to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,'%s gave you %i copper.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,'You hear sound %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,'USER2: %i, ADD: %i, RESULT: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,'Removed bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,'Set bit %i in field %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'Teleport location table is empty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,'Teleport location not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,'Requires search parameter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,'There are no teleport locations matching your request.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,'Locations found are:\n %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,'Mail sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,'You try to hear sound %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,'You can\'t teleport self to self!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,'server console command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,'Liquid level: %f, ground: %f, type: %d, status: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,'No selection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,'Object GUID is: lowpart %u highpart %X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,'The name was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,'Error, name can only contain characters A-Z and a-z.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,'The subname was too long by %i characters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,'Not yet implemented',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,'Item \'%i\' \'%s\' added to list with maxcount \'%i\' and incrtime \'%i\' and extendedcost \'%i\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,'Item \'%i\' not found in database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,'Item \'%i\' \'%s\' deleted from vendor list',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,'Item \'%i\' not found in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,'Item \'%i\' already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,'Spells of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,'Spells of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,'Talents of %s reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,'Talents of %s will reset at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,'Your spells have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,'Your talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,'Unknown case \'%s\' for .resetall command. Type full correct case name.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,'Spells will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,'Talents will reset for all players at login. Strongly recommend re-login!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,'Creature (GUID: %u) No waypoint found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,'Creature (GUID: %u) Last waypoint not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,'Creature (GUID: %u) No waypoint found - used \'wpguid\'. Now trying to find it by its position...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,'Creature (GUID: %u) No waypoints found - This is a MaNGOS db problem (single float).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(224,'Selected creature is ignored - provided GUID is used',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,'You must select a visual waypoint.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,'No visual waypoints found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,'Could not create visual waypoint with creatureID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(229,'All visual waypoints removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,'Could not create waypoint-creature with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'No GUID provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(232,'No waypoint number provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,'Argument required for \'%s\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,'Waypoint %i added to GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,'Waypoint %d added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'Waypoint changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,'Waypoint %s modified.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(238,'WP export successfull.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(239,'No waypoints found inside the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,'File imported.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Waypoint removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,'Warning: Could not delete WP from the world with ID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'This happens if the waypoint is too far away from your char.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,'The WP is deleted from the database, but not from the world here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,'They will disappear after a server restart.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,'Waypoint %d: Info for creature: %s, GUID: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,'Waittime: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,'Model %d: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Emote: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(250,'Spell: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,'Text%d (ID: %i): %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'AIScript: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'Forced rename for player %s will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Forced rename for player %s (GUID #%u) will be requested at next login.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'Waypoint-Creature (GUID: %u) Not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'Could not find NPC...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'Creature movement type set to \'%s\', waypoints removed (if any).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'Creature movement type set to \'%s\', waypoints were not removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'Incorrect value, use on or off',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,'Value saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,'Value saved, you may need to rejoin or clean your client cache.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(262,'Areatrigger ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,'Target map or coordinates is invalid (X: %f Y: %f MapId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,'Zone coordinates is invalid (X: %f Y: %f AreaId: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(265,'Zone %u (%s) is part of instanceable map %u (%s)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,'Nothing found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,'Object not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,'Creature not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,'Warning: Mob found more than once - you will be teleported to the first one found in DB.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,'Creature Removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,'Creature moved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(272,'Creature (GUID:%u) must be on the same map as player!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,'Game Object (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,'Game Object (GUID: %u) has references in not found creature %u GO list, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,'Game Object (GUID: %u) removed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) turned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,'Game Object |cffffffff|Hgameobject:%d|h[%s]|h|r (GUID: %u) moved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,'You must select a vendor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(279,'You must send id for item',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,'Vendor has too many items (max 128)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,'You can\'t kick self, logout instead',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(282,'Player %s kicked.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,'Accepting Whisper: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(285,'Accepting Whisper: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,'Accepting Whisper: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,'Creature (GUID: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(288,'Tickets count: %i show new tickets: %s\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,'New ticket from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,'Ticket of %s (Last updated: %s):\n%s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,'New ticket show: ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(292,'New ticket show: OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(293,'Ticket %i doesn\'t exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(294,'All tickets deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(295,'Character %s ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(296,'Ticket deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(297,'Spawn distance changed to: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(298,'Spawn time changed to: %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(299,'The %s field of %s was set to %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(300,'Your chat has been disabled for %u minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,'You have disabled %s\'s chat for %u minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,'Player\'s chat is already enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(303,'Your chat has been enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(304,'You have enabled %s\'s chat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(305,'Faction %s (%u) reputation of %s was set to %5d!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(307,'No faction found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(308,'Faction %i unknown!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(309,'Invalid parameter %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,'delta must be between 0 and %d (inclusive)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,'%d - |cffffffff|Hfaction:%d|h[%s]|h|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(312,' [visible]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(313,' [at war]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(314,' [peace forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(315,' [hidden]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(316,' [invisible forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(317,' [inactive]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(318,'Hated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(319,'Hostile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(320,'Unfriendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(321,'Neutral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(322,'Friendly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(323,'Honored',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(324,'Revered',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(325,'Exalted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(326,'Faction %s (%u) can\'not have reputation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(327,' [no reputation]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(328,'Characters at account %s (Id: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(329,'  %s (GUID %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(330,'No players found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(331,'Extended item cost %u not exist',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(332,'GM mode is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(333,'GM mode is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(334,'GM Chat Badge is ON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(335,'GM Chat Badge is OFF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(336,'You repair all %s\'s items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(337,'All your items repaired by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(338,'You set waterwalk mode %s for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(339,'Your waterwalk mode %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(340,'%s is now following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(341,'%s is not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(342,'%s is now not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(343,'Creature (Entry: %u) cannot be tamed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(344,'You already have pet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(347,'TaxiNode ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(348,'Game Object (Entry: %u) have invalid data and can\'t be spawned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(349,'Private ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(350,'Corporal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(351,'Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(352,'Master Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(353,'Sergeant Major ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(354,'Knight ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(355,'Knight-Lieutenant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(356,'Knight-Captain ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(357,'Knight-Champion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(358,'Lieutenant Commander ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(359,'Commander ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(360,'Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(361,'Field Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(362,'Grand Marshal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(363,'Scout ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(364,'Grunt ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(365,'Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(366,'Senior Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(367,'First Sergeant ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(368,'Stone Guard ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(369,'Blood Guard ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(370,'Legionnare ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(371,'Centurion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(372,'Champion ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(373,'Lieutenant General ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(374,'General ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(375,'Warlord ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(376,'High Warlord ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(377,'Game Master ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(378,'No Rank ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(379,'%s (Rank %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(380,'Today: [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(381,'Yesterday: [Kills: |c0000ff00%u|r] [Honor: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(382,'This Week: [Kills: |c0000ff00%u|r] [Honor: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(383,'Last Week: [Kills: |c0000ff00%u|r] [Honor: %u] [Standing: %u]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(384,'Life Time: [Honorable Kills: |c0000ff00%u|r] [Dishonorable Kills: |c00ff0000%u|r] [Highest Rank %u: %s]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(400,'|cffff0000[System Message]:|rScripts reloaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(401,'You change security level of account %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(402,'%s changed your security level to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(403,'You have low security level for this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(404,'Creature movement disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(405,'Creature movement enabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(406,'Weather can\'t be changed for this zone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(407,'Weather system disabled at server.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(408,'%s is banned for %s. Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(409,'%s is banned permanently for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(410,'%s %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(411,'%s unbanned.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(412,'There was an error removing the ban on %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(413,'Account not exist: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(414,'There is no such character.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(415,'There is no such IP in banlist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(416,'Account %s has never been banned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(417,'Ban history for account %s:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(418,'Ban Date: %s Bantime: %s Still active: %s  Reason: %s Set by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(419,'Inf.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(420,'Never',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(421,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(422,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(423,'IP: %s\nBan Date: %s\nUnban Date: %s\nRemaining: %s\nReason: %s\nSet by: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(424,'There is no matching IPban.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(425,'There is no matching account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(426,'There is no banned account owning a character matching this part.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(427,'The following IPs match your pattern:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(428,'The following accounts match your query:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(429,'You learned many spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(430,'You learned all spells for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(431,'You learned all talents for class.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(432,'You learned all languages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(433,'You learned all craft skills and recipes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(434,'Could not find \'%s\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(435,'Invalid item id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(436,'No items found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(437,'Invalid gameobject id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(438,'Found items %u: %u ( inventory %u mail %u auction %u guild %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(439,'Found gameobjects %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(440,'Invalid creature id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(441,'Found creatures %u: %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(442,'No area found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(443,'No item sets found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(444,'No skills found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(445,'No spells found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(446,'No quests found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(447,'No creatures found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(448,'No gameobjects found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(449,'Graveyard #%u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(450,'Graveyard #%u already linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(451,'Graveyard #%u linked to zone #%u (current).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(452,'Graveyard #%u can\'t be linked to subzone or not existed zone #%u (internal error).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(454,'No faction in Graveyard with id= #%u , fix your DB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(455,'invalid team, please fix database',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(456,'any',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(457,'alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(458,'horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(459,'Graveyard #%u (faction: %s) is nearest from linked to zone #%u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(460,'Zone #%u doesn\'t have linked graveyards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(461,'Zone #%u doesn\'t have linked graveyards for faction: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(462,'Teleport location already exists!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(463,'Teleport location added.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(464,'Teleport location NOT added: database error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(465,'Teleport location deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(466,'No taxinodes found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(467,'Target unit has %d auras:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(468,'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(469,'Target unit has %d auras of type %d:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(470,'id: %d eff: %d name: %s%s%s caster: %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(471,'Quest %u not found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(472,'Quest %u started from item. For correct work, please, add item to inventory and start quest in normal way: .additem %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(473,'Quest removed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(474,' [rewarded]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(475,' [complete]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(476,' [active]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(477,'%s\'s Fly Mode %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(478,'Opcode %u sent to %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(479,'Character loaded successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(480,'Failed to load the character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(481,'Character dumped successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(482,'Character dump failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(483,'Spell %u broken and not allowed to cast or learn!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(484,'Skill %u (%s) for player %s set to %u and current maximum set to %u (without permanent (talent) bonuses).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(485,'Player %s must have skill %u (%s) before using this command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(486,'Invalid skill id (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(487,'You learned default GM spells/skills.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(488,'You already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(489,'Target(%s) already know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(490,'%s doesn\'t know that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(491,'You already forgot that spell.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(492,'All spell cooldowns removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(493,'Spell %u cooldown removed for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(494,'Command : Additem, itemId = %i, amount = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(495,'Command : Additemset, itemsetId = %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,'Removed itemID = %i, amount = %i from %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(497,'Cannot create item \'%i\' (amount: %i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(498,'You need to provide a guild name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499,'Player not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(500,'Player already has a guild!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(501,'Guild not created! (already exists?)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(502,'No items from itemset \'%u\' found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(503,'The distance is: (3D) %f (2D) %f yards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(504,'Item \'%i\' \'%s\' Item Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(505,'Item \'%i\' doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(506,'Item \'%i\' \'%s\' Added to Slot %i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(507,'Item save failed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(508,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(509,'%d - sender: %s (guid: %u account: %u ) receiver: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(510,'%d - owner: %s (guid: %u account: %u ) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(511,'Wrong link type!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(513,'%d - |cffffffff|Hquest:%d:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(514,'%d - |cffffffff|Hcreature_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(515,'%d - |cffffffff|Hcreature:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(516,'%d - |cffffffff|Hgameobject_entry:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(517,'%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(518,'%d - |cffffffff|Hitemset:%d|h[%s %s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(519,'|cffffffff|Htele:%s|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(520,'%d - |cffffffff|Hspell:%d|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(521,'%d - |cffffffff|Hskill:%d|h[%s %s]|h|r %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(522,'Game Object (Entry: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(523,'>> Game Object %s (GUID: %u) at %f %f %f. Orientation %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(524,'Selected object:\n|cffffffff|Hgameobject:%d|h[%s]|h|r GUID: %u ID: %u\nX: %f Y: %f Z: %f MapId: %u\nOrientation: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(525,'>> Add Game Object \'%i\' (%s) (GUID: %i) added at \'%f %f %f\'.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(526,'%s (lowguid: %u) movement generators stack:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(527,'   Idle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(528,'   Random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(529,'   Waypoint',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(530,'   Animal random',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(531,'   Confused',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(532,'   Targeted to player %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(533,'   Targeted to creature %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(534,'   Targeted to <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(535,'   Home movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(536,'   Home movement used for player?!?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(537,'   Taxi flight',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(538,'   Unknown movement generator (%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(539,'Player selected NPC\nGUID: %u.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(540,'Level: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(541,'Health (base): %u. (max): %u. (current): %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(542,'Field Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(543,'Loot: %u Pickpocket: %u Skinning: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(544,'Position: %f %f %f.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(545,'*** Is a vendor!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(546,'*** Is a trainer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(547,'InstanceID: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(548,'Player%s %s (guid: %u) Account: %s (id: %u) GMLevel: %u Last IP: %s Last login: %s Latency: %ums',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(549,'Played time: %s Level: %u Money: %ug%us%uc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(550,'Command .pinfo doesn\'t support \'rep\' option for offline players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(551,'%s has explored all zones now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(552,'%s has no more explored zones.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(553,'%s has explored all zones for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(554,'%s has hidden all zones from you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(555,'Hover enabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(556,'Hover disabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(557,'%s level up you to (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(558,'%s level down you to (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(559,'%s reset your level progress.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(560,'The area has been set as explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(561,'The area has been set as not explored.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(562,'GUID=%i \'s updateIndex: %i, value:  %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(563,'You change GUID=%i \'s UpdateIndex: %i value to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(564,'The value index %u is too big to %u(count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(565,'Set %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(566,'You Set %u Field:%u to uint32 Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(567,'Set %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(568,'You Set %u Field:%i to float Value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(569,'Get %u uint32 Value:[OPCODE]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(570,'The uint32 value of %u in %u is: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(571,'Get %u float Value:[OPCODE]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(572,'The float of %u value in %u is: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(575,'.Mod32Value:[OPCODE]:%u [VALUE]:%i',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(576,'You modified the value of Field:%u to Value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(577,'You are now invisible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(578,'You are now visible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(579,'Selected player or creature not have victim.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(580,'You learned all default spells for race/class and completed quests rewarded spells.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(581,'Found near gameobjects (distance %f): %u ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(582,'SpawnTime: Full:%s Remain:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(583,'%d - |cffffffff|Hgameevent:%d|h[%s]|h|r%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(584,'No event found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(585,'Event not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(586,'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(587,'Event %u already active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(588,'Event %u not active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(589,'   Point movement to (X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(590,'   Fear movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(591,'   Distract movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(592,'You have learned all spells in craft: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(593,'Currently Banned Accounts:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(594,'|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(595,'Currently Banned IPs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(596,'|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(597,'Current gamemasters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(598,'|    Account    |  GM  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(599,'No gamemasters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(600,'The Alliance wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(601,'The Horde wins!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(602,'The battle for Warsong Gulch begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(603,'The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(604,'Let the battle for Warsong Gulch begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(605,'$n captured the Horde flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(606,'$n captured the Alliance flag!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(607,'The Horde flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(608,'The Alliance Flag was dropped by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(609,'The Alliance Flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(610,'The Horde flag was returned to its base by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(611,'The Horde flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(612,'The Alliance Flag was picked up by $n!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(613,'The flags are now placed at their bases.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(636,'The Battle for Eye of the Storm begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(637,'The Battle for Eye of the Storm begins in 30 seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(638,'The Battle for Eye of the Storm has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(650,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(651,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(652,'stables',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(653,'blacksmith',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(654,'farm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(655,'lumber mill',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(656,'mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(657,'The %s has taken the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(658,'$n has defended the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(659,'$n has assaulted the %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(660,'$n claims the %s! If left unchallenged, the %s will control it in 1 minute!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(661,'The Battle for Arathi Basin begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(662,'The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(663,'The Battle for Arathi Basin has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(664,'The Alliance has gathered $1776W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(665,'The Horde has gathered $1777W resources, and is near victory!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(666,'After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(705,'You must wait %s before speaking again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(706,'This item(s) have problems with equipping/storing in inventory.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(707,'%s wishes to not be disturbed and cannot receive whisper messages: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(708,'%s is Away from Keyboard: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(709,'Do not Disturb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(710,'Away from Keyboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(711,'Queue status for %s (Lvl: %u to %u)\nQueued alliances: %u (Need at least %u more)\nQueued hordes: %u (Need at least %u more)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(712,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] A: %u/%u, H: %u/%u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(714,'%s is not high enough level to join your team',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(715,'You don\'t meet Battleground level requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(717,'|cffff0000[BG Queue Announcer]:|r %s -- [%u-%u] Started!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(720,'Your group is too large for this battleground. Please regroup to join.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(726,'There aren\'t enough players in this battleground. It will end soon unless some more players join to balance the fight.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(727,'Your group has an offline member. Please remove him before joining.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(728,'Your group has players from the opposing faction. You can\'t join the battleground as a group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(729,'Your group has players from different battleground brakets. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(730,'Someone in your party is already in this battleground queue. (S)he must leave it before joining as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(731,'Someone in your party is Deserter. You can\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(732,'Someone in your party is already in three battleground queues. You cannot join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(733,'You cannot teleport to a battleground map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(734,'You cannot summon players to a battleground or arena map.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(735,'You must be in GM mode to teleport to a player in a battleground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(736,'You cannot teleport to a battleground from another battleground. Please leave the current battleground first.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(739,'Battlegrounds are set to 1v0 for debugging.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(740,'Battlegrounds are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(750,'Not enough players. This game will close in %u mins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(751,'Not enough players. This game will close in %u seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(752,'Only the Alliance can use that portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(753,'Only the Horde can use that portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(754,'The battle for Arathi Basin begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(755,'The battle begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(757,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(758,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(759,'%s was destroyed by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(760,'The %s is under attack! If left unchecked, the %s will destroy it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(761,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(762,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(763,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(764,'The %s is under attack! If left unchecked, the %s will capture it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(765,'The %s has taken the %s! Its supplies will now be used for reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(766,'Irondeep Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(767,'Coldtooth Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(768,'Stormpike Aid Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(769,'Dun Baldar South Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(770,'Dun Baldar North Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(771,'Stormpike Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(772,'Icewing Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(773,'Stonehearth Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(774,'Stonehearth Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(775,'Snowfall Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(776,'Iceblood Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(777,'Iceblood Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(778,'Tower Point',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(779,'Frostwolf Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(780,'East Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(781,'West Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(782,'Frostwolf Relief Hut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(783,'2 minutes until the battle for Alterac Valley begins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(784,'1 minute until the battle for Alterac Valley begins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(785,'30 seconds until the battle for Alterac Valley begins. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(786,'The battle for Alterac Valley has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(787,'The Alliance Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(788,'The Horde Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(789,'The Frostwolf General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(790,'The Stormpike General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(801,'You do not have enough gold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(802,'You do not have enough free slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(803,'Your partner does not have enough free bag slots',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(804,'You do not have permission to perform that function',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(805,'Unknown language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(806,'You don\'t know that language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(807,'Please provide character name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(808,'Player %s not found or offline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(809,'Account for character %s not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(811,'Guild Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(812,'Officer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(813,'Veteran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(814,'Member',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(815,'Initiate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1000,'Exiting daemon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1001,'Account deleted: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1002,'Account %s NOT deleted (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1003,'Account %s NOT deleted (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1004,'Account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1005,'Account name can\'t be longer than 16 characters (client limit), account not created!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1006,'Account with this name already exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1007,'Account %s NOT created (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1008,'Account %s NOT created (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1009,'Player %s (Guid: %u) Account %s (Id: %u) deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1010,'|    Account    |       Character      |       IP        | GM | Expansion |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1011,'|<Error>        | %20s |<Error>          |<Er>| <Error>   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1012,'===========================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1013,'|%15s| %20s | %15s |%4d| %9d |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1014,'No online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1100,'Account %s (Id: %u) have up to %u expansion allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1101,'Message of the day changed to:\r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1102,'Message sent to %s: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1103,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1104,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1105,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1106,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1107,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1108,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1109,'%d - %s %s %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1110,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1111,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1112,'Failed to open file: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1113,'Account %s (%u) have max amount allowed characters (client limit)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1114,'Dump file have broken data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1115,'Invalid character name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1116,'Invalid character guid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1117,'Character guid %u in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1118,'%d - guild: %s (guid: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1119,'You must use male or female as gender.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1120,'You change gender of %s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1121,'Your gender changed to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1122,'(%u/%u +perm %u +temp %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1128,'%d - |cffffffff|Htaxinode:%u|h[%s %s]|h|r (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1129,'%d - %s %s (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1130,'event started %u \"%s\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1131,'event stopped %u \"%s\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1200,'You try to view cinemitic %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mangos_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_gossip`
--

DROP TABLE IF EXISTS `npc_gossip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_gossip` (
  `npc_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `textid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_gossip`
--

LOCK TABLES `npc_gossip` WRITE;
/*!40000 ALTER TABLE `npc_gossip` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_gossip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_gossip_textid`
--

DROP TABLE IF EXISTS `npc_gossip_textid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_gossip_textid` (
  `zoneid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `textid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `zoneid` (`zoneid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_gossip_textid`
--

LOCK TABLES `npc_gossip_textid` WRITE;
/*!40000 ALTER TABLE `npc_gossip_textid` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_gossip_textid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_option`
--

DROP TABLE IF EXISTS `npc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_option` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gossip_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `box_money` int(10) unsigned NOT NULL DEFAULT '0',
  `coded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `option_text` text,
  `box_text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_option`
--

LOCK TABLES `npc_option` WRITE;
/*!40000 ALTER TABLE `npc_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_text`
--

DROP TABLE IF EXISTS `npc_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_text` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `text0_0` longtext,
  `text0_1` longtext,
  `lang0` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob0` float NOT NULL DEFAULT '0',
  `em0_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text1_0` longtext,
  `text1_1` longtext,
  `lang1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob1` float NOT NULL DEFAULT '0',
  `em1_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text2_0` longtext,
  `text2_1` longtext,
  `lang2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob2` float NOT NULL DEFAULT '0',
  `em2_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text3_0` longtext,
  `text3_1` longtext,
  `lang3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob3` float NOT NULL DEFAULT '0',
  `em3_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text4_0` longtext,
  `text4_1` longtext,
  `lang4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob4` float NOT NULL DEFAULT '0',
  `em4_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text5_0` longtext,
  `text5_1` longtext,
  `lang5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob5` float NOT NULL DEFAULT '0',
  `em5_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text6_0` longtext,
  `text6_1` longtext,
  `lang6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob6` float NOT NULL DEFAULT '0',
  `em6_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text7_0` longtext,
  `text7_1` longtext,
  `lang7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob7` float NOT NULL DEFAULT '0',
  `em7_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_text`
--

LOCK TABLES `npc_text` WRITE;
/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_trainer`
--

DROP TABLE IF EXISTS `npc_trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_trainer` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spellcost` int(10) unsigned NOT NULL DEFAULT '0',
  `reqskill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reqskillvalue` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reqlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `entry_spell` (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_trainer`
--

LOCK TABLES `npc_trainer` WRITE;
/*!40000 ALTER TABLE `npc_trainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_vendor`
--

DROP TABLE IF EXISTS `npc_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_vendor` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `incrtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_vendor`
--

LOCK TABLES `npc_vendor` WRITE;
/*!40000 ALTER TABLE `npc_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_text`
--

DROP TABLE IF EXISTS `page_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `next_page` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_text`
--

LOCK TABLES `page_text` WRITE;
/*!40000 ALTER TABLE `page_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_levelstats`
--

DROP TABLE IF EXISTS `pet_levelstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_levelstats` (
  `creature_entry` mediumint(8) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `hp` smallint(5) unsigned NOT NULL,
  `mana` smallint(5) unsigned NOT NULL,
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `str` smallint(5) unsigned NOT NULL,
  `agi` smallint(5) unsigned NOT NULL,
  `sta` smallint(5) unsigned NOT NULL,
  `inte` smallint(5) unsigned NOT NULL,
  `spi` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`creature_entry`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores pet levels stats.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_levelstats`
--

LOCK TABLES `pet_levelstats` WRITE;
/*!40000 ALTER TABLE `pet_levelstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_levelstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_name_generation`
--

DROP TABLE IF EXISTS `pet_name_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_name_generation` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` tinytext NOT NULL,
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `half` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_name_generation`
--

LOCK TABLES `pet_name_generation` WRITE;
/*!40000 ALTER TABLE `pet_name_generation` DISABLE KEYS */;
INSERT INTO `pet_name_generation` VALUES (1,'Aba',416,0),(2,'Az',416,0),(3,'Bel',416,0),(4,'Biz',416,0),(5,'Cho',416,0),(6,'Dag',416,0),(7,'Gak',416,0),(8,'Gar',416,0),(9,'Gel',416,0),(10,'Gho',416,0),(11,'Gob',416,0),(12,'Gra',416,0),(13,'Jak',416,0),(14,'Jub',416,0),(15,'Kar',416,0),(16,'Kup',416,0),(17,'Laz',416,0),(18,'Nal',416,0),(19,'Nok',416,0),(20,'Pag',416,0),(21,'Pig',416,0),(22,'Pip',416,0),(23,'Piz',416,0),(24,'Quz',416,0),(25,'Rui',416,0),(26,'Rul',416,0),(27,'Rup',416,0),(28,'Tar',416,0),(29,'Vol',416,0),(30,'Yaz',416,0),(31,'Zep',416,0),(32,'Zig',416,0),(33,'Zil',416,0),(34,'Zor',416,0),(35,'bis',416,1),(36,'fip',416,1),(37,'gup',416,1),(38,'ham',416,1),(39,'jub',416,1),(40,'kin',416,1),(41,'kol',416,1),(42,'lop',416,1),(43,'loz',416,1),(44,'mat',416,1),(45,'mir',416,1),(46,'nam',416,1),(47,'nar',416,1),(48,'nik',416,1),(49,'nip',416,1),(50,'pad',416,1),(51,'pep',416,1),(52,'pit',416,1),(53,'qua',416,1),(54,'rai',416,1),(55,'rin',416,1),(56,'rot',416,1),(57,'tai',416,1),(58,'tal',416,1),(59,'tik',416,1),(60,'tip',416,1),(61,'tog',416,1),(62,'tuk',416,1),(63,'uri',416,1),(64,'yal',416,1),(65,'yap',416,1),(66,'Bhee',417,0),(67,'Bruu',417,0),(68,'Czaa',417,0),(69,'Droo',417,0),(70,'Flaa',417,0),(71,'Fzuu',417,0),(72,'Ghaa',417,0),(73,'Gree',417,0),(74,'Gzaa',417,0),(75,'Haa',417,0),(76,'Haad',417,0),(77,'Haag',417,0),(78,'Haap',417,0),(79,'Jhaa',417,0),(80,'Jhuu',417,0),(81,'Khaa',417,0),(82,'Khii',417,0),(83,'Khuu',417,0),(84,'Kree',417,0),(85,'Luu',417,0),(86,'Maa',417,0),(87,'Nhee',417,0),(88,'Phuu',417,0),(89,'Pryy',417,0),(90,'Rhuu',417,0),(91,'Shaa',417,0),(92,'Sloo',417,0),(93,'Sruu',417,0),(94,'Thoo',417,0),(95,'Traa',417,0),(96,'Wraa',417,0),(97,'Zhaa',417,0),(98,'dhon',417,1),(99,'dhum',417,1),(100,'dhun',417,1),(101,'dom',417,1),(102,'don',417,1),(103,'drom',417,1),(104,'dym',417,1),(105,'fenn',417,1),(106,'fum',417,1),(107,'fun',417,1),(108,'ghon',417,1),(109,'ghun',417,1),(110,'grom',417,1),(111,'grym',417,1),(112,'hom',417,1),(113,'hon',417,1),(114,'hun',417,1),(115,'jhom',417,1),(116,'kun',417,1),(117,'lum',417,1),(118,'mmon',417,1),(119,'mon',417,1),(120,'myn',417,1),(121,'nam',417,1),(122,'nem',417,1),(123,'nhym',417,1),(124,'nom',417,1),(125,'num',417,1),(126,'phom',417,1),(127,'roon',417,1),(128,'rym',417,1),(129,'shon',417,1),(130,'thun',417,1),(131,'tom',417,1),(132,'zhem',417,1),(133,'zhum',417,1),(134,'zun',417,1),(135,'Bar',1860,0),(136,'Bel',1860,0),(137,'Char',1860,0),(138,'Grak\'',1860,0),(139,'Graz\'',1860,0),(140,'Grim',1860,0),(141,'Hath',1860,0),(142,'Hel',1860,0),(143,'Hok',1860,0),(144,'Huk',1860,0),(145,'Jhaz',1860,0),(146,'Jhom',1860,0),(147,'Juk\'',1860,0),(148,'Kal\'',1860,0),(149,'Klath',1860,0),(150,'Kon',1860,0),(151,'Krag',1860,0),(152,'Krak',1860,0),(153,'Mak',1860,0),(154,'Mezz',1860,0),(155,'Orm',1860,0),(156,'Phan',1860,0),(157,'Sar',1860,0),(158,'Tang',1860,0),(159,'Than',1860,0),(160,'Thog',1860,0),(161,'Thok',1860,0),(162,'Thul',1860,0),(163,'Zag\'',1860,0),(164,'Zang',1860,0),(165,'Zhar\'',1860,0),(166,'kath',1860,1),(167,'doc',1860,1),(168,'dok',1860,1),(169,'gak',1860,1),(170,'garth',1860,1),(171,'gore',1860,1),(172,'gorg',1860,1),(173,'grave',1860,1),(174,'gron',1860,1),(175,'juk',1860,1),(176,'krast',1860,1),(177,'kresh',1860,1),(178,'krit',1860,1),(179,'los',1860,1),(180,'mon',1860,1),(181,'mos',1860,1),(182,'moth',1860,1),(183,'nagma',1860,1),(184,'nak',1860,1),(185,'nar',1860,1),(186,'nos',1860,1),(187,'nuz',1860,1),(188,'phog',1860,1),(189,'rath',1860,1),(190,'tast',1860,1),(191,'taz',1860,1),(192,'thak',1860,1),(193,'thang',1860,1),(194,'thyk',1860,1),(195,'vhug',1860,1),(196,'zazt',1860,1),(197,'Ael',1863,0),(198,'Aez',1863,0),(199,'Ang',1863,0),(200,'Ban',1863,0),(201,'Bet',1863,0),(202,'Bro',1863,0),(203,'Bry',1863,0),(204,'Cat',1863,0),(205,'Dir',1863,0),(206,'Dis',1863,0),(207,'Dom',1863,0),(208,'Drus',1863,0),(209,'Fie',1863,0),(210,'Fier',1863,0),(211,'Gly',1863,0),(212,'Hel',1863,0),(213,'Hes',1863,0),(214,'Kal',1863,0),(215,'Lyn',1863,0),(216,'Mir',1863,0),(217,'Nim',1863,0),(218,'Sar',1863,0),(219,'Sel',1863,0),(220,'Vil',1863,0),(221,'Zah',1863,0),(222,'aith',1863,1),(223,'anda',1863,1),(224,'antia',1863,1),(225,'evere',1863,1),(226,'lia',1863,1),(227,'lissa',1863,1),(228,'neri',1863,1),(229,'neth',1863,1),(230,'nia',1863,1),(231,'nlissa',1863,1),(232,'nora',1863,1),(233,'nva',1863,1),(234,'nys',1863,1),(235,'ola',1863,1),(236,'ona',1863,1),(237,'ora',1863,1),(238,'rah',1863,1),(239,'riana',1863,1),(240,'riel',1863,1),(241,'rona',1863,1),(242,'tai',1863,1),(243,'tevere',1863,1),(244,'thea',1863,1),(245,'vina',1863,1),(246,'wena',1863,1),(247,'wyn',1863,1),(248,'xia',1863,1),(249,'yla',1863,1),(250,'yssa',1863,1),(251,'Flaa',17252,0),(252,'Haa',17252,0),(253,'Jhuu',17252,0),(254,'Shaa',17252,0),(255,'Thoo',17252,0),(256,'dhun',17252,1),(257,'ghun',17252,1),(258,'roon',17252,1),(259,'thun',17252,1),(260,'tom',17252,1);
/*!40000 ALTER TABLE `pet_name_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petcreateinfo_spell`
--

DROP TABLE IF EXISTS `petcreateinfo_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petcreateinfo_spell` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Spell1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Spell2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Spell3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Spell4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pet Create Spells';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petcreateinfo_spell`
--

LOCK TABLES `petcreateinfo_spell` WRITE;
/*!40000 ALTER TABLE `petcreateinfo_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `petcreateinfo_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickpocketing_loot_template`
--

DROP TABLE IF EXISTS `pickpocketing_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickpocketing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickpocketing_loot_template`
--

LOCK TABLES `pickpocketing_loot_template` WRITE;
/*!40000 ALTER TABLE `pickpocketing_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickpocketing_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_classlevelstats`
--

DROP TABLE IF EXISTS `player_classlevelstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_classlevelstats` (
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `basehp` smallint(5) unsigned NOT NULL,
  `basemana` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_classlevelstats`
--

LOCK TABLES `player_classlevelstats` WRITE;
/*!40000 ALTER TABLE `player_classlevelstats` DISABLE KEYS */;
INSERT INTO `player_classlevelstats` VALUES (1,1,20,0),(1,2,29,0),(1,3,38,0),(1,4,47,0),(1,5,56,0),(1,6,65,0),(1,7,74,0),(1,8,83,0),(1,9,92,0),(1,10,101,0),(1,11,100,0),(1,12,109,0),(1,13,118,0),(1,14,128,0),(1,15,139,0),(1,16,151,0),(1,17,154,0),(1,18,168,0),(1,19,183,0),(1,20,199,0),(1,21,206,0),(1,22,224,0),(1,23,243,0),(1,24,253,0),(1,25,274,0),(1,26,296,0),(1,27,309,0),(1,28,333,0),(1,29,348,0),(1,30,374,0),(1,31,401,0),(1,32,419,0),(1,33,448,0),(1,34,468,0),(1,35,499,0),(1,36,521,0),(1,37,545,0),(1,38,581,0),(1,39,609,0),(1,40,649,0),(1,41,681,0),(1,42,715,0),(1,43,761,0),(1,44,799,0),(1,45,839,0),(1,46,881,0),(1,47,935,0),(1,48,981,0),(1,49,1029,0),(1,50,1079,0),(1,51,1131,0),(1,52,1185,0),(1,53,1241,0),(1,54,1299,0),(1,55,1359,0),(1,56,1421,0),(1,57,1485,0),(1,58,1551,0),(1,59,1619,0),(1,60,1689,0),(1,61,1902,0),(1,62,2129,0),(1,63,2357,0),(1,64,2612,0),(1,65,2883,0),(1,66,3169,0),(1,67,3455,0),(1,68,3774,0),(1,69,4109,0),(1,70,4444,0),(2,1,28,60),(2,2,36,78),(2,3,44,98),(2,4,52,104),(2,5,60,111),(2,6,68,134),(2,7,76,143),(2,8,84,153),(2,9,92,179),(2,10,100,192),(2,11,108,205),(2,12,116,219),(2,13,124,249),(2,14,132,265),(2,15,131,282),(2,16,141,315),(2,17,152,334),(2,18,164,354),(2,19,177,390),(2,20,191,412),(2,21,206,435),(2,22,222,459),(2,23,239,499),(2,24,247,525),(2,25,266,552),(2,26,286,579),(2,27,307,621),(2,28,329,648),(2,29,342,675),(2,30,366,702),(2,31,391,729),(2,32,407,756),(2,33,434,798),(2,34,462,825),(2,35,481,852),(2,36,511,879),(2,37,542,906),(2,38,564,933),(2,39,597,960),(2,40,621,987),(2,41,656,1014),(2,42,682,1041),(2,43,719,1068),(2,44,747,1110),(2,45,786,1137),(2,46,816,1164),(2,47,857,1176),(2,48,889,1203),(2,49,922,1230),(2,50,966,1257),(2,51,1001,1284),(2,52,1037,1311),(2,53,1084,1338),(2,54,1122,1365),(2,55,1161,1392),(2,56,1201,1419),(2,57,1252,1446),(2,58,1294,1458),(2,59,1337,1485),(2,60,1381,1512),(2,61,1540,1656),(2,62,1708,1800),(2,63,1884,1944),(2,64,2068,2088),(2,65,2262,2232),(2,66,2466,2377),(2,67,2679,2521),(2,68,2901,2665),(2,69,3134,2809),(2,70,3377,2953),(3,1,46,65),(3,2,53,70),(3,3,60,76),(3,4,67,98),(3,5,74,106),(3,6,81,130),(3,7,88,140),(3,8,95,166),(3,9,102,193),(3,10,109,206),(3,11,116,235),(3,12,123,250),(3,13,130,266),(3,14,138,298),(3,15,147,316),(3,16,157,350),(3,17,168,370),(3,18,180,391),(3,19,193,428),(3,20,207,451),(3,21,222,475),(3,22,238,515),(3,23,255,541),(3,24,273,568),(3,25,292,611),(3,26,312,640),(3,27,333,670),(3,28,355,715),(3,29,378,745),(3,30,402,775),(3,31,417,805),(3,32,443,850),(3,33,470,880),(3,34,498,910),(3,35,527,940),(3,36,547,970),(3,37,578,1015),(3,38,610,1045),(3,39,643,1075),(3,40,667,1105),(3,41,702,1135),(3,42,738,1180),(3,43,775,1210),(3,44,803,1240),(3,45,842,1270),(3,46,872,1300),(3,47,913,1330),(3,48,955,1360),(3,49,994,1390),(3,50,1047,1420),(3,51,1067,1450),(3,52,1113,1480),(3,53,1150,1510),(3,54,1198,1540),(3,55,1237,1570),(3,56,1287,1600),(3,57,1328,1630),(3,58,1370,1660),(3,59,1423,1690),(3,60,1467,1720),(3,61,1633,1886),(3,62,1819,2053),(3,63,2003,2219),(3,64,2195,2385),(3,65,2397,2552),(3,66,2623,2718),(3,67,2844,2884),(3,68,3075,3050),(3,69,3316,3217),(3,70,3568,3383),(4,1,25,0),(4,2,32,0),(4,3,49,0),(4,4,56,0),(4,5,63,0),(4,6,70,0),(4,7,87,0),(4,8,94,0),(4,9,101,0),(4,10,118,0),(4,11,125,0),(4,12,142,0),(4,13,149,0),(4,14,156,0),(4,15,173,0),(4,16,181,0),(4,17,190,0),(4,18,200,0),(4,19,221,0),(4,20,233,0),(4,21,246,0),(4,22,260,0),(4,23,275,0),(4,24,301,0),(4,25,318,0),(4,26,336,0),(4,27,355,0),(4,28,375,0),(4,29,396,0),(4,30,428,0),(4,31,451,0),(4,32,475,0),(4,33,500,0),(4,34,526,0),(4,35,553,0),(4,36,581,0),(4,37,610,0),(4,38,640,0),(4,39,671,0),(4,40,703,0),(4,41,736,0),(4,42,770,0),(4,43,805,0),(4,44,841,0),(4,45,878,0),(4,46,916,0),(4,47,955,0),(4,48,995,0),(4,49,1026,0),(4,50,1068,0),(4,51,1111,0),(4,52,1155,0),(4,53,1200,0),(4,54,1246,0),(4,55,1283,0),(4,56,1331,0),(4,57,1380,0),(4,58,1430,0),(4,59,1471,0),(4,60,1523,0),(4,61,1702,0),(4,62,1879,0),(4,63,2077,0),(4,64,2285,0),(4,65,2489,0),(4,66,2717,0),(4,67,2941,0),(4,68,3190,0),(4,69,3450,0),(4,70,3704,0),(5,1,52,73),(5,2,57,76),(5,3,72,95),(5,4,77,114),(5,5,92,133),(5,6,97,152),(5,7,112,171),(5,8,117,190),(5,9,132,209),(5,10,137,212),(5,11,142,215),(5,12,157,234),(5,13,172,254),(5,14,177,260),(5,15,192,282),(5,16,197,305),(5,17,212,329),(5,18,227,339),(5,19,232,365),(5,20,247,377),(5,21,252,405),(5,22,268,434),(5,23,275,449),(5,24,293,480),(5,25,302,497),(5,26,322,530),(5,27,343,549),(5,28,355,584),(5,29,378,605),(5,30,392,627),(5,31,417,665),(5,32,433,689),(5,33,460,728),(5,34,478,752),(5,35,507,776),(5,36,527,800),(5,37,548,839),(5,38,580,863),(5,39,603,887),(5,40,637,911),(5,41,662,950),(5,42,698,974),(5,43,725,998),(5,44,763,1022),(5,45,792,1046),(5,46,822,1070),(5,47,863,1094),(5,48,895,1118),(5,49,928,1142),(5,50,972,1166),(5,51,1007,1190),(5,52,1053,1214),(5,53,1090,1238),(5,54,1128,1262),(5,55,1177,1271),(5,56,1217,1295),(5,57,1258,1319),(5,58,1300,1343),(5,59,1353,1352),(5,60,1397,1376),(5,61,1557,1500),(5,62,1738,1625),(5,63,1916,1749),(5,64,2101,1873),(5,65,2295,1998),(5,66,2495,2122),(5,67,2719,2247),(5,68,2936,2371),(5,69,3160,2495),(5,70,3391,2620),(7,1,37,85),(7,2,44,91),(7,3,51,98),(7,4,58,106),(7,5,65,115),(7,6,72,125),(7,7,79,136),(7,8,86,148),(7,9,93,161),(7,10,100,175),(7,11,107,190),(7,12,114,206),(7,13,121,223),(7,14,128,241),(7,15,135,260),(7,16,142,280),(7,17,150,301),(7,18,159,323),(7,19,169,346),(7,20,180,370),(7,21,192,395),(7,22,205,421),(7,23,219,448),(7,24,234,476),(7,25,240,505),(7,26,257,535),(7,27,275,566),(7,28,294,598),(7,29,314,631),(7,30,335,665),(7,31,347,699),(7,32,370,733),(7,33,394,767),(7,34,419,786),(7,35,435,820),(7,36,462,854),(7,37,490,888),(7,38,509,922),(7,39,539,941),(7,40,570,975),(7,41,592,1009),(7,42,625,1028),(7,43,649,1062),(7,44,684,1096),(7,45,710,1115),(7,46,747,1149),(7,47,775,1183),(7,48,814,1202),(7,49,844,1236),(7,50,885,1255),(7,51,917,1289),(7,52,960,1323),(7,53,994,1342),(7,54,1029,1376),(7,55,1075,1395),(7,56,1112,1414),(7,57,1150,1448),(7,58,1199,1467),(7,59,1239,1501),(7,60,1330,1520),(7,61,1428,1664),(7,62,1583,1808),(7,63,1760,1951),(7,64,1932,2095),(7,65,2114,2239),(7,66,2304,2383),(7,67,2504,2527),(7,68,2713,2670),(7,69,2931,2814),(7,70,3159,2958),(8,1,32,100),(8,2,47,110),(8,3,52,106),(8,4,67,118),(8,5,82,131),(8,6,97,130),(8,7,102,145),(8,8,117,146),(8,9,132,163),(8,10,137,196),(8,11,152,215),(8,12,167,220),(8,13,172,241),(8,14,187,263),(8,15,202,271),(8,16,207,295),(8,17,222,305),(8,18,237,331),(8,19,242,343),(8,20,257,371),(8,21,272,385),(8,22,277,415),(8,23,292,431),(8,24,298,463),(8,25,315,481),(8,26,333,515),(8,27,342,535),(8,28,362,556),(8,29,373,592),(8,30,395,613),(8,31,418,634),(8,32,432,670),(8,33,457,691),(8,34,473,712),(8,35,500,733),(8,36,518,754),(8,37,547,790),(8,38,577,811),(8,39,598,832),(8,40,630,853),(8,41,653,874),(8,42,687,895),(8,43,712,916),(8,44,748,937),(8,45,775,958),(8,46,813,979),(8,47,842,1000),(8,48,882,1021),(8,49,913,1042),(8,50,955,1048),(8,51,988,1069),(8,52,1032,1090),(8,53,1067,1111),(8,54,1103,1117),(8,55,1150,1138),(8,56,1188,1159),(8,57,1237,1165),(8,58,1277,1186),(8,59,1328,1192),(8,60,1370,1213),(8,61,1526,1316),(8,62,1702,1419),(8,63,1875,1521),(8,64,2070,1624),(8,65,2261,1727),(8,66,2461,1830),(8,67,2686,1932),(8,68,2906,2035),(8,69,3136,2138),(8,70,3393,2241),(9,1,23,90),(9,2,28,98),(9,3,43,107),(9,4,48,102),(9,5,63,113),(9,6,68,126),(9,7,83,144),(9,8,88,162),(9,9,93,180),(9,10,108,198),(9,11,123,200),(9,12,128,218),(9,13,143,237),(9,14,148,257),(9,15,153,278),(9,16,168,300),(9,17,173,308),(9,18,189,332),(9,19,196,357),(9,20,204,383),(9,21,223,395),(9,22,233,423),(9,23,244,452),(9,24,266,467),(9,25,279,498),(9,26,293,530),(9,27,318,548),(9,28,334,582),(9,29,351,602),(9,30,379,638),(9,31,398,674),(9,32,418,695),(9,33,439,731),(9,34,471,752),(9,35,494,788),(9,36,518,809),(9,37,543,830),(9,38,569,866),(9,39,606,887),(9,40,634,923),(9,41,663,944),(9,42,693,965),(9,43,724,1001),(9,44,756,1022),(9,45,799,1043),(9,46,832,1064),(9,47,868,1100),(9,48,904,1121),(9,49,941,1142),(9,50,979,1163),(9,51,1018,1184),(9,52,1058,1205),(9,53,1099,1226),(9,54,1141,1247),(9,55,1184,1268),(9,56,1228,1289),(9,57,1273,1310),(9,58,1319,1331),(9,59,1366,1352),(9,60,1414,1373),(9,61,1580,1497),(9,62,1755,1621),(9,63,1939,1745),(9,64,2133,1870),(9,65,2323,1994),(9,66,2535,2118),(9,67,2758,2242),(9,68,2991,2366),(9,69,3235,2490),(9,70,3490,2615),(11,1,44,60),(11,2,51,66),(11,3,58,73),(11,4,75,81),(11,5,82,90),(11,6,89,100),(11,7,106,111),(11,8,113,123),(11,9,120,136),(11,10,137,150),(11,11,144,165),(11,12,151,182),(11,13,168,200),(11,14,175,219),(11,15,182,239),(11,16,199,260),(11,17,206,282),(11,18,214,305),(11,19,233,329),(11,20,243,354),(11,21,254,380),(11,22,266,392),(11,23,289,420),(11,24,303,449),(11,25,318,479),(11,26,334,509),(11,27,361,524),(11,28,379,554),(11,29,398,584),(11,30,418,614),(11,31,439,629),(11,32,461,659),(11,33,494,689),(11,34,518,704),(11,35,543,734),(11,36,569,749),(11,37,596,779),(11,38,624,809),(11,39,653,824),(11,40,683,854),(11,41,714,869),(11,42,746,899),(11,43,779,914),(11,44,823,944),(11,45,858,959),(11,46,894,989),(11,47,921,1004),(11,48,959,1019),(11,49,998,1049),(11,50,1038,1064),(11,51,1079,1079),(11,52,1121,1109),(11,53,1164,1124),(11,54,1208,1139),(11,55,1253,1154),(11,56,1299,1169),(11,57,1346,1199),(11,58,1384,1214),(11,59,1433,1229),(11,60,1483,1244),(11,61,1657,1357),(11,62,1840,1469),(11,63,2020,1582),(11,64,2222,1694),(11,65,2433,1807),(11,66,2640,1919),(11,67,2872,2032),(11,68,3114,2145),(11,69,3351,2257),(11,70,3614,2370);
/*!40000 ALTER TABLE `player_classlevelstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_levelstats`
--

DROP TABLE IF EXISTS `player_levelstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_levelstats` (
  `race` tinyint(3) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `str` tinyint(3) unsigned NOT NULL,
  `agi` tinyint(3) unsigned NOT NULL,
  `sta` tinyint(3) unsigned NOT NULL,
  `inte` tinyint(3) unsigned NOT NULL,
  `spi` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`race`,`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_levelstats`
--

LOCK TABLES `player_levelstats` WRITE;
/*!40000 ALTER TABLE `player_levelstats` DISABLE KEYS */;
INSERT INTO `player_levelstats` VALUES (1,1,1,23,20,22,20,20),(1,1,2,24,21,23,20,20),(1,1,3,26,22,24,20,21),(1,1,4,27,22,26,20,21),(1,1,5,28,23,27,20,21),(1,1,6,30,24,28,20,21),(1,1,7,31,25,29,21,22),(1,1,8,32,26,30,21,22),(1,1,9,34,26,32,21,22),(1,1,10,35,27,33,21,23),(1,1,11,36,28,34,21,23),(1,1,12,38,29,35,21,23),(1,1,13,39,30,37,21,24),(1,1,14,41,31,38,21,24),(1,1,15,42,32,39,21,24),(1,1,16,44,33,41,21,25),(1,1,17,45,34,42,22,25),(1,1,18,47,34,43,22,25),(1,1,19,48,35,45,22,26),(1,1,20,50,36,46,22,26),(1,1,21,51,37,48,22,26),(1,1,22,53,38,49,22,27),(1,1,23,54,39,51,22,27),(1,1,24,56,40,52,23,28),(1,1,25,58,41,53,23,28),(1,1,26,59,42,55,23,28),(1,1,27,61,43,56,23,29),(1,1,28,63,44,58,23,29),(1,1,29,64,45,59,23,30),(1,1,30,66,46,61,24,30),(1,1,31,68,47,62,24,30),(1,1,32,69,48,64,24,31),(1,1,33,71,50,66,24,31),(1,1,34,73,51,67,24,32),(1,1,35,74,52,69,24,32),(1,1,36,76,53,70,25,33),(1,1,37,78,54,72,25,33),(1,1,38,80,55,74,25,34),(1,1,39,82,56,75,25,34),(1,1,40,83,57,77,25,35),(1,1,41,85,58,79,26,35),(1,1,42,87,60,80,26,35),(1,1,43,89,61,82,26,36),(1,1,44,91,62,84,26,36),(1,1,45,93,63,85,26,37),(1,1,46,95,64,87,27,37),(1,1,47,97,66,89,27,38),(1,1,48,99,67,91,27,38),(1,1,49,101,68,93,27,39),(1,1,50,103,69,94,28,40),(1,1,51,105,71,96,28,40),(1,1,52,107,72,98,28,41),(1,1,53,109,73,100,28,41),(1,1,54,111,74,102,29,42),(1,1,55,113,76,103,29,42),(1,1,56,115,77,105,29,43),(1,1,57,117,78,107,29,43),(1,1,58,119,79,109,30,44),(1,1,59,121,81,111,30,44),(1,1,60,123,82,113,30,45),(1,1,61,125,83,115,30,46),(1,1,62,127,85,117,31,46),(1,1,63,129,86,119,31,47),(1,1,64,132,88,121,31,47),(1,1,65,134,89,123,32,48),(1,1,66,136,90,125,32,49),(1,1,67,138,92,127,32,49),(1,1,68,140,93,129,32,50),(1,1,69,143,95,131,33,50),(1,1,70,145,96,133,33,51),(1,2,1,22,20,22,20,21),(1,2,2,23,21,23,21,22),(1,2,3,24,21,24,21,22),(1,2,4,25,22,25,22,23),(1,2,5,26,22,26,23,24),(1,2,6,28,23,27,23,25),(1,2,7,29,24,28,24,25),(1,2,8,30,24,29,25,26),(1,2,9,31,25,30,25,27),(1,2,10,32,25,32,26,27),(1,2,11,33,26,33,27,28),(1,2,12,35,27,34,27,29),(1,2,13,36,27,35,28,30),(1,2,14,37,28,36,29,31),(1,2,15,38,29,37,30,31),(1,2,16,40,29,38,30,32),(1,2,17,41,30,40,31,33),(1,2,18,42,31,41,32,34),(1,2,19,43,31,42,33,35),(1,2,20,45,32,43,33,35),(1,2,21,46,33,45,34,36),(1,2,22,47,33,46,35,37),(1,2,23,49,34,47,36,38),(1,2,24,50,35,48,37,39),(1,2,25,51,36,50,37,40),(1,2,26,53,36,51,38,41),(1,2,27,54,37,52,39,42),(1,2,28,56,38,54,40,43),(1,2,29,57,39,55,41,43),(1,2,30,58,39,56,42,44),(1,2,31,60,40,58,43,45),(1,2,32,61,41,59,43,46),(1,2,33,63,42,60,44,47),(1,2,34,64,43,62,45,48),(1,2,35,66,44,63,46,49),(1,2,36,67,44,65,47,50),(1,2,37,69,45,66,48,51),(1,2,38,70,46,67,49,52),(1,2,39,72,47,69,50,53),(1,2,40,73,48,70,51,54),(1,2,41,75,49,72,52,55),(1,2,42,77,49,73,53,56),(1,2,43,78,50,75,54,57),(1,2,44,80,51,76,55,58),(1,2,45,81,52,78,56,59),(1,2,46,83,53,79,57,61),(1,2,47,85,54,81,58,62),(1,2,48,86,55,83,59,63),(1,2,49,88,56,84,60,64),(1,2,50,90,57,86,61,65),(1,2,51,91,58,87,62,66),(1,2,52,93,59,89,63,67),(1,2,53,95,60,91,64,68),(1,2,54,97,61,92,65,69),(1,2,55,98,61,94,66,71),(1,2,56,100,62,95,67,72),(1,2,57,102,63,97,68,73),(1,2,58,104,64,99,69,74),(1,2,59,105,65,101,70,75),(1,2,60,107,66,102,71,77),(1,2,61,109,67,104,73,78),(1,2,62,111,69,106,74,79),(1,2,63,113,70,107,75,80),(1,2,64,115,71,109,76,81),(1,2,65,116,72,111,77,83),(1,2,66,118,73,113,78,84),(1,2,67,120,74,115,79,85),(1,2,68,122,75,116,81,86),(1,2,69,124,76,118,82,88),(1,2,70,126,77,120,83,89),(1,4,1,21,23,21,20,20),(1,4,2,22,24,22,20,20),(1,4,3,23,26,22,20,21),(1,4,4,23,27,23,20,21),(1,4,5,24,29,24,21,21),(1,4,6,25,30,25,21,22),(1,4,7,26,32,25,21,22),(1,4,8,26,33,26,21,23),(1,4,9,27,35,27,21,23),(1,4,10,28,36,27,21,23),(1,4,11,29,38,28,22,24),(1,4,12,30,39,29,22,24),(1,4,13,31,41,30,22,25),(1,4,14,31,43,31,22,25),(1,4,15,32,44,31,22,25),(1,4,16,33,46,32,23,26),(1,4,17,34,48,33,23,26),(1,4,18,35,49,34,23,27),(1,4,19,36,51,35,23,27),(1,4,20,37,53,35,23,28),(1,4,21,38,54,36,24,28),(1,4,22,39,56,37,24,29),(1,4,23,40,58,38,24,29),(1,4,24,41,60,39,24,30),(1,4,25,42,61,40,25,30),(1,4,26,43,63,41,25,31),(1,4,27,44,65,42,25,31),(1,4,28,45,67,43,25,32),(1,4,29,46,69,43,25,32),(1,4,30,47,71,44,26,33),(1,4,31,48,72,45,26,33),(1,4,32,49,74,46,26,34),(1,4,33,50,76,47,27,34),(1,4,34,51,78,48,27,35),(1,4,35,52,80,49,27,35),(1,4,36,53,82,50,27,36),(1,4,37,54,84,51,28,36),(1,4,38,55,86,52,28,37),(1,4,39,56,88,53,28,38),(1,4,40,57,90,54,28,38),(1,4,41,58,92,55,29,39),(1,4,42,60,94,56,29,39),(1,4,43,61,96,57,29,40),(1,4,44,62,98,58,30,40),(1,4,45,63,100,59,30,41),(1,4,46,64,103,61,30,42),(1,4,47,65,105,62,31,42),(1,4,48,66,107,63,31,43),(1,4,49,68,109,64,31,44),(1,4,50,69,111,65,32,44),(1,4,51,70,113,66,32,45),(1,4,52,71,116,67,32,45),(1,4,53,73,118,68,33,46),(1,4,54,74,120,69,33,47),(1,4,55,75,122,71,33,47),(1,4,56,76,125,72,34,48),(1,4,57,78,127,73,34,49),(1,4,58,79,129,74,34,49),(1,4,59,80,131,75,35,50),(1,4,60,81,134,77,35,51),(1,4,61,83,136,78,35,51),(1,4,62,84,138,79,36,52),(1,4,63,85,141,80,36,53),(1,4,64,87,143,81,37,54),(1,4,65,88,146,83,37,54),(1,4,66,89,148,84,37,55),(1,4,67,91,151,85,38,56),(1,4,68,92,153,86,38,57),(1,4,69,94,156,88,39,57),(1,4,70,95,158,89,39,58),(1,5,1,20,20,20,22,23),(1,5,2,20,20,20,23,24),(1,5,3,20,20,21,25,26),(1,5,4,20,21,21,26,27),(1,5,5,21,21,21,27,28),(1,5,6,21,21,22,29,30),(1,5,7,21,21,22,30,31),(1,5,8,21,22,23,31,33),(1,5,9,21,22,23,33,34),(1,5,10,21,22,23,34,36),(1,5,11,22,22,24,36,37),(1,5,12,22,23,24,37,39),(1,5,13,22,23,25,38,40),(1,5,14,22,23,25,40,42),(1,5,15,22,23,25,41,43),(1,5,16,23,24,26,43,45),(1,5,17,23,24,26,44,46),(1,5,18,23,24,27,46,48),(1,5,19,23,24,27,47,49),(1,5,20,23,25,28,49,51),(1,5,21,24,25,28,51,53),(1,5,22,24,25,29,52,54),(1,5,23,24,26,29,54,56),(1,5,24,24,26,30,55,58),(1,5,25,25,26,30,57,59),(1,5,26,25,27,31,59,61),(1,5,27,25,27,31,60,63),(1,5,28,25,27,32,62,65),(1,5,29,25,28,32,64,66),(1,5,30,26,28,33,65,68),(1,5,31,26,28,33,67,70),(1,5,32,26,29,34,69,72),(1,5,33,27,29,34,70,73),(1,5,34,27,29,35,72,75),(1,5,35,27,30,35,74,77),(1,5,36,27,30,36,76,79),(1,5,37,28,30,36,78,81),(1,5,38,28,31,37,79,83),(1,5,39,28,31,38,81,85),(1,5,40,28,31,38,83,87),(1,5,41,29,32,39,85,88),(1,5,42,29,32,39,87,90),(1,5,43,29,33,40,89,92),(1,5,44,30,33,40,91,94),(1,5,45,30,33,41,92,96),(1,5,46,30,34,42,94,98),(1,5,47,31,34,42,96,100),(1,5,48,31,35,43,98,102),(1,5,49,31,35,44,100,104),(1,5,50,32,36,44,102,106),(1,5,51,32,36,45,104,109),(1,5,52,32,36,45,106,111),(1,5,53,33,37,46,108,113),(1,5,54,33,37,47,110,115),(1,5,55,33,38,47,112,117),(1,5,56,34,38,48,114,119),(1,5,57,34,39,49,117,121),(1,5,58,34,39,49,119,124),(1,5,59,35,40,50,121,126),(1,5,60,35,40,51,123,128),(1,5,61,35,41,51,125,130),(1,5,62,36,41,52,127,132),(1,5,63,36,41,53,129,135),(1,5,64,37,42,54,132,137),(1,5,65,37,42,54,134,139),(1,5,66,37,43,55,136,142),(1,5,67,38,43,56,138,144),(1,5,68,38,44,57,140,146),(1,5,69,39,44,57,143,149),(1,5,70,39,45,58,145,151),(1,8,1,20,20,20,23,22),(1,8,2,20,20,20,24,23),(1,8,3,20,20,21,26,25),(1,8,4,20,20,21,27,26),(1,8,5,20,21,21,28,27),(1,8,6,20,21,21,30,29),(1,8,7,21,21,22,31,30),(1,8,8,21,21,22,33,31),(1,8,9,21,21,22,34,33),(1,8,10,21,21,23,36,34),(1,8,11,21,22,23,37,36),(1,8,12,21,22,23,39,37),(1,8,13,21,22,24,40,38),(1,8,14,21,22,24,42,40),(1,8,15,21,22,24,43,41),(1,8,16,21,23,25,45,43),(1,8,17,22,23,25,46,44),(1,8,18,22,23,25,48,46),(1,8,19,22,23,26,49,47),(1,8,20,22,23,26,51,49),(1,8,21,22,24,26,53,51),(1,8,22,22,24,27,54,52),(1,8,23,22,24,27,56,54),(1,8,24,23,24,28,58,55),(1,8,25,23,25,28,59,57),(1,8,26,23,25,28,61,59),(1,8,27,23,25,29,63,60),(1,8,28,23,25,29,65,62),(1,8,29,23,25,30,66,64),(1,8,30,24,26,30,68,65),(1,8,31,24,26,30,70,67),(1,8,32,24,26,31,72,69),(1,8,33,24,27,31,73,70),(1,8,34,24,27,32,75,72),(1,8,35,24,27,32,77,74),(1,8,36,25,27,33,79,76),(1,8,37,25,28,33,81,78),(1,8,38,25,28,34,83,79),(1,8,39,25,28,34,85,81),(1,8,40,25,28,35,87,83),(1,8,41,26,29,35,88,85),(1,8,42,26,29,35,90,87),(1,8,43,26,29,36,92,89),(1,8,44,26,30,36,94,91),(1,8,45,26,30,37,96,92),(1,8,46,27,30,37,98,94),(1,8,47,27,31,38,100,96),(1,8,48,27,31,38,102,98),(1,8,49,27,31,39,104,100),(1,8,50,28,32,40,106,102),(1,8,51,28,32,40,109,104),(1,8,52,28,32,41,111,106),(1,8,53,28,33,41,113,108),(1,8,54,29,33,42,115,110),(1,8,55,29,33,42,117,112),(1,8,56,29,34,43,119,114),(1,8,57,29,34,43,121,117),(1,8,58,30,34,44,124,119),(1,8,59,30,35,44,126,121),(1,8,60,30,35,45,128,123),(1,8,61,30,35,46,130,125),(1,8,62,31,36,46,132,127),(1,8,63,31,36,47,135,129),(1,8,64,31,37,47,137,132),(1,8,65,32,37,48,139,134),(1,8,66,32,37,49,142,136),(1,8,67,32,38,49,144,138),(1,8,68,32,38,50,146,140),(1,8,69,33,39,50,149,143),(1,8,70,33,39,51,151,145),(1,9,1,20,20,21,22,22),(1,9,2,20,20,22,23,23),(1,9,3,21,21,22,24,24),(1,9,4,21,21,23,26,25),(1,9,5,21,21,23,27,27),(1,9,6,21,22,24,28,28),(1,9,7,22,22,24,29,29),(1,9,8,22,23,25,30,30),(1,9,9,22,23,26,32,31),(1,9,10,23,23,26,33,33),(1,9,11,23,24,27,34,34),(1,9,12,23,24,27,35,35),(1,9,13,24,25,28,37,36),(1,9,14,24,25,29,38,38),(1,9,15,24,25,29,39,39),(1,9,16,25,26,30,41,40),(1,9,17,25,26,31,42,42),(1,9,18,25,27,31,43,43),(1,9,19,26,27,32,45,44),(1,9,20,26,28,33,46,46),(1,9,21,26,28,33,48,47),(1,9,22,27,29,34,49,49),(1,9,23,27,29,35,51,50),(1,9,24,28,30,35,52,51),(1,9,25,28,30,36,53,53),(1,9,26,28,31,37,55,54),(1,9,27,29,31,37,56,56),(1,9,28,29,32,38,58,57),(1,9,29,30,32,39,59,59),(1,9,30,30,33,40,61,60),(1,9,31,30,33,40,62,62),(1,9,32,31,34,41,64,63),(1,9,33,31,34,42,66,65),(1,9,34,32,35,43,67,66),(1,9,35,32,35,44,69,68),(1,9,36,33,36,44,70,69),(1,9,37,33,36,45,72,71),(1,9,38,34,37,46,74,73),(1,9,39,34,38,47,75,74),(1,9,40,35,38,48,77,76),(1,9,41,35,39,48,79,78),(1,9,42,35,39,49,80,79),(1,9,43,36,40,50,82,81),(1,9,44,36,40,51,84,83),(1,9,45,37,41,52,85,84),(1,9,46,37,42,53,87,86),(1,9,47,38,42,54,89,88),(1,9,48,38,43,55,91,89),(1,9,49,39,44,55,93,91),(1,9,50,40,44,56,94,93),(1,9,51,40,45,57,96,95),(1,9,52,41,45,58,98,97),(1,9,53,41,46,59,100,98),(1,9,54,42,47,60,102,100),(1,9,55,42,47,61,103,102),(1,9,56,43,48,62,105,104),(1,9,57,43,49,63,107,106),(1,9,58,44,49,64,109,108),(1,9,59,44,50,65,111,109),(1,9,60,45,51,66,113,111),(1,9,61,46,51,67,115,113),(1,9,62,46,52,68,117,115),(1,9,63,47,53,69,119,117),(1,9,64,47,54,70,121,119),(1,9,65,48,54,71,123,121),(1,9,66,49,55,72,125,123),(1,9,67,49,56,73,127,125),(1,9,68,50,57,74,129,127),(1,9,69,50,57,75,131,129),(1,9,70,51,58,76,133,131),(2,1,1,26,17,24,17,23),(2,1,2,27,18,25,17,23),(2,1,3,29,19,26,17,24),(2,1,4,30,19,27,17,24),(2,1,5,31,20,29,17,24),(2,1,6,32,21,30,17,24),(2,1,7,34,22,31,18,25),(2,1,8,35,23,32,18,25),(2,1,9,37,24,34,18,25),(2,1,10,38,24,35,18,26),(2,1,11,39,25,36,18,26),(2,1,12,41,26,37,18,26),(2,1,13,42,27,39,18,27),(2,1,14,44,28,40,18,27),(2,1,15,45,29,41,18,27),(2,1,16,47,30,43,19,28),(2,1,17,48,31,44,19,28),(2,1,18,50,32,45,19,28),(2,1,19,51,33,47,19,29),(2,1,20,53,34,48,19,29),(2,1,21,54,34,50,19,29),(2,1,22,56,35,51,19,30),(2,1,23,57,36,52,20,30),(2,1,24,59,37,54,20,30),(2,1,25,60,38,55,20,31),(2,1,26,62,39,57,20,31),(2,1,27,64,40,58,20,32),(2,1,28,65,41,60,20,32),(2,1,29,67,43,61,21,32),(2,1,30,69,44,63,21,33),(2,1,31,70,45,64,21,33),(2,1,32,72,46,66,21,34),(2,1,33,74,47,67,21,34),(2,1,34,76,48,69,21,35),(2,1,35,77,49,71,22,35),(2,1,36,79,50,72,22,36),(2,1,37,81,51,74,22,36),(2,1,38,83,52,76,22,36),(2,1,39,84,53,77,22,37),(2,1,40,86,55,79,23,37),(2,1,41,88,56,81,23,38),(2,1,42,90,57,82,23,38),(2,1,43,92,58,84,23,39),(2,1,44,94,59,86,23,39),(2,1,45,96,60,87,24,40),(2,1,46,98,62,89,24,40),(2,1,47,100,63,91,24,41),(2,1,48,101,64,93,24,41),(2,1,49,103,65,94,25,42),(2,1,50,105,66,96,25,42),(2,1,51,107,68,98,25,43),(2,1,52,109,69,100,25,43),(2,1,53,111,70,102,25,44),(2,1,54,113,71,104,26,45),(2,1,55,115,73,105,26,45),(2,1,56,118,74,107,26,46),(2,1,57,120,75,109,26,46),(2,1,58,122,77,111,27,47),(2,1,59,124,78,113,27,47),(2,1,60,126,79,115,27,48),(2,1,61,128,81,117,27,48),(2,1,62,130,82,119,28,49),(2,1,63,132,83,121,28,50),(2,1,64,135,85,123,28,50),(2,1,65,137,86,125,29,51),(2,1,66,139,87,127,29,52),(2,1,67,141,89,129,29,52),(2,1,68,143,90,131,29,53),(2,1,69,146,92,133,30,53),(2,1,70,148,93,135,30,54),(2,3,1,23,20,23,17,24),(2,3,2,23,21,24,18,25),(2,3,3,24,23,25,18,25),(2,3,4,24,24,26,19,26),(2,3,5,25,25,27,19,26),(2,3,6,25,27,28,20,27),(2,3,7,26,28,28,21,28),(2,3,8,26,30,29,21,28),(2,3,9,26,31,30,22,29),(2,3,10,27,33,31,22,30),(2,3,11,27,34,32,23,30),(2,3,12,28,36,33,24,31),(2,3,13,28,37,34,24,32),(2,3,14,29,39,35,25,33),(2,3,15,29,40,36,26,33),(2,3,16,30,42,37,26,34),(2,3,17,30,43,39,27,35),(2,3,18,31,45,40,28,35),(2,3,19,31,47,41,28,36),(2,3,20,32,48,42,29,37),(2,3,21,32,50,43,30,38),(2,3,22,33,51,44,31,39),(2,3,23,34,53,45,31,39),(2,3,24,34,55,46,32,40),(2,3,25,35,57,47,33,41),(2,3,26,35,58,48,34,42),(2,3,27,36,60,50,34,43),(2,3,28,36,62,51,35,43),(2,3,29,37,63,52,36,44),(2,3,30,38,65,53,37,45),(2,3,31,38,67,54,37,46),(2,3,32,39,69,56,38,47),(2,3,33,39,71,57,39,48),(2,3,34,40,72,58,40,49),(2,3,35,41,74,59,41,49),(2,3,36,41,76,61,42,50),(2,3,37,42,78,62,42,51),(2,3,38,43,80,63,43,52),(2,3,39,43,82,64,44,53),(2,3,40,44,84,66,45,54),(2,3,41,45,86,67,46,55),(2,3,42,45,88,68,47,56),(2,3,43,46,90,70,47,57),(2,3,44,47,91,71,48,58),(2,3,45,47,93,72,49,59),(2,3,46,48,95,74,50,60),(2,3,47,49,98,75,51,61),(2,3,48,50,100,77,52,62),(2,3,49,50,102,78,53,63),(2,3,50,51,104,79,54,64),(2,3,51,52,106,81,55,65),(2,3,52,52,108,82,56,66),(2,3,53,53,110,84,57,67),(2,3,54,54,112,85,58,68),(2,3,55,55,114,87,59,69),(2,3,56,55,116,88,60,70),(2,3,57,56,118,90,61,71),(2,3,58,57,121,91,62,72),(2,3,59,58,123,93,63,73),(2,3,60,59,125,94,64,74),(2,3,61,59,127,96,65,76),(2,3,62,60,130,97,66,77),(2,3,63,61,132,99,67,78),(2,3,64,62,134,100,68,79),(2,3,65,63,136,102,69,80),(2,3,66,64,139,104,70,81),(2,3,67,64,141,105,71,82),(2,3,68,65,143,107,72,84),(2,3,69,66,146,108,73,85),(2,3,70,67,148,110,74,86),(2,4,1,24,20,23,17,23),(2,4,2,25,21,24,17,23),(2,4,3,25,23,24,17,24),(2,4,4,26,24,25,17,24),(2,4,5,27,26,26,18,24),(2,4,6,28,27,26,18,25),(2,4,7,29,29,27,18,25),(2,4,8,29,30,28,18,26),(2,4,9,30,32,29,18,26),(2,4,10,31,33,29,19,26),(2,4,11,32,35,30,19,27),(2,4,12,33,37,31,19,27),(2,4,13,34,38,32,19,28),(2,4,14,34,40,32,19,28),(2,4,15,35,41,33,19,28),(2,4,16,36,43,34,20,29),(2,4,17,37,45,35,20,29),(2,4,18,38,46,36,20,30),(2,4,19,39,48,37,20,30),(2,4,20,40,50,37,21,31),(2,4,21,41,52,38,21,31),(2,4,22,42,53,39,21,31),(2,4,23,43,55,40,21,32),(2,4,24,43,57,41,21,32),(2,4,25,44,59,42,22,33),(2,4,26,45,60,43,22,33),(2,4,27,46,62,44,22,34),(2,4,28,47,64,44,22,34),(2,4,29,48,66,45,23,35),(2,4,30,49,68,46,23,35),(2,4,31,50,70,47,23,36),(2,4,32,51,72,48,23,36),(2,4,33,53,73,49,24,37),(2,4,34,54,75,50,24,38),(2,4,35,55,77,51,24,38),(2,4,36,56,79,52,24,39),(2,4,37,57,81,53,25,39),(2,4,38,58,83,54,25,40),(2,4,39,59,85,55,25,40),(2,4,40,60,87,56,26,41),(2,4,41,61,89,57,26,41),(2,4,42,62,91,58,26,42),(2,4,43,63,93,59,27,43),(2,4,44,65,95,60,27,43),(2,4,45,66,98,61,27,44),(2,4,46,67,100,62,27,44),(2,4,47,68,102,64,28,45),(2,4,48,69,104,65,28,46),(2,4,49,71,106,66,28,46),(2,4,50,72,108,67,29,47),(2,4,51,73,110,68,29,48),(2,4,52,74,113,69,29,48),(2,4,53,75,115,70,30,49),(2,4,54,77,117,71,30,50),(2,4,55,78,119,73,30,50),(2,4,56,79,122,74,31,51),(2,4,57,80,124,75,31,52),(2,4,58,82,126,76,31,52),(2,4,59,83,129,77,32,53),(2,4,60,84,131,78,32,54),(2,4,61,86,133,80,33,54),(2,4,62,87,136,81,33,55),(2,4,63,88,138,82,33,56),(2,4,64,90,140,83,34,57),(2,4,65,91,143,85,34,57),(2,4,66,92,145,86,34,58),(2,4,67,94,148,87,35,59),(2,4,68,95,150,88,35,59),(2,4,69,97,153,90,36,60),(2,4,70,98,155,91,36,61),(2,7,1,24,17,23,18,25),(2,7,2,25,17,24,19,26),(2,7,3,26,18,25,20,27),(2,7,4,26,18,26,21,28),(2,7,5,27,19,27,22,29),(2,7,6,28,19,28,23,30),(2,7,7,29,20,29,24,31),(2,7,8,30,20,30,25,32),(2,7,9,31,21,31,26,33),(2,7,10,32,21,32,27,34),(2,7,11,33,22,33,28,36),(2,7,12,34,22,34,29,37),(2,7,13,34,23,35,30,38),(2,7,14,35,23,36,31,39),(2,7,15,36,24,37,32,40),(2,7,16,37,24,39,33,41),(2,7,17,38,25,40,34,43),(2,7,18,39,25,41,35,44),(2,7,19,40,26,42,36,45),(2,7,20,41,26,43,37,46),(2,7,21,42,27,44,38,47),(2,7,22,43,27,45,39,49),(2,7,23,44,28,47,40,50),(2,7,24,45,28,48,41,51),(2,7,25,47,29,49,43,52),(2,7,26,48,30,50,44,54),(2,7,27,49,30,52,45,55),(2,7,28,50,31,53,46,56),(2,7,29,51,31,54,47,58),(2,7,30,52,32,55,48,59),(2,7,31,53,33,57,50,60),(2,7,32,54,33,58,51,62),(2,7,33,55,34,59,52,63),(2,7,34,57,34,61,53,65),(2,7,35,58,35,62,55,66),(2,7,36,59,36,63,56,67),(2,7,37,60,36,65,57,69),(2,7,38,61,37,66,58,70),(2,7,39,62,38,67,60,72),(2,7,40,64,38,69,61,73),(2,7,41,65,39,70,62,75),(2,7,42,66,40,72,64,76),(2,7,43,67,40,73,65,78),(2,7,44,69,41,74,66,79),(2,7,45,70,42,76,68,81),(2,7,46,71,42,77,69,82),(2,7,47,72,43,79,70,84),(2,7,48,74,44,80,72,85),(2,7,49,75,45,82,73,87),(2,7,50,76,45,83,75,89),(2,7,51,78,46,85,76,90),(2,7,52,79,47,86,77,92),(2,7,53,80,47,88,79,93),(2,7,54,82,48,90,80,95),(2,7,55,83,49,91,82,97),(2,7,56,85,50,93,83,98),(2,7,57,86,50,94,85,100),(2,7,58,87,51,96,86,102),(2,7,59,89,52,97,88,103),(2,7,60,90,53,99,89,105),(2,7,61,92,54,101,91,107),(2,7,62,93,54,102,92,109),(2,7,63,95,55,104,94,110),(2,7,64,96,56,106,95,112),(2,7,65,97,57,107,97,114),(2,7,66,99,58,109,99,116),(2,7,67,100,58,111,100,118),(2,7,68,102,59,113,102,119),(2,7,69,103,60,114,103,121),(2,7,70,105,61,116,105,123),(2,9,1,23,17,23,19,25),(2,9,2,23,17,24,20,26),(2,9,3,24,18,24,21,27),(2,9,4,24,18,25,23,28),(2,9,5,24,18,25,24,30),(2,9,6,24,19,26,25,31),(2,9,7,25,19,26,26,32),(2,9,8,25,20,27,27,33),(2,9,9,25,20,27,29,34),(2,9,10,26,20,28,30,36),(2,9,11,26,21,29,31,37),(2,9,12,26,21,29,33,38),(2,9,13,27,22,30,34,39),(2,9,14,27,22,31,35,41),(2,9,15,27,23,31,37,42),(2,9,16,28,23,32,38,43),(2,9,17,28,23,32,39,45),(2,9,18,28,24,33,41,46),(2,9,19,29,24,34,42,47),(2,9,20,29,25,34,43,49),(2,9,21,29,25,35,45,50),(2,9,22,30,26,36,46,51),(2,9,23,30,26,37,48,53),(2,9,24,30,27,37,49,54),(2,9,25,31,27,38,51,56),(2,9,26,31,28,39,52,57),(2,9,27,32,28,39,54,59),(2,9,28,32,29,40,55,60),(2,9,29,32,29,41,57,62),(2,9,30,33,30,42,58,63),(2,9,31,33,30,42,60,65),(2,9,32,34,31,43,61,66),(2,9,33,34,31,44,63,68),(2,9,34,35,32,45,64,69),(2,9,35,35,32,45,66,71),(2,9,36,36,33,46,68,72),(2,9,37,36,34,47,69,74),(2,9,38,36,34,48,71,76),(2,9,39,37,35,49,72,77),(2,9,40,37,35,50,74,79),(2,9,41,38,36,50,76,80),(2,9,42,38,36,51,77,82),(2,9,43,39,37,52,79,84),(2,9,44,39,38,53,81,85),(2,9,45,40,38,54,83,87),(2,9,46,40,39,55,84,89),(2,9,47,41,39,56,86,91),(2,9,48,41,40,56,88,92),(2,9,49,42,41,57,90,94),(2,9,50,42,41,58,91,96),(2,9,51,43,42,59,93,98),(2,9,52,43,43,60,95,99),(2,9,53,44,43,61,97,101),(2,9,54,45,44,62,99,103),(2,9,55,45,45,63,101,105),(2,9,56,46,45,64,102,107),(2,9,57,46,46,65,104,109),(2,9,58,47,47,66,106,110),(2,9,59,47,47,67,108,112),(2,9,60,48,48,68,110,114),(2,9,61,48,49,69,112,116),(2,9,62,49,49,70,114,118),(2,9,63,50,50,71,116,120),(2,9,64,50,51,72,118,122),(2,9,65,51,51,73,120,124),(2,9,66,52,52,74,122,126),(2,9,67,52,53,75,124,128),(2,9,68,53,54,76,126,130),(2,9,69,53,54,77,128,132),(2,9,70,54,55,78,130,134),(3,1,1,25,16,25,19,19),(3,1,2,26,17,26,19,19),(3,1,3,28,18,27,19,20),(3,1,4,29,18,28,19,20),(3,1,5,30,19,30,19,20),(3,1,6,31,20,31,19,20),(3,1,7,33,21,32,20,21),(3,1,8,34,22,33,20,21),(3,1,9,36,23,35,20,21),(3,1,10,37,23,36,20,22),(3,1,11,38,24,37,20,22),(3,1,12,40,25,38,20,22),(3,1,13,41,26,40,20,23),(3,1,14,43,27,41,20,23),(3,1,15,44,28,42,20,23),(3,1,16,46,29,44,21,24),(3,1,17,47,30,45,21,24),(3,1,18,49,31,46,21,24),(3,1,19,50,32,48,21,25),(3,1,20,52,33,49,21,25),(3,1,21,53,34,51,21,26),(3,1,22,55,34,52,21,26),(3,1,23,56,35,53,21,26),(3,1,24,58,36,55,22,27),(3,1,25,59,37,56,22,27),(3,1,26,61,38,58,22,27),(3,1,27,63,39,59,22,28),(3,1,28,64,41,61,22,28),(3,1,29,66,42,62,22,29),(3,1,30,68,43,64,23,29),(3,1,31,69,44,65,23,30),(3,1,32,71,45,67,23,30),(3,1,33,73,46,68,23,30),(3,1,34,75,47,70,23,31),(3,1,35,76,48,72,24,31),(3,1,36,78,49,73,24,32),(3,1,37,80,50,75,24,32),(3,1,38,82,51,76,24,33),(3,1,39,84,52,78,24,33),(3,1,40,85,54,80,24,34),(3,1,41,87,55,81,25,34),(3,1,42,89,56,83,25,35),(3,1,43,91,57,85,25,35),(3,1,44,93,58,87,25,36),(3,1,45,95,59,88,26,36),(3,1,46,97,61,90,26,37),(3,1,47,99,62,92,26,37),(3,1,48,101,63,94,26,38),(3,1,49,102,64,95,26,38),(3,1,50,104,65,97,27,39),(3,1,51,106,67,99,27,39),(3,1,52,108,68,101,27,40),(3,1,53,110,69,103,27,40),(3,1,54,112,70,104,28,41),(3,1,55,115,72,106,28,41),(3,1,56,117,73,108,28,42),(3,1,57,119,74,110,28,42),(3,1,58,121,76,112,29,43),(3,1,59,123,77,114,29,43),(3,1,60,125,78,116,29,44),(3,1,61,127,80,118,29,45),(3,1,62,129,81,120,30,45),(3,1,63,131,82,122,30,46),(3,1,64,134,84,124,30,46),(3,1,65,136,85,126,31,47),(3,1,66,138,86,128,31,48),(3,1,67,140,88,130,31,48),(3,1,68,142,89,132,31,49),(3,1,69,145,91,134,32,49),(3,1,70,147,92,136,32,50),(3,2,1,24,16,25,19,20),(3,2,2,25,17,26,20,21),(3,2,3,26,17,27,20,21),(3,2,4,27,18,28,21,22),(3,2,5,28,18,29,22,23),(3,2,6,29,19,30,22,24),(3,2,7,31,20,31,23,24),(3,2,8,32,20,32,24,25),(3,2,9,33,21,33,24,26),(3,2,10,34,21,34,25,26),(3,2,11,35,22,36,26,27),(3,2,12,36,23,37,26,28),(3,2,13,38,23,38,27,29),(3,2,14,39,24,39,28,30),(3,2,15,40,25,40,29,30),(3,2,16,41,25,41,29,31),(3,2,17,43,26,43,30,32),(3,2,18,44,27,44,31,33),(3,2,19,45,28,45,32,34),(3,2,20,47,28,46,32,35),(3,2,21,48,29,47,33,35),(3,2,22,49,30,49,34,36),(3,2,23,51,30,50,35,37),(3,2,24,52,31,51,36,38),(3,2,25,53,32,52,36,39),(3,2,26,55,33,54,37,40),(3,2,27,56,33,55,38,41),(3,2,28,57,34,56,39,42),(3,2,29,59,35,58,40,43),(3,2,30,60,36,59,41,43),(3,2,31,62,37,60,42,44),(3,2,32,63,37,62,42,45),(3,2,33,65,38,63,43,46),(3,2,34,66,39,65,44,47),(3,2,35,68,40,66,45,48),(3,2,36,69,41,67,46,49),(3,2,37,71,41,69,47,50),(3,2,38,72,42,70,48,51),(3,2,39,74,43,72,49,52),(3,2,40,75,44,73,50,53),(3,2,41,77,45,75,51,54),(3,2,42,78,46,76,52,55),(3,2,43,80,47,78,53,56),(3,2,44,82,47,79,54,57),(3,2,45,83,48,81,55,59),(3,2,46,85,49,82,56,60),(3,2,47,87,50,84,57,61),(3,2,48,88,51,85,58,62),(3,2,49,90,52,87,59,63),(3,2,50,92,53,89,60,64),(3,2,51,93,54,90,61,65),(3,2,52,95,55,92,62,66),(3,2,53,97,56,93,63,67),(3,2,54,98,57,95,64,69),(3,2,55,100,58,97,65,70),(3,2,56,102,59,98,66,71),(3,2,57,104,60,100,67,72),(3,2,58,106,61,102,68,73),(3,2,59,107,62,103,69,74),(3,2,60,109,63,105,70,76),(3,2,61,111,64,107,72,77),(3,2,62,113,65,109,73,78),(3,2,63,115,66,110,74,79),(3,2,64,117,67,112,75,80),(3,2,65,118,68,114,76,82),(3,2,66,120,69,116,77,83),(3,2,67,122,70,118,78,84),(3,2,68,124,71,119,80,85),(3,2,69,126,72,121,81,87),(3,2,70,128,73,123,82,88),(3,3,1,22,19,24,19,20),(3,3,2,22,20,25,20,21),(3,3,3,23,22,26,20,21),(3,3,4,23,23,27,21,22),(3,3,5,24,25,28,21,23),(3,3,6,24,26,29,22,23),(3,3,7,25,27,29,23,24),(3,3,8,25,29,30,23,25),(3,3,9,25,30,31,24,25),(3,3,10,26,32,32,24,26),(3,3,11,26,33,33,25,27),(3,3,12,27,35,34,26,27),(3,3,13,27,36,35,26,28),(3,3,14,28,38,36,27,29),(3,3,15,28,39,37,28,29),(3,3,16,29,41,38,28,30),(3,3,17,29,42,39,29,31),(3,3,18,30,44,41,30,32),(3,3,19,30,46,42,30,32),(3,3,20,31,47,43,31,33),(3,3,21,32,49,44,32,34),(3,3,22,32,51,45,33,35),(3,3,23,33,52,46,33,36),(3,3,24,33,54,47,34,36),(3,3,25,34,56,48,35,37),(3,3,26,34,57,49,35,38),(3,3,27,35,59,51,36,39),(3,3,28,35,61,52,37,40),(3,3,29,36,63,53,38,40),(3,3,30,37,64,54,39,41),(3,3,31,37,66,55,39,42),(3,3,32,38,68,57,40,43),(3,3,33,38,70,58,41,44),(3,3,34,39,71,59,42,45),(3,3,35,40,73,60,43,46),(3,3,36,40,75,62,43,47),(3,3,37,41,77,63,44,47),(3,3,38,42,79,64,45,48),(3,3,39,42,81,65,46,49),(3,3,40,43,83,67,47,50),(3,3,41,44,85,68,48,51),(3,3,42,44,87,69,49,52),(3,3,43,45,89,71,49,53),(3,3,44,46,91,72,50,54),(3,3,45,46,93,73,51,55),(3,3,46,47,95,75,52,56),(3,3,47,48,97,76,53,57),(3,3,48,49,99,78,54,58),(3,3,49,49,101,79,55,59),(3,3,50,50,103,80,56,60),(3,3,51,51,105,82,57,61),(3,3,52,51,107,83,58,62),(3,3,53,52,109,85,59,63),(3,3,54,53,111,86,60,64),(3,3,55,54,113,88,61,65),(3,3,56,55,115,89,62,66),(3,3,57,55,118,91,62,67),(3,3,58,56,120,92,63,68),(3,3,59,57,122,94,64,70),(3,3,60,58,124,95,65,71),(3,3,61,58,126,97,67,72),(3,3,62,59,129,98,68,73),(3,3,63,60,131,100,69,74),(3,3,64,61,133,101,70,75),(3,3,65,62,135,103,71,76),(3,3,66,63,138,105,72,77),(3,3,67,63,140,106,73,78),(3,3,68,64,142,108,74,80),(3,3,69,65,145,109,75,81),(3,3,70,66,147,111,76,82),(3,4,1,23,19,24,19,19),(3,4,2,24,20,25,19,19),(3,4,3,24,22,25,19,20),(3,4,4,25,23,26,19,20),(3,4,5,26,25,27,20,20),(3,4,6,27,26,27,20,21),(3,4,7,28,28,28,20,21),(3,4,8,28,29,29,20,22),(3,4,9,29,31,30,20,22),(3,4,10,30,32,30,20,22),(3,4,11,31,34,31,21,23),(3,4,12,32,36,32,21,23),(3,4,13,33,37,33,21,24),(3,4,14,33,39,33,21,24),(3,4,15,34,40,34,21,25),(3,4,16,35,42,35,22,25),(3,4,17,36,44,36,22,25),(3,4,18,37,45,37,22,26),(3,4,19,38,47,38,22,26),(3,4,20,39,49,38,22,27),(3,4,21,40,51,39,23,27),(3,4,22,41,52,40,23,28),(3,4,23,42,54,41,23,28),(3,4,24,43,56,42,23,29),(3,4,25,44,58,43,24,29),(3,4,26,44,59,44,24,30),(3,4,27,45,61,44,24,30),(3,4,28,46,63,45,24,31),(3,4,29,47,65,46,25,31),(3,4,30,48,67,47,25,32),(3,4,31,49,69,48,25,32),(3,4,32,51,71,49,25,33),(3,4,33,52,72,50,26,33),(3,4,34,53,74,51,26,34),(3,4,35,54,76,52,26,34),(3,4,36,55,78,53,26,35),(3,4,37,56,80,54,27,35),(3,4,38,57,82,55,27,36),(3,4,39,58,84,56,27,37),(3,4,40,59,86,57,28,37),(3,4,41,60,88,58,28,38),(3,4,42,61,90,59,28,38),(3,4,43,63,92,60,28,39),(3,4,44,64,95,61,29,39),(3,4,45,65,97,62,29,40),(3,4,46,66,99,63,29,41),(3,4,47,67,101,64,30,41),(3,4,48,68,103,66,30,42),(3,4,49,70,105,67,30,43),(3,4,50,71,107,68,31,43),(3,4,51,72,110,69,31,44),(3,4,52,73,112,70,31,44),(3,4,53,74,114,71,32,45),(3,4,54,76,116,72,32,46),(3,4,55,77,118,73,32,46),(3,4,56,78,121,75,33,47),(3,4,57,80,123,76,33,48),(3,4,58,81,125,77,33,48),(3,4,59,82,128,78,34,49),(3,4,60,83,130,79,34,50),(3,4,61,85,132,81,34,51),(3,4,62,86,135,82,35,51),(3,4,63,87,137,83,35,52),(3,4,64,89,139,84,36,53),(3,4,65,90,142,86,36,53),(3,4,66,91,144,87,36,54),(3,4,67,93,147,88,37,55),(3,4,68,94,149,89,37,56),(3,4,69,96,152,91,38,56),(3,4,70,97,154,92,38,57),(3,5,1,22,16,23,21,22),(3,5,2,22,16,23,22,23),(3,5,3,22,16,24,24,25),(3,5,4,22,17,24,25,26),(3,5,5,23,17,24,26,27),(3,5,6,23,17,25,28,29),(3,5,7,23,17,25,29,30),(3,5,8,23,18,26,30,32),(3,5,9,23,18,26,32,33),(3,5,10,23,18,26,33,35),(3,5,11,24,18,27,35,36),(3,5,12,24,19,27,36,38),(3,5,13,24,19,28,37,39),(3,5,14,24,19,28,39,41),(3,5,15,24,19,28,40,42),(3,5,16,24,20,29,42,44),(3,5,17,25,20,29,43,45),(3,5,18,25,20,30,45,47),(3,5,19,25,21,30,46,49),(3,5,20,25,21,31,48,50),(3,5,21,25,21,31,50,52),(3,5,22,26,22,31,51,53),(3,5,23,26,22,32,53,55),(3,5,24,26,22,32,54,57),(3,5,25,26,22,33,56,58),(3,5,26,27,23,33,58,60),(3,5,27,27,23,34,59,62),(3,5,28,27,23,34,61,64),(3,5,29,27,24,35,63,65),(3,5,30,28,24,35,64,67),(3,5,31,28,24,36,66,69),(3,5,32,28,25,36,68,71),(3,5,33,28,25,37,70,72),(3,5,34,29,26,38,71,74),(3,5,35,29,26,38,73,76),(3,5,36,29,26,39,75,78),(3,5,37,29,27,39,77,80),(3,5,38,30,27,40,78,82),(3,5,39,30,27,40,80,84),(3,5,40,30,28,41,82,86),(3,5,41,31,28,41,84,88),(3,5,42,31,29,42,86,89),(3,5,43,31,29,43,88,91),(3,5,44,32,29,43,90,93),(3,5,45,32,30,44,92,95),(3,5,46,32,30,44,93,97),(3,5,47,32,30,45,95,99),(3,5,48,33,31,46,97,101),(3,5,49,33,31,46,99,103),(3,5,50,33,32,47,101,106),(3,5,51,34,32,48,103,108),(3,5,52,34,33,48,105,110),(3,5,53,35,33,49,107,112),(3,5,54,35,33,50,109,114),(3,5,55,35,34,50,111,116),(3,5,56,36,34,51,113,118),(3,5,57,36,35,52,116,120),(3,5,58,36,35,52,118,123),(3,5,59,37,36,53,120,125),(3,5,60,37,36,54,122,127),(3,5,61,37,37,54,124,129),(3,5,62,38,37,55,126,131),(3,5,63,38,38,56,128,134),(3,5,64,39,38,57,131,136),(3,5,65,39,39,57,133,138),(3,5,66,39,39,58,135,141),(3,5,67,40,40,59,137,143),(3,5,68,40,40,59,139,145),(3,5,69,41,40,60,142,148),(3,5,70,41,41,61,144,150),(4,1,1,20,25,21,20,20),(4,1,2,21,26,22,20,20),(4,1,3,23,27,23,20,21),(4,1,4,24,27,25,20,21),(4,1,5,25,28,26,20,21),(4,1,6,27,29,27,20,21),(4,1,7,28,30,28,21,22),(4,1,8,29,31,29,21,22),(4,1,9,31,31,31,21,22),(4,1,10,32,32,32,21,23),(4,1,11,33,33,33,21,23),(4,1,12,35,34,34,21,23),(4,1,13,36,35,36,21,24),(4,1,14,38,36,37,21,24),(4,1,15,39,37,38,21,24),(4,1,16,41,37,40,21,25),(4,1,17,42,38,41,22,25),(4,1,18,44,39,43,22,25),(4,1,19,45,40,44,22,26),(4,1,20,47,41,45,22,26),(4,1,21,48,42,47,22,26),(4,1,22,50,43,48,22,27),(4,1,23,52,44,50,22,27),(4,1,24,53,45,51,23,28),(4,1,25,55,46,52,23,28),(4,1,26,56,47,54,23,28),(4,1,27,58,48,55,23,29),(4,1,28,60,49,57,23,29),(4,1,29,61,50,58,23,30),(4,1,30,63,51,60,24,30),(4,1,31,65,52,62,24,30),(4,1,32,66,53,63,24,31),(4,1,33,68,54,65,24,31),(4,1,34,70,55,66,24,32),(4,1,35,72,56,68,24,32),(4,1,36,73,58,69,25,33),(4,1,37,75,59,71,25,33),(4,1,38,77,60,73,25,34),(4,1,39,79,61,74,25,34),(4,1,40,81,62,76,25,35),(4,1,41,82,63,78,26,35),(4,1,42,84,64,79,26,35),(4,1,43,86,66,81,26,36),(4,1,44,88,67,83,26,36),(4,1,45,90,68,85,26,37),(4,1,46,92,69,86,27,37),(4,1,47,94,70,88,27,38),(4,1,48,96,72,90,27,38),(4,1,49,98,73,92,27,39),(4,1,50,100,74,93,28,40),(4,1,51,102,75,95,28,40),(4,1,52,104,77,97,28,41),(4,1,53,106,78,99,28,41),(4,1,54,108,79,101,29,42),(4,1,55,110,80,103,29,42),(4,1,56,112,82,104,29,43),(4,1,57,114,83,106,29,43),(4,1,58,116,84,108,30,44),(4,1,59,118,86,110,30,44),(4,1,60,120,87,112,30,45),(4,1,61,122,88,114,30,46),(4,1,62,124,90,116,31,46),(4,1,63,127,91,118,31,47),(4,1,64,129,92,120,31,47),(4,1,65,131,94,122,32,48),(4,1,66,133,95,124,32,49),(4,1,67,135,97,126,32,49),(4,1,68,138,98,128,32,50),(4,1,69,140,100,130,33,50),(4,1,70,142,101,132,33,51),(4,3,1,17,28,20,20,21),(4,3,2,17,29,21,21,22),(4,3,3,18,31,22,21,22),(4,3,4,18,32,23,22,23),(4,3,5,19,33,24,22,24),(4,3,6,19,35,25,23,24),(4,3,7,20,36,26,24,25),(4,3,8,20,38,27,24,25),(4,3,9,21,39,27,25,26),(4,3,10,21,40,28,25,27),(4,3,11,22,42,29,26,28),(4,3,12,22,43,30,27,28),(4,3,13,23,45,31,27,29),(4,3,14,23,46,32,28,30),(4,3,15,24,48,34,29,30),(4,3,16,24,50,35,29,31),(4,3,17,25,51,36,30,32),(4,3,18,25,53,37,31,33),(4,3,19,26,54,38,31,33),(4,3,20,26,56,39,32,34),(4,3,21,27,57,40,33,35),(4,3,22,27,59,41,33,36),(4,3,23,28,61,42,34,36),(4,3,24,28,62,43,35,37),(4,3,25,29,64,44,36,38),(4,3,26,30,66,46,36,39),(4,3,27,30,68,47,37,40),(4,3,28,31,69,48,38,41),(4,3,29,31,71,49,39,41),(4,3,30,32,73,50,39,42),(4,3,31,33,75,52,40,43),(4,3,32,33,76,53,41,44),(4,3,33,34,78,54,42,45),(4,3,34,34,80,55,43,46),(4,3,35,35,82,57,44,47),(4,3,36,36,84,58,44,48),(4,3,37,36,86,59,45,48),(4,3,38,37,87,60,46,49),(4,3,39,38,89,62,47,50),(4,3,40,38,91,63,48,51),(4,3,41,39,93,64,49,52),(4,3,42,40,95,66,49,53),(4,3,43,40,97,67,50,54),(4,3,44,41,99,68,51,55),(4,3,45,42,101,70,52,56),(4,3,46,42,103,71,53,57),(4,3,47,43,105,72,54,58),(4,3,48,44,107,74,55,59),(4,3,49,45,109,75,56,60),(4,3,50,45,111,77,57,61),(4,3,51,46,113,78,58,62),(4,3,52,47,115,79,59,63),(4,3,53,47,118,81,60,64),(4,3,54,48,120,82,61,65),(4,3,55,49,122,84,61,66),(4,3,56,50,124,85,62,67),(4,3,57,50,126,87,63,68),(4,3,58,51,128,88,64,69),(4,3,59,52,131,90,65,70),(4,3,60,53,133,91,66,72),(4,3,61,54,135,93,67,73),(4,3,62,54,137,94,69,74),(4,3,63,55,140,96,70,75),(4,3,64,56,142,97,71,76),(4,3,65,57,144,99,72,77),(4,3,66,58,147,101,73,78),(4,3,67,58,149,102,74,79),(4,3,68,59,151,104,75,81),(4,3,69,60,154,105,76,82),(4,3,70,61,156,107,77,83),(4,4,1,18,28,20,20,20),(4,4,2,19,29,21,20,20),(4,4,3,20,31,21,20,21),(4,4,4,20,32,22,20,21),(4,4,5,21,34,23,21,21),(4,4,6,22,35,24,21,22),(4,4,7,23,37,24,21,22),(4,4,8,24,38,25,21,23),(4,4,9,24,40,26,21,23),(4,4,10,25,41,26,21,23),(4,4,11,26,43,27,22,24),(4,4,12,27,44,28,22,24),(4,4,13,28,46,29,22,25),(4,4,14,29,48,30,22,25),(4,4,15,29,49,30,22,25),(4,4,16,30,51,31,23,26),(4,4,17,31,52,32,23,26),(4,4,18,32,54,33,23,27),(4,4,19,33,56,34,23,27),(4,4,20,34,57,35,23,28),(4,4,21,35,59,35,24,28),(4,4,22,36,61,36,24,29),(4,4,23,37,63,37,24,29),(4,4,24,38,64,38,24,30),(4,4,25,39,66,39,25,30),(4,4,26,40,68,40,25,31),(4,4,27,41,70,41,25,31),(4,4,28,42,72,42,25,32),(4,4,29,43,73,43,25,32),(4,4,30,44,75,43,26,33),(4,4,31,45,77,44,26,33),(4,4,32,46,79,45,26,34),(4,4,33,47,81,46,27,34),(4,4,34,48,83,47,27,35),(4,4,35,49,85,48,27,35),(4,4,36,50,87,49,27,36),(4,4,37,51,89,50,28,36),(4,4,38,52,91,51,28,37),(4,4,39,53,93,52,28,38),(4,4,40,54,95,53,28,38),(4,4,41,56,97,54,29,39),(4,4,42,57,99,55,29,39),(4,4,43,58,101,56,29,40),(4,4,44,59,103,57,30,40),(4,4,45,60,105,59,30,41),(4,4,46,61,107,60,30,42),(4,4,47,62,109,61,31,42),(4,4,48,64,112,62,31,43),(4,4,49,65,114,63,31,44),(4,4,50,66,116,64,32,44),(4,4,51,67,118,65,32,45),(4,4,52,68,120,66,32,45),(4,4,53,70,123,67,33,46),(4,4,54,71,125,69,33,47),(4,4,55,72,127,70,33,47),(4,4,56,73,129,71,34,48),(4,4,57,75,132,72,34,49),(4,4,58,76,134,73,34,49),(4,4,59,77,136,74,35,50),(4,4,60,79,139,76,35,51),(4,4,61,80,141,77,35,51),(4,4,62,81,143,78,36,52),(4,4,63,82,146,79,36,53),(4,4,64,84,148,80,37,54),(4,4,65,85,151,82,37,54),(4,4,66,87,153,83,37,55),(4,4,67,88,156,84,38,56),(4,4,68,89,158,85,38,57),(4,4,69,91,160,87,39,57),(4,4,70,92,163,88,39,58),(4,5,1,17,25,19,22,23),(4,5,2,17,25,19,23,24),(4,5,3,17,25,20,25,26),(4,5,4,17,26,20,26,27),(4,5,5,18,26,20,27,28),(4,5,6,18,26,21,29,30),(4,5,7,18,26,21,30,31),(4,5,8,18,26,22,31,33),(4,5,9,18,27,22,33,34),(4,5,10,19,27,22,34,36),(4,5,11,19,27,23,36,37),(4,5,12,19,27,23,37,39),(4,5,13,19,28,24,38,40),(4,5,14,19,28,24,40,42),(4,5,15,19,28,25,41,43),(4,5,16,20,28,25,43,45),(4,5,17,20,29,25,44,46),(4,5,18,20,29,26,46,48),(4,5,19,20,29,26,47,49),(4,5,20,21,30,27,49,51),(4,5,21,21,30,27,51,53),(4,5,22,21,30,28,52,54),(4,5,23,21,30,28,54,56),(4,5,24,21,31,29,55,58),(4,5,25,22,31,29,57,59),(4,5,26,22,31,30,59,61),(4,5,27,22,32,30,60,63),(4,5,28,22,32,31,62,65),(4,5,29,23,32,31,64,66),(4,5,30,23,33,32,65,68),(4,5,31,23,33,32,67,70),(4,5,32,23,33,33,69,72),(4,5,33,24,34,33,70,73),(4,5,34,24,34,34,72,75),(4,5,35,24,34,34,74,77),(4,5,36,24,35,35,76,79),(4,5,37,25,35,35,78,81),(4,5,38,25,35,36,79,83),(4,5,39,25,36,37,81,85),(4,5,40,26,36,37,83,87),(4,5,41,26,37,38,85,88),(4,5,42,26,37,38,87,90),(4,5,43,27,37,39,89,92),(4,5,44,27,38,39,91,94),(4,5,45,27,38,40,92,96),(4,5,46,27,39,41,94,98),(4,5,47,28,39,41,96,100),(4,5,48,28,39,42,98,102),(4,5,49,28,40,43,100,104),(4,5,50,29,40,43,102,106),(4,5,51,29,41,44,104,109),(4,5,52,29,41,44,106,111),(4,5,53,30,42,45,108,113),(4,5,54,30,42,46,110,115),(4,5,55,30,43,46,112,117),(4,5,56,31,43,47,114,119),(4,5,57,31,43,48,117,121),(4,5,58,31,44,48,119,124),(4,5,59,32,44,49,121,126),(4,5,60,32,45,50,123,128),(4,5,61,33,45,51,125,130),(4,5,62,33,46,51,127,132),(4,5,63,33,46,52,129,135),(4,5,64,34,47,53,132,137),(4,5,65,34,47,53,134,139),(4,5,66,34,48,54,136,142),(4,5,67,35,48,55,138,144),(4,5,68,35,49,56,140,146),(4,5,69,36,49,56,143,149),(4,5,70,36,50,57,145,151),(4,11,1,18,25,19,22,22),(4,11,2,19,25,20,23,23),(4,11,3,19,26,20,24,24),(4,11,4,20,26,21,25,26),(4,11,5,20,27,22,26,27),(4,11,6,21,27,22,27,28),(4,11,7,21,28,23,28,29),(4,11,8,22,28,24,29,30),(4,11,9,23,29,24,30,32),(4,11,10,23,29,25,32,33),(4,11,11,24,30,26,33,34),(4,11,12,24,31,26,34,35),(4,11,13,25,31,27,35,37),(4,11,14,26,32,28,36,38),(4,11,15,26,32,29,37,39),(4,11,16,27,33,29,38,41),(4,11,17,28,33,30,40,42),(4,11,18,28,34,31,41,43),(4,11,19,29,35,32,42,45),(4,11,20,30,35,32,43,46),(4,11,21,30,36,33,45,48),(4,11,22,31,36,34,46,49),(4,11,23,32,37,35,47,51),(4,11,24,32,38,36,48,52),(4,11,25,33,38,36,50,53),(4,11,26,34,39,37,51,55),(4,11,27,35,40,38,52,56),(4,11,28,35,40,39,54,58),(4,11,29,36,41,40,55,59),(4,11,30,37,42,41,56,61),(4,11,31,38,42,42,58,62),(4,11,32,38,43,42,59,64),(4,11,33,39,44,43,60,66),(4,11,34,40,44,44,62,67),(4,11,35,41,45,45,63,69),(4,11,36,42,46,46,65,70),(4,11,37,42,47,47,66,72),(4,11,38,43,47,48,67,74),(4,11,39,44,48,49,69,75),(4,11,40,45,49,50,70,77),(4,11,41,46,50,51,72,79),(4,11,42,46,50,52,73,80),(4,11,43,47,51,53,75,82),(4,11,44,48,52,54,76,84),(4,11,45,49,53,55,78,85),(4,11,46,50,54,56,79,87),(4,11,47,51,54,57,81,89),(4,11,48,52,55,58,83,91),(4,11,49,53,56,59,84,93),(4,11,50,53,57,60,86,94),(4,11,51,54,58,61,87,96),(4,11,52,55,59,62,89,98),(4,11,53,56,59,63,91,100),(4,11,54,57,60,64,92,102),(4,11,55,58,61,65,94,103),(4,11,56,59,62,66,95,105),(4,11,57,60,63,67,97,107),(4,11,58,61,64,68,99,109),(4,11,59,62,65,69,101,111),(4,11,60,63,66,70,102,113),(4,11,61,64,66,72,104,115),(4,11,62,65,67,73,106,117),(4,11,63,66,68,74,107,119),(4,11,64,67,69,75,109,121),(4,11,65,68,70,76,111,123),(4,11,66,69,71,77,113,125),(4,11,67,70,72,78,115,127),(4,11,68,71,73,80,116,129),(4,11,69,72,74,81,118,131),(4,11,70,73,75,82,120,133),(5,1,1,22,18,23,18,25),(5,1,2,23,19,24,18,25),(5,1,3,25,20,25,18,26),(5,1,4,26,20,26,18,26),(5,1,5,27,21,28,18,26),(5,1,6,29,22,29,18,26),(5,1,7,30,23,30,19,27),(5,1,8,31,24,31,19,27),(5,1,9,33,25,33,19,27),(5,1,10,34,25,34,19,28),(5,1,11,35,26,35,19,28),(5,1,12,37,27,36,19,28),(5,1,13,38,28,38,19,28),(5,1,14,40,29,39,19,29),(5,1,15,41,30,40,19,29),(5,1,16,43,31,42,20,29),(5,1,17,44,32,43,20,30),(5,1,18,46,33,44,20,30),(5,1,19,47,34,46,20,31),(5,1,20,49,34,47,20,31),(5,1,21,50,35,49,20,31),(5,1,22,52,36,50,20,32),(5,1,23,53,37,51,21,32),(5,1,24,55,38,53,21,32),(5,1,25,57,39,54,21,33),(5,1,26,58,40,56,21,33),(5,1,27,60,41,57,21,34),(5,1,28,62,42,59,21,34),(5,1,29,63,43,60,21,34),(5,1,30,65,44,62,22,35),(5,1,31,67,46,63,22,35),(5,1,32,68,47,65,22,36),(5,1,33,70,48,67,22,36),(5,1,34,72,49,68,22,36),(5,1,35,74,50,70,23,37),(5,1,36,75,51,71,23,37),(5,1,37,77,52,73,23,38),(5,1,38,79,53,75,23,38),(5,1,39,81,54,76,23,39),(5,1,40,83,55,78,24,39),(5,1,41,84,57,80,24,40),(5,1,42,86,58,81,24,40),(5,1,43,88,59,83,24,41),(5,1,44,90,60,85,24,41),(5,1,45,92,61,86,25,42),(5,1,46,94,62,88,25,42),(5,1,47,96,64,90,25,43),(5,1,48,98,65,92,25,43),(5,1,49,100,66,93,25,44),(5,1,50,102,67,95,26,44),(5,1,51,104,69,97,26,45),(5,1,52,106,70,99,26,45),(5,1,53,108,71,101,26,46),(5,1,54,110,72,103,27,46),(5,1,55,112,74,104,27,47),(5,1,56,114,75,106,27,48),(5,1,57,116,76,108,27,48),(5,1,58,118,78,110,28,49),(5,1,59,120,79,112,28,49),(5,1,60,122,80,114,28,50),(5,1,61,124,82,116,28,50),(5,1,62,126,83,118,29,51),(5,1,63,128,84,120,29,52),(5,1,64,131,86,122,29,52),(5,1,65,133,87,124,30,53),(5,1,66,135,88,126,30,53),(5,1,67,137,90,128,30,54),(5,1,68,139,91,130,30,55),(5,1,69,142,93,132,31,55),(5,1,70,144,94,134,31,56),(5,4,1,20,21,22,18,25),(5,4,2,21,22,23,18,25),(5,4,3,22,24,23,18,26),(5,4,4,22,25,24,18,26),(5,4,5,23,27,25,19,26),(5,4,6,24,28,25,19,27),(5,4,7,25,30,26,19,27),(5,4,8,25,31,27,19,27),(5,4,9,26,33,28,19,28),(5,4,10,27,34,28,19,28),(5,4,11,28,36,29,20,29),(5,4,12,29,38,30,20,29),(5,4,13,30,39,31,20,29),(5,4,14,31,41,32,20,30),(5,4,15,31,42,32,20,30),(5,4,16,32,44,33,21,31),(5,4,17,33,46,34,21,31),(5,4,18,34,47,35,21,32),(5,4,19,35,49,36,21,32),(5,4,20,36,51,36,21,32),(5,4,21,37,52,37,22,33),(5,4,22,38,54,38,22,33),(5,4,23,39,56,39,22,34),(5,4,24,40,58,40,22,34),(5,4,25,41,60,41,23,35),(5,4,26,42,61,42,23,35),(5,4,27,43,63,43,23,36),(5,4,28,44,65,44,23,36),(5,4,29,45,67,44,24,37),(5,4,30,46,69,45,24,37),(5,4,31,47,71,46,24,38),(5,4,32,48,72,47,24,38),(5,4,33,49,74,48,25,39),(5,4,34,50,76,49,25,39),(5,4,35,51,78,50,25,40),(5,4,36,52,80,51,25,41),(5,4,37,53,82,52,26,41),(5,4,38,54,84,53,26,42),(5,4,39,55,86,54,26,42),(5,4,40,56,88,55,27,43),(5,4,41,57,90,56,27,43),(5,4,42,59,92,57,27,44),(5,4,43,60,94,58,27,45),(5,4,44,61,96,59,28,45),(5,4,45,62,99,60,28,46),(5,4,46,63,101,61,28,46),(5,4,47,64,103,63,29,47),(5,4,48,66,105,64,29,48),(5,4,49,67,107,65,29,48),(5,4,50,68,109,66,30,49),(5,4,51,69,111,67,30,50),(5,4,52,70,114,68,30,50),(5,4,53,72,116,69,31,51),(5,4,54,73,118,70,31,52),(5,4,55,74,120,72,31,52),(5,4,56,75,123,73,32,53),(5,4,57,77,125,74,32,54),(5,4,58,78,127,75,32,54),(5,4,59,79,130,76,33,55),(5,4,60,81,132,77,33,56),(5,4,61,82,134,79,34,56),(5,4,62,83,137,80,34,57),(5,4,63,84,139,81,34,58),(5,4,64,86,141,82,35,59),(5,4,65,87,144,84,35,59),(5,4,66,88,146,85,35,60),(5,4,67,90,149,86,36,61),(5,4,68,91,151,87,36,61),(5,4,69,93,154,89,37,62),(5,4,70,94,156,90,37,63),(5,5,1,19,18,21,20,28),(5,5,2,19,18,21,21,29),(5,5,3,19,18,22,23,31),(5,5,4,19,19,22,24,32),(5,5,5,20,19,22,25,33),(5,5,6,20,19,23,27,35),(5,5,7,20,19,23,28,36),(5,5,8,20,20,24,29,38),(5,5,9,20,20,24,31,39),(5,5,10,20,20,24,32,40),(5,5,11,21,20,25,34,42),(5,5,12,21,21,25,35,43),(5,5,13,21,21,26,37,45),(5,5,14,21,21,26,38,46),(5,5,15,21,21,26,39,48),(5,5,16,22,22,27,41,50),(5,5,17,22,22,27,42,51),(5,5,18,22,22,28,44,53),(5,5,19,22,23,28,46,54),(5,5,20,22,23,29,47,56),(5,5,21,23,23,29,49,57),(5,5,22,23,23,30,50,59),(5,5,23,23,24,30,52,61),(5,5,24,23,24,31,53,62),(5,5,25,24,24,31,55,64),(5,5,26,24,25,32,57,66),(5,5,27,24,25,32,58,68),(5,5,28,24,25,33,60,69),(5,5,29,25,26,33,62,71),(5,5,30,25,26,34,63,73),(5,5,31,25,26,34,65,75),(5,5,32,25,27,35,67,76),(5,5,33,26,27,35,69,78),(5,5,34,26,27,36,70,80),(5,5,35,26,28,36,72,82),(5,5,36,26,28,37,74,84),(5,5,37,27,28,37,76,86),(5,5,38,27,29,38,77,87),(5,5,39,27,29,38,79,89),(5,5,40,28,30,39,81,91),(5,5,41,28,30,40,83,93),(5,5,42,28,30,40,85,95),(5,5,43,28,31,41,87,97),(5,5,44,29,31,41,89,99),(5,5,45,29,32,42,91,101),(5,5,46,29,32,43,92,103),(5,5,47,30,32,43,94,105),(5,5,48,30,33,44,96,107),(5,5,49,30,33,44,98,109),(5,5,50,31,34,45,100,111),(5,5,51,31,34,46,102,113),(5,5,52,31,35,46,104,115),(5,5,53,32,35,47,106,118),(5,5,54,32,35,48,108,120),(5,5,55,32,36,48,110,122),(5,5,56,33,36,49,113,124),(5,5,57,33,37,50,115,126),(5,5,58,33,37,50,117,128),(5,5,59,34,38,51,119,131),(5,5,60,34,38,52,121,133),(5,5,61,34,39,52,123,135),(5,5,62,35,39,53,125,137),(5,5,63,35,40,54,127,140),(5,5,64,36,40,55,130,142),(5,5,65,36,41,55,132,144),(5,5,66,36,41,56,134,147),(5,5,67,37,41,57,136,149),(5,5,68,37,42,58,138,151),(5,5,69,38,42,58,141,154),(5,5,70,38,43,59,143,156),(5,8,1,19,18,21,21,27),(5,8,2,19,18,21,22,28),(5,8,3,19,18,22,24,30),(5,8,4,19,18,22,25,31),(5,8,5,19,19,22,26,32),(5,8,6,19,19,22,28,34),(5,8,7,20,19,23,29,35),(5,8,8,20,19,23,31,36),(5,8,9,20,19,23,32,38),(5,8,10,20,19,24,34,39),(5,8,11,20,20,24,35,40),(5,8,12,20,20,24,37,42),(5,8,13,20,20,25,38,43),(5,8,14,20,20,25,40,45),(5,8,15,20,20,25,41,46),(5,8,16,21,21,26,43,48),(5,8,17,21,21,26,44,49),(5,8,18,21,21,26,46,51),(5,8,19,21,21,27,48,52),(5,8,20,21,21,27,49,54),(5,8,21,21,22,27,51,55),(5,8,22,21,22,28,52,57),(5,8,23,21,22,28,54,58),(5,8,24,22,22,29,56,60),(5,8,25,22,23,29,57,62),(5,8,26,22,23,29,59,63),(5,8,27,22,23,30,61,65),(5,8,28,22,23,30,63,67),(5,8,29,22,24,31,64,68),(5,8,30,23,24,31,66,70),(5,8,31,23,24,31,68,72),(5,8,32,23,24,32,70,73),(5,8,33,23,25,32,72,75),(5,8,34,23,25,33,73,77),(5,8,35,24,25,33,75,79),(5,8,36,24,25,34,77,80),(5,8,37,24,26,34,79,82),(5,8,38,24,26,35,81,84),(5,8,39,24,26,35,83,86),(5,8,40,24,27,35,85,88),(5,8,41,25,27,36,87,90),(5,8,42,25,27,36,89,91),(5,8,43,25,27,37,90,93),(5,8,44,25,28,37,92,95),(5,8,45,26,28,38,94,97),(5,8,46,26,28,38,96,99),(5,8,47,26,29,39,98,101),(5,8,48,26,29,39,100,103),(5,8,49,26,29,40,103,105),(5,8,50,27,30,40,105,107),(5,8,51,27,30,41,107,109),(5,8,52,27,30,42,109,111),(5,8,53,27,31,42,111,113),(5,8,54,28,31,43,113,115),(5,8,55,28,31,43,115,117),(5,8,56,28,32,44,117,119),(5,8,57,28,32,44,119,121),(5,8,58,29,32,45,122,123),(5,8,59,29,33,45,124,126),(5,8,60,29,33,46,126,128),(5,8,61,29,34,47,128,130),(5,8,62,30,34,47,131,132),(5,8,63,30,34,48,133,134),(5,8,64,30,35,48,135,136),(5,8,65,31,35,49,137,139),(5,8,66,31,35,50,140,141),(5,8,67,31,36,50,142,143),(5,8,68,31,36,51,144,145),(5,8,69,32,37,51,147,148),(5,8,70,32,37,52,149,150),(5,9,1,19,18,22,20,27),(5,9,2,19,18,23,21,28),(5,9,3,20,19,23,22,29),(5,9,4,20,19,24,24,30),(5,9,5,20,19,24,25,32),(5,9,6,20,20,25,26,33),(5,9,7,21,20,25,27,34),(5,9,8,21,21,26,28,35),(5,9,9,21,21,26,30,36),(5,9,10,22,21,27,31,38),(5,9,11,22,22,28,32,39),(5,9,12,22,22,28,34,40),(5,9,13,23,23,29,35,41),(5,9,14,23,23,30,36,43),(5,9,15,23,24,30,37,44),(5,9,16,24,24,31,39,45),(5,9,17,24,24,31,40,47),(5,9,18,24,25,32,42,48),(5,9,19,25,25,33,43,49),(5,9,20,25,26,33,44,51),(5,9,21,26,26,34,46,52),(5,9,22,26,27,35,47,53),(5,9,23,26,27,36,49,55),(5,9,24,27,28,36,50,56),(5,9,25,27,28,37,52,58),(5,9,26,27,29,38,53,59),(5,9,27,28,29,38,55,60),(5,9,28,28,30,39,56,62),(5,9,29,29,30,40,58,63),(5,9,30,29,31,41,59,65),(5,9,31,30,31,41,61,66),(5,9,32,30,32,42,62,68),(5,9,33,30,32,43,64,69),(5,9,34,31,33,44,65,71),(5,9,35,31,33,45,67,73),(5,9,36,32,34,45,69,74),(5,9,37,32,34,46,70,76),(5,9,38,33,35,47,72,77),(5,9,39,33,36,48,73,79),(5,9,40,34,36,49,75,81),(5,9,41,34,37,49,77,82),(5,9,42,35,37,50,78,84),(5,9,43,35,38,51,80,86),(5,9,44,36,39,52,82,87),(5,9,45,36,39,53,84,89),(5,9,46,37,40,54,85,91),(5,9,47,37,40,55,87,92),(5,9,48,38,41,55,89,94),(5,9,49,38,42,56,91,96),(5,9,50,39,42,57,92,98),(5,9,51,39,43,58,94,100),(5,9,52,40,44,59,96,101),(5,9,53,40,44,60,98,103),(5,9,54,41,45,61,100,105),(5,9,55,41,45,62,102,107),(5,9,56,42,46,63,103,109),(5,9,57,42,47,64,105,111),(5,9,58,43,47,65,107,112),(5,9,59,43,48,66,109,114),(5,9,60,44,49,67,111,116),(5,9,61,45,50,68,113,118),(5,9,62,45,50,69,115,120),(5,9,63,46,51,70,117,122),(5,9,64,46,52,71,119,124),(5,9,65,47,52,72,121,126),(5,9,66,48,53,73,123,128),(5,9,67,48,54,74,125,130),(5,9,68,49,55,75,127,132),(5,9,69,49,55,76,129,134),(5,9,70,50,56,77,131,136),(6,1,1,28,15,24,15,22),(6,1,2,29,16,25,15,22),(6,1,3,31,17,26,15,23),(6,1,4,32,17,27,15,23),(6,1,5,33,18,29,15,23),(6,1,6,34,19,30,15,23),(6,1,7,36,20,31,16,24),(6,1,8,37,21,32,16,24),(6,1,9,38,22,34,16,24),(6,1,10,40,22,35,16,25),(6,1,11,41,23,36,16,25),(6,1,12,43,24,37,16,25),(6,1,13,44,25,39,16,26),(6,1,14,46,26,40,16,26),(6,1,15,47,27,41,17,26),(6,1,16,48,28,43,17,27),(6,1,17,50,29,44,17,27),(6,1,18,51,30,45,17,27),(6,1,19,53,31,47,17,28),(6,1,20,54,32,48,17,28),(6,1,21,56,33,50,17,28),(6,1,22,58,34,51,18,29),(6,1,23,59,35,52,18,29),(6,1,24,61,36,54,18,30),(6,1,25,62,37,55,18,30),(6,1,26,64,38,57,18,30),(6,1,27,66,39,58,18,31),(6,1,28,67,40,60,18,31),(6,1,29,69,41,61,19,32),(6,1,30,71,42,63,19,32),(6,1,31,72,43,64,19,32),(6,1,32,74,44,66,19,33),(6,1,33,76,45,67,19,33),(6,1,34,77,46,69,20,34),(6,1,35,79,47,71,20,34),(6,1,36,81,48,72,20,35),(6,1,37,83,49,74,20,35),(6,1,38,85,50,76,20,35),(6,1,39,86,51,77,21,36),(6,1,40,88,53,79,21,36),(6,1,41,90,54,81,21,37),(6,1,42,92,55,82,21,37),(6,1,43,94,56,84,21,38),(6,1,44,96,57,86,22,38),(6,1,45,98,58,87,22,39),(6,1,46,99,60,89,22,39),(6,1,47,101,61,91,22,40),(6,1,48,103,62,93,22,40),(6,1,49,105,63,94,23,41),(6,1,50,107,65,96,23,41),(6,1,51,109,66,98,23,42),(6,1,52,111,67,100,23,42),(6,1,53,113,68,102,24,43),(6,1,54,115,70,104,24,44),(6,1,55,117,71,105,24,44),(6,1,56,119,72,107,24,45),(6,1,57,122,73,109,25,45),(6,1,58,124,75,111,25,46),(6,1,59,126,76,113,25,46),(6,1,60,128,77,115,25,47),(6,1,61,130,79,117,26,48),(6,1,62,132,80,119,26,48),(6,1,63,134,81,121,26,49),(6,1,64,137,83,123,26,49),(6,1,65,139,84,125,27,50),(6,1,66,141,85,127,27,51),(6,1,67,143,87,129,27,51),(6,1,68,145,88,131,27,52),(6,1,69,148,90,133,28,52),(6,1,70,150,91,135,28,53),(6,3,1,25,18,23,15,23),(6,3,2,25,19,24,16,24),(6,3,3,26,21,25,16,24),(6,3,4,26,22,26,17,25),(6,3,5,27,24,27,17,25),(6,3,6,27,25,28,18,26),(6,3,7,28,26,28,19,27),(6,3,8,28,28,29,19,27),(6,3,9,28,29,30,20,28),(6,3,10,29,31,31,20,29),(6,3,11,29,32,32,21,29),(6,3,12,30,34,33,22,30),(6,3,13,30,35,34,22,31),(6,3,14,31,37,35,23,32),(6,3,15,31,38,36,24,32),(6,3,16,32,40,37,24,33),(6,3,17,32,41,39,25,34),(6,3,18,33,43,40,26,35),(6,3,19,33,45,41,27,35),(6,3,20,34,46,42,27,36),(6,3,21,34,48,43,28,37),(6,3,22,35,50,44,29,38),(6,3,23,35,51,45,29,38),(6,3,24,36,53,46,30,39),(6,3,25,37,55,47,31,40),(6,3,26,37,56,48,32,41),(6,3,27,38,58,50,32,42),(6,3,28,38,60,51,33,42),(6,3,29,39,62,52,34,43),(6,3,30,39,63,53,35,44),(6,3,31,40,65,54,36,45),(6,3,32,41,67,56,36,46),(6,3,33,41,69,57,37,47),(6,3,34,42,71,58,38,48),(6,3,35,43,72,59,39,48),(6,3,36,43,74,61,40,49),(6,3,37,44,76,62,40,50),(6,3,38,45,78,63,41,51),(6,3,39,45,80,64,42,52),(6,3,40,46,82,66,43,53),(6,3,41,47,84,67,44,54),(6,3,42,47,86,68,45,55),(6,3,43,48,88,70,46,56),(6,3,44,49,90,71,46,57),(6,3,45,49,92,72,47,58),(6,3,46,50,94,74,48,59),(6,3,47,51,96,75,49,60),(6,3,48,51,98,77,50,61),(6,3,49,52,100,78,51,62),(6,3,50,53,102,79,52,63),(6,3,51,54,104,81,53,64),(6,3,52,54,106,82,54,65),(6,3,53,55,108,84,55,66),(6,3,54,56,110,85,56,67),(6,3,55,57,112,87,57,68),(6,3,56,57,114,88,58,69),(6,3,57,58,117,90,59,70),(6,3,58,59,119,91,60,71),(6,3,59,60,121,93,61,72),(6,3,60,61,123,94,62,74),(6,3,61,61,125,96,63,75),(6,3,62,62,128,97,64,76),(6,3,63,63,130,99,65,77),(6,3,64,64,132,100,66,78),(6,3,65,65,134,102,67,79),(6,3,66,66,137,104,68,80),(6,3,67,66,139,105,69,81),(6,3,68,67,141,107,70,83),(6,3,69,68,144,108,71,84),(6,3,70,69,146,110,72,85),(6,7,1,26,15,23,16,24),(6,7,2,27,15,24,17,25),(6,7,3,28,16,25,18,26),(6,7,4,28,16,26,19,27),(6,7,5,29,17,27,20,28),(6,7,6,30,17,28,21,29),(6,7,7,31,18,29,22,30),(6,7,8,32,18,30,23,31),(6,7,9,33,19,31,24,32),(6,7,10,34,19,32,25,33),(6,7,11,35,20,33,26,35),(6,7,12,35,20,34,27,36),(6,7,13,36,21,35,28,37),(6,7,14,37,21,36,29,38),(6,7,15,38,22,37,30,39),(6,7,16,39,22,39,31,40),(6,7,17,40,23,40,32,42),(6,7,18,41,23,41,33,43),(6,7,19,42,24,42,34,44),(6,7,20,43,24,43,35,45),(6,7,21,44,25,44,36,46),(6,7,22,45,25,45,37,48),(6,7,23,46,26,47,38,49),(6,7,24,47,27,48,40,50),(6,7,25,48,27,49,41,51),(6,7,26,49,28,50,42,53),(6,7,27,51,28,52,43,54),(6,7,28,52,29,53,44,55),(6,7,29,53,29,54,45,57),(6,7,30,54,30,55,47,58),(6,7,31,55,31,57,48,59),(6,7,32,56,31,58,49,61),(6,7,33,57,32,59,50,62),(6,7,34,58,33,61,51,64),(6,7,35,60,33,62,53,65),(6,7,36,61,34,63,54,66),(6,7,37,62,34,65,55,68),(6,7,38,63,35,66,57,69),(6,7,39,64,36,67,58,71),(6,7,40,66,36,69,59,72),(6,7,41,67,37,70,60,74),(6,7,42,68,38,72,62,75),(6,7,43,69,38,73,63,77),(6,7,44,70,39,74,64,78),(6,7,45,72,40,76,66,80),(6,7,46,73,41,77,67,81),(6,7,47,74,41,79,69,83),(6,7,48,76,42,80,70,84),(6,7,49,77,43,82,71,86),(6,7,50,78,43,83,73,88),(6,7,51,80,44,85,74,89),(6,7,52,81,45,86,76,91),(6,7,53,82,46,88,77,92),(6,7,54,84,46,90,78,94),(6,7,55,85,47,91,80,96),(6,7,56,86,48,93,81,97),(6,7,57,88,49,94,83,99),(6,7,58,89,49,96,84,101),(6,7,59,91,50,97,86,102),(6,7,60,92,51,99,87,104),(6,7,61,94,52,101,89,106),(6,7,62,95,52,102,90,108),(6,7,63,96,53,104,92,109),(6,7,64,98,54,106,93,111),(6,7,65,99,55,107,95,113),(6,7,66,101,56,109,97,115),(6,7,67,102,57,111,98,117),(6,7,68,104,57,113,100,118),(6,7,69,105,58,114,101,120),(6,7,70,107,59,116,103,122),(6,11,1,26,15,22,17,24),(6,11,2,27,16,23,18,25),(6,11,3,27,16,23,19,26),(6,11,4,28,17,24,20,27),(6,11,5,28,17,25,21,29),(6,11,6,29,18,25,22,30),(6,11,7,29,18,26,23,31),(6,11,8,30,19,27,24,32),(6,11,9,30,19,27,26,34),(6,11,10,31,20,28,27,35),(6,11,11,32,20,29,28,36),(6,11,12,32,21,29,29,37),(6,11,13,33,21,30,30,39),(6,11,14,33,22,31,31,40),(6,11,15,34,23,32,32,41),(6,11,16,35,23,32,34,43),(6,11,17,35,24,33,35,44),(6,11,18,36,24,34,36,45),(6,11,19,37,25,35,37,47),(6,11,20,37,26,35,39,48),(6,11,21,38,26,36,40,50),(6,11,22,39,27,37,41,51),(6,11,23,39,28,38,42,52),(6,11,24,40,28,39,44,54),(6,11,25,41,29,39,45,55),(6,11,26,41,30,40,46,57),(6,11,27,42,30,41,47,58),(6,11,28,43,31,42,49,60),(6,11,29,44,32,43,50,61),(6,11,30,44,32,44,52,63),(6,11,31,45,33,44,53,64),(6,11,32,46,34,45,54,66),(6,11,33,47,34,46,56,67),(6,11,34,47,35,47,57,69),(6,11,35,48,36,48,58,71),(6,11,36,49,36,49,60,72),(6,11,37,50,37,50,61,74),(6,11,38,51,38,51,63,76),(6,11,39,52,39,52,64,77),(6,11,40,52,39,53,66,79),(6,11,41,53,40,54,67,81),(6,11,42,54,41,55,69,82),(6,11,43,55,42,56,70,84),(6,11,44,56,43,57,72,86),(6,11,45,57,43,57,73,87),(6,11,46,57,44,58,75,89),(6,11,47,58,45,60,76,91),(6,11,48,59,46,61,78,93),(6,11,49,60,47,62,79,94),(6,11,50,61,47,63,81,96),(6,11,51,62,48,64,83,98),(6,11,52,63,49,65,84,100),(6,11,53,64,50,66,86,102),(6,11,54,65,51,67,87,104),(6,11,55,66,51,68,89,105),(6,11,56,67,52,69,91,107),(6,11,57,68,53,70,92,109),(6,11,58,69,54,71,94,111),(6,11,59,70,55,72,96,113),(6,11,60,71,56,73,97,115),(6,11,61,72,57,74,99,117),(6,11,62,73,58,76,101,119),(6,11,63,74,59,77,103,121),(6,11,64,75,59,78,104,123),(6,11,65,76,60,79,106,125),(6,11,66,77,61,80,108,127),(6,11,67,78,62,81,110,129),(6,11,68,79,63,83,111,131),(6,11,69,80,64,84,113,133),(6,11,70,81,65,85,115,135),(7,1,1,18,23,21,24,20),(7,1,2,19,24,22,24,20),(7,1,3,21,25,23,24,21),(7,1,4,22,25,25,24,21),(7,1,5,23,26,26,24,21),(7,1,6,25,27,27,24,21),(7,1,7,26,28,28,24,22),(7,1,8,27,29,29,25,22),(7,1,9,29,29,31,25,22),(7,1,10,30,30,32,25,23),(7,1,11,32,31,33,25,23),(7,1,12,33,32,34,25,23),(7,1,13,34,33,36,25,24),(7,1,14,36,34,37,25,24),(7,1,15,37,35,38,25,24),(7,1,16,39,36,40,25,25),(7,1,17,40,36,41,25,25),(7,1,18,42,37,43,26,25),(7,1,19,43,38,44,26,26),(7,1,20,45,39,45,26,26),(7,1,21,47,40,47,26,26),(7,1,22,48,41,48,26,27),(7,1,23,50,42,50,26,27),(7,1,24,51,43,51,26,28),(7,1,25,53,44,52,27,28),(7,1,26,55,45,54,27,28),(7,1,27,56,46,55,27,29),(7,1,28,58,47,57,27,29),(7,1,29,59,48,58,27,30),(7,1,30,61,49,60,27,30),(7,1,31,63,50,62,27,30),(7,1,32,65,51,63,28,31),(7,1,33,66,52,65,28,31),(7,1,34,68,53,66,28,32),(7,1,35,70,55,68,28,32),(7,1,36,72,56,69,28,33),(7,1,37,73,57,71,29,33),(7,1,38,75,58,73,29,34),(7,1,39,77,59,74,29,34),(7,1,40,79,60,76,29,35),(7,1,41,81,61,78,29,35),(7,1,42,82,62,79,30,35),(7,1,43,84,64,81,30,36),(7,1,44,86,65,83,30,36),(7,1,45,88,66,85,30,37),(7,1,46,90,67,86,30,37),(7,1,47,92,68,88,31,38),(7,1,48,94,70,90,31,38),(7,1,49,96,71,92,31,39),(7,1,50,98,72,93,31,40),(7,1,51,100,73,95,32,40),(7,1,52,102,75,97,32,41),(7,1,53,104,76,99,32,41),(7,1,54,106,77,101,32,42),(7,1,55,108,78,103,33,42),(7,1,56,110,80,104,33,43),(7,1,57,112,81,106,33,43),(7,1,58,114,82,108,33,44),(7,1,59,116,84,110,34,44),(7,1,60,118,85,112,34,45),(7,1,61,120,86,114,34,46),(7,1,62,122,88,116,35,46),(7,1,63,125,89,118,35,47),(7,1,64,127,91,120,35,47),(7,1,65,129,92,122,35,48),(7,1,66,131,93,124,36,49),(7,1,67,133,95,126,36,49),(7,1,68,136,96,128,36,50),(7,1,69,138,98,130,37,50),(7,1,70,140,99,132,37,51),(7,4,1,16,26,20,24,20),(7,4,2,17,27,21,24,20),(7,4,3,18,29,21,24,21),(7,4,4,18,30,22,24,21),(7,4,5,19,32,23,25,21),(7,4,6,20,33,24,25,22),(7,4,7,21,35,24,25,22),(7,4,8,22,36,25,25,23),(7,4,9,22,38,26,25,23),(7,4,10,23,39,26,25,23),(7,4,11,24,41,27,25,24),(7,4,12,25,42,28,26,24),(7,4,13,26,44,29,26,25),(7,4,14,27,46,30,26,25),(7,4,15,28,47,30,26,25),(7,4,16,28,49,31,26,26),(7,4,17,29,50,32,27,26),(7,4,18,30,52,33,27,27),(7,4,19,31,54,34,27,27),(7,4,20,32,56,35,27,28),(7,4,21,33,57,35,27,28),(7,4,22,34,59,36,28,29),(7,4,23,35,61,37,28,29),(7,4,24,36,62,38,28,30),(7,4,25,37,64,39,28,30),(7,4,26,38,66,40,29,31),(7,4,27,39,68,41,29,31),(7,4,28,40,70,42,29,32),(7,4,29,41,72,43,29,32),(7,4,30,42,73,43,29,33),(7,4,31,43,75,44,30,33),(7,4,32,44,77,45,30,34),(7,4,33,45,79,46,30,34),(7,4,34,46,81,47,31,35),(7,4,35,47,83,48,31,35),(7,4,36,48,85,49,31,36),(7,4,37,49,87,50,31,36),(7,4,38,50,89,51,32,37),(7,4,39,51,91,52,32,38),(7,4,40,53,93,53,32,38),(7,4,41,54,95,54,33,39),(7,4,42,55,97,55,33,39),(7,4,43,56,99,56,33,40),(7,4,44,57,101,57,33,40),(7,4,45,58,103,59,34,41),(7,4,46,59,105,60,34,42),(7,4,47,61,107,61,34,42),(7,4,48,62,110,62,35,43),(7,4,49,63,112,63,35,44),(7,4,50,64,114,64,35,44),(7,4,51,65,116,65,36,45),(7,4,52,67,118,66,36,45),(7,4,53,68,121,67,36,46),(7,4,54,69,123,69,37,47),(7,4,55,70,125,70,37,47),(7,4,56,72,127,71,37,48),(7,4,57,73,130,72,38,49),(7,4,58,74,132,73,38,49),(7,4,59,75,134,74,39,50),(7,4,60,77,137,76,39,51),(7,4,61,78,139,77,39,51),(7,4,62,79,141,78,40,52),(7,4,63,81,144,79,40,53),(7,4,64,82,146,80,41,54),(7,4,65,83,149,82,41,54),(7,4,66,85,151,83,41,55),(7,4,67,86,154,84,42,56),(7,4,68,87,156,85,42,57),(7,4,69,89,158,87,43,57),(7,4,70,90,161,88,43,58),(7,8,1,15,23,19,27,22),(7,8,2,15,23,19,28,23),(7,8,3,15,23,20,30,25),(7,8,4,15,23,20,31,26),(7,8,5,15,24,20,32,27),(7,8,6,15,24,20,34,29),(7,8,7,16,24,21,35,30),(7,8,8,16,24,21,37,31),(7,8,9,16,24,21,38,33),(7,8,10,16,24,22,40,34),(7,8,11,16,25,22,41,36),(7,8,12,16,25,22,42,37),(7,8,13,16,25,23,44,38),(7,8,14,16,25,23,45,40),(7,8,15,17,25,23,47,41),(7,8,16,17,25,24,49,43),(7,8,17,17,26,24,50,44),(7,8,18,17,26,24,52,46),(7,8,19,17,26,25,53,47),(7,8,20,17,26,25,55,49),(7,8,21,17,26,26,57,51),(7,8,22,18,27,26,58,52),(7,8,23,18,27,26,60,54),(7,8,24,18,27,27,61,55),(7,8,25,18,27,27,63,57),(7,8,26,18,28,27,65,59),(7,8,27,18,28,28,67,60),(7,8,28,18,28,28,68,62),(7,8,29,19,28,29,70,64),(7,8,30,19,29,29,72,65),(7,8,31,19,29,30,74,67),(7,8,32,19,29,30,75,69),(7,8,33,19,29,30,77,70),(7,8,34,20,30,31,79,72),(7,8,35,20,30,31,81,74),(7,8,36,20,30,32,83,76),(7,8,37,20,30,32,85,78),(7,8,38,20,31,33,86,79),(7,8,39,21,31,33,88,81),(7,8,40,21,31,34,90,83),(7,8,41,21,32,34,92,85),(7,8,42,21,32,35,94,87),(7,8,43,21,32,35,96,89),(7,8,44,22,32,36,98,91),(7,8,45,22,33,36,100,92),(7,8,46,22,33,37,102,94),(7,8,47,22,33,37,104,96),(7,8,48,22,34,38,106,98),(7,8,49,23,34,38,108,100),(7,8,50,23,34,39,110,102),(7,8,51,23,35,39,112,104),(7,8,52,23,35,40,114,106),(7,8,53,24,35,40,117,108),(7,8,54,24,36,41,119,110),(7,8,55,24,36,41,121,112),(7,8,56,24,37,42,123,114),(7,8,57,25,37,42,125,117),(7,8,58,25,37,43,127,119),(7,8,59,25,38,43,130,121),(7,8,60,25,38,44,132,123),(7,8,61,26,38,45,134,125),(7,8,62,26,39,45,136,127),(7,8,63,26,39,46,139,129),(7,8,64,26,40,46,141,132),(7,8,65,27,40,47,143,134),(7,8,66,27,40,48,146,136),(7,8,67,27,41,48,148,138),(7,8,68,27,41,49,150,140),(7,8,69,28,42,49,153,143),(7,8,70,28,42,50,155,145),(7,9,1,15,23,20,26,22),(7,9,2,15,23,21,27,23),(7,9,3,16,24,21,28,24),(7,9,4,16,24,22,29,25),(7,9,5,16,24,22,31,27),(7,9,6,17,25,23,32,28),(7,9,7,17,25,23,33,29),(7,9,8,17,26,24,34,30),(7,9,9,17,26,25,36,31),(7,9,10,18,26,25,37,33),(7,9,11,18,27,26,38,34),(7,9,12,18,27,26,39,35),(7,9,13,19,28,27,41,36),(7,9,14,19,28,28,42,38),(7,9,15,20,28,28,43,39),(7,9,16,20,29,29,45,40),(7,9,17,20,29,30,46,42),(7,9,18,21,30,30,47,43),(7,9,19,21,30,31,49,44),(7,9,20,21,31,32,50,46),(7,9,21,22,31,32,51,47),(7,9,22,22,31,33,53,49),(7,9,23,23,32,34,54,50),(7,9,24,23,32,34,56,51),(7,9,25,23,33,35,57,53),(7,9,26,24,33,36,59,54),(7,9,27,24,34,37,60,56),(7,9,28,25,34,37,62,57),(7,9,29,25,35,38,63,59),(7,9,30,25,35,39,65,60),(7,9,31,26,36,40,66,62),(7,9,32,26,36,40,68,63),(7,9,33,27,37,41,69,65),(7,9,34,27,38,42,71,66),(7,9,35,28,38,43,73,68),(7,9,36,28,39,43,74,69),(7,9,37,28,39,44,76,71),(7,9,38,29,40,45,77,73),(7,9,39,29,40,46,79,74),(7,9,40,30,41,47,81,76),(7,9,41,30,41,48,82,78),(7,9,42,31,42,48,84,79),(7,9,43,31,43,49,86,81),(7,9,44,32,43,50,88,83),(7,9,45,32,44,51,89,84),(7,9,46,33,44,52,91,86),(7,9,47,33,45,53,93,88),(7,9,48,34,46,54,95,89),(7,9,49,34,46,54,96,91),(7,9,50,35,47,55,98,93),(7,9,51,35,48,56,100,95),(7,9,52,36,48,57,102,97),(7,9,53,36,49,58,104,98),(7,9,54,37,50,59,105,100),(7,9,55,37,50,60,107,102),(7,9,56,38,51,61,109,104),(7,9,57,38,52,62,111,106),(7,9,58,39,52,63,113,108),(7,9,59,40,53,64,115,109),(7,9,60,40,54,65,117,111),(7,9,61,41,54,66,119,113),(7,9,62,41,55,67,121,115),(7,9,63,42,56,68,123,117),(7,9,64,42,57,69,125,119),(7,9,65,43,57,70,127,121),(7,9,66,44,58,71,129,123),(7,9,67,44,59,72,131,125),(7,9,68,45,59,73,133,127),(7,9,69,45,60,74,135,129),(7,9,70,46,61,75,137,131),(8,1,1,24,22,23,16,21),(8,1,2,25,23,24,16,21),(8,1,3,27,24,25,16,22),(8,1,4,28,24,26,16,22),(8,1,5,29,25,28,16,22),(8,1,6,31,26,29,16,22),(8,1,7,32,27,30,17,23),(8,1,8,33,28,31,17,23),(8,1,9,35,28,33,17,23),(8,1,10,36,29,34,17,24),(8,1,11,37,30,35,17,24),(8,1,12,39,31,36,17,24),(8,1,13,40,32,38,17,25),(8,1,14,42,33,39,17,25),(8,1,15,43,34,40,18,25),(8,1,16,45,35,42,18,26),(8,1,17,46,35,43,18,26),(8,1,18,48,36,44,18,26),(8,1,19,49,37,46,18,27),(8,1,20,51,38,47,18,27),(8,1,21,52,39,49,18,27),(8,1,22,54,40,50,18,28),(8,1,23,55,41,51,19,28),(8,1,24,57,42,53,19,29),(8,1,25,59,43,54,19,29),(8,1,26,60,44,56,19,29),(8,1,27,62,45,57,19,30),(8,1,28,63,46,59,19,30),(8,1,29,65,47,60,20,31),(8,1,30,67,48,62,20,31),(8,1,31,69,49,63,20,31),(8,1,32,70,50,65,20,32),(8,1,33,72,51,67,20,32),(8,1,34,74,53,68,20,33),(8,1,35,75,54,70,21,33),(8,1,36,77,55,71,21,34),(8,1,37,79,56,73,21,34),(8,1,38,81,57,75,21,35),(8,1,39,83,58,76,21,35),(8,1,40,84,59,78,22,35),(8,1,41,86,60,80,22,36),(8,1,42,88,62,81,22,36),(8,1,43,90,63,83,22,37),(8,1,44,92,64,85,22,37),(8,1,45,94,65,86,23,38),(8,1,46,96,66,88,23,38),(8,1,47,98,67,90,23,39),(8,1,48,100,69,92,23,39),(8,1,49,102,70,93,24,40),(8,1,50,103,71,95,24,40),(8,1,51,105,72,97,24,41),(8,1,52,107,74,99,24,42),(8,1,53,109,75,101,25,42),(8,1,54,112,76,103,25,43),(8,1,55,114,78,104,25,43),(8,1,56,116,79,106,25,44),(8,1,57,118,80,108,25,44),(8,1,58,120,81,110,26,45),(8,1,59,122,83,112,26,45),(8,1,60,124,84,114,26,46),(8,1,61,126,85,116,27,47),(8,1,62,128,87,118,27,47),(8,1,63,130,88,120,27,48),(8,1,64,133,90,122,27,48),(8,1,65,135,91,124,28,49),(8,1,66,137,92,126,28,50),(8,1,67,139,94,128,28,50),(8,1,68,141,95,130,28,51),(8,1,69,144,97,132,29,51),(8,1,70,146,98,134,29,52),(8,3,1,21,25,22,16,22),(8,3,2,21,26,23,17,23),(8,3,3,22,28,24,17,23),(8,3,4,22,29,25,18,24),(8,3,5,23,30,26,18,25),(8,3,6,23,32,27,19,25),(8,3,7,24,33,28,20,26),(8,3,8,24,35,28,20,26),(8,3,9,25,36,29,21,27),(8,3,10,25,38,30,21,28),(8,3,11,25,39,31,22,29),(8,3,12,26,41,32,23,29),(8,3,13,26,42,33,23,30),(8,3,14,27,44,34,24,31),(8,3,15,27,45,35,25,31),(8,3,16,28,47,36,25,32),(8,3,17,28,48,38,26,33),(8,3,18,29,50,39,27,34),(8,3,19,29,51,40,28,34),(8,3,20,30,53,41,28,35),(8,3,21,31,55,42,29,36),(8,3,22,31,56,43,30,37),(8,3,23,32,58,44,30,37),(8,3,24,32,60,45,31,38),(8,3,25,33,61,46,32,39),(8,3,26,33,63,48,33,40),(8,3,27,34,65,49,33,41),(8,3,28,35,66,50,34,41),(8,3,29,35,68,51,35,42),(8,3,30,36,70,52,36,43),(8,3,31,36,72,53,37,44),(8,3,32,37,73,55,37,45),(8,3,33,38,75,56,38,46),(8,3,34,38,77,57,39,47),(8,3,35,39,79,58,40,48),(8,3,36,39,81,60,41,48),(8,3,37,40,83,61,41,49),(8,3,38,41,85,62,42,50),(8,3,39,41,86,63,43,51),(8,3,40,42,88,65,44,52),(8,3,41,43,90,66,45,53),(8,3,42,43,92,67,46,54),(8,3,43,44,94,69,47,55),(8,3,44,45,96,70,47,56),(8,3,45,45,98,71,48,57),(8,3,46,46,100,73,49,58),(8,3,47,47,102,74,50,59),(8,3,48,48,104,76,51,60),(8,3,49,48,106,77,52,61),(8,3,50,49,108,78,53,62),(8,3,51,50,110,80,54,63),(8,3,52,51,113,81,55,64),(8,3,53,51,115,83,56,65),(8,3,54,52,117,84,57,66),(8,3,55,53,119,86,58,67),(8,3,56,54,121,87,59,68),(8,3,57,54,123,89,60,69),(8,3,58,55,126,90,61,70),(8,3,59,56,128,92,62,71),(8,3,60,57,130,93,63,73),(8,3,61,58,132,95,64,74),(8,3,62,58,134,96,65,75),(8,3,63,59,137,98,66,76),(8,3,64,60,139,99,67,77),(8,3,65,61,141,101,68,78),(8,3,66,62,144,103,69,79),(8,3,67,62,146,104,70,80),(8,3,68,63,148,106,71,82),(8,3,69,64,151,107,72,83),(8,3,70,65,153,109,73,84),(8,4,1,22,25,22,16,21),(8,4,2,23,26,23,16,21),(8,4,3,24,28,23,16,22),(8,4,4,24,29,24,16,22),(8,4,5,25,31,25,17,22),(8,4,6,26,32,25,17,23),(8,4,7,27,34,26,17,23),(8,4,8,27,35,27,17,24),(8,4,9,28,37,28,17,24),(8,4,10,29,38,28,18,24),(8,4,11,30,40,29,18,25),(8,4,12,31,41,30,18,25),(8,4,13,32,43,31,18,26),(8,4,14,32,45,32,18,26),(8,4,15,33,46,32,19,26),(8,4,16,34,48,33,19,27),(8,4,17,35,50,34,19,27),(8,4,18,36,51,35,19,28),(8,4,19,37,53,36,19,28),(8,4,20,38,55,36,20,29),(8,4,21,39,56,37,20,29),(8,4,22,40,58,38,20,30),(8,4,23,41,60,39,20,30),(8,4,24,42,62,40,20,31),(8,4,25,43,63,41,21,31),(8,4,26,44,65,42,21,32),(8,4,27,45,67,43,21,32),(8,4,28,46,69,44,21,33),(8,4,29,47,71,44,22,33),(8,4,30,48,72,45,22,34),(8,4,31,49,74,46,22,34),(8,4,32,50,76,47,22,35),(8,4,33,51,78,48,23,35),(8,4,34,52,80,49,23,36),(8,4,35,53,82,50,23,36),(8,4,36,54,84,51,24,37),(8,4,37,55,86,52,24,37),(8,4,38,56,88,53,24,38),(8,4,39,57,90,54,24,38),(8,4,40,58,92,55,25,39),(8,4,41,59,94,56,25,40),(8,4,42,60,96,57,25,40),(8,4,43,62,98,58,26,41),(8,4,44,63,100,59,26,41),(8,4,45,64,102,60,26,42),(8,4,46,65,104,61,27,43),(8,4,47,66,107,63,27,43),(8,4,48,67,109,64,27,44),(8,4,49,69,111,65,27,44),(8,4,50,70,113,66,28,45),(8,4,51,71,115,67,28,46),(8,4,52,72,117,68,28,46),(8,4,53,74,120,69,29,47),(8,4,54,75,122,70,29,48),(8,4,55,76,124,72,29,48),(8,4,56,77,126,73,30,49),(8,4,57,79,129,74,30,50),(8,4,58,80,131,75,30,50),(8,4,59,81,133,76,31,51),(8,4,60,82,136,77,31,52),(8,4,61,84,138,79,32,52),(8,4,62,85,140,80,32,53),(8,4,63,86,143,81,32,54),(8,4,64,88,145,82,33,55),(8,4,65,89,148,84,33,55),(8,4,66,90,150,85,33,56),(8,4,67,92,153,86,34,57),(8,4,68,93,155,87,34,58),(8,4,69,95,157,89,35,58),(8,4,70,96,160,90,35,59),(8,5,1,21,22,21,18,24),(8,5,2,21,22,21,19,25),(8,5,3,21,22,22,21,27),(8,5,4,21,23,22,22,28),(8,5,5,22,23,22,23,29),(8,5,6,22,23,23,25,31),(8,5,7,22,23,23,26,32),(8,5,8,22,24,24,27,34),(8,5,9,22,24,24,29,35),(8,5,10,22,24,24,30,37),(8,5,11,23,24,25,32,38),(8,5,12,23,24,25,33,40),(8,5,13,23,25,26,35,41),(8,5,14,23,25,26,36,43),(8,5,15,23,25,26,38,44),(8,5,16,24,26,27,39,46),(8,5,17,24,26,27,41,47),(8,5,18,24,26,28,42,49),(8,5,19,24,26,28,44,50),(8,5,20,24,27,29,45,52),(8,5,21,25,27,29,47,54),(8,5,22,25,27,30,48,55),(8,5,23,25,28,30,50,57),(8,5,24,25,28,31,52,59),(8,5,25,25,28,31,53,60),(8,5,26,26,28,32,55,62),(8,5,27,26,29,32,56,64),(8,5,28,26,29,33,58,65),(8,5,29,26,29,33,60,67),(8,5,30,27,30,34,62,69),(8,5,31,27,30,34,63,71),(8,5,32,27,30,35,65,73),(8,5,33,27,31,35,67,74),(8,5,34,28,31,36,68,76),(8,5,35,28,32,36,70,78),(8,5,36,28,32,37,72,80),(8,5,37,29,32,37,74,82),(8,5,38,29,33,38,76,84),(8,5,39,29,33,38,77,86),(8,5,40,29,33,39,79,87),(8,5,41,30,34,40,81,89),(8,5,42,30,34,40,83,91),(8,5,43,30,35,41,85,93),(8,5,44,31,35,41,87,95),(8,5,45,31,35,42,89,97),(8,5,46,31,36,43,91,99),(8,5,47,32,36,43,93,101),(8,5,48,32,37,44,94,103),(8,5,49,32,37,44,96,105),(8,5,50,33,37,45,98,107),(8,5,51,33,38,46,100,110),(8,5,52,33,38,46,102,112),(8,5,53,34,39,47,104,114),(8,5,54,34,39,48,106,116),(8,5,55,34,40,48,109,118),(8,5,56,35,40,49,111,120),(8,5,57,35,41,50,113,122),(8,5,58,35,41,50,115,125),(8,5,59,36,42,51,117,127),(8,5,60,36,42,52,119,129),(8,5,61,36,42,52,121,131),(8,5,62,37,43,53,123,133),(8,5,63,37,43,54,125,136),(8,5,64,38,44,55,128,138),(8,5,65,38,44,55,130,140),(8,5,66,38,45,56,132,143),(8,5,67,39,45,57,134,145),(8,5,68,39,46,58,136,147),(8,5,69,40,46,58,139,150),(8,5,70,40,47,59,141,152),(8,7,1,22,22,22,17,23),(8,7,2,23,22,23,18,24),(8,7,3,24,23,24,19,25),(8,7,4,25,23,25,20,26),(8,7,5,25,24,26,21,27),(8,7,6,26,24,27,22,28),(8,7,7,27,25,28,23,29),(8,7,8,28,25,29,24,30),(8,7,9,29,25,30,25,31),(8,7,10,30,26,31,26,33),(8,7,11,31,26,32,27,34),(8,7,12,32,27,33,28,35),(8,7,13,33,27,34,29,36),(8,7,14,34,28,35,30,37),(8,7,15,34,28,36,31,38),(8,7,16,35,29,38,32,39),(8,7,17,36,29,39,33,41),(8,7,18,37,30,40,34,42),(8,7,19,38,30,41,35,43),(8,7,20,39,31,42,36,44),(8,7,21,40,32,43,37,45),(8,7,22,41,32,45,38,47),(8,7,23,43,33,46,39,48),(8,7,24,44,33,47,40,49),(8,7,25,45,34,48,42,51),(8,7,26,46,34,49,43,52),(8,7,27,47,35,51,44,53),(8,7,28,48,35,52,45,54),(8,7,29,49,36,53,46,56),(8,7,30,50,37,54,48,57),(8,7,31,51,37,56,49,59),(8,7,32,52,38,57,50,60),(8,7,33,53,38,58,51,61),(8,7,34,55,39,60,52,63),(8,7,35,56,40,61,54,64),(8,7,36,57,40,62,55,66),(8,7,37,58,41,64,56,67),(8,7,38,59,42,65,57,68),(8,7,39,61,42,66,59,70),(8,7,40,62,43,68,60,71),(8,7,41,63,44,69,61,73),(8,7,42,64,44,71,63,74),(8,7,43,65,45,72,64,76),(8,7,44,67,46,74,65,77),(8,7,45,68,46,75,67,79),(8,7,46,69,47,76,68,80),(8,7,47,71,48,78,69,82),(8,7,48,72,49,79,71,83),(8,7,49,73,49,81,72,85),(8,7,50,74,50,82,74,87),(8,7,51,76,51,84,75,88),(8,7,52,77,51,85,77,90),(8,7,53,78,52,87,78,92),(8,7,54,80,53,89,79,93),(8,7,55,81,54,90,81,95),(8,7,56,83,55,92,82,96),(8,7,57,84,55,93,84,98),(8,7,58,85,56,95,85,100),(8,7,59,87,57,97,87,102),(8,7,60,88,58,98,88,103),(8,7,61,90,58,100,90,105),(8,7,62,91,59,101,91,107),(8,7,63,93,60,103,93,108),(8,7,64,94,61,105,94,110),(8,7,65,95,62,106,96,112),(8,7,66,97,63,108,98,114),(8,7,67,98,63,110,99,116),(8,7,68,100,64,112,101,117),(8,7,69,101,65,113,102,119),(8,7,70,103,66,115,104,121),(8,8,1,21,22,21,19,23),(8,8,2,21,22,21,20,24),(8,8,3,21,22,22,22,26),(8,8,4,21,22,22,23,27),(8,8,5,21,23,22,25,28),(8,8,6,21,23,22,26,30),(8,8,7,21,23,23,27,31),(8,8,8,22,23,23,29,32),(8,8,9,22,23,23,30,34),(8,8,10,22,23,24,32,35),(8,8,11,22,24,24,33,37),(8,8,12,22,24,24,35,38),(8,8,13,22,24,25,36,39),(8,8,14,22,24,25,38,41),(8,8,15,22,24,25,39,42),(8,8,16,22,24,26,41,44),(8,8,17,23,25,26,42,45),(8,8,18,23,25,26,44,47),(8,8,19,23,25,27,46,48),(8,8,20,23,25,27,47,50),(8,8,21,23,25,27,49,51),(8,8,22,23,26,28,51,53),(8,8,23,23,26,28,52,55),(8,8,24,24,26,29,54,56),(8,8,25,24,26,29,56,58),(8,8,26,24,27,29,57,60),(8,8,27,24,27,30,59,61),(8,8,28,24,27,30,61,63),(8,8,29,24,27,31,63,65),(8,8,30,24,28,31,64,66),(8,8,31,25,28,31,66,68),(8,8,32,25,28,32,68,70),(8,8,33,25,28,32,70,71),(8,8,34,25,29,33,71,73),(8,8,35,25,29,33,73,75),(8,8,36,26,29,34,75,77),(8,8,37,26,29,34,77,79),(8,8,38,26,30,35,79,80),(8,8,39,26,30,35,81,82),(8,8,40,26,30,35,83,84),(8,8,41,27,31,36,85,86),(8,8,42,27,31,36,87,88),(8,8,43,27,31,37,89,90),(8,8,44,27,32,37,91,91),(8,8,45,27,32,38,93,93),(8,8,46,28,32,38,95,95),(8,8,47,28,32,39,97,97),(8,8,48,28,33,39,99,99),(8,8,49,28,33,40,101,101),(8,8,50,29,33,40,103,103),(8,8,51,29,34,41,105,105),(8,8,52,29,34,42,107,107),(8,8,53,29,35,42,109,109),(8,8,54,30,35,43,111,111),(8,8,55,30,35,43,113,113),(8,8,56,30,36,44,115,115),(8,8,57,30,36,44,118,118),(8,8,58,31,36,45,120,120),(8,8,59,31,37,45,122,122),(8,8,60,31,37,46,124,124),(8,8,61,31,37,47,126,126),(8,8,62,32,38,47,129,128),(8,8,63,32,38,48,131,130),(8,8,64,32,39,48,133,133),(8,8,65,33,39,49,135,135),(8,8,66,33,39,50,138,137),(8,8,67,33,40,50,140,139),(8,8,68,33,40,51,142,141),(8,8,69,34,41,51,145,144),(8,8,70,34,41,52,147,146),(10,2,1,19,22,21,24,20),(10,2,2,20,23,22,25,21),(10,2,3,21,23,23,25,21),(10,2,4,22,24,24,26,22),(10,2,5,23,24,25,27,23),(10,2,6,25,25,26,27,24),(10,2,7,26,25,27,28,24),(10,2,8,27,26,28,29,25),(10,2,9,28,27,29,29,26),(10,2,10,29,27,31,30,26),(10,2,11,30,28,32,31,27),(10,2,12,32,29,33,31,28),(10,2,13,33,29,34,32,29),(10,2,14,34,30,35,33,30),(10,2,15,35,31,36,33,30),(10,2,16,37,31,37,34,31),(10,2,17,38,32,39,35,32),(10,2,18,39,33,40,36,33),(10,2,19,40,33,41,36,34),(10,2,20,42,34,42,37,35),(10,2,21,43,35,44,38,35),(10,2,22,44,35,45,39,36),(10,2,23,46,36,46,40,37),(10,2,24,47,37,47,40,38),(10,2,25,49,38,49,41,39),(10,2,26,50,38,50,42,40),(10,2,27,51,39,51,43,41),(10,2,28,53,40,53,44,42),(10,2,29,54,41,54,45,43),(10,2,30,56,41,55,45,43),(10,2,31,57,42,57,46,44),(10,2,32,58,43,58,47,45),(10,2,33,60,44,59,48,46),(10,2,34,61,45,61,49,47),(10,2,35,63,45,62,50,48),(10,2,36,64,46,64,51,49),(10,2,37,66,47,65,52,50),(10,2,38,67,48,67,53,51),(10,2,39,69,49,68,54,52),(10,2,40,71,50,69,55,53),(10,2,41,72,50,71,55,54),(10,2,42,74,51,72,56,55),(10,2,43,75,52,74,57,56),(10,2,44,77,53,75,58,57),(10,2,45,79,54,77,59,59),(10,2,46,80,55,78,60,60),(10,2,47,82,56,80,61,61),(10,2,48,83,57,82,62,62),(10,2,49,85,58,83,63,63),(10,2,50,87,59,85,64,64),(10,2,51,89,60,86,66,65),(10,2,52,90,61,88,67,66),(10,2,53,92,61,90,68,67),(10,2,54,94,62,91,69,69),(10,2,55,95,63,93,70,70),(10,2,56,97,64,95,71,71),(10,2,57,99,65,96,72,72),(10,2,58,101,66,98,73,73),(10,2,59,102,67,100,74,74),(10,2,60,104,68,101,75,76),(10,2,61,106,69,103,76,77),(10,2,62,108,70,105,78,78),(10,2,63,110,72,106,79,79),(10,2,64,112,73,108,80,80),(10,2,65,113,74,110,81,82),(10,2,66,115,75,112,82,83),(10,2,67,117,76,114,83,84),(10,2,68,119,77,115,85,85),(10,2,69,121,78,117,86,87),(10,2,70,123,79,119,87,88),(10,3,1,17,25,20,24,20),(10,3,2,17,26,21,25,21),(10,3,3,18,28,22,25,21),(10,3,4,18,29,23,26,22),(10,3,5,19,30,24,26,23),(10,3,6,19,32,25,27,23),(10,3,7,20,33,26,27,24),(10,3,8,20,35,27,28,25),(10,3,9,21,36,27,29,25),(10,3,10,21,38,28,29,26),(10,3,11,22,39,29,30,27),(10,3,12,22,41,30,31,27),(10,3,13,23,42,31,31,28),(10,3,14,23,44,32,32,29),(10,3,15,24,45,34,32,29),(10,3,16,24,47,35,33,30),(10,3,17,25,48,36,34,31),(10,3,18,25,50,37,34,32),(10,3,19,26,51,38,35,32),(10,3,20,26,53,39,36,33),(10,3,21,27,55,40,37,34),(10,3,22,27,56,41,37,35),(10,3,23,28,58,42,38,36),(10,3,24,28,60,43,39,36),(10,3,25,29,61,44,39,37),(10,3,26,30,63,46,40,38),(10,3,27,30,65,47,41,39),(10,3,28,31,66,48,42,40),(10,3,29,31,68,49,42,40),(10,3,30,32,70,50,43,41),(10,3,31,33,72,52,44,42),(10,3,32,33,73,53,45,43),(10,3,33,34,75,54,46,44),(10,3,34,34,77,55,46,45),(10,3,35,35,79,57,47,46),(10,3,36,36,81,58,48,47),(10,3,37,36,83,59,49,47),(10,3,38,37,85,60,50,48),(10,3,39,38,86,62,51,49),(10,3,40,38,88,63,51,50),(10,3,41,39,90,64,52,51),(10,3,42,40,92,66,53,52),(10,3,43,40,94,67,54,53),(10,3,44,41,96,68,55,54),(10,3,45,42,98,70,56,55),(10,3,46,42,100,71,57,56),(10,3,47,43,102,72,58,57),(10,3,48,44,104,74,59,58),(10,3,49,45,106,75,60,59),(10,3,50,45,108,77,61,60),(10,3,51,46,110,78,61,61),(10,3,52,47,113,79,62,62),(10,3,53,47,115,81,63,63),(10,3,54,48,117,82,64,64),(10,3,55,49,119,84,65,65),(10,3,56,50,121,85,66,66),(10,3,57,50,123,87,67,67),(10,3,58,51,126,88,68,68),(10,3,59,52,128,90,69,70),(10,3,60,53,130,91,70,71),(10,3,61,54,132,93,71,72),(10,3,62,54,134,94,72,73),(10,3,63,55,137,96,73,74),(10,3,64,56,139,97,75,75),(10,3,65,57,141,99,76,76),(10,3,66,58,144,101,77,77),(10,3,67,58,146,102,78,78),(10,3,68,59,148,104,79,80),(10,3,69,60,151,105,80,81),(10,3,70,61,153,107,81,82),(10,4,1,18,25,20,24,19),(10,4,2,19,26,21,24,19),(10,4,3,20,28,21,24,20),(10,4,4,20,29,22,24,20),(10,4,5,21,31,23,25,20),(10,4,6,22,32,24,25,21),(10,4,7,23,34,24,25,21),(10,4,8,24,35,25,25,22),(10,4,9,24,37,26,25,22),(10,4,10,25,38,26,25,22),(10,4,11,26,40,27,25,23),(10,4,12,27,41,28,26,23),(10,4,13,28,43,29,26,24),(10,4,14,29,45,30,26,24),(10,4,15,29,46,30,26,25),(10,4,16,30,48,31,26,25),(10,4,17,31,50,32,27,25),(10,4,18,32,51,33,27,26),(10,4,19,33,53,34,27,26),(10,4,20,34,55,35,27,27),(10,4,21,35,56,35,27,27),(10,4,22,36,58,36,28,28),(10,4,23,37,60,37,28,28),(10,4,24,38,62,38,28,29),(10,4,25,39,63,39,28,29),(10,4,26,40,65,40,29,30),(10,4,27,41,67,41,29,30),(10,4,28,42,69,42,29,31),(10,4,29,43,71,43,29,31),(10,4,30,44,72,43,29,32),(10,4,31,45,74,44,30,32),(10,4,32,46,76,45,30,33),(10,4,33,47,78,46,30,33),(10,4,34,48,80,47,31,34),(10,4,35,49,82,48,31,34),(10,4,36,50,84,49,31,35),(10,4,37,51,86,50,31,35),(10,4,38,52,88,51,32,36),(10,4,39,53,90,52,32,37),(10,4,40,54,92,53,32,37),(10,4,41,56,94,54,33,38),(10,4,42,57,96,55,33,38),(10,4,43,58,98,56,33,39),(10,4,44,59,100,57,33,39),(10,4,45,60,102,59,34,40),(10,4,46,61,104,60,34,41),(10,4,47,62,107,61,34,41),(10,4,48,64,109,62,35,42),(10,4,49,65,111,63,35,43),(10,4,50,66,113,64,35,43),(10,4,51,67,115,65,36,44),(10,4,52,68,117,66,36,44),(10,4,53,70,120,67,36,45),(10,4,54,71,122,69,37,46),(10,4,55,72,124,70,37,46),(10,4,56,73,126,71,37,47),(10,4,57,75,129,72,38,48),(10,4,58,76,131,73,38,48),(10,4,59,77,133,74,39,49),(10,4,60,79,136,76,39,50),(10,4,61,80,138,77,39,51),(10,4,62,81,140,78,40,51),(10,4,63,82,143,79,40,52),(10,4,64,84,145,80,41,53),(10,4,65,85,148,82,41,53),(10,4,66,87,150,83,41,54),(10,4,67,88,153,84,42,55),(10,4,68,89,155,85,42,56),(10,4,69,91,157,87,43,56),(10,4,70,92,160,88,43,57),(10,5,1,17,22,19,26,22),(10,5,2,17,22,19,27,23),(10,5,3,17,22,20,29,25),(10,5,4,17,23,20,30,26),(10,5,5,18,23,20,31,27),(10,5,6,18,23,21,33,29),(10,5,7,18,23,21,34,30),(10,5,8,18,24,22,35,32),(10,5,9,18,24,22,37,33),(10,5,10,19,24,22,38,35),(10,5,11,19,24,23,39,36),(10,5,12,19,24,23,41,38),(10,5,13,19,25,24,42,39),(10,5,14,19,25,24,44,41),(10,5,15,19,25,25,45,42),(10,5,16,20,26,25,47,44),(10,5,17,20,26,25,48,45),(10,5,18,20,26,26,50,47),(10,5,19,20,26,26,51,49),(10,5,20,21,27,27,53,50),(10,5,21,21,27,27,54,52),(10,5,22,21,27,28,56,53),(10,5,23,21,28,28,58,55),(10,5,24,21,28,29,59,57),(10,5,25,22,28,29,61,58),(10,5,26,22,28,30,62,60),(10,5,27,22,29,30,64,62),(10,5,28,22,29,31,66,64),(10,5,29,23,29,31,67,65),(10,5,30,23,30,32,69,67),(10,5,31,23,30,32,71,69),(10,5,32,23,30,33,72,71),(10,5,33,24,31,33,74,72),(10,5,34,24,31,34,76,74),(10,5,35,24,32,34,78,76),(10,5,36,24,32,35,80,78),(10,5,37,25,32,35,81,80),(10,5,38,25,33,36,83,82),(10,5,39,25,33,37,85,84),(10,5,40,26,33,37,87,86),(10,5,41,26,34,38,89,88),(10,5,42,26,34,38,91,89),(10,5,43,27,35,39,92,91),(10,5,44,27,35,39,94,93),(10,5,45,27,35,40,96,95),(10,5,46,27,36,41,98,97),(10,5,47,28,36,41,100,99),(10,5,48,28,37,42,102,101),(10,5,49,28,37,43,104,103),(10,5,50,29,37,43,106,106),(10,5,51,29,38,44,108,108),(10,5,52,29,38,44,110,110),(10,5,53,30,39,45,112,112),(10,5,54,30,39,46,114,114),(10,5,55,30,40,46,116,116),(10,5,56,31,40,47,118,118),(10,5,57,31,41,48,120,120),(10,5,58,31,41,48,123,123),(10,5,59,32,42,49,125,125),(10,5,60,32,42,50,127,127),(10,5,61,33,42,51,129,129),(10,5,62,33,43,51,131,131),(10,5,63,33,43,52,133,134),(10,5,64,34,44,53,135,136),(10,5,65,34,44,53,138,138),(10,5,66,34,45,54,140,141),(10,5,67,35,45,55,142,143),(10,5,68,35,46,56,144,145),(10,5,69,36,46,56,147,148),(10,5,70,36,47,57,149,150),(10,8,1,17,22,19,27,21),(10,8,2,17,22,19,28,22),(10,8,3,17,22,20,30,24),(10,8,4,17,22,20,31,25),(10,8,5,17,23,20,32,26),(10,8,6,17,23,20,34,28),(10,8,7,18,23,21,35,29),(10,8,8,18,23,21,37,30),(10,8,9,18,23,21,38,32),(10,8,10,18,23,22,40,33),(10,8,11,18,24,22,41,35),(10,8,12,18,24,22,42,36),(10,8,13,18,24,23,44,37),(10,8,14,18,24,23,45,39),(10,8,15,18,24,23,47,40),(10,8,16,19,24,24,49,42),(10,8,17,19,25,24,50,43),(10,8,18,19,25,24,52,45),(10,8,19,19,25,25,53,46),(10,8,20,19,25,25,55,48),(10,8,21,19,25,26,57,50),(10,8,22,19,26,26,58,51),(10,8,23,20,26,26,60,53),(10,8,24,20,26,27,61,54),(10,8,25,20,26,27,63,56),(10,8,26,20,27,27,65,58),(10,8,27,20,27,28,67,59),(10,8,28,20,27,28,68,61),(10,8,29,21,27,29,70,63),(10,8,30,21,28,29,72,64),(10,8,31,21,28,30,74,66),(10,8,32,21,28,30,75,68),(10,8,33,21,28,30,77,70),(10,8,34,21,29,31,79,71),(10,8,35,22,29,31,81,73),(10,8,36,22,29,32,83,75),(10,8,37,22,29,32,85,77),(10,8,38,22,30,33,86,78),(10,8,39,22,30,33,88,80),(10,8,40,23,30,34,90,82),(10,8,41,23,31,34,92,84),(10,8,42,23,31,35,94,86),(10,8,43,23,31,35,96,88),(10,8,44,23,32,36,98,90),(10,8,45,24,32,36,100,92),(10,8,46,24,32,37,102,93),(10,8,47,24,32,37,104,95),(10,8,48,24,33,38,106,97),(10,8,49,25,33,38,108,99),(10,8,50,25,33,39,110,101),(10,8,51,25,34,39,112,103),(10,8,52,25,34,40,114,105),(10,8,53,25,35,40,117,107),(10,8,54,26,35,41,119,109),(10,8,55,26,35,41,121,111),(10,8,56,26,36,42,123,113),(10,8,57,26,36,42,125,116),(10,8,58,27,36,43,127,118),(10,8,59,27,37,43,130,120),(10,8,60,27,37,44,132,122),(10,8,61,27,37,45,134,124),(10,8,62,28,38,45,136,126),(10,8,63,28,38,46,139,128),(10,8,64,28,39,46,141,131),(10,8,65,29,39,47,143,133),(10,8,66,29,39,48,146,135),(10,8,67,29,40,48,148,137),(10,8,68,29,40,49,150,139),(10,8,69,30,41,49,153,142),(10,8,70,30,41,50,155,144),(10,9,1,17,22,20,26,21),(10,9,2,17,22,21,27,22),(10,9,3,18,23,21,28,23),(10,9,4,18,23,22,29,24),(10,9,5,18,23,22,31,26),(10,9,6,18,24,23,32,27),(10,9,7,19,24,23,33,28),(10,9,8,19,25,24,34,29),(10,9,9,19,25,25,36,30),(10,9,10,20,25,25,37,32),(10,9,11,20,26,26,38,33),(10,9,12,20,26,26,39,34),(10,9,13,21,27,27,41,36),(10,9,14,21,27,28,42,37),(10,9,15,21,27,28,43,38),(10,9,16,22,28,29,45,39),(10,9,17,22,28,30,46,41),(10,9,18,23,29,30,47,42),(10,9,19,23,29,31,49,43),(10,9,20,23,30,32,50,45),(10,9,21,24,30,32,51,46),(10,9,22,24,31,33,53,48),(10,9,23,24,31,34,54,49),(10,9,24,25,31,34,56,50),(10,9,25,25,32,35,57,52),(10,9,26,26,32,36,59,53),(10,9,27,26,33,37,60,55),(10,9,28,26,33,37,62,56),(10,9,29,27,34,38,63,58),(10,9,30,27,34,39,65,59),(10,9,31,28,35,40,66,61),(10,9,32,28,36,40,68,62),(10,9,33,29,36,41,69,64),(10,9,34,29,37,42,71,65),(10,9,35,29,37,43,73,67),(10,9,36,30,38,43,74,69),(10,9,37,30,38,44,76,70),(10,9,38,31,39,45,77,72),(10,9,39,31,39,46,79,73),(10,9,40,32,40,47,81,75),(10,9,41,32,41,48,82,77),(10,9,42,33,41,48,84,78),(10,9,43,33,42,49,86,80),(10,9,44,34,42,50,88,82),(10,9,45,34,43,51,89,83),(10,9,46,35,44,52,91,85),(10,9,47,35,44,53,93,87),(10,9,48,36,45,54,95,89),(10,9,49,36,45,54,96,90),(10,9,50,37,46,55,98,92),(10,9,51,37,47,56,100,94),(10,9,52,38,47,57,102,96),(10,9,53,38,48,58,104,97),(10,9,54,39,49,59,105,99),(10,9,55,39,49,60,107,101),(10,9,56,40,50,61,109,103),(10,9,57,40,51,62,111,105),(10,9,58,41,51,63,113,107),(10,9,59,42,52,64,115,108),(10,9,60,42,53,65,117,110),(10,9,61,43,53,66,119,112),(10,9,62,43,54,67,121,114),(10,9,63,44,55,68,123,116),(10,9,64,44,56,69,125,118),(10,9,65,45,56,70,127,120),(10,9,66,46,57,71,129,122),(10,9,67,46,58,72,131,124),(10,9,68,47,58,73,133,126),(10,9,69,47,59,74,135,128),(10,9,70,48,60,75,137,130),(11,1,1,24,17,21,21,22),(11,1,2,25,18,22,21,22),(11,1,3,27,19,23,21,23),(11,1,4,28,19,25,21,23),(11,1,5,29,20,26,21,23),(11,1,6,31,21,27,21,23),(11,1,7,32,22,28,21,24),(11,1,8,33,23,29,22,24),(11,1,9,35,24,31,22,24),(11,1,10,36,24,32,22,25),(11,1,11,37,25,33,22,25),(11,1,12,39,26,34,22,25),(11,1,13,40,27,36,22,26),(11,1,14,42,28,37,22,26),(11,1,15,43,29,38,22,26),(11,1,16,45,30,40,22,27),(11,1,17,46,31,41,23,27),(11,1,18,48,32,43,23,27),(11,1,19,49,33,44,23,28),(11,1,20,51,34,45,23,28),(11,1,21,52,34,47,23,28),(11,1,22,54,35,48,23,29),(11,1,23,55,36,50,23,29),(11,1,24,57,37,51,24,30),(11,1,25,59,38,52,24,30),(11,1,26,60,39,54,24,30),(11,1,27,62,40,55,24,31),(11,1,28,63,41,57,24,31),(11,1,29,65,43,58,24,32),(11,1,30,67,44,60,24,32),(11,1,31,69,45,62,25,32),(11,1,32,70,46,63,25,33),(11,1,33,72,47,65,25,33),(11,1,34,74,48,66,25,34),(11,1,35,75,49,68,25,34),(11,1,36,77,50,69,26,35),(11,1,37,79,51,71,26,35),(11,1,38,81,52,73,26,35),(11,1,39,83,53,74,26,36),(11,1,40,84,55,76,26,36),(11,1,41,86,56,78,27,37),(11,1,42,88,57,79,27,37),(11,1,43,90,58,81,27,38),(11,1,44,92,59,83,27,38),(11,1,45,94,60,85,27,39),(11,1,46,96,62,86,28,39),(11,1,47,98,63,88,28,40),(11,1,48,100,64,90,28,40),(11,1,49,102,65,92,28,41),(11,1,50,103,66,93,29,41),(11,1,51,105,68,95,29,42),(11,1,52,107,69,97,29,42),(11,1,53,109,70,99,29,43),(11,1,54,112,71,101,30,44),(11,1,55,114,73,103,30,44),(11,1,56,116,74,104,30,45),(11,1,57,118,75,106,30,45),(11,1,58,120,77,108,31,46),(11,1,59,122,78,110,31,46),(11,1,60,124,79,112,31,47),(11,1,61,126,81,114,31,48),(11,1,62,128,82,116,32,48),(11,1,63,130,83,118,32,49),(11,1,64,133,85,120,32,49),(11,1,65,135,86,122,33,50),(11,1,66,137,87,124,33,51),(11,1,67,139,89,126,33,51),(11,1,68,141,90,128,33,52),(11,1,69,144,92,130,34,52),(11,1,70,146,93,132,34,53),(11,2,1,23,17,21,21,23),(11,2,2,24,18,22,22,24),(11,2,3,25,18,23,22,24),(11,2,4,26,19,24,23,25),(11,2,5,27,19,25,24,26),(11,2,6,29,20,26,24,26),(11,2,7,30,21,27,25,27),(11,2,8,31,21,28,26,28),(11,2,9,32,22,29,26,29),(11,2,10,33,22,31,27,29),(11,2,11,34,23,32,28,30),(11,2,12,36,24,33,28,31),(11,2,13,37,24,34,29,32),(11,2,14,38,25,35,30,32),(11,2,15,39,26,36,31,33),(11,2,16,40,26,37,31,34),(11,2,17,42,27,39,32,35),(11,2,18,43,28,40,33,36),(11,2,19,44,28,41,34,37),(11,2,20,46,29,42,34,37),(11,2,21,47,30,44,35,38),(11,2,22,48,31,45,36,39),(11,2,23,50,31,46,37,40),(11,2,24,51,32,47,38,41),(11,2,25,52,33,49,38,42),(11,2,26,54,34,50,39,43),(11,2,27,55,34,51,40,44),(11,2,28,56,35,53,41,44),(11,2,29,58,36,54,42,45),(11,2,30,59,37,55,43,46),(11,2,31,61,37,57,43,47),(11,2,32,62,38,58,44,48),(11,2,33,64,39,59,45,49),(11,2,34,65,40,61,46,50),(11,2,35,67,41,62,47,51),(11,2,36,68,42,64,48,52),(11,2,37,70,42,65,49,53),(11,2,38,71,43,67,50,54),(11,2,39,73,44,68,51,55),(11,2,40,74,45,69,52,56),(11,2,41,76,46,71,53,57),(11,2,42,78,47,72,54,58),(11,2,43,79,47,74,55,59),(11,2,44,81,48,75,56,60),(11,2,45,82,49,77,57,61),(11,2,46,84,50,78,58,62),(11,2,47,86,51,80,59,64),(11,2,48,87,52,82,60,65),(11,2,49,89,53,83,61,66),(11,2,50,91,54,85,62,67),(11,2,51,92,55,86,63,68),(11,2,52,94,56,88,64,69),(11,2,53,96,57,90,65,70),(11,2,54,97,58,91,66,71),(11,2,55,99,59,93,67,73),(11,2,56,101,60,95,68,74),(11,2,57,103,61,96,69,75),(11,2,58,105,62,98,70,76),(11,2,59,106,63,100,71,77),(11,2,60,108,64,101,72,78),(11,2,61,110,65,103,74,80),(11,2,62,112,66,105,75,81),(11,2,63,114,67,106,76,82),(11,2,64,116,68,108,77,83),(11,2,65,117,69,110,78,85),(11,2,66,119,70,112,79,86),(11,2,67,121,71,114,80,87),(11,2,68,123,72,115,82,88),(11,2,69,125,73,117,83,90),(11,2,70,127,74,119,84,91),(11,3,1,21,20,20,21,23),(11,3,2,21,21,21,22,24),(11,3,3,22,23,22,22,24),(11,3,4,22,24,23,23,25),(11,3,5,23,25,24,23,25),(11,3,6,23,27,25,24,26),(11,3,7,24,28,26,24,27),(11,3,8,24,30,27,25,27),(11,3,9,25,31,27,26,28),(11,3,10,25,33,28,26,29),(11,3,11,25,34,29,27,29),(11,3,12,26,36,30,28,30),(11,3,13,26,37,31,28,31),(11,3,14,27,39,32,29,32),(11,3,15,27,40,34,30,32),(11,3,16,28,42,35,30,33),(11,3,17,28,43,36,31,34),(11,3,18,29,45,37,32,35),(11,3,19,29,47,38,32,35),(11,3,20,30,48,39,33,36),(11,3,21,31,50,40,34,37),(11,3,22,31,51,41,34,38),(11,3,23,32,53,42,35,38),(11,3,24,32,55,43,36,39),(11,3,25,33,57,44,37,40),(11,3,26,33,58,46,37,41),(11,3,27,34,60,47,38,42),(11,3,28,35,62,48,39,42),(11,3,29,35,63,49,40,43),(11,3,30,36,65,50,40,44),(11,3,31,36,67,52,41,45),(11,3,32,37,69,53,42,46),(11,3,33,38,71,54,43,47),(11,3,34,38,72,55,44,48),(11,3,35,39,74,57,44,48),(11,3,36,39,76,58,45,49),(11,3,37,40,78,59,46,50),(11,3,38,41,80,60,47,51),(11,3,39,41,82,62,48,52),(11,3,40,42,84,63,49,53),(11,3,41,43,86,64,50,54),(11,3,42,43,88,66,50,55),(11,3,43,44,90,67,51,56),(11,3,44,45,91,68,52,57),(11,3,45,45,93,70,53,58),(11,3,46,46,95,71,54,59),(11,3,47,47,98,72,55,60),(11,3,48,48,100,74,56,61),(11,3,49,48,102,75,57,62),(11,3,50,49,104,77,58,63),(11,3,51,50,106,78,59,64),(11,3,52,51,108,79,60,65),(11,3,53,51,110,81,61,66),(11,3,54,52,112,82,61,67),(11,3,55,53,114,84,62,68),(11,3,56,54,116,85,63,69),(11,3,57,54,118,87,64,70),(11,3,58,55,121,88,65,71),(11,3,59,56,123,90,66,72),(11,3,60,57,125,91,67,74),(11,3,61,58,127,93,68,75),(11,3,62,58,130,94,69,76),(11,3,63,59,132,96,71,77),(11,3,64,60,134,97,72,78),(11,3,65,61,136,99,73,79),(11,3,66,62,139,101,74,80),(11,3,67,62,141,102,75,81),(11,3,68,63,143,104,76,83),(11,3,69,64,146,105,77,84),(11,3,70,65,148,107,78,85),(11,5,1,21,17,19,23,25),(11,5,2,21,17,19,24,26),(11,5,3,21,17,20,26,28),(11,5,4,21,18,20,27,29),(11,5,5,22,18,20,28,30),(11,5,6,22,18,21,30,32),(11,5,7,22,18,21,31,33),(11,5,8,22,19,22,32,35),(11,5,9,22,19,22,34,36),(11,5,10,22,19,22,35,38),(11,5,11,23,19,23,37,39),(11,5,12,23,20,23,38,41),(11,5,13,23,20,24,39,42),(11,5,14,23,20,24,41,44),(11,5,15,23,20,25,42,45),(11,5,16,24,21,25,44,47),(11,5,17,24,21,25,45,48),(11,5,18,24,21,26,47,50),(11,5,19,24,22,26,48,51),(11,5,20,24,22,27,50,53),(11,5,21,25,22,27,51,55),(11,5,22,25,22,28,53,56),(11,5,23,25,23,28,55,58),(11,5,24,25,23,29,56,60),(11,5,25,25,23,29,58,61),(11,5,26,26,24,30,60,63),(11,5,27,26,24,30,61,65),(11,5,28,26,24,31,63,66),(11,5,29,26,25,31,65,68),(11,5,30,27,25,32,66,70),(11,5,31,27,25,32,68,72),(11,5,32,27,26,33,70,73),(11,5,33,27,26,33,71,75),(11,5,34,28,26,34,73,77),(11,5,35,28,27,34,75,79),(11,5,36,28,27,35,77,81),(11,5,37,29,28,35,79,83),(11,5,38,29,28,36,80,85),(11,5,39,29,28,37,82,86),(11,5,40,29,29,37,84,88),(11,5,41,30,29,38,86,90),(11,5,42,30,29,38,88,92),(11,5,43,30,30,39,90,94),(11,5,44,31,30,39,91,96),(11,5,45,31,31,40,93,98),(11,5,46,31,31,41,95,100),(11,5,47,32,31,41,97,102),(11,5,48,32,32,42,99,104),(11,5,49,32,32,43,101,106),(11,5,50,33,33,43,103,108),(11,5,51,33,33,44,105,110),(11,5,52,33,34,44,107,113),(11,5,53,34,34,45,109,115),(11,5,54,34,34,46,111,117),(11,5,55,34,35,46,113,119),(11,5,56,35,35,47,115,121),(11,5,57,35,36,48,118,123),(11,5,58,35,36,48,120,126),(11,5,59,36,37,49,122,128),(11,5,60,36,37,50,124,130),(11,5,61,36,38,51,126,132),(11,5,62,37,38,51,128,134),(11,5,63,37,39,52,130,137),(11,5,64,38,39,53,133,139),(11,5,65,38,40,53,135,141),(11,5,66,38,40,54,137,144),(11,5,67,39,40,55,139,146),(11,5,68,39,41,56,141,148),(11,5,69,40,41,56,144,151),(11,5,70,40,42,57,146,153),(11,7,1,22,17,20,22,24),(11,7,2,23,17,21,23,25),(11,7,3,24,18,22,24,26),(11,7,4,25,18,23,25,27),(11,7,5,25,19,24,26,28),(11,7,6,26,19,25,27,29),(11,7,7,27,20,26,28,30),(11,7,8,28,20,27,28,31),(11,7,9,29,21,28,29,32),(11,7,10,30,21,29,30,33),(11,7,11,31,22,30,31,35),(11,7,12,32,22,31,32,36),(11,7,13,33,23,32,33,37),(11,7,14,34,23,33,34,38),(11,7,15,34,24,35,35,39),(11,7,16,35,24,36,36,40),(11,7,17,36,25,37,38,42),(11,7,18,37,25,38,39,43),(11,7,19,38,26,39,40,44),(11,7,20,39,26,40,41,45),(11,7,21,40,27,41,42,46),(11,7,22,41,27,43,43,48),(11,7,23,43,28,44,44,49),(11,7,24,44,28,45,45,50),(11,7,25,45,29,46,46,51),(11,7,26,46,30,47,48,53),(11,7,27,47,30,49,49,54),(11,7,28,48,31,50,50,55),(11,7,29,49,31,51,51,57),(11,7,30,50,32,53,52,58),(11,7,31,51,33,54,53,59),(11,7,32,52,33,55,55,61),(11,7,33,53,34,56,56,62),(11,7,34,55,34,58,57,64),(11,7,35,56,35,59,58,65),(11,7,36,57,36,60,60,66),(11,7,37,58,36,62,61,68),(11,7,38,59,37,63,62,69),(11,7,39,61,38,65,63,71),(11,7,40,62,38,66,65,72),(11,7,41,63,39,67,66,74),(11,7,42,64,40,69,67,75),(11,7,43,65,40,70,69,77),(11,7,44,67,41,72,70,78),(11,7,45,68,42,73,71,80),(11,7,46,69,42,75,73,81),(11,7,47,71,43,76,74,83),(11,7,48,72,44,78,76,84),(11,7,49,73,45,79,77,86),(11,7,50,74,45,81,78,88),(11,7,51,76,46,82,80,89),(11,7,52,77,47,84,81,91),(11,7,53,78,47,85,83,92),(11,7,54,80,48,87,84,94),(11,7,55,81,49,88,86,96),(11,7,56,83,50,90,87,97),(11,7,57,84,50,91,89,99),(11,7,58,85,51,93,90,101),(11,7,59,87,52,95,92,102),(11,7,60,88,53,96,93,104),(11,7,61,90,54,98,95,106),(11,7,62,91,54,99,96,108),(11,7,63,93,55,101,98,109),(11,7,64,94,56,103,99,111),(11,7,65,95,57,104,101,113),(11,7,66,97,58,106,103,115),(11,7,67,98,58,108,104,117),(11,7,68,100,59,110,106,118),(11,7,69,101,60,111,107,120),(11,7,70,103,61,113,109,122),(11,8,1,21,17,19,24,24),(11,8,2,21,17,19,25,25),(11,8,3,21,17,20,27,27),(11,8,4,21,17,20,28,28),(11,8,5,21,18,20,29,29),(11,8,6,21,18,20,31,31),(11,8,7,21,18,21,32,32),(11,8,8,22,18,21,34,33),(11,8,9,22,18,21,35,35),(11,8,10,22,19,22,37,36),(11,8,11,22,19,22,38,37),(11,8,12,22,19,22,40,39),(11,8,13,22,19,23,41,40),(11,8,14,22,19,23,43,42),(11,8,15,22,19,23,44,43),(11,8,16,22,20,24,46,45),(11,8,17,23,20,24,47,46),(11,8,18,23,20,24,49,48),(11,8,19,23,20,25,50,49),(11,8,20,23,21,25,52,51),(11,8,21,23,21,26,54,52),(11,8,22,23,21,26,55,54),(11,8,23,23,21,26,57,56),(11,8,24,24,21,27,59,57),(11,8,25,24,22,27,60,59),(11,8,26,24,22,27,62,60),(11,8,27,24,22,28,64,62),(11,8,28,24,22,28,65,64),(11,8,29,24,23,29,67,65),(11,8,30,24,23,29,69,67),(11,8,31,25,23,30,71,69),(11,8,32,25,23,30,73,71),(11,8,33,25,24,30,74,72),(11,8,34,25,24,31,76,74),(11,8,35,25,24,31,78,76),(11,8,36,26,24,32,80,78),(11,8,37,26,25,32,82,79),(11,8,38,26,25,33,84,81),(11,8,39,26,25,33,86,83),(11,8,40,26,26,34,87,85),(11,8,41,27,26,34,89,87),(11,8,42,27,26,35,91,89),(11,8,43,27,27,35,93,91),(11,8,44,27,27,36,95,92),(11,8,45,27,27,36,97,94),(11,8,46,28,27,37,99,96),(11,8,47,28,28,37,101,98),(11,8,48,28,28,38,103,100),(11,8,49,28,28,38,105,102),(11,8,50,29,29,39,107,104),(11,8,51,29,29,39,110,106),(11,8,52,29,29,40,112,108),(11,8,53,29,30,40,114,110),(11,8,54,30,30,41,116,112),(11,8,55,30,30,41,118,114),(11,8,56,30,31,42,120,116),(11,8,57,30,31,42,122,118),(11,8,58,31,31,43,125,121),(11,8,59,31,32,43,127,123),(11,8,60,31,32,44,129,125),(11,8,61,31,33,45,131,127),(11,8,62,32,33,45,133,129),(11,8,63,32,33,46,136,131),(11,8,64,32,34,46,138,134),(11,8,65,33,34,47,140,136),(11,8,66,33,34,48,143,138),(11,8,67,33,35,48,145,140),(11,8,68,33,35,49,147,142),(11,8,69,34,36,49,150,145),(11,8,70,34,36,50,152,147);
/*!40000 ALTER TABLE `player_levelstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo`
--

DROP TABLE IF EXISTS `playercreateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo`
--

LOCK TABLES `playercreateinfo` WRITE;
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
INSERT INTO `playercreateinfo` VALUES (1,1,0,12,-8949,-132,84),(1,2,0,12,-8949,-132,84),(1,4,0,12,-8949,-132,84),(1,5,0,12,-8949,-132,84),(1,8,0,12,-8949,-132,84),(1,9,0,12,-8949,-132,84),(2,1,1,14,-618,-4251,39),(2,3,1,14,-618,-4251,39),(2,4,1,14,-618,-4251,39),(2,7,1,14,-618,-4251,39),(2,9,1,14,-618,-4251,39),(3,1,0,1,-6240,331,383),(3,2,0,1,-6240,331,383),(3,3,0,1,-6240,331,383),(3,4,0,1,-6240,331,383),(3,5,0,1,-6240,331,383),(4,1,1,141,10311,832,1327),(4,3,1,141,10311,832,1327),(4,4,1,141,10311,832,1327),(4,5,1,141,10311,832,1327),(4,11,1,141,10311,832,1327),(5,1,0,85,1676,1677,122),(5,4,0,85,1676,1677,122),(5,5,0,85,1676,1677,122),(5,8,0,85,1676,1677,122),(5,9,0,85,1676,1677,122),(6,1,1,215,-2917,-257,53),(6,3,1,215,-2917,-257,53),(6,7,1,215,-2917,-257,53),(6,11,1,215,-2917,-257,53),(7,1,0,1,-6240,331,383),(7,4,0,1,-6340,331,383),(7,8,0,1,-6340,331,383),(7,9,0,1,-6340,331,383),(8,1,1,14,-618,-4251,39),(8,3,1,14,-618,-4251,39),(8,4,1,14,-618,-4251,39),(8,5,1,14,-618,-4251,39),(8,7,1,14,-618,-4251,39),(8,8,1,14,-618,-4251,39),(10,2,530,3431,10349.6,-6357.29,33.4026),(10,3,530,3431,10349.6,-6357.29,33.4026),(10,4,530,3431,10349.6,-6357.29,33.4026),(10,5,530,3431,10349.6,-6357.29,33.4026),(10,8,530,3431,10349.6,-6357.29,33.4026),(10,9,530,3431,10349.6,-6357.29,33.4026),(11,1,530,3526,-3961.64,-13931.2,100.615),(11,2,530,3526,-3961.64,-13931.2,100.615),(11,3,530,3526,-3961.64,-13931.2,100.615),(11,5,530,3526,-3961.64,-13931.2,100.615),(11,7,530,3526,-3961.64,-13931.2,100.615),(11,8,530,3526,-3961.64,-13931.2,100.615);
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_action`
--

DROP TABLE IF EXISTS `playercreateinfo_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_action` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` smallint(5) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`,`button`),
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_action`
--

LOCK TABLES `playercreateinfo_action` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_action` DISABLE KEYS */;
INSERT INTO `playercreateinfo_action` VALUES (1,1,72,6603,0),(1,1,73,78,0),(1,1,83,117,128),(1,2,0,6603,0),(1,2,1,21084,0),(1,2,2,635,0),(1,2,10,159,128),(1,2,11,2070,128),(1,4,0,6603,0),(1,4,1,1752,0),(1,4,2,2098,0),(1,4,3,2764,0),(1,4,11,2070,128),(1,5,0,6603,0),(1,5,1,585,0),(1,5,2,2050,0),(1,5,10,159,128),(1,5,11,2070,128),(1,8,0,6603,0),(1,8,1,133,0),(1,8,2,168,0),(1,8,10,159,128),(1,8,11,2070,128),(1,9,0,6603,0),(1,9,1,686,0),(1,9,2,687,0),(1,9,10,159,128),(1,9,11,4604,128),(2,1,72,6603,0),(2,1,73,78,0),(2,1,83,117,128),(2,3,0,6603,0),(2,3,1,2973,0),(2,3,2,75,0),(2,3,10,159,128),(2,3,11,117,128),(2,4,0,6603,0),(2,4,1,1752,0),(2,4,2,2098,0),(2,4,11,117,128),(2,7,0,6603,0),(2,7,1,403,0),(2,7,2,331,0),(2,7,10,159,128),(2,7,11,117,128),(2,9,0,6603,0),(2,9,1,686,0),(2,9,2,687,0),(2,9,10,159,128),(2,9,11,117,128),(3,1,72,6603,0),(3,1,73,78,0),(3,1,83,117,128),(3,2,0,6603,0),(3,2,1,21084,0),(3,2,2,635,0),(3,2,10,159,128),(3,2,11,4540,128),(3,3,0,6603,0),(3,3,1,2973,0),(3,3,2,75,0),(3,3,10,159,128),(3,3,11,117,128),(3,4,0,6603,0),(3,4,1,1752,0),(3,4,2,2098,0),(3,4,3,2764,0),(3,4,11,4540,128),(3,5,0,6603,0),(3,5,1,585,0),(3,5,2,2050,0),(3,5,10,159,128),(3,5,11,4540,128),(4,1,72,6603,0),(4,1,73,78,0),(4,1,74,20580,0),(4,1,83,117,128),(4,3,0,6603,0),(4,3,1,2973,0),(4,3,2,75,0),(4,3,3,20580,0),(4,3,10,159,128),(4,3,11,117,128),(4,4,0,6603,0),(4,4,1,1752,0),(4,4,2,2098,0),(4,4,3,2764,0),(4,4,4,20580,0),(4,4,11,4540,128),(4,5,0,6603,0),(4,5,1,585,0),(4,5,2,2050,0),(4,5,3,20580,0),(4,5,10,159,128),(4,5,11,2070,128),(4,11,0,6603,0),(4,11,1,5176,0),(4,11,2,5185,0),(4,11,3,20580,0),(4,11,10,159,128),(4,11,11,4536,128),(5,1,72,6603,0),(5,1,73,78,0),(5,1,83,4604,128),(5,4,0,6603,0),(5,4,1,1752,0),(5,4,2,2098,0),(5,4,3,2764,0),(5,4,11,4604,128),(5,5,0,6603,0),(5,5,1,585,0),(5,5,2,2050,0),(5,5,10,159,128),(5,5,11,4604,128),(5,8,0,6603,0),(5,8,1,133,0),(5,8,2,168,0),(5,8,10,159,128),(5,8,11,4604,128),(5,9,0,6603,0),(5,9,1,686,0),(5,9,2,687,0),(5,9,10,159,128),(5,9,11,4604,128),(6,1,72,6603,0),(6,1,73,78,0),(6,1,74,20549,0),(6,1,83,4540,128),(6,3,0,6603,0),(6,3,1,2973,0),(6,3,2,75,0),(6,3,3,20549,0),(6,3,10,159,128),(6,3,11,117,128),(6,7,0,6603,0),(6,7,1,403,0),(6,7,2,331,0),(6,7,3,20549,0),(6,7,10,159,128),(6,7,11,4604,128),(6,11,0,6603,0),(6,11,1,5176,0),(6,11,2,5185,0),(6,11,3,20549,0),(6,11,10,159,128),(6,11,11,4536,128),(7,1,72,6603,0),(7,1,73,78,0),(7,1,83,117,128),(7,4,0,6603,0),(7,4,1,1752,0),(7,4,2,2098,0),(7,4,3,2764,0),(7,4,11,117,128),(7,8,0,6603,0),(7,8,1,133,0),(7,8,2,168,0),(7,8,10,159,128),(7,8,11,4536,128),(7,9,0,6603,0),(7,9,1,686,0),(7,9,2,687,0),(7,9,10,159,128),(7,9,11,4604,128),(8,1,72,6603,0),(8,1,73,78,0),(8,1,74,2764,0),(8,1,83,117,128),(8,3,0,6603,0),(8,3,1,2973,0),(8,3,2,75,0),(8,3,10,159,128),(8,3,11,4604,128),(8,4,0,6603,0),(8,4,1,1752,0),(8,4,2,2098,0),(8,4,3,2764,0),(8,4,11,117,128),(8,5,0,6603,0),(8,5,1,585,0),(8,5,2,2050,0),(8,5,10,159,128),(8,5,11,4540,128),(8,7,0,6603,0),(8,7,1,403,0),(8,7,2,331,0),(8,7,10,159,128),(8,7,11,117,128),(8,8,0,6603,0),(8,8,1,133,0),(8,8,2,168,0),(8,8,10,159,128),(8,8,11,117,128),(10,2,0,6603,0),(10,2,1,21084,0),(10,2,2,635,0),(10,2,3,28734,0),(10,2,4,28730,0),(10,2,10,159,128),(10,2,11,20857,128),(10,3,0,6603,0),(10,3,1,2973,0),(10,3,2,75,0),(10,3,3,28734,0),(10,3,4,28730,0),(10,3,10,159,128),(10,3,11,20857,128),(10,4,0,6603,0),(10,4,1,1752,0),(10,4,2,2098,0),(10,4,3,2764,0),(10,4,4,28734,0),(10,4,5,25046,0),(10,4,11,20857,128),(10,5,0,6603,0),(10,5,1,585,0),(10,5,2,2050,0),(10,5,3,28734,0),(10,5,4,28730,0),(10,5,10,159,128),(10,5,11,20857,128),(10,8,0,6603,0),(10,8,1,133,0),(10,8,2,168,0),(10,8,3,28734,0),(10,8,4,28730,0),(10,8,10,159,128),(10,8,11,20857,128),(10,9,0,6603,0),(10,9,1,686,0),(10,9,2,687,0),(10,9,3,28734,0),(10,9,4,28730,0),(10,9,10,159,128),(10,9,11,20857,128),(11,1,0,6603,0),(11,1,72,6603,0),(11,1,73,78,0),(11,1,74,28880,0),(11,1,83,4540,128),(11,1,84,6603,0),(11,1,96,6603,0),(11,1,108,6603,0),(11,2,0,6603,0),(11,2,1,21084,0),(11,2,2,635,0),(11,2,3,28880,0),(11,2,10,159,128),(11,2,11,4540,128),(11,2,83,4540,128),(11,3,0,6603,0),(11,3,1,2973,0),(11,3,2,75,0),(11,3,3,28880,0),(11,3,10,159,128),(11,3,11,4540,128),(11,3,72,6603,0),(11,3,73,2973,0),(11,3,74,75,0),(11,3,82,159,128),(11,3,83,4540,128),(11,5,0,6603,0),(11,5,1,585,0),(11,5,2,2050,0),(11,5,3,28880,0),(11,5,10,159,128),(11,5,11,4540,128),(11,5,83,4540,128),(11,7,0,6603,0),(11,7,1,403,0),(11,7,2,331,0),(11,7,3,28880,0),(11,7,10,159,128),(11,7,11,4540,128),(11,8,0,6603,0),(11,8,1,133,0),(11,8,2,168,0),(11,8,3,28880,0),(11,8,10,159,128),(11,8,11,4540,128),(11,8,83,4540,128);
/*!40000 ALTER TABLE `playercreateinfo_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_item`
--

DROP TABLE IF EXISTS `playercreateinfo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_item` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `amount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_item`
--

LOCK TABLES `playercreateinfo_item` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_spell`
--

DROP TABLE IF EXISTS `playercreateinfo_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_spell` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_spell`
--

LOCK TABLES `playercreateinfo_spell` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spell` DISABLE KEYS */;
INSERT INTO `playercreateinfo_spell` VALUES (1,1,78,'Heroic Strike'),(1,1,81,'Dodge'),(1,1,107,'Block'),(1,1,196,'One-Handed Axes'),(1,1,198,'One-Handed Maces'),(1,1,201,'One-Handed Swords'),(1,1,203,'Unarmed'),(1,1,204,'Defense'),(1,1,522,'SPELLDEFENSE(DND)'),(1,1,668,'Language Common'),(1,1,2382,'Generic'),(1,1,2457,'Battle Stance'),(1,1,2479,'Honorless Target'),(1,1,3050,'Detect'),(1,1,3365,'Opening'),(1,1,5301,'Defensive State(DND)'),(1,1,6233,'Closing'),(1,1,6246,'Closing'),(1,1,6247,'Opening'),(1,1,6477,'Opening'),(1,1,6478,'Opening'),(1,1,6603,'Attack'),(1,1,7266,'Duel'),(1,1,7267,'Grovel'),(1,1,7355,'Stuck'),(1,1,8386,'Attacking'),(1,1,8737,'Mail'),(1,1,9077,'Leather'),(1,1,9078,'Cloth'),(1,1,9116,'Shield'),(1,1,9125,'Generic'),(1,1,20597,'Sword Specialization'),(1,1,20598,'The Human Spirit'),(1,1,20599,'Diplomacy'),(1,1,20600,'Perception'),(1,1,20864,'Mace Specialization'),(1,1,21651,'Opening'),(1,1,21652,'Closing'),(1,1,22027,'Remove Insignia'),(1,1,22810,'Opening - No Text'),(1,1,32215,'Victorious State'),(1,2,81,'Dodge'),(1,2,107,'Block'),(1,2,198,'One-Handed Maces'),(1,2,199,'Two-Handed Maces'),(1,2,203,'Unarmed'),(1,2,204,'Defense'),(1,2,522,'SPELLDEFENSE(DND)'),(1,2,635,'Holy Light'),(1,2,668,'Language Common'),(1,2,2382,'Generic'),(1,2,2479,'Honorless Target'),(1,2,3050,'Detect'),(1,2,3365,'Opening'),(1,2,6233,'Closing'),(1,2,6246,'Closing'),(1,2,6247,'Opening'),(1,2,6477,'Opening'),(1,2,6478,'Opening'),(1,2,6603,'Attack'),(1,2,7266,'Duel'),(1,2,7267,'Grovel'),(1,2,7355,'Stuck'),(1,2,8386,'Attacking'),(1,2,8737,'Mail'),(1,2,9077,'Leather'),(1,2,9078,'Cloth'),(1,2,9116,'Shield'),(1,2,9125,'Generic'),(1,2,21084,'Seal of Righteousness'),(1,2,20597,'Sword Specialization'),(1,2,20598,'The Human Spirit'),(1,2,20599,'Diplomacy'),(1,2,20600,'Perception'),(1,2,20864,'Mace Specialization'),(1,2,21651,'Opening'),(1,2,21652,'Closing'),(1,2,22027,'Remove Insignia'),(1,2,22810,'Opening - No Text'),(1,2,27762,'Libram'),(1,4,81,'Dodge'),(1,4,203,'Unarmed'),(1,4,204,'Defense'),(1,4,522,'SPELLDEFENSE(DND)'),(1,4,668,'Language Common'),(1,4,1180,'Daggers'),(1,4,1752,'Sinister Strike'),(1,4,2098,'Eviscerate'),(1,4,2382,'Generic'),(1,4,2479,'Honorless Target'),(1,4,2567,'Thrown'),(1,4,2764,'Throw'),(1,4,3050,'Detect'),(1,4,3365,'Opening'),(1,4,6233,'Closing'),(1,4,6246,'Closing'),(1,4,6247,'Opening'),(1,4,6477,'Opening'),(1,4,6478,'Opening'),(1,4,6603,'Attack'),(1,4,7266,'Duel'),(1,4,7267,'Grovel'),(1,4,7355,'Stuck'),(1,4,8386,'Attacking'),(1,4,9077,'Leather'),(1,4,9078,'Cloth'),(1,4,9125,'Generic'),(1,4,16092,'Defensive State(DND)'),(1,4,20597,'Sword Specialization'),(1,4,20598,'The Human Spirit'),(1,4,20599,'Diplomacy'),(1,4,20600,'Perception'),(1,4,20864,'Mace Specialization'),(1,4,21184,'Rogue Passive(DND)'),(1,4,21651,'Opening'),(1,4,21652,'Closing'),(1,4,22027,'Remove Insignia'),(1,4,22810,'Opening - No Text'),(1,5,81,'Dodge'),(1,5,198,'One-Handed Maces'),(1,5,203,'Unarmed'),(1,5,204,'Defense'),(1,5,522,'SPELLDEFENSE(DND)'),(1,5,585,'Smite'),(1,5,668,'Language Common'),(1,5,2050,'Lesser Heal'),(1,5,2382,'Generic'),(1,5,2479,'Honorless Target'),(1,5,3050,'Detect'),(1,5,3365,'Opening'),(1,5,5009,'Wands'),(1,5,5019,'Shoot'),(1,5,6233,'Closing'),(1,5,6246,'Closing'),(1,5,6247,'Opening'),(1,5,6477,'Opening'),(1,5,6478,'Opening'),(1,5,6603,'Attack'),(1,5,7266,'Duel'),(1,5,7267,'Grovel'),(1,5,7355,'Stuck'),(1,5,8386,'Attacking'),(1,5,9078,'Cloth'),(1,5,9125,'Generic'),(1,5,20597,'Sword Specialization'),(1,5,20598,'The Human Spirit'),(1,5,20599,'Diplomacy'),(1,5,20600,'Perception'),(1,5,20864,'Mace Specialization'),(1,5,21651,'Opening'),(1,5,21652,'Closing'),(1,5,22027,'Remove Insignia'),(1,5,22810,'Opening - No Text'),(1,8,81,'Dodge'),(1,8,133,'Fireball'),(1,8,168,'Frost Armor'),(1,8,203,'Unarmed'),(1,8,204,'Defense'),(1,8,227,'Staves'),(1,8,522,'SPELLDEFENSE(DND)'),(1,8,668,'Language Common'),(1,8,2382,'Generic'),(1,8,2479,'Honorless Target'),(1,8,3050,'Detect'),(1,8,3365,'Opening'),(1,8,5009,'Wands'),(1,8,5019,'Shoot'),(1,8,6233,'Closing'),(1,8,6246,'Closing'),(1,8,6247,'Opening'),(1,8,6477,'Opening'),(1,8,6478,'Opening'),(1,8,6603,'Attack'),(1,8,7266,'Duel'),(1,8,7267,'Grovel'),(1,8,7355,'Stuck'),(1,8,8386,'Attacking'),(1,8,9078,'Cloth'),(1,8,9125,'Generic'),(1,8,20597,'Sword Specialization'),(1,8,20598,'The Human Spirit'),(1,8,20599,'Diplomacy'),(1,8,20600,'Perception'),(1,8,20864,'Mace Specialization'),(1,8,21651,'Opening'),(1,8,21652,'Closing'),(1,8,22027,'Remove Insignia'),(1,8,22810,'Opening - No Text'),(1,9,81,'Dodge'),(1,9,203,'Unarmed'),(1,9,204,'Defense'),(1,9,522,'SPELLDEFENSE(DND)'),(1,9,668,'Language Common'),(1,9,686,'Shadow Bolt'),(1,9,687,'Demon Skin'),(1,9,1180,'Daggers'),(1,9,2382,'Generic'),(1,9,2479,'Honorless Target'),(1,9,3050,'Detect'),(1,9,3365,'Opening'),(1,9,5009,'Wands'),(1,9,5019,'Shoot'),(1,9,6233,'Closing'),(1,9,6246,'Closing'),(1,9,6247,'Opening'),(1,9,6477,'Opening'),(1,9,6478,'Opening'),(1,9,6603,'Attack'),(1,9,7266,'Duel'),(1,9,7267,'Grovel'),(1,9,7355,'Stuck'),(1,9,8386,'Attacking'),(1,9,9078,'Cloth'),(1,9,9125,'Generic'),(1,9,20597,'Sword Specialization'),(1,9,20598,'The Human Spirit'),(1,9,20599,'Diplomacy'),(1,9,20600,'Perception'),(1,9,20864,'Mace Specialization'),(1,9,21651,'Opening'),(1,9,21652,'Closing'),(1,9,22027,'Remove Insignia'),(1,9,22810,'Opening - No Text'),(2,1,78,'Heroic Strike'),(2,1,81,'Dodge'),(2,1,107,'Block'),(2,1,196,'One-Handed Axes'),(2,1,197,'Two-Handed Axes'),(2,1,201,'One-Handed Swords'),(2,1,203,'Unarmed'),(2,1,204,'Defense'),(2,1,522,'SPELLDEFENSE(DND)'),(2,1,669,'Language Orcish'),(2,1,2382,'Generic'),(2,1,2457,'Battle Stance'),(2,1,2479,'Honorless Target'),(2,1,3050,'Detect'),(2,1,3365,'Opening'),(2,1,5301,'Defensive State(DND)'),(2,1,6233,'Closing'),(2,1,6246,'Closing'),(2,1,6247,'Opening'),(2,1,6477,'Opening'),(2,1,6478,'Opening'),(2,1,6603,'Attack'),(2,1,7266,'Duel'),(2,1,7267,'Grovel'),(2,1,7355,'Stuck'),(2,1,8386,'Attacking'),(2,1,8737,'Mail'),(2,1,9077,'Leather'),(2,1,9078,'Cloth'),(2,1,9116,'Shield'),(2,1,9125,'Generic'),(2,1,20572,'Blood Fury'),(2,1,20573,'Hardiness'),(2,1,20574,'Axe Specialization'),(2,1,21563,'Command'),(2,1,21651,'Opening'),(2,1,21652,'Closing'),(2,1,22027,'Remove Insignia'),(2,1,22810,'Opening - No Text'),(2,1,32215,'Victorious State'),(2,3,75,'Auto Shot'),(2,3,81,'Dodge'),(2,3,196,'One-Handed Axes'),(2,3,203,'Unarmed'),(2,3,204,'Defense'),(2,3,264,'Bows'),(2,3,522,'SPELLDEFENSE(DND)'),(2,3,669,'Language Orcish'),(2,3,2382,'Generic'),(2,3,2479,'Honorless Target'),(2,3,2973,'Raptor Strike'),(2,3,3050,'Detect'),(2,3,3365,'Opening'),(2,3,6233,'Closing'),(2,3,6246,'Closing'),(2,3,6247,'Opening'),(2,3,6477,'Opening'),(2,3,6478,'Opening'),(2,3,6603,'Attack'),(2,3,7266,'Duel'),(2,3,7267,'Grovel'),(2,3,7355,'Stuck'),(2,3,8386,'Attacking'),(2,3,9077,'Leather'),(2,3,9078,'Cloth'),(2,3,9125,'Generic'),(2,3,13358,'Defensive State(DND)'),(2,3,20572,'Blood Fury'),(2,3,20573,'Hardiness'),(2,3,20574,'Axe Specialization'),(2,3,20576,'Command'),(2,3,21651,'Opening'),(2,3,21652,'Closing'),(2,3,22027,'Remove Insignia'),(2,3,22810,'Opening - No Text'),(2,3,24949,'Defensive State 2(DND)'),(2,3,34082,'Advantaged State(DND)'),(2,4,81,'Dodge'),(2,4,203,'Unarmed'),(2,4,204,'Defense'),(2,4,522,'SPELLDEFENSE(DND)'),(2,4,669,'Language Orcish'),(2,4,1180,'Daggers'),(2,4,1752,'Sinister Strike'),(2,4,2098,'Eviscerate'),(2,4,2382,'Generic'),(2,4,2479,'Honorless Target'),(2,4,2567,'Thrown'),(2,4,2764,'Throw'),(2,4,3050,'Detect'),(2,4,3365,'Opening'),(2,4,6233,'Closing'),(2,4,6246,'Closing'),(2,4,6247,'Opening'),(2,4,6477,'Opening'),(2,4,6478,'Opening'),(2,4,6603,'Attack'),(2,4,7266,'Duel'),(2,4,7267,'Grovel'),(2,4,7355,'Stuck'),(2,4,8386,'Attacking'),(2,4,9077,'Leather'),(2,4,9078,'Cloth'),(2,4,9125,'Generic'),(2,4,16092,'Defensive State(DND)'),(2,4,20572,'Blood Fury'),(2,4,20573,'Hardiness'),(2,4,20574,'Axe Specialization'),(2,4,21184,'Rogue Passive(DND)'),(2,4,21563,'Command'),(2,4,21651,'Opening'),(2,4,21652,'Closing'),(2,4,22027,'Remove Insignia'),(2,4,22810,'Opening - No Text'),(2,7,81,'Dodge'),(2,7,107,'Block'),(2,7,198,'One-Handed Maces'),(2,7,203,'Unarmed'),(2,7,204,'Defense'),(2,7,227,'Staves'),(2,7,331,'Healing Wave'),(2,7,403,'Lightning Bolt'),(2,7,522,'SPELLDEFENSE(DND)'),(2,7,669,'Language Orcish'),(2,7,2382,'Generic'),(2,7,2479,'Honorless Target'),(2,7,3050,'Detect'),(2,7,3365,'Opening'),(2,7,6233,'Closing'),(2,7,6246,'Closing'),(2,7,6247,'Opening'),(2,7,6477,'Opening'),(2,7,6478,'Opening'),(2,7,6603,'Attack'),(2,7,7266,'Duel'),(2,7,7267,'Grovel'),(2,7,7355,'Stuck'),(2,7,8386,'Attacking'),(2,7,9077,'Leather'),(2,7,9078,'Cloth'),(2,7,9116,'Shield'),(2,7,9125,'Generic'),(2,7,20573,'Hardiness'),(2,7,20574,'Axe Specialization'),(2,7,21563,'Command'),(2,7,21651,'Opening'),(2,7,21652,'Closing'),(2,7,22027,'Remove Insignia'),(2,7,22810,'Opening - No Text'),(2,7,27763,'Totem'),(2,7,33697,'Blood Fury'),(2,9,81,'Dodge'),(2,9,203,'Unarmed'),(2,9,204,'Defense'),(2,9,522,'SPELLDEFENSE(DND)'),(2,9,669,'Language Orcish'),(2,9,686,'Shadow Bolt'),(2,9,687,'Demon Skin'),(2,9,1180,'Daggers'),(2,9,2382,'Generic'),(2,9,2479,'Honorless Target'),(2,9,3050,'Detect'),(2,9,3365,'Opening'),(2,9,5009,'Wands'),(2,9,5019,'Shoot'),(2,9,6233,'Closing'),(2,9,6246,'Closing'),(2,9,6247,'Opening'),(2,9,6477,'Opening'),(2,9,6478,'Opening'),(2,9,6603,'Attack'),(2,9,7266,'Duel'),(2,9,7267,'Grovel'),(2,9,7355,'Stuck'),(2,9,8386,'Attacking'),(2,9,9078,'Cloth'),(2,9,9125,'Generic'),(2,9,20573,'Hardiness'),(2,9,20574,'Axe Specialization'),(2,9,20575,'Command'),(2,9,21651,'Opening'),(2,9,21652,'Closing'),(2,9,22027,'Remove Insignia'),(2,9,22810,'Opening - No Text'),(2,9,33702,'Blood Fury'),(3,1,78,'Heroic Strike'),(3,1,81,'Dodge'),(3,1,107,'Block'),(3,1,196,'One-Handed Axes'),(3,1,197,'Two-Handed Axes'),(3,1,198,'One-Handed Maces'),(3,1,203,'Unarmed'),(3,1,204,'Defense'),(3,1,522,'SPELLDEFENSE(DND)'),(3,1,668,'Language Common'),(3,1,672,'Language Dwarven'),(3,1,2382,'Generic'),(3,1,2457,'Battle Stance'),(3,1,2479,'Honorless Target'),(3,1,2481,'Find Treasure'),(3,1,3050,'Detect'),(3,1,3365,'Opening'),(3,1,5301,'Defensive State(DND)'),(3,1,6233,'Closing'),(3,1,6246,'Closing'),(3,1,6247,'Opening'),(3,1,6477,'Opening'),(3,1,6478,'Opening'),(3,1,6603,'Attack'),(3,1,7266,'Duel'),(3,1,7267,'Grovel'),(3,1,7355,'Stuck'),(3,1,8386,'Attacking'),(3,1,8737,'Mail'),(3,1,9077,'Leather'),(3,1,9078,'Cloth'),(3,1,9116,'Shield'),(3,1,9125,'Generic'),(3,1,20594,'Stoneform'),(3,1,20595,'Gun Specialization'),(3,1,20596,'Frost Resistance'),(3,1,21651,'Opening'),(3,1,21652,'Closing'),(3,1,22027,'Remove Insignia'),(3,1,22810,'Opening - No Text'),(3,1,32215,'Victorious State'),(3,2,81,'Dodge'),(3,2,107,'Block'),(3,2,198,'One-Handed Maces'),(3,2,199,'Two-Handed Maces'),(3,2,203,'Unarmed'),(3,2,204,'Defense'),(3,2,522,'SPELLDEFENSE(DND)'),(3,2,635,'Holy Light'),(3,2,668,'Language Common'),(3,2,672,'Language Dwarven'),(3,2,2382,'Generic'),(3,2,2479,'Honorless Target'),(3,2,2481,'Find Treasure'),(3,2,3050,'Detect'),(3,2,3365,'Opening'),(3,2,6233,'Closing'),(3,2,6246,'Closing'),(3,2,6247,'Opening'),(3,2,6477,'Opening'),(3,2,6478,'Opening'),(3,2,6603,'Attack'),(3,2,7266,'Duel'),(3,2,7267,'Grovel'),(3,2,7355,'Stuck'),(3,2,8386,'Attacking'),(3,2,8737,'Mail'),(3,2,9077,'Leather'),(3,2,9078,'Cloth'),(3,2,9116,'Shield'),(3,2,9125,'Generic'),(3,2,21084,'Seal of Righteousness'),(3,2,20594,'Stoneform'),(3,2,20595,'Gun Specialization'),(3,2,20596,'Frost Resistance'),(3,2,21651,'Opening'),(3,2,21652,'Closing'),(3,2,22027,'Remove Insignia'),(3,2,22810,'Opening - No Text'),(3,2,27762,'Libram'),(3,3,75,'Auto Shot'),(3,3,81,'Dodge'),(3,3,196,'One-Handed Axes'),(3,3,203,'Unarmed'),(3,3,204,'Defense'),(3,3,266,'Guns'),(3,3,522,'SPELLDEFENSE(DND)'),(3,3,668,'Language Common'),(3,3,672,'Language Dwarven'),(3,3,2382,'Generic'),(3,3,2479,'Honorless Target'),(3,3,2481,'Find Treasure'),(3,3,2973,'Raptor Strike'),(3,3,3050,'Detect'),(3,3,3365,'Opening'),(3,3,6233,'Closing'),(3,3,6246,'Closing'),(3,3,6247,'Opening'),(3,3,6477,'Opening'),(3,3,6478,'Opening'),(3,3,6603,'Attack'),(3,3,7266,'Duel'),(3,3,7267,'Grovel'),(3,3,7355,'Stuck'),(3,3,8386,'Attacking'),(3,3,9077,'Leather'),(3,3,9078,'Cloth'),(3,3,9125,'Generic'),(3,3,13358,'Defensive State(DND)'),(3,3,20594,'Stoneform'),(3,3,20595,'Gun Specialization'),(3,3,20596,'Frost Resistance'),(3,3,21651,'Opening'),(3,3,21652,'Closing'),(3,3,22027,'Remove Insignia'),(3,3,22810,'Opening - No Text'),(3,3,24949,'Defensive State 2(DND)'),(3,3,34082,'Advantaged State(DND)'),(3,4,81,'Dodge'),(3,4,203,'Unarmed'),(3,4,204,'Defense'),(3,4,522,'SPELLDEFENSE(DND)'),(3,4,668,'Language Common'),(3,4,672,'Language Dwarven'),(3,4,1180,'Daggers'),(3,4,1752,'Sinister Strike'),(3,4,2098,'Eviscerate'),(3,4,2382,'Generic'),(3,4,2479,'Honorless Target'),(3,4,2481,'Find Treasure'),(3,4,2567,'Thrown'),(3,4,2764,'Throw'),(3,4,3050,'Detect'),(3,4,3365,'Opening'),(3,4,6233,'Closing'),(3,4,6246,'Closing'),(3,4,6247,'Opening'),(3,4,6477,'Opening'),(3,4,6478,'Opening'),(3,4,6603,'Attack'),(3,4,7266,'Duel'),(3,4,7267,'Grovel'),(3,4,7355,'Stuck'),(3,4,8386,'Attacking'),(3,4,9077,'Leather'),(3,4,9078,'Cloth'),(3,4,9125,'Generic'),(3,4,16092,'Defensive State(DND)'),(3,4,20594,'Stoneform'),(3,4,20595,'Gun Specialization'),(3,4,20596,'Frost Resistance'),(3,4,21184,'Rogue Passive(DND)'),(3,4,21651,'Opening'),(3,4,21652,'Closing'),(3,4,22027,'Remove Insignia'),(3,4,22810,'Opening - No Text'),(3,5,81,'Dodge'),(3,5,198,'One-Handed Maces'),(3,5,203,'Unarmed'),(3,5,204,'Defense'),(3,5,522,'SPELLDEFENSE(DND)'),(3,5,585,'Smite'),(3,5,668,'Language Common'),(3,5,672,'Language Dwarven'),(3,5,2050,'Lesser Heal'),(3,5,2382,'Generic'),(3,5,2479,'Honorless Target'),(3,5,2481,'Find Treasure'),(3,5,3050,'Detect'),(3,5,3365,'Opening'),(3,5,5009,'Wands'),(3,5,5019,'Shoot'),(3,5,6233,'Closing'),(3,5,6246,'Closing'),(3,5,6247,'Opening'),(3,5,6477,'Opening'),(3,5,6478,'Opening'),(3,5,6603,'Attack'),(3,5,7266,'Duel'),(3,5,7267,'Grovel'),(3,5,7355,'Stuck'),(3,5,8386,'Attacking'),(3,5,9078,'Cloth'),(3,5,9125,'Generic'),(3,5,20594,'Stoneform'),(3,5,20595,'Gun Specialization'),(3,5,20596,'Frost Resistance'),(3,5,21651,'Opening'),(3,5,21652,'Closing'),(3,5,22027,'Remove Insignia'),(3,5,22810,'Opening - No Text'),(4,1,78,'Heroic Strike'),(4,1,81,'Dodge'),(4,1,107,'Block'),(4,1,198,'One-Handed Maces'),(4,1,201,'One-Handed Swords'),(4,1,203,'Unarmed'),(4,1,204,'Defense'),(4,1,522,'SPELLDEFENSE(DND)'),(4,1,668,'Language Common'),(4,1,671,'Language Darnassian'),(4,1,1180,'Daggers'),(4,1,2382,'Generic'),(4,1,2457,'Battle Stance'),(4,1,2479,'Honorless Target'),(4,1,3050,'Detect'),(4,1,3365,'Opening'),(4,1,5301,'Defensive State(DND)'),(4,1,6233,'Closing'),(4,1,6246,'Closing'),(4,1,6247,'Opening'),(4,1,6477,'Opening'),(4,1,6478,'Opening'),(4,1,6603,'Attack'),(4,1,7266,'Duel'),(4,1,7267,'Grovel'),(4,1,7355,'Stuck'),(4,1,8386,'Attacking'),(4,1,8737,'Mail'),(4,1,9077,'Leather'),(4,1,9078,'Cloth'),(4,1,9116,'Shield'),(4,1,9125,'Generic'),(4,1,20580,'Shadowmeld'),(4,1,20582,'Quickness'),(4,1,20583,'Nature Resistance'),(4,1,20585,'Wisp Spirit'),(4,1,21009,'Shadowmeld Passive'),(4,1,21651,'Opening'),(4,1,21652,'Closing'),(4,1,22027,'Remove Insignia'),(4,1,22810,'Opening - No Text'),(4,1,32215,'Victorious State'),(4,3,75,'Auto Shot'),(4,3,81,'Dodge'),(4,3,203,'Unarmed'),(4,3,204,'Defense'),(4,3,264,'Bows'),(4,3,522,'SPELLDEFENSE(DND)'),(4,3,668,'Language Common'),(4,3,671,'Language Darnassian'),(4,3,1180,'Daggers'),(4,3,2382,'Generic'),(4,3,2479,'Honorless Target'),(4,3,2973,'Raptor Strike'),(4,3,3050,'Detect'),(4,3,3365,'Opening'),(4,3,6233,'Closing'),(4,3,6246,'Closing'),(4,3,6247,'Opening'),(4,3,6477,'Opening'),(4,3,6478,'Opening'),(4,3,6603,'Attack'),(4,3,7266,'Duel'),(4,3,7267,'Grovel'),(4,3,7355,'Stuck'),(4,3,8386,'Attacking'),(4,3,9077,'Leather'),(4,3,9078,'Cloth'),(4,3,9125,'Generic'),(4,3,13358,'Defensive State(DND)'),(4,3,20580,'Shadowmeld'),(4,3,20582,'Quickness'),(4,3,20583,'Nature Resistance'),(4,3,20585,'Wisp Spirit'),(4,3,21009,'Shadowmeld Passive'),(4,3,21651,'Opening'),(4,3,21652,'Closing'),(4,3,22027,'Remove Insignia'),(4,3,22810,'Opening - No Text'),(4,3,24949,'Defensive State 2(DND)'),(4,3,34082,'Advantaged State(DND)'),(4,4,81,'Dodge'),(4,4,203,'Unarmed'),(4,4,204,'Defense'),(4,4,522,'SPELLDEFENSE(DND)'),(4,4,668,'Language Common'),(4,4,671,'Language Darnassian'),(4,4,1180,'Daggers'),(4,4,1752,'Sinister Strike'),(4,4,2098,'Eviscerate'),(4,4,2382,'Generic'),(4,4,2479,'Honorless Target'),(4,4,2567,'Thrown'),(4,4,2764,'Throw'),(4,4,3050,'Detect'),(4,4,3365,'Opening'),(4,4,6233,'Closing'),(4,4,6246,'Closing'),(4,4,6247,'Opening'),(4,4,6477,'Opening'),(4,4,6478,'Opening'),(4,4,6603,'Attack'),(4,4,7266,'Duel'),(4,4,7267,'Grovel'),(4,4,7355,'Stuck'),(4,4,8386,'Attacking'),(4,4,9077,'Leather'),(4,4,9078,'Cloth'),(4,4,9125,'Generic'),(4,4,16092,'Defensive State(DND)'),(4,4,20580,'Shadowmeld'),(4,4,20582,'Quickness'),(4,4,20583,'Nature Resistance'),(4,4,20585,'Wisp Spirit'),(4,4,21009,'Shadowmeld Passive'),(4,4,21184,'Rogue Passive(DND)'),(4,4,21651,'Opening'),(4,4,21652,'Closing'),(4,4,22027,'Remove Insignia'),(4,4,22810,'Opening - No Text'),(4,5,81,'Dodge'),(4,5,198,'One-Handed Maces'),(4,5,203,'Unarmed'),(4,5,204,'Defense'),(4,5,522,'SPELLDEFENSE(DND)'),(4,5,585,'Smite'),(4,5,668,'Language Common'),(4,5,671,'Language Darnassian'),(4,5,2050,'Lesser Heal'),(4,5,2382,'Generic'),(4,5,2479,'Honorless Target'),(4,5,3050,'Detect'),(4,5,3365,'Opening'),(4,5,5009,'Wands'),(4,5,5019,'Shoot'),(4,5,6233,'Closing'),(4,5,6246,'Closing'),(4,5,6247,'Opening'),(4,5,6477,'Opening'),(4,5,6478,'Opening'),(4,5,6603,'Attack'),(4,5,7266,'Duel'),(4,5,7267,'Grovel'),(4,5,7355,'Stuck'),(4,5,8386,'Attacking'),(4,5,9078,'Cloth'),(4,5,9125,'Generic'),(4,5,20580,'Shadowmeld'),(4,5,20582,'Quickness'),(4,5,20583,'Nature Resistance'),(4,5,20585,'Wisp Spirit'),(4,5,21009,'Shadowmeld Passive'),(4,5,21651,'Opening'),(4,5,21652,'Closing'),(4,5,22027,'Remove Insignia'),(4,5,22810,'Opening - No Text'),(4,11,81,'Dodge'),(4,11,203,'Unarmed'),(4,11,204,'Defense'),(4,11,227,'Staves'),(4,11,522,'SPELLDEFENSE(DND)'),(4,11,668,'Language Common'),(4,11,671,'Language Darnassian'),(4,11,1180,'Daggers'),(4,11,2382,'Generic'),(4,11,2479,'Honorless Target'),(4,11,3050,'Detect'),(4,11,3365,'Opening'),(4,11,5176,'Wrath'),(4,11,5185,'Healing Touch'),(4,11,6233,'Closing'),(4,11,6246,'Closing'),(4,11,6247,'Opening'),(4,11,6477,'Opening'),(4,11,6478,'Opening'),(4,11,6603,'Attack'),(4,11,7266,'Duel'),(4,11,7267,'Grovel'),(4,11,7355,'Stuck'),(4,11,8386,'Attacking'),(4,11,9077,'Leather'),(4,11,9078,'Cloth'),(4,11,9125,'Generic'),(4,11,20580,'Shadowmeld'),(4,11,20582,'Quickness'),(4,11,20583,'Nature Resistance'),(4,11,20585,'Wisp Spirit'),(4,11,21009,'Shadowmeld Passive'),(4,11,21651,'Opening'),(4,11,21652,'Closing'),(4,11,22027,'Remove Insignia'),(4,11,22810,'Opening - No Text'),(4,11,27764,'Fetish'),(5,1,78,'Heroic Strike'),(5,1,81,'Dodge'),(5,1,107,'Block'),(5,1,201,'One-Handed Swords'),(5,1,202,'Two-Handed Swords'),(5,1,203,'Unarmed'),(5,1,204,'Defense'),(5,1,522,'SPELLDEFENSE(DND)'),(5,1,669,'Language Orcish'),(5,1,1180,'Daggers'),(5,1,2382,'Generic'),(5,1,2457,'Battle Stance'),(5,1,2479,'Honorless Target'),(5,1,3050,'Detect'),(5,1,3365,'Opening'),(5,1,5227,'Underwater Breathing'),(5,1,5301,'Defensive State(DND)'),(5,1,6233,'Closing'),(5,1,6246,'Closing'),(5,1,6247,'Opening'),(5,1,6477,'Opening'),(5,1,6478,'Opening'),(5,1,6603,'Attack'),(5,1,7266,'Duel'),(5,1,7267,'Grovel'),(5,1,7355,'Stuck'),(5,1,7744,'Will of the Forsaken'),(5,1,8386,'Attacking'),(5,1,8737,'Mail'),(5,1,9077,'Leather'),(5,1,9078,'Cloth'),(5,1,9116,'Shield'),(5,1,9125,'Generic'),(5,1,17737,'Language Gutterspeak'),(5,1,20577,'Cannibalize'),(5,1,20579,'Shadow Resistance'),(5,1,21651,'Opening'),(5,1,21652,'Closing'),(5,1,22027,'Remove Insignia'),(5,1,22810,'Opening - No Text'),(5,1,32215,'Victorious State'),(5,4,81,'Dodge'),(5,4,203,'Unarmed'),(5,4,204,'Defense'),(5,4,522,'SPELLDEFENSE(DND)'),(5,4,669,'Language Orcish'),(5,4,1180,'Daggers'),(5,4,1752,'Sinister Strike'),(5,4,2098,'Eviscerate'),(5,4,2382,'Generic'),(5,4,2479,'Honorless Target'),(5,4,2567,'Thrown'),(5,4,2764,'Throw'),(5,4,3050,'Detect'),(5,4,3365,'Opening'),(5,4,5227,'Underwater Breathing'),(5,4,6233,'Closing'),(5,4,6246,'Closing'),(5,4,6247,'Opening'),(5,4,6477,'Opening'),(5,4,6478,'Opening'),(5,4,6603,'Attack'),(5,4,7266,'Duel'),(5,4,7267,'Grovel'),(5,4,7355,'Stuck'),(5,4,7744,'Will of the Forsaken'),(5,4,8386,'Attacking'),(5,4,9077,'Leather'),(5,4,9078,'Cloth'),(5,4,9125,'Generic'),(5,4,16092,'Defensive State(DND)'),(5,4,17737,'Language Gutterspeak'),(5,4,20577,'Cannibalize'),(5,4,20579,'Shadow Resistance'),(5,4,21184,'Rogue Passive(DND)'),(5,4,21651,'Opening'),(5,4,21652,'Closing'),(5,4,22027,'Remove Insignia'),(5,4,22810,'Opening - No Text'),(5,5,81,'Dodge'),(5,5,198,'One-Handed Maces'),(5,5,203,'Unarmed'),(5,5,204,'Defense'),(5,5,522,'SPELLDEFENSE(DND)'),(5,5,585,'Smite'),(5,5,669,'Language Orcish'),(5,5,2050,'Lesser Heal'),(5,5,2382,'Generic'),(5,5,2479,'Honorless Target'),(5,5,3050,'Detect'),(5,5,3365,'Opening'),(5,5,5009,'Wands'),(5,5,5019,'Shoot'),(5,5,5227,'Underwater Breathing'),(5,5,6233,'Closing'),(5,5,6246,'Closing'),(5,5,6247,'Opening'),(5,5,6477,'Opening'),(5,5,6478,'Opening'),(5,5,6603,'Attack'),(5,5,7266,'Duel'),(5,5,7267,'Grovel'),(5,5,7355,'Stuck'),(5,5,7744,'Will of the Forsaken'),(5,5,8386,'Attacking'),(5,5,9078,'Cloth'),(5,5,9125,'Generic'),(5,5,17737,'Language Gutterspeak'),(5,5,20577,'Cannibalize'),(5,5,20579,'Shadow Resistance'),(5,5,21651,'Opening'),(5,5,21652,'Closing'),(5,5,22027,'Remove Insignia'),(5,5,22810,'Opening - No Text'),(5,8,81,'Dodge'),(5,8,133,'Fireball'),(5,8,168,'Frost Armor'),(5,8,203,'Unarmed'),(5,8,204,'Defense'),(5,8,227,'Staves'),(5,8,522,'SPELLDEFENSE(DND)'),(5,8,669,'Language Orcish'),(5,8,2382,'Generic'),(5,8,2479,'Honorless Target'),(5,8,3050,'Detect'),(5,8,3365,'Opening'),(5,8,5009,'Wands'),(5,8,5019,'Shoot'),(5,8,5227,'Underwater Breathing'),(5,8,6233,'Closing'),(5,8,6246,'Closing'),(5,8,6247,'Opening'),(5,8,6477,'Opening'),(5,8,6478,'Opening'),(5,8,6603,'Attack'),(5,8,7266,'Duel'),(5,8,7267,'Grovel'),(5,8,7355,'Stuck'),(5,8,7744,'Will of the Forsaken'),(5,8,8386,'Attacking'),(5,8,9078,'Cloth'),(5,8,9125,'Generic'),(5,8,17737,'Language Gutterspeak'),(5,8,20577,'Cannibalize'),(5,8,20579,'Shadow Resistance'),(5,8,21651,'Opening'),(5,8,21652,'Closing'),(5,8,22027,'Remove Insignia'),(5,8,22810,'Opening - No Text'),(5,9,81,'Dodge'),(5,9,203,'Unarmed'),(5,9,204,'Defense'),(5,9,522,'SPELLDEFENSE(DND)'),(5,9,669,'Language Orcish'),(5,9,686,'Shadow Bolt'),(5,9,687,'Demon Skin'),(5,9,1180,'Daggers'),(5,9,2382,'Generic'),(5,9,2479,'Honorless Target'),(5,9,3050,'Detect'),(5,9,3365,'Opening'),(5,9,5009,'Wands'),(5,9,5019,'Shoot'),(5,9,5227,'Underwater Breathing'),(5,9,6233,'Closing'),(5,9,6246,'Closing'),(5,9,6247,'Opening'),(5,9,6477,'Opening'),(5,9,6478,'Opening'),(5,9,6603,'Attack'),(5,9,7266,'Duel'),(5,9,7267,'Grovel'),(5,9,7355,'Stuck'),(5,9,7744,'Will of the Forsaken'),(5,9,8386,'Attacking'),(5,9,9078,'Cloth'),(5,9,9125,'Generic'),(5,9,17737,'Language Gutterspeak'),(5,9,20577,'Cannibalize'),(5,9,20579,'Shadow Resistance'),(5,9,21651,'Opening'),(5,9,21652,'Closing'),(5,9,22027,'Remove Insignia'),(5,9,22810,'Opening - No Text'),(6,1,78,'Heroic Strike'),(6,1,81,'Dodge'),(6,1,107,'Block'),(6,1,196,'One-Handed Axes'),(6,1,198,'One-Handed Maces'),(6,1,199,'Two-Handed Maces'),(6,1,203,'Unarmed'),(6,1,204,'Defense'),(6,1,522,'SPELLDEFENSE(DND)'),(6,1,669,'Language Orcish'),(6,1,670,'Language Taurahe'),(6,1,2382,'Generic'),(6,1,2457,'Battle Stance'),(6,1,2479,'Honorless Target'),(6,1,3050,'Detect'),(6,1,3365,'Opening'),(6,1,5301,'Defensive State(DND)'),(6,1,6233,'Closing'),(6,1,6246,'Closing'),(6,1,6247,'Opening'),(6,1,6477,'Opening'),(6,1,6478,'Opening'),(6,1,6603,'Attack'),(6,1,7266,'Duel'),(6,1,7267,'Grovel'),(6,1,7355,'Stuck'),(6,1,8386,'Attacking'),(6,1,8737,'Mail'),(6,1,9077,'Leather'),(6,1,9078,'Cloth'),(6,1,9116,'Shield'),(6,1,9125,'Generic'),(6,1,20549,'War Stomp'),(6,1,20550,'Endurance'),(6,1,20551,'Nature Resistance'),(6,1,20552,'Cultivation'),(6,1,21651,'Opening'),(6,1,21652,'Closing'),(6,1,22027,'Remove Insignia'),(6,1,22810,'Opening - No Text'),(6,1,32215,'Victorious State'),(6,3,75,'Auto Shot'),(6,3,81,'Dodge'),(6,3,196,'One-Handed Axes'),(6,3,203,'Unarmed'),(6,3,204,'Defense'),(6,3,266,'Guns'),(6,3,522,'SPELLDEFENSE(DND)'),(6,3,669,'Language Orcish'),(6,3,670,'Language Taurahe'),(6,3,2382,'Generic'),(6,3,2479,'Honorless Target'),(6,3,2973,'Raptor Strike'),(6,3,3050,'Detect'),(6,3,3365,'Opening'),(6,3,6233,'Closing'),(6,3,6246,'Closing'),(6,3,6247,'Opening'),(6,3,6477,'Opening'),(6,3,6478,'Opening'),(6,3,6603,'Attack'),(6,3,7266,'Duel'),(6,3,7267,'Grovel'),(6,3,7355,'Stuck'),(6,3,8386,'Attacking'),(6,3,9077,'Leather'),(6,3,9078,'Cloth'),(6,3,9125,'Generic'),(6,3,13358,'Defensive State(DND)'),(6,3,20549,'War Stomp'),(6,3,20550,'Endurance'),(6,3,20551,'Nature Resistance'),(6,3,20552,'Cultivation'),(6,3,21651,'Opening'),(6,3,21652,'Closing'),(6,3,22027,'Remove Insignia'),(6,3,22810,'Opening - No Text'),(6,3,24949,'Defensive State 2(DND)'),(6,3,34082,'Advantaged State(DND)'),(6,7,81,'Dodge'),(6,7,107,'Block'),(6,7,198,'One-Handed Maces'),(6,7,203,'Unarmed'),(6,7,204,'Defense'),(6,7,227,'Staves'),(6,7,331,'Healing Wave'),(6,7,403,'Lightning Bolt'),(6,7,522,'SPELLDEFENSE(DND)'),(6,7,669,'Language Orcish'),(6,7,670,'Language Taurahe'),(6,7,2382,'Generic'),(6,7,2479,'Honorless Target'),(6,7,3050,'Detect'),(6,7,3365,'Opening'),(6,7,6233,'Closing'),(6,7,6246,'Closing'),(6,7,6247,'Opening'),(6,7,6477,'Opening'),(6,7,6478,'Opening'),(6,7,6603,'Attack'),(6,7,7266,'Duel'),(6,7,7267,'Grovel'),(6,7,7355,'Stuck'),(6,7,8386,'Attacking'),(6,7,9077,'Leather'),(6,7,9078,'Cloth'),(6,7,9116,'Shield'),(6,7,9125,'Generic'),(6,7,20549,'War Stomp'),(6,7,20550,'Endurance'),(6,7,20551,'Nature Resistance'),(6,7,20552,'Cultivation'),(6,7,21651,'Opening'),(6,7,21652,'Closing'),(6,7,22027,'Remove Insignia'),(6,7,22810,'Opening - No Text'),(6,7,27763,'Totem'),(6,11,81,'Dodge'),(6,11,198,'One-Handed Maces'),(6,11,203,'Unarmed'),(6,11,204,'Defense'),(6,11,227,'Staves'),(6,11,522,'SPELLDEFENSE(DND)'),(6,11,669,'Language Orcish'),(6,11,670,'Language Taurahe'),(6,11,2382,'Generic'),(6,11,2479,'Honorless Target'),(6,11,3050,'Detect'),(6,11,3365,'Opening'),(6,11,5176,'Wrath'),(6,11,5185,'Healing Touch'),(6,11,6233,'Closing'),(6,11,6246,'Closing'),(6,11,6247,'Opening'),(6,11,6477,'Opening'),(6,11,6478,'Opening'),(6,11,6603,'Attack'),(6,11,7266,'Duel'),(6,11,7267,'Grovel'),(6,11,7355,'Stuck'),(6,11,8386,'Attacking'),(6,11,9077,'Leather'),(6,11,9078,'Cloth'),(6,11,9125,'Generic'),(6,11,20549,'War Stomp'),(6,11,20550,'Endurance'),(6,11,20551,'Nature Resistance'),(6,11,20552,'Cultivation'),(6,11,21651,'Opening'),(6,11,21652,'Closing'),(6,11,22027,'Remove Insignia'),(6,11,22810,'Opening - No Text'),(6,11,27764,'Fetish'),(7,1,78,'Heroic Strike'),(7,1,81,'Dodge'),(7,1,107,'Block'),(7,1,198,'One-Handed Maces'),(7,1,201,'One-Handed Swords'),(7,1,203,'Unarmed'),(7,1,204,'Defense'),(7,1,522,'SPELLDEFENSE(DND)'),(7,1,668,'Language Common'),(7,1,1180,'Daggers'),(7,1,2382,'Generic'),(7,1,2457,'Battle Stance'),(7,1,2479,'Honorless Target'),(7,1,3050,'Detect'),(7,1,3365,'Opening'),(7,1,5301,'Defensive State(DND)'),(7,1,6233,'Closing'),(7,1,6246,'Closing'),(7,1,6247,'Opening'),(7,1,6477,'Opening'),(7,1,6478,'Opening'),(7,1,6603,'Attack'),(7,1,7266,'Duel'),(7,1,7267,'Grovel'),(7,1,7340,'Language Gnomish'),(7,1,7355,'Stuck'),(7,1,8386,'Attacking'),(7,1,8737,'Mail'),(7,1,9077,'Leather'),(7,1,9078,'Cloth'),(7,1,9116,'Shield'),(7,1,9125,'Generic'),(7,1,20589,'Escape Artist'),(7,1,20591,'Expansive Mind'),(7,1,20592,'Arcane Resistance'),(7,1,20593,'Engineering Specialization'),(7,1,21651,'Opening'),(7,1,21652,'Closing'),(7,1,22027,'Remove Insignia'),(7,1,22810,'Opening - No Text'),(7,1,32215,'Victorious State'),(7,4,81,'Dodge'),(7,4,203,'Unarmed'),(7,4,204,'Defense'),(7,4,522,'SPELLDEFENSE(DND)'),(7,4,668,'Language Common'),(7,4,1180,'Daggers'),(7,4,1752,'Sinister Strike'),(7,4,2098,'Eviscerate'),(7,4,2382,'Generic'),(7,4,2479,'Honorless Target'),(7,4,2567,'Thrown'),(7,4,2764,'Throw'),(7,4,3050,'Detect'),(7,4,3365,'Opening'),(7,4,6233,'Closing'),(7,4,6246,'Closing'),(7,4,6247,'Opening'),(7,4,6477,'Opening'),(7,4,6478,'Opening'),(7,4,6603,'Attack'),(7,4,7266,'Duel'),(7,4,7267,'Grovel'),(7,4,7340,'Language Gnomish'),(7,4,7355,'Stuck'),(7,4,8386,'Attacking'),(7,4,9077,'Leather'),(7,4,9078,'Cloth'),(7,4,9125,'Generic'),(7,4,16092,'Defensive State(DND)'),(7,4,20589,'Escape Artist'),(7,4,20591,'Expansive Mind'),(7,4,20592,'Arcane Resistance'),(7,4,20593,'Engineering Specialization'),(7,4,21184,'Rogue Passive(DND)'),(7,4,21651,'Opening'),(7,4,21652,'Closing'),(7,4,22027,'Remove Insignia'),(7,4,22810,'Opening - No Text'),(7,8,81,'Dodge'),(7,8,133,'Fireball'),(7,8,168,'Frost Armor'),(7,8,203,'Unarmed'),(7,8,204,'Defense'),(7,8,227,'Staves'),(7,8,522,'SPELLDEFENSE(DND)'),(7,8,668,'Language Common'),(7,8,2382,'Generic'),(7,8,2479,'Honorless Target'),(7,8,3050,'Detect'),(7,8,3365,'Opening'),(7,8,5009,'Wands'),(7,8,5019,'Shoot'),(7,8,6233,'Closing'),(7,8,6246,'Closing'),(7,8,6247,'Opening'),(7,8,6477,'Opening'),(7,8,6478,'Opening'),(7,8,6603,'Attack'),(7,8,7266,'Duel'),(7,8,7267,'Grovel'),(7,8,7340,'Language Gnomish'),(7,8,7355,'Stuck'),(7,8,8386,'Attacking'),(7,8,9078,'Cloth'),(7,8,9125,'Generic'),(7,8,20589,'Escape Artist'),(7,8,20591,'Expansive Mind'),(7,8,20592,'Arcane Resistance'),(7,8,20593,'Engineering Specialization'),(7,8,21651,'Opening'),(7,8,21652,'Closing'),(7,8,22027,'Remove Insignia'),(7,8,22810,'Opening - No Text'),(7,9,81,'Dodge'),(7,9,203,'Unarmed'),(7,9,204,'Defense'),(7,9,522,'SPELLDEFENSE(DND)'),(7,9,668,'Language Common'),(7,9,686,'Shadow Bolt'),(7,9,687,'Demon Skin'),(7,9,1180,'Daggers'),(7,9,2382,'Generic'),(7,9,2479,'Honorless Target'),(7,9,3050,'Detect'),(7,9,3365,'Opening'),(7,9,5009,'Wands'),(7,9,5019,'Shoot'),(7,9,6233,'Closing'),(7,9,6246,'Closing'),(7,9,6247,'Opening'),(7,9,6477,'Opening'),(7,9,6478,'Opening'),(7,9,6603,'Attack'),(7,9,7266,'Duel'),(7,9,7267,'Grovel'),(7,9,7340,'Language Gnomish'),(7,9,7355,'Stuck'),(7,9,8386,'Attacking'),(7,9,9078,'Cloth'),(7,9,9125,'Generic'),(7,9,20589,'Escape Artist'),(7,9,20591,'Expansive Mind'),(7,9,20592,'Arcane Resistance'),(7,9,20593,'Engineering Specialization'),(7,9,21651,'Opening'),(7,9,21652,'Closing'),(7,9,22027,'Remove Insignia'),(7,9,22810,'Opening - No Text'),(8,1,78,'Heroic Strike'),(8,1,81,'Dodge'),(8,1,107,'Block'),(8,1,196,'One-Handed Axes'),(8,1,203,'Unarmed'),(8,1,204,'Defense'),(8,1,522,'SPELLDEFENSE(DND)'),(8,1,669,'Language Orcish'),(8,1,1180,'Daggers'),(8,1,2382,'Generic'),(8,1,2457,'Battle Stance'),(8,1,2479,'Honorless Target'),(8,1,2567,'Thrown'),(8,1,2764,'Throw'),(8,1,3050,'Detect'),(8,1,3365,'Opening'),(8,1,5301,'Defensive State(DND)'),(8,1,6233,'Closing'),(8,1,6246,'Closing'),(8,1,6247,'Opening'),(8,1,6477,'Opening'),(8,1,6478,'Opening'),(8,1,6603,'Attack'),(8,1,7266,'Duel'),(8,1,7267,'Grovel'),(8,1,7341,'Language Troll'),(8,1,7355,'Stuck'),(8,1,8386,'Attacking'),(8,1,8737,'Mail'),(8,1,9077,'Leather'),(8,1,9078,'Cloth'),(8,1,9116,'Shield'),(8,1,9125,'Generic'),(8,1,20555,'Regeneration'),(8,1,20557,'Beast Slaying'),(8,1,20558,'Throwing Specialization'),(8,1,21651,'Opening'),(8,1,21652,'Closing'),(8,1,22027,'Remove Insignia'),(8,1,22810,'Opening - No Text'),(8,1,26290,'Bow Specialization'),(8,1,26296,'Berserking'),(8,1,32215,'Victorious State'),(8,3,75,'Auto Shot'),(8,3,81,'Dodge'),(8,3,196,'One-Handed Axes'),(8,3,203,'Unarmed'),(8,3,204,'Defense'),(8,3,264,'Bows'),(8,3,522,'SPELLDEFENSE(DND)'),(8,3,669,'Language Orcish'),(8,3,2382,'Generic'),(8,3,2479,'Honorless Target'),(8,3,2973,'Raptor Strike'),(8,3,3050,'Detect'),(8,3,3365,'Opening'),(8,3,6233,'Closing'),(8,3,6246,'Closing'),(8,3,6247,'Opening'),(8,3,6477,'Opening'),(8,3,6478,'Opening'),(8,3,6603,'Attack'),(8,3,7266,'Duel'),(8,3,7267,'Grovel'),(8,3,7341,'Language Troll'),(8,3,7355,'Stuck'),(8,3,8386,'Attacking'),(8,3,9077,'Leather'),(8,3,9078,'Cloth'),(8,3,9125,'Generic'),(8,3,13358,'Defensive State(DND)'),(8,3,20554,'Berserking'),(8,3,20555,'Regeneration'),(8,3,20557,'Beast Slaying'),(8,3,20558,'Throwing Specialization'),(8,3,21651,'Opening'),(8,3,21652,'Closing'),(8,3,22027,'Remove Insignia'),(8,3,22810,'Opening - No Text'),(8,3,24949,'Defensive State 2(DND)'),(8,3,26290,'Bow Specialization'),(8,3,34082,'Advantaged State(DND)'),(8,4,81,'Dodge'),(8,4,203,'Unarmed'),(8,4,204,'Defense'),(8,4,522,'SPELLDEFENSE(DND)'),(8,4,669,'Language Orcish'),(8,4,1180,'Daggers'),(8,4,1752,'Sinister Strike'),(8,4,2098,'Eviscerate'),(8,4,2382,'Generic'),(8,4,2479,'Honorless Target'),(8,4,2567,'Thrown'),(8,4,2764,'Throw'),(8,4,3050,'Detect'),(8,4,3365,'Opening'),(8,4,6233,'Closing'),(8,4,6246,'Closing'),(8,4,6247,'Opening'),(8,4,6477,'Opening'),(8,4,6478,'Opening'),(8,4,6603,'Attack'),(8,4,7266,'Duel'),(8,4,7267,'Grovel'),(8,4,7341,'Language Troll'),(8,4,7355,'Stuck'),(8,4,8386,'Attacking'),(8,4,9077,'Leather'),(8,4,9078,'Cloth'),(8,4,9125,'Generic'),(8,4,16092,'Defensive State(DND)'),(8,4,20555,'Regeneration'),(8,4,20557,'Beast Slaying'),(8,4,20558,'Throwing Specialization'),(8,4,21184,'Rogue Passive(DND)'),(8,4,21651,'Opening'),(8,4,21652,'Closing'),(8,4,22027,'Remove Insignia'),(8,4,22810,'Opening - No Text'),(8,4,26290,'Bow Specialization'),(8,4,26297,'Berserking'),(8,5,81,'Dodge'),(8,5,198,'One-Handed Maces'),(8,5,203,'Unarmed'),(8,5,204,'Defense'),(8,5,522,'SPELLDEFENSE(DND)'),(8,5,585,'Smite'),(8,5,669,'Language Orcish'),(8,5,2050,'Lesser Heal'),(8,5,2382,'Generic'),(8,5,2479,'Honorless Target'),(8,5,3050,'Detect'),(8,5,3365,'Opening'),(8,5,5009,'Wands'),(8,5,5019,'Shoot'),(8,5,6233,'Closing'),(8,5,6246,'Closing'),(8,5,6247,'Opening'),(8,5,6477,'Opening'),(8,5,6478,'Opening'),(8,5,6603,'Attack'),(8,5,7266,'Duel'),(8,5,7267,'Grovel'),(8,5,7341,'Language Troll'),(8,5,7355,'Stuck'),(8,5,8386,'Attacking'),(8,5,9078,'Cloth'),(8,5,9125,'Generic'),(8,5,20554,'Berserking'),(8,5,20555,'Regeneration'),(8,5,20557,'Beast Slaying'),(8,5,20558,'Throwing Specialization'),(8,5,21651,'Opening'),(8,5,21652,'Closing'),(8,5,22027,'Remove Insignia'),(8,5,22810,'Opening - No Text'),(8,5,26290,'Bow Specialization'),(8,7,81,'Dodge'),(8,7,107,'Block'),(8,7,198,'One-Handed Maces'),(8,7,203,'Unarmed'),(8,7,204,'Defense'),(8,7,227,'Staves'),(8,7,331,'Healing Wave'),(8,7,403,'Lightning Bolt'),(8,7,522,'SPELLDEFENSE(DND)'),(8,7,669,'Language Orcish'),(8,7,2382,'Generic'),(8,7,2479,'Honorless Target'),(8,7,3050,'Detect'),(8,7,3365,'Opening'),(8,7,6233,'Closing'),(8,7,6246,'Closing'),(8,7,6247,'Opening'),(8,7,6477,'Opening'),(8,7,6478,'Opening'),(8,7,6603,'Attack'),(8,7,7266,'Duel'),(8,7,7267,'Grovel'),(8,7,7341,'Language Troll'),(8,7,7355,'Stuck'),(8,7,8386,'Attacking'),(8,7,9077,'Leather'),(8,7,9078,'Cloth'),(8,7,9116,'Shield'),(8,7,9125,'Generic'),(8,7,20554,'Berserking'),(8,7,20555,'Regeneration'),(8,7,20557,'Beast Slaying'),(8,7,20558,'Throwing Specialization'),(8,7,21651,'Opening'),(8,7,21652,'Closing'),(8,7,22027,'Remove Insignia'),(8,7,22810,'Opening - No Text'),(8,7,26290,'Bow Specialization'),(8,7,27763,'Totem'),(8,8,81,'Dodge'),(8,8,133,'Fireball'),(8,8,168,'Frost Armor'),(8,8,203,'Unarmed'),(8,8,204,'Defense'),(8,8,227,'Staves'),(8,8,522,'SPELLDEFENSE(DND)'),(8,8,669,'Language Orcish'),(8,8,2382,'Generic'),(8,8,2479,'Honorless Target'),(8,8,3050,'Detect'),(8,8,3365,'Opening'),(8,8,5009,'Wands'),(8,8,5019,'Shoot'),(8,8,6233,'Closing'),(8,8,6246,'Closing'),(8,8,6247,'Opening'),(8,8,6477,'Opening'),(8,8,6478,'Opening'),(8,8,6603,'Attack'),(8,8,7266,'Duel'),(8,8,7267,'Grovel'),(8,8,7341,'Language Troll'),(8,8,7355,'Stuck'),(8,8,8386,'Attacking'),(8,8,9078,'Cloth'),(8,8,9125,'Generic'),(8,8,20554,'Berserking'),(8,8,20555,'Regeneration'),(8,8,20557,'Beast Slaying'),(8,8,20558,'Throwing Specialization'),(8,8,21651,'Opening'),(8,8,21652,'Closing'),(8,8,22027,'Remove Insignia'),(8,8,22810,'Opening - No Text'),(8,8,26290,'Bow Specialization'),(10,2,81,'Dodge'),(10,2,107,'Block'),(10,2,201,'One-Handed Swords'),(10,2,202,'Two-Handed Swords'),(10,2,203,'Unarmed'),(10,2,204,'Defense'),(10,2,522,'SPELLDEFENSE(DND)'),(10,2,635,'Holy Light'),(10,2,669,'Language Orcish'),(10,2,813,'Language Thalassian'),(10,2,822,'Magic Resistance'),(10,2,2382,'Generic'),(10,2,2479,'Honorless Target'),(10,2,3050,'Detect'),(10,2,3365,'Opening'),(10,2,6233,'Closing'),(10,2,6246,'Closing'),(10,2,6247,'Opening'),(10,2,6477,'Opening'),(10,2,6478,'Opening'),(10,2,6603,'Attack'),(10,2,7266,'Duel'),(10,2,7267,'Grovel'),(10,2,7355,'Stuck'),(10,2,8386,'Attacking'),(10,2,8737,'Mail'),(10,2,9077,'Leather'),(10,2,9078,'Cloth'),(10,2,9116,'Shield'),(10,2,9125,'Generic'),(10,2,21084,'Seal of Righteousness'),(10,2,21651,'Opening'),(10,2,21652,'Closing'),(10,2,22027,'Remove Insignia'),(10,2,22810,'Opening - No Text'),(10,2,27762,'Libram'),(10,2,28730,'Arcane Torrent'),(10,2,28734,'Mana Tap'),(10,2,28877,'Arcane Affinity'),(10,3,75,'Auto Shot'),(10,3,81,'Dodge'),(10,3,203,'Unarmed'),(10,3,204,'Defense'),(10,3,264,'Bows'),(10,3,522,'SPELLDEFENSE(DND)'),(10,3,669,'Language Orcish'),(10,3,813,'Language Thalassian'),(10,3,822,'Magic Resistance'),(10,3,1180,'Daggers'),(10,3,2382,'Generic'),(10,3,2479,'Honorless Target'),(10,3,2973,'Raptor Strike'),(10,3,3050,'Detect'),(10,3,3365,'Opening'),(10,3,6233,'Closing'),(10,3,6246,'Closing'),(10,3,6247,'Opening'),(10,3,6477,'Opening'),(10,3,6478,'Opening'),(10,3,6603,'Attack'),(10,3,7266,'Duel'),(10,3,7267,'Grovel'),(10,3,7355,'Stuck'),(10,3,8386,'Attacking'),(10,3,9077,'Leather'),(10,3,9078,'Cloth'),(10,3,9125,'Generic'),(10,3,13358,'Defensive State(DND)'),(10,3,21651,'Opening'),(10,3,21652,'Closing'),(10,3,22027,'Remove Insignia'),(10,3,22810,'Opening - No Text'),(10,3,24949,'Defensive State 2(DND)'),(10,3,28730,'Arcane Torrent'),(10,3,28734,'Mana Tap'),(10,3,28877,'Arcane Affinity'),(10,3,34082,'Advantaged State(DND)'),(10,4,81,'Dodge'),(10,4,203,'Unarmed'),(10,4,204,'Defense'),(10,4,522,'SPELLDEFENSE(DND)'),(10,4,669,'Language Orcish'),(10,4,813,'Language Thalassian'),(10,4,822,'Magic Resistance'),(10,4,1180,'Daggers'),(10,4,1752,'Sinister Strike'),(10,4,2098,'Eviscerate'),(10,4,2382,'Generic'),(10,4,2479,'Honorless Target'),(10,4,2567,'Thrown'),(10,4,2764,'Throw'),(10,4,3050,'Detect'),(10,4,3365,'Opening'),(10,4,6233,'Closing'),(10,4,6246,'Closing'),(10,4,6247,'Opening'),(10,4,6477,'Opening'),(10,4,6478,'Opening'),(10,4,6603,'Attack'),(10,4,7266,'Duel'),(10,4,7267,'Grovel'),(10,4,7355,'Stuck'),(10,4,8386,'Attacking'),(10,4,9077,'Leather'),(10,4,9078,'Cloth'),(10,4,9125,'Generic'),(10,4,16092,'Defensive State(DND)'),(10,4,21184,'Rogue Passive(DND)'),(10,4,21651,'Opening'),(10,4,21652,'Closing'),(10,4,22027,'Remove Insignia'),(10,4,22810,'Opening - No Text'),(10,4,25046,'Arcane Torrent'),(10,4,28734,'Mana Tap'),(10,4,28877,'Arcane Affinity'),(10,5,81,'Dodge'),(10,5,198,'One-Handed Maces'),(10,5,203,'Unarmed'),(10,5,204,'Defense'),(10,5,522,'SPELLDEFENSE(DND)'),(10,5,585,'Smite'),(10,5,669,'Language Orcish'),(10,5,813,'Language Thalassian'),(10,5,822,'Magic Resistance'),(10,5,2050,'Lesser Heal'),(10,5,2382,'Generic'),(10,5,2479,'Honorless Target'),(10,5,3050,'Detect'),(10,5,3365,'Opening'),(10,5,5009,'Wands'),(10,5,5019,'Shoot'),(10,5,6233,'Closing'),(10,5,6246,'Closing'),(10,5,6247,'Opening'),(10,5,6477,'Opening'),(10,5,6478,'Opening'),(10,5,6603,'Attack'),(10,5,7266,'Duel'),(10,5,7267,'Grovel'),(10,5,7355,'Stuck'),(10,5,8386,'Attacking'),(10,5,9078,'Cloth'),(10,5,9125,'Generic'),(10,5,21651,'Opening'),(10,5,21652,'Closing'),(10,5,22027,'Remove Insignia'),(10,5,22810,'Opening - No Text'),(10,5,28730,'Arcane Torrent'),(10,5,28734,'Mana Tap'),(10,5,28877,'Arcane Affinity'),(10,8,81,'Dodge'),(10,8,133,'Fireball'),(10,8,168,'Frost Armor'),(10,8,203,'Unarmed'),(10,8,204,'Defense'),(10,8,227,'Staves'),(10,8,522,'SPELLDEFENSE(DND)'),(10,8,669,'Language Orcish'),(10,8,813,'Language Thalassian'),(10,8,822,'Magic Resistance'),(10,8,2382,'Generic'),(10,8,2479,'Honorless Target'),(10,8,3050,'Detect'),(10,8,3365,'Opening'),(10,8,5009,'Wands'),(10,8,5019,'Shoot'),(10,8,6233,'Closing'),(10,8,6246,'Closing'),(10,8,6247,'Opening'),(10,8,6477,'Opening'),(10,8,6478,'Opening'),(10,8,6603,'Attack'),(10,8,7266,'Duel'),(10,8,7267,'Grovel'),(10,8,7355,'Stuck'),(10,8,8386,'Attacking'),(10,8,9078,'Cloth'),(10,8,9125,'Generic'),(10,8,21651,'Opening'),(10,8,21652,'Closing'),(10,8,22027,'Remove Insignia'),(10,8,22810,'Opening - No Text'),(10,8,28730,'Arcane Torrent'),(10,8,28734,'Mana Tap'),(10,8,28877,'Arcane Affinity'),(10,9,81,'Dodge'),(10,9,203,'Unarmed'),(10,9,204,'Defense'),(10,9,522,'SPELLDEFENSE(DND)'),(10,9,669,'Language Orcish'),(10,9,686,'Shadow Bolt'),(10,9,687,'Demon Skin'),(10,9,813,'Language Thalassian'),(10,9,822,'Magic Resistance'),(10,9,1180,'Daggers'),(10,9,2382,'Generic'),(10,9,2479,'Honorless Target'),(10,9,3050,'Detect'),(10,9,3365,'Opening'),(10,9,5009,'Wands'),(10,9,5019,'Shoot'),(10,9,6233,'Closing'),(10,9,6246,'Closing'),(10,9,6247,'Opening'),(10,9,6477,'Opening'),(10,9,6478,'Opening'),(10,9,6603,'Attack'),(10,9,7266,'Duel'),(10,9,7267,'Grovel'),(10,9,7355,'Stuck'),(10,9,8386,'Attacking'),(10,9,9078,'Cloth'),(10,9,9125,'Generic'),(10,9,21651,'Opening'),(10,9,21652,'Closing'),(10,9,22027,'Remove Insignia'),(10,9,22810,'Opening - No Text'),(10,9,28730,'Arcane Torrent'),(10,9,28734,'Mana Tap'),(10,9,28877,'Arcane Affinity'),(11,1,78,'Heroic Strike'),(11,1,81,'Dodge'),(11,1,107,'Block'),(11,1,198,'One-Handed Maces'),(11,1,201,'One-Handed Swords'),(11,1,202,'Two-Handed Swords'),(11,1,203,'Unarmed'),(11,1,204,'Defense'),(11,1,522,'SPELLDEFENSE(DND)'),(11,1,668,'Language Common'),(11,1,2382,'Generic'),(11,1,2457,'Battle Stance'),(11,1,2479,'Honorless Target'),(11,1,3050,'Detect'),(11,1,3365,'Opening'),(11,1,5301,'Defensive State(DND)'),(11,1,6233,'Closing'),(11,1,6246,'Closing'),(11,1,6247,'Opening'),(11,1,6477,'Opening'),(11,1,6478,'Opening'),(11,1,6562,'Heroic Presence'),(11,1,6603,'Attack'),(11,1,7266,'Duel'),(11,1,7267,'Grovel'),(11,1,7355,'Stuck'),(11,1,8386,'Attacking'),(11,1,8737,'Mail'),(11,1,9077,'Leather'),(11,1,9078,'Cloth'),(11,1,9116,'Shield'),(11,1,9125,'Generic'),(11,1,20579,'Shadow Resistance'),(11,1,21651,'Opening'),(11,1,21652,'Closing'),(11,1,22027,'Remove Insignia'),(11,1,22810,'Opening - No Text'),(11,1,28875,'Gemcutting'),(11,1,28880,'Gift of the Naaru'),(11,1,29932,'Language Draenei'),(11,1,32215,'Victorious State'),(11,2,81,'Dodge'),(11,2,107,'Block'),(11,2,198,'One-Handed Maces'),(11,2,199,'Two-Handed Maces'),(11,2,203,'Unarmed'),(11,2,204,'Defense'),(11,2,522,'SPELLDEFENSE(DND)'),(11,2,635,'Holy Light'),(11,2,668,'Language Common'),(11,2,2382,'Generic'),(11,2,2479,'Honorless Target'),(11,2,3050,'Detect'),(11,2,3365,'Opening'),(11,2,6233,'Closing'),(11,2,6246,'Closing'),(11,2,6247,'Opening'),(11,2,6477,'Opening'),(11,2,6478,'Opening'),(11,2,6562,'Heroic Presence'),(11,2,6603,'Attack'),(11,2,7266,'Duel'),(11,2,7267,'Grovel'),(11,2,7355,'Stuck'),(11,2,8386,'Attacking'),(11,2,8737,'Mail'),(11,2,9077,'Leather'),(11,2,9078,'Cloth'),(11,2,9116,'Shield'),(11,2,9125,'Generic'),(11,2,21084,'Seal of Righteousness'),(11,2,20579,'Shadow Resistance'),(11,2,21651,'Opening'),(11,2,21652,'Closing'),(11,2,22027,'Remove Insignia'),(11,2,22810,'Opening - No Text'),(11,2,27762,'Libram'),(11,2,28875,'Gemcutting'),(11,2,28880,'Gift of the Naaru'),(11,2,29932,'Language Draenei'),(11,3,75,'Auto Shot'),(11,3,81,'Dodge'),(11,3,201,'One-Handed Swords'),(11,3,203,'Unarmed'),(11,3,204,'Defense'),(11,3,522,'SPELLDEFENSE(DND)'),(11,3,668,'Language Common'),(11,3,2382,'Generic'),(11,3,2479,'Honorless Target'),(11,3,2973,'Raptor Strike'),(11,3,3050,'Detect'),(11,3,3365,'Opening'),(11,3,5011,'Crossbows'),(11,3,6233,'Closing'),(11,3,6246,'Closing'),(11,3,6247,'Opening'),(11,3,6477,'Opening'),(11,3,6478,'Opening'),(11,3,6562,'Heroic Presence'),(11,3,6603,'Attack'),(11,3,7266,'Duel'),(11,3,7267,'Grovel'),(11,3,7355,'Stuck'),(11,3,8386,'Attacking'),(11,3,9077,'Leather'),(11,3,9078,'Cloth'),(11,3,9125,'Generic'),(11,3,13358,'Defensive State(DND)'),(11,3,20579,'Shadow Resistance'),(11,3,21651,'Opening'),(11,3,21652,'Closing'),(11,3,22027,'Remove Insignia'),(11,3,22810,'Opening - No Text'),(11,3,24949,'Defensive State 2(DND)'),(11,3,28875,'Gemcutting'),(11,3,28880,'Gift of the Naaru'),(11,3,29932,'Language Draenei'),(11,3,34082,'Advantaged State(DND)'),(11,5,81,'Dodge'),(11,5,198,'One-Handed Maces'),(11,5,203,'Unarmed'),(11,5,204,'Defense'),(11,5,522,'SPELLDEFENSE(DND)'),(11,5,585,'Smite'),(11,5,668,'Language Common'),(11,5,2050,'Lesser Heal'),(11,5,2382,'Generic'),(11,5,2479,'Honorless Target'),(11,5,3050,'Detect'),(11,5,3365,'Opening'),(11,5,5009,'Wands'),(11,5,5019,'Shoot'),(11,5,6233,'Closing'),(11,5,6246,'Closing'),(11,5,6247,'Opening'),(11,5,6477,'Opening'),(11,5,6478,'Opening'),(11,5,6603,'Attack'),(11,5,7266,'Duel'),(11,5,7267,'Grovel'),(11,5,7355,'Stuck'),(11,5,8386,'Attacking'),(11,5,9078,'Cloth'),(11,5,9125,'Generic'),(11,5,20579,'Shadow Resistance'),(11,5,21651,'Opening'),(11,5,21652,'Closing'),(11,5,22027,'Remove Insignia'),(11,5,22810,'Opening - No Text'),(11,5,28875,'Gemcutting'),(11,5,28878,'Inspiring Presence'),(11,5,28880,'Gift of the Naaru'),(11,5,29932,'Language Draenei'),(11,7,81,'Dodge'),(11,7,107,'Block'),(11,7,198,'One-Handed Maces'),(11,7,203,'Unarmed'),(11,7,204,'Defense'),(11,7,227,'Staves'),(11,7,331,'Healing Wave'),(11,7,403,'Lightning Bolt'),(11,7,522,'SPELLDEFENSE(DND)'),(11,7,668,'Language Common'),(11,7,2382,'Generic'),(11,7,2479,'Honorless Target'),(11,7,3050,'Detect'),(11,7,3365,'Opening'),(11,7,6233,'Closing'),(11,7,6246,'Closing'),(11,7,6247,'Opening'),(11,7,6477,'Opening'),(11,7,6478,'Opening'),(11,7,6603,'Attack'),(11,7,7266,'Duel'),(11,7,7267,'Grovel'),(11,7,7355,'Stuck'),(11,7,8386,'Attacking'),(11,7,9077,'Leather'),(11,7,9078,'Cloth'),(11,7,9116,'Shield'),(11,7,9125,'Generic'),(11,7,20579,'Shadow Resistance'),(11,7,21651,'Opening'),(11,7,21652,'Closing'),(11,7,22027,'Remove Insignia'),(11,7,22810,'Opening - No Text'),(11,7,27763,'Totem'),(11,7,28875,'Gemcutting'),(11,7,28878,'Inspiring Presence'),(11,7,28880,'Gift of the Naaru'),(11,7,29932,'Language Draenei'),(11,8,81,'Dodge'),(11,8,133,'Fireball'),(11,8,168,'Frost Armor'),(11,8,203,'Unarmed'),(11,8,204,'Defense'),(11,8,227,'Staves'),(11,8,522,'SPELLDEFENSE(DND)'),(11,8,668,'Language Common'),(11,8,2382,'Generic'),(11,8,2479,'Honorless Target'),(11,8,3050,'Detect'),(11,8,3365,'Opening'),(11,8,5009,'Wands'),(11,8,5019,'Shoot'),(11,8,6233,'Closing'),(11,8,6246,'Closing'),(11,8,6247,'Opening'),(11,8,6477,'Opening'),(11,8,6478,'Opening'),(11,8,6603,'Attack'),(11,8,7266,'Duel'),(11,8,7267,'Grovel'),(11,8,7355,'Stuck'),(11,8,8386,'Attacking'),(11,8,9078,'Cloth'),(11,8,9125,'Generic'),(11,8,20579,'Shadow Resistance'),(11,8,21651,'Opening'),(11,8,21652,'Closing'),(11,8,22027,'Remove Insignia'),(11,8,22810,'Opening - No Text'),(11,8,28875,'Gemcutting'),(11,8,28878,'Inspiring Presence'),(11,8,28880,'Gift of the Naaru'),(11,8,29932,'Language Draenei');
/*!40000 ALTER TABLE `playercreateinfo_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_creature`
--

DROP TABLE IF EXISTS `pool_creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_creature` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`pool_entry`,`guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_creature`
--

LOCK TABLES `pool_creature` WRITE;
/*!40000 ALTER TABLE `pool_creature` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_creature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_gameobject`
--

DROP TABLE IF EXISTS `pool_gameobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_gameobject` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`,`pool_entry`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_gameobject`
--

LOCK TABLES `pool_gameobject` WRITE;
/*!40000 ALTER TABLE `pool_gameobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_gameobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_pool`
--

DROP TABLE IF EXISTS `pool_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_pool` (
  `pool_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mother_pool` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`pool_id`,`mother_pool`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_pool`
--

LOCK TABLES `pool_pool` WRITE;
/*!40000 ALTER TABLE `pool_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_template`
--

DROP TABLE IF EXISTS `pool_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Max number of objects (0) is no limit',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_template`
--

LOCK TABLES `pool_template` WRITE;
/*!40000 ALTER TABLE `pool_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospecting_loot_template`
--

DROP TABLE IF EXISTS `prospecting_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospecting_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospecting_loot_template`
--

LOCK TABLES `prospecting_loot_template` WRITE;
/*!40000 ALTER TABLE `prospecting_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospecting_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_end_scripts`
--

DROP TABLE IF EXISTS `quest_end_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_end_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_end_scripts`
--

LOCK TABLES `quest_end_scripts` WRITE;
/*!40000 ALTER TABLE `quest_end_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_end_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_start_scripts`
--

DROP TABLE IF EXISTS `quest_start_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_start_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_start_scripts`
--

LOCK TABLES `quest_start_scripts` WRITE;
/*!40000 ALTER TABLE `quest_start_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_start_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_template`
--

DROP TABLE IF EXISTS `quest_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Method` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `ZoneOrSort` smallint(6) NOT NULL DEFAULT '0',
  `SkillOrClass` smallint(6) NOT NULL DEFAULT '0',
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `QuestLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredRaces` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillValue` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RepObjectiveFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RepObjectiveValue` mediumint(9) NOT NULL DEFAULT '0',
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMinRepValue` mediumint(9) NOT NULL DEFAULT '0',
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMaxRepValue` mediumint(9) NOT NULL DEFAULT '0',
  `SuggestedPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LimitTime` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestFlags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpecialFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CharTitleId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PrevQuestId` mediumint(9) NOT NULL DEFAULT '0',
  `NextQuestId` mediumint(9) NOT NULL DEFAULT '0',
  `ExclusiveGroup` mediumint(9) NOT NULL DEFAULT '0',
  `NextQuestInChain` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SrcItemId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SrcItemCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SrcSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` text,
  `Details` text,
  `Objectives` text,
  `OfferRewardText` text,
  `RequestItemsText` text,
  `EndText` text,
  `ObjectiveText1` text,
  `ObjectiveText2` text,
  `ObjectiveText3` text,
  `ObjectiveText4` text,
  `ReqItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqSourceId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSourceId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSourceId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSourceId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSourceCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqSourceCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqSourceCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqSourceCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqSourceRef1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReqSourceRef2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReqSourceRef3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReqSourceRef4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReqCreatureOrGOId1` mediumint(9) NOT NULL DEFAULT '0',
  `ReqCreatureOrGOId2` mediumint(9) NOT NULL DEFAULT '0',
  `ReqCreatureOrGOId3` mediumint(9) NOT NULL DEFAULT '0',
  `ReqCreatureOrGOId4` mediumint(9) NOT NULL DEFAULT '0',
  `ReqCreatureOrGOCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqCreatureOrGOCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqCreatureOrGOCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqCreatureOrGOCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqSpellCast1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSpellCast2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSpellCast3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ReqSpellCast4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepFaction5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
  `RewRepValue1` mediumint(9) NOT NULL DEFAULT '0',
  `RewRepValue2` mediumint(9) NOT NULL DEFAULT '0',
  `RewRepValue3` mediumint(9) NOT NULL DEFAULT '0',
  `RewRepValue4` mediumint(9) NOT NULL DEFAULT '0',
  `RewRepValue5` mediumint(9) NOT NULL DEFAULT '0',
  `RewHonorableKills` int(10) unsigned NOT NULL DEFAULT '0',
  `RewOrReqMoney` int(11) NOT NULL DEFAULT '0',
  `RewMoneyMaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `RewSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewSpellCast` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewMailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewMailDelaySecs` int(11) unsigned NOT NULL DEFAULT '0',
  `PointMapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PointX` float NOT NULL DEFAULT '0',
  `PointY` float NOT NULL DEFAULT '0',
  `PointOpt` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay1` int(11) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay2` int(11) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay3` int(11) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay4` int(11) unsigned NOT NULL DEFAULT '0',
  `IncompleteEmote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CompleteEmote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay1` int(11) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay2` int(11) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay3` int(11) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay4` int(11) unsigned NOT NULL DEFAULT '0',
  `StartScript` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `CompleteScript` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_template`
--

LOCK TABLES `quest_template` WRITE;
/*!40000 ALTER TABLE `quest_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_loot_template`
--

DROP TABLE IF EXISTS `reference_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_loot_template`
--

LOCK TABLES `reference_loot_template` WRITE;
/*!40000 ALTER TABLE `reference_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserved_name`
--

DROP TABLE IF EXISTS `reserved_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player Reserved Names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserved_name`
--

LOCK TABLES `reserved_name` WRITE;
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_discovery_template`
--

DROP TABLE IF EXISTS `skill_discovery_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_discovery_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellId of the discoverable spell',
  `reqSpell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'spell requirement',
  `chance` float NOT NULL DEFAULT '0' COMMENT 'chance to discover',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Discovery System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_discovery_template`
--

LOCK TABLES `skill_discovery_template` WRITE;
/*!40000 ALTER TABLE `skill_discovery_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_discovery_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_extra_item_template`
--

DROP TABLE IF EXISTS `skill_extra_item_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_extra_item_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellId of the item creation spell',
  `requiredSpecialization` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Specialization spell id',
  `additionalCreateChance` float NOT NULL DEFAULT '0' COMMENT 'chance to create add',
  `additionalMaxNum` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'max num of adds',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Specialization System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_extra_item_template`
--

LOCK TABLES `skill_extra_item_template` WRITE;
/*!40000 ALTER TABLE `skill_extra_item_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_extra_item_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_fishing_base_level`
--

DROP TABLE IF EXISTS `skill_fishing_base_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_fishing_base_level`
--

LOCK TABLES `skill_fishing_base_level` WRITE;
/*!40000 ALTER TABLE `skill_fishing_base_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_fishing_base_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skinning_loot_template`
--

DROP TABLE IF EXISTS `skinning_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skinning_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `lootcondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `condition_value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skinning_loot_template`
--

LOCK TABLES `skinning_loot_template` WRITE;
/*!40000 ALTER TABLE `skinning_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `skinning_loot_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_affect`
--

DROP TABLE IF EXISTS `spell_affect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_affect` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `effectId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`effectId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_affect`
--

LOCK TABLES `spell_affect` WRITE;
/*!40000 ALTER TABLE `spell_affect` DISABLE KEYS */;
INSERT INTO `spell_affect` VALUES (5420,2,17669763891408),(8875,1,4398046511104),(11069,0,1),(11070,0,32),(11071,0,1048576),(11083,0,12714007),(11124,0,146931735),(11151,0,131808),(11160,0,4328653792),(11175,1,1048576),(11207,0,131808),(11222,0,536877056),(11242,0,536875008),(11247,0,8192),(12042,0,551557879),(12042,1,551557879),(12042,2,551557879),(12043,0,557842485),(12285,0,1),(12286,0,32),(12287,1,128),(12295,1,33554432),(12295,2,4398046511104),(12301,0,256),(12303,1,17592186044416),(12308,0,16384),(12318,0,549755879424),(12321,0,549756010496),(12321,1,549756010496),(12330,0,2097152),(12338,0,1),(12339,0,1),(12340,0,1),(12341,0,1),(12351,0,12714007),(12378,0,146931735),(12398,0,146931735),(12399,0,146931735),(12400,0,146931735),(12467,0,536875008),(12469,0,536875008),(12472,1,3829401765),(12473,0,32),(12496,0,1048576),(12497,0,1048576),(12518,0,4328653792),(12519,0,4328653792),(12536,0,549460727),(12569,1,1048576),(12571,1,1048576),(12658,0,32),(12659,0,32),(12665,1,128),(12666,1,128),(12672,0,131808),(12676,1,33554432),(12676,2,4398046511104),(12677,1,33554432),(12677,2,4398046511104),(12697,0,1),(12788,1,17592186044416),(12789,1,17592186044416),(12810,0,16384),(12811,0,16384),(12818,0,256),(12835,0,549756010496),(12835,1,549756010496),(12836,0,549756010496),(12836,1,549756010496),(12837,0,549756010496),(12837,1,549756010496),(12838,0,549756010496),(12838,1,549756010496),(12839,0,536877056),(12840,0,536877056),(12841,0,536877056),(12842,0,536877056),(12857,0,549755879424),(12858,0,549755879424),(12860,0,549755879424),(12861,0,549755879424),(12862,0,2097152),(12945,1,4096),(12952,0,131808),(12953,0,131808),(12954,0,131808),(12957,0,131808),(13733,0,4),(13733,1,17179869184),(13742,0,96),(13743,0,64),(13865,0,4),(13865,1,17179869184),(13866,0,4),(13866,1,17179869184),(13872,0,96),(13875,0,64),(13975,0,4194304),(13975,1,4194304),(13976,0,1792),(13979,0,1792),(13980,0,1792),(13981,0,16777216),(13981,1,2048),(14057,0,25769804548),(14062,0,4194304),(14062,1,4194304),(14063,0,4194304),(14063,1,4194304),(14064,0,4194304),(14064,1,4194304),(14065,0,4194304),(14065,1,4194304),(14066,0,16777216),(14066,1,2048),(14072,0,25769804548),(14073,0,25769804548),(14074,0,25769804548),(14075,0,25769804548),(14076,0,16777344),(14076,1,16777344),(14082,0,1280),(14083,0,1280),(14094,0,16777344),(14094,1,16777344),(14113,0,122880),(14114,0,122880),(14115,0,122880),(14116,0,122880),(14117,0,122880),(14128,0,26407337998),(14132,0,26407337998),(14135,0,26407337998),(14136,0,26407337998),(14137,0,26407337998),(14143,0,67109382),(14149,0,67109382),(14162,0,131072),(14163,0,131072),(14164,0,131072),(14168,0,524288),(14169,0,524288),(14174,0,2097152),(14175,0,2097152),(14176,0,2097152),(14177,0,53151400734),(14179,0,38658768896),(14520,0,10324017267055),(14523,1,139589583211),(14523,2,139589583211),(14743,0,5034785259152),(14747,0,2),(14750,0,16),(14751,0,18446744073709551615),(14751,1,18446744073709551615),(14770,0,2),(14771,0,2),(14772,0,16),(14780,0,10324017267055),(14781,0,10324017267055),(14782,0,10324017267055),(14783,0,10324017267055),(14784,1,139589583211),(14784,2,139589583211),(14785,1,139589583211),(14785,2,139589583211),(14786,1,139589583211),(14786,2,139589583211),(14787,1,139589583211),(14787,2,139589583211),(14908,0,64),(14909,1,1048704),(14911,0,137438953984),(14912,0,267264),(14913,0,17180139008),(15012,0,17180139008),(15013,0,267264),(15014,0,267264),(15017,1,1048704),(15018,0,137438953984),(15020,0,64),(15047,0,131808),(15052,0,131808),(15053,0,131808),(15257,0,4406678954000),(15259,0,8623497216),(15259,1,4398054932480),(15260,0,4681624166400),(15272,0,14611588571396),(15307,0,8623497216),(15307,1,4398054932480),(15308,0,8623497216),(15308,1,4398054932480),(15309,0,8623497216),(15309,1,4398054932480),(15310,0,8623497216),(15310,1,4398054932480),(15318,0,14611588571396),(15320,0,14611588571396),(15327,0,4681624166400),(15328,0,4681624166400),(15329,0,4681624166400),(15330,0,4681624166400),(15331,0,4406678954000),(15332,0,4406678954000),(15333,0,4406678954000),(15334,0,4406678954000),(16035,0,2416967683),(16038,0,1073741824),(16039,0,2416967683),(16041,0,3),(16043,0,8),(16043,1,4294967296),(16086,0,32),(16086,1,32),(16086,2,4),(16089,0,20723008519),(16105,0,2416967683),(16106,0,2416967683),(16106,1,2416967683),(16107,0,2416967683),(16108,0,2416967683),(16109,0,2416967683),(16110,0,2416967683),(16111,0,2416967683),(16112,0,2416967683),(16117,0,3),(16118,0,3),(16119,0,3),(16120,0,3),(16130,0,8),(16130,1,4294967296),(16160,0,1073741824),(16161,0,1073741824),(16166,0,2416967683),(16166,1,2416967683),(16173,0,537399320),(16179,0,192),(16181,0,448),(16184,0,512),(16184,1,512),(16187,0,24576),(16187,1,24576),(16188,0,2499),(16189,0,1099578990592),(16205,0,24576),(16205,1,24576),(16206,0,24576),(16206,1,24576),(16207,0,24576),(16207,1,24576),(16208,0,24576),(16208,1,24576),(16209,1,512),(16214,0,192),(16215,0,192),(16216,0,192),(16217,0,192),(16222,0,537399320),(16223,0,537399320),(16224,0,537399320),(16225,0,537399320),(16230,0,448),(16232,0,448),(16233,0,448),(16234,0,448),(16246,0,2416967683),(16258,0,32768),(16258,1,262144),(16259,0,65536),(16259,1,131072),(16261,0,1024),(16266,0,4194304),(16266,1,16777216),(16266,2,8388608),(16290,0,1024),(16291,0,1024),(16293,0,32768),(16293,1,262144),(16295,0,65536),(16295,1,131072),(16493,0,1430935047407),(16494,0,1430935047407),(16513,0,34359861248),(16513,1,122880),(16513,2,122880),(16514,0,34359861248),(16514,1,122880),(16514,2,122880),(16515,0,34359861248),(16515,1,122880),(16515,2,122880),(16544,2,4),(16578,0,3),(16579,0,3),(16580,0,3),(16581,0,3),(16582,0,3),(16719,0,34359861248),(16719,1,122880),(16719,2,122880),(16720,0,34359861248),(16720,1,122880),(16720,2,122880),(16757,0,131232),(16757,1,576),(16758,0,131232),(16758,1,576),(16763,0,32),(16765,0,32),(16766,0,32),(16814,0,5),(16815,0,5),(16816,0,5),(16817,0,5),(16818,0,5),(16819,0,582878607968007),(16820,0,582878607968007),(16821,0,2),(16821,1,2),(16821,2,2),(16822,0,2),(16822,1,2),(16822,2,2),(16833,0,246294396272640),(16834,0,246294396272640),(16835,0,246294396272640),(16836,1,768),(16839,1,768),(16840,1,768),(16850,1,1),(16870,0,4512331310825215),(16886,0,16777829),(16896,0,7),(16896,1,7),(16897,0,7),(16897,1,7),(16899,0,7),(16899,1,7),(16900,0,7),(16900,1,7),(16901,0,7),(16901,1,7),(16918,0,137438953984),(16919,0,137438953984),(16920,0,137438953984),(16923,1,1),(16924,1,1),(16934,0,4503874505279488),(16934,1,4398046515200),(16935,0,4503874505279488),(16935,1,4398046515200),(16936,0,4503874505279488),(16936,1,4398046515200),(16937,0,4503874505279488),(16937,1,4398046515200),(16938,0,4503874505279488),(16938,1,4398046515200),(16947,1,33554432),(16948,1,33554432),(16949,1,33554432),(16966,0,32768),(16966,1,1099511627776),(16968,0,32768),(16968,1,1099511627776),(16998,0,4096),(16998,2,4096),(16999,0,4096),(16999,2,4096),(17104,0,68719476976),(17104,1,68719476976),(17111,0,16),(17112,0,16),(17113,0,16),(17114,0,16),(17115,0,16),(17116,0,563087660810849),(17118,0,4509990553490423),(17118,1,1143698254726992),(17119,0,4509990553490423),(17119,1,1143698254726992),(17120,0,4509990553490423),(17120,1,1143698254726992),(17121,0,4509990553490423),(17121,1,1143698254726992),(17122,0,4509990553490423),(17122,1,1143698254726992),(17123,0,128),(17124,0,128),(17191,0,64),(17322,0,5781135728644),(17323,0,5781135728644),(17768,0,1073741824),(17768,1,2147483648),(17778,0,18416819766245),(17779,0,18416819766245),(17780,0,18416819766245),(17781,0,18416819766245),(17782,0,18416819766245),(17788,1,549755813888),(17789,1,549755813888),(17790,1,549755813888),(17791,1,549755813888),(17792,1,549755813888),(17904,0,0),(17912,0,0),(17913,0,0),(17914,0,0),(17915,0,0),(17916,0,0),(17917,0,18416819766181),(17917,1,18416819766245),(17918,0,18416819766181),(17918,1,18416819766245),(17927,0,256),(17929,0,256),(17930,0,256),(17941,0,1),(17954,0,824633725796),(17954,1,824633725796),(17954,2,274877906944),(17955,0,824633725796),(17955,1,824633725796),(17955,2,274877906944),(17956,0,824633725796),(17956,1,824633725796),(17956,2,274877906944),(17957,0,824633725796),(17957,1,824633725796),(17957,2,274877906944),(17958,0,824633725796),(17958,1,824633725796),(17958,2,274877906944),(17959,0,18416819766245),(18126,0,4096),(18127,0,4096),(18130,0,18416819766245),(18131,0,18416819766245),(18132,0,18416819766245),(18133,0,18416819766245),(18134,0,18416819766245),(18135,0,18416819766245),(18136,0,18416819766245),(18174,0,7814698026010),(18175,0,7814698026010),(18176,0,7814698026010),(18177,0,7814698026010),(18178,0,7814698026010),(18179,0,32768),(18180,0,32768),(18213,0,16384),(18213,1,148552186381338),(18218,0,7780338025498),(18219,0,7780338025498),(18271,0,18773302617227),(18271,1,18773302617227),(18272,0,18773302617227),(18272,1,18773302617227),(18273,0,18773302617227),(18273,1,18773302617227),(18274,0,18773302617227),(18274,1,18773302617227),(18275,0,18773302617227),(18275,1,18773302617227),(18288,0,8589935616),(18288,1,4194304),(18372,1,148552186381338),(18427,0,131078),(18428,0,131078),(18429,0,131078),(18544,0,4475405770896),(18544,1,77348741264),(18544,2,4398057029632),(18547,0,4475405770896),(18547,1,77348741264),(18547,2,4398057029632),(18548,0,4475405770896),(18548,1,77348741264),(18548,2,4398057029632),(18549,0,4475405770896),(18549,1,77348741264),(18549,2,4398057029632),(18550,0,4475405770896),(18550,1,77348741264),(18550,2,4398057029632),(18703,1,16777216),(18704,1,16777216),(18731,0,268435456),(18743,0,268435456),(18744,0,268435456),(18748,0,134217728),(18749,0,134217728),(18750,0,134217728),(18767,1,131072),(18768,1,131072),(18821,0,2048),(18821,1,2048),(18821,2,2048),(18822,0,2048),(18822,1,2048),(18822,2,2048),(18827,0,1024),(18829,0,1024),(19239,0,24),(19239,1,4),(19245,0,24),(19245,1,35184372088836),(19416,0,581096190769664),(19417,0,581096190769664),(19418,0,581096190769664),(19419,0,581096190769664),(19420,0,581096190769664),(19461,0,12288),(19461,1,12288),(19462,0,12288),(19462,1,12288),(19464,0,1099511644160),(19464,1,549755813888),(19464,2,19241453535232),(19465,0,1099511644160),(19465,1,549755813888),(19465,2,19241453535232),(19466,0,1099511644160),(19466,1,549755813888),(19466,2,19241453535232),(19467,0,1099511644160),(19467,1,549755813888),(19467,2,19241453535232),(19468,0,1099511644160),(19468,1,549755813888),(19468,2,19241453535232),(19485,0,4295366657),(19487,0,4295366657),(19488,0,4295366657),(19489,0,4295366657),(19490,0,4295366657),(19498,0,581096190769665),(19499,0,581096190769665),(19500,0,581096190769665),(19549,0,524288),(19550,0,524288),(19551,0,524288),(19552,0,1048576),(19552,1,2199023255552),(19553,0,1048576),(19553,1,2199023255552),(19554,0,1048576),(19554,1,2199023255552),(19555,0,1048576),(19555,1,2199023255552),(19556,0,1048576),(19556,1,2199023255552),(19559,0,2097152),(19560,0,2097152),(19572,1,8388608),(19573,1,8388608),(19583,0,134217728),(19584,0,134217728),(19585,0,134217728),(19586,0,134217728),(19587,0,134217728),(19590,0,536870912),(19592,0,536870912),(19598,0,1073741824),(19599,0,1073741824),(19600,0,1073741824),(19601,0,1073741824),(19602,0,1073741824),(19609,0,67108864),(19610,0,67108864),(19612,0,67108864),(20101,0,4398214283776),(20102,0,4398214283776),(20103,0,4398214283776),(20104,0,4398214283776),(20105,0,4398214283776),(20138,0,64),(20139,0,64),(20140,0,64),(20141,0,64),(20142,0,64),(20174,0,128),(20174,1,16),(20175,0,128),(20175,1,16),(20216,0,281478200033280),(20224,0,134218752),(20225,0,134218752),(20237,0,3221225472),(20238,0,3221225472),(20239,0,3221225472),(20249,0,1073741824),(20250,0,1073741824),(20251,0,1073741824),(20254,0,131072),(20254,1,131072),(20254,2,131072),(20255,0,131072),(20255,1,131072),(20255,2,131072),(20256,0,131072),(20256,1,131072),(20256,2,131072),(20330,0,134218752),(20331,0,134218752),(20332,0,134218752),(20335,0,536870912),(20336,0,536870912),(20337,0,536870912),(20359,0,2147483648),(20360,0,2147483648),(20361,0,2147483648),(20468,1,1),(20469,1,1),(20470,1,1),(20575,0,67108864),(20575,1,67108864),(20576,0,33554432),(21873,0,246294396272640),(21881,0,122880),(21887,0,3763103747823),(21895,0,67362816),(21899,0,256),(21942,1,134217728),(22008,0,557842485),(23025,0,65536),(23047,0,4398046511104),(23047,1,4398046511104),(23158,0,512),(23300,0,536870912),(23555,0,18416819766245),(23561,0,16384),(23566,0,4096),(23724,0,246294396272640),(23726,0,8192),(23726,1,65536),(24348,0,2097152),(24429,0,16384),(24431,0,17179869184),(24460,0,268435840),(24469,0,16777216),(24499,0,1024),(24542,1,240),(24546,1,17180139008),(24691,0,12288),(24691,1,12288),(24943,0,68719476976),(24943,1,68719476976),(24944,0,68719476976),(24944,1,68719476976),(24945,0,68719476976),(24945,1,68719476976),(24946,0,68719476976),(24946,1,68719476976),(26106,0,268435456),(26109,0,549756796928),(26112,0,32),(26118,0,67108864),(26118,1,67108864),(26174,0,32),(27789,1,272630272),(27790,1,272630272),(27828,0,5034785259152),(27846,0,32),(27850,0,64),(27851,0,4096),(28088,0,122880),(28107,0,262144),(28539,0,4096),(28682,0,275024838679),(28743,0,240),(28746,1,4294968326),(28751,0,135168),(28755,0,32),(28763,0,67108864),(28774,0,32768),(28775,0,4294967296),(28787,0,4096),(28807,0,64),(28808,0,17465351744),(28811,0,33685510),(28814,0,131072),(28815,0,33554438),(28818,0,537399320),(28821,0,1024),(28829,0,2),(28831,0,1),(28842,0,4294984768),(28843,0,557056),(28844,0,1024),(28852,0,512),(28852,1,536870912),(28855,0,2048),(28855,1,4503599627370496),(28999,0,3),(29000,0,3),(29005,0,2416967683),(29063,0,2499),(29079,0,4194304),(29079,1,16777216),(29079,2,8388608),(29080,0,4194304),(29080,1,16777216),(29080,2,8388608),(29171,0,16384),(29187,0,448),(29187,1,1143698254726992),(29189,0,448),(29189,1,1143698254726992),(29191,0,448),(29191,1,1143698254726992),(29202,0,64),(29205,0,64),(29206,0,64),(29438,0,13631703),(29439,0,13631703),(29440,0,13631703),(29721,0,17179869184),(29723,0,34359746576),(29723,1,34359746576),(29724,0,34359746576),(29724,1,34359746576),(29725,0,34359746576),(29725,1,34359746576),(29759,1,8097866108655),(29760,1,8097866108655),(29761,1,8097866108655),(29762,1,8097866108655),(29763,1,8097866108655),(29776,0,17179869184),(29787,0,3763103747823),(29790,0,3763103747823),(29792,0,3763103747823),(29836,0,68719476768),(29859,0,68719476768),(29888,0,1073741824),(29889,0,1073741824),(29976,0,557842485),(30049,0,524288),(30051,0,524288),(30052,0,524288),(30054,0,34359738368),(30057,0,34359738368),(30060,0,68719477762),(30060,1,68719477762),(30060,2,148552186381338),(30061,0,68719477762),(30061,1,68719477762),(30061,2,148552186381338),(30062,0,68719477762),(30062,1,68719477762),(30062,2,148552186381338),(30063,0,68719477762),(30063,1,68719477762),(30063,2,148552186381338),(30064,0,68719477762),(30064,1,68719477762),(30064,2,148552186381338),(30085,0,7814698026010),(30085,1,1024),(30085,2,2),(30086,0,7814698026010),(30086,1,1024),(30086,2,2),(30017,0,0),(30143,0,137438953472),(30144,0,137438953472),(30145,0,137438953472),(30242,0,35184372088832),(30245,0,35184372088832),(30246,0,35184372088832),(30247,0,35184372088832),(30248,0,35184372088832),(30251,0,18416819765541),(30256,0,18416819765541),(30280,0,0),(30288,0,274877906945),(30289,0,274877906945),(30290,0,274877906945),(30291,0,274877906945),(30292,0,274877906945),(30319,1,70368744177664),(30320,1,70368744177664),(30321,1,70368744177664),(30326,0,262160),(30327,0,262160),(30328,0,262160),(30812,0,13712489976859),(30813,0,13712489976859),(30814,0,13712489976859),(30872,0,256),(30873,0,256),(30892,0,134217728),(30893,0,134217728),(31216,1,33554436),(31217,1,33554436),(31218,1,33554436),(31219,1,33554436),(31220,1,33554436),(31226,0,122880),(31227,0,122880),(31234,0,1100150342415),(31234,1,1048832),(31235,0,1100150342415),(31235,1,1048832),(31236,0,1100150342415),(31236,1,1048832),(31237,0,1100150342415),(31237,1,1048832),(31238,0,1100150342415),(31238,1,1048832),(31571,0,8589934592),(31572,0,8589934592),(31573,0,8589934592),(31579,0,2097152),(31579,1,2048),(31582,0,2097152),(31582,1,2048),(31583,0,2097152),(31583,1,2048),(31656,0,1),(31657,0,1),(31658,0,1),(31659,0,1),(31660,0,1),(31670,0,21474836992),(31672,0,21474836992),(31682,0,32),(31682,1,32),(31683,0,32),(31683,1,32),(31684,0,32),(31684,1,32),(31685,0,32),(31685,1,32),(31686,0,32),(31686,1,32),(31821,0,67240008),(31825,0,4128),(31825,1,8589934592),(31826,0,4128),(31826,1,8589934592),(31834,0,2147483648),(31844,1,5772872254348),(31845,1,5772872254348),(31848,0,4194304),(31848,1,4194304),(31849,0,4194304),(31849,1,4194304),(31869,0,137438953472),(31870,0,137438953472),(31879,0,34359739392),(31880,0,34359739392),(31881,0,34359739392),(31882,0,34359739392),(31883,0,34359739392),(32043,1,4398214283264),(32203,1,299067192254464),(32381,0,2),(32382,0,2),(32383,0,2),(32412,0,1024),(32477,0,2199023255552),(32483,0,2199023255552),(32484,0,2199023255552),(32601,1,545259528),(32743,0,2048),(32973,0,2416967680),(33018,0,68719476736),(33020,0,1024),(33063,0,4398046511104),(33066,0,2),(33151,0,128),(33151,1,128),(33151,2,128),(33158,0,4096),(33158,1,2048),(33159,0,4096),(33159,1,2048),(33160,0,4096),(33160,1,2048),(33161,0,4096),(33161,1,2048),(33162,0,4096),(33162,1,2048),(33167,0,554050781184),(33171,0,554050781184),(33172,0,554050781184),(33174,0,32),(33174,1,32),(33182,0,32),(33182,1,32),(33186,0,549755813888),(33186,1,549755822208),(33190,0,549755813888),(33190,1,549755822208),(33213,0,8527872),(33214,0,8527872),(33215,0,8527872),(33221,0,8589942784),(33222,0,8589942784),(33223,0,8589942784),(33224,0,8589942784),(33225,0,8589942784),(33333,0,536870912),(33421,0,8589934592),(33557,0,512),(33557,1,536870912),(33565,0,4096),(33600,0,1024),(33600,1,1024),(33601,0,1024),(33601,1,1024),(33602,0,1024),(33602,1,1024),(33603,0,4),(33603,1,1),(33604,0,4),(33604,1,1),(33605,0,4),(33605,1,1),(33606,0,4),(33606,1,1),(33607,0,4),(33607,1,1),(33693,0,32768),(33696,0,1),(33713,0,8589934592),(33714,0,8589934592),(33830,0,137438953472),(33830,1,137438953472),(33877,0,2),(33879,0,32),(33880,0,32),(33886,0,68719476944),(33887,0,68719476944),(33888,0,68719476944),(33889,0,68719476944),(33890,0,68719476944),(34128,0,68719476736),(34129,0,1073741824),(34129,1,1073741824),(34131,0,128),(34131,1,128),(34253,0,1099511627776),(34297,0,8796093022208),(34300,0,8796093022208),(34318,0,1024),(34318,1,137438953472),(34323,0,549764202496),(34453,1,17179869184),(34454,1,17179869184),(34455,0,137438953472),(34455,1,274877906944),(34459,0,137438953472),(34459,1,274877906944),(34460,0,137438953472),(34460,1,274877906944),(34462,1,34359738368),(34464,1,34359738368),(34465,1,34359738368),(34466,1,68719476736),(34467,1,68719476736),(34468,1,68719476736),(34469,1,68719476736),(34470,1,68719476736),(34491,0,70368744177858),(34491,1,128),(34492,0,70368744177858),(34492,1,128),(34493,0,70368744177858),(34493,1,128),(34520,1,0),(34754,0,17179875328),(34936,0,274877906945),(34948,1,32),(34949,1,32),(35029,1,8796093022208),(35030,1,8796093022208),(35098,0,133121),(35099,0,133121),(35104,0,4096),(35104,1,8192),(35110,0,4096),(35110,1,8192),(35111,0,4096),(35111,1,8192),(35363,0,5),(35364,0,5),(35396,1,4398214283264),(35397,1,4398214283264),(35446,0,33554432),(35446,1,33554432),(35448,0,33554432),(35448,1,33554432),(35449,0,33554432),(35449,1,33554432),(35450,0,33554432),(35450,1,33554432),(35451,0,33554432),(35451,1,33554432),(35578,0,685904631),(35581,0,685904631),(36032,0,536870912),(36032,1,536870912),(36413,0,1),(36563,1,516),(36563,2,256),(37166,0,8388608),(37167,0,262144),(37171,0,38658768896),(37180,0,32),(37181,0,17179869184),(37183,0,1099511627776),(37184,0,4398180728832),(37184,1,4398180728832),(37185,0,274877906944),(37186,0,536870912),(37187,0,2199023255552),(37190,0,8),(37191,0,274877906944),(37194,0,8388608),(37207,0,2),(37209,0,1024),(37209,1,137438953472),(37210,0,16384),(37211,0,549755813888),(37212,0,1099511627776),(37223,0,65536),(37224,0,68719476736),(37225,0,128),(37234,0,128),(37240,0,128),(37241,0,2199023255552),(37286,0,16),(37287,0,246294396272640),(37292,0,2251799813685248),(37297,0,17592186044416),(37313,0,64),(37314,0,68719476736),(37316,0,64),(37325,0,64),(37333,0,32768),(37333,1,1099511627776),(37376,0,68719476736),(37380,0,6),(37423,0,4),(37424,0,32768),(37438,0,33),(37439,0,137438953472),(37439,1,274877906944),(37439,2,549755813888),(37441,0,536870912),(37441,1,536870912),(37447,0,1099511627776),(37481,0,128),(37484,0,256),(37485,0,4096),(37505,0,4294967296),(37507,0,2048),(37508,0,4295366656),(37508,1,0),(37512,0,549756796928),(37513,0,1),(37517,0,1430935047407),(37518,0,17179869184),(37522,0,4096),(37535,0,33554432),(37536,0,65536),(37556,0,17179869184),(37564,0,512),(37565,0,4096),(37570,1,1099511627776),(37571,0,128),(37571,1,8388608),(37593,0,64),(37706,0,17465351744),(37721,0,68719476976),(37722,0,448),(37723,0,3221225472),(37736,0,4398046511104),(37736,1,274877906944),(37737,0,64),(37738,0,64),(37739,0,2147483648),(37740,0,1),(37742,0,274877906944),(37760,0,1),(37762,0,68719476736),(37763,0,140737488355328),(37878,0,68719476976),(37879,0,3221225472),(37880,0,17465351744),(37881,0,448),(38314,0,246294396272640),(38321,0,32),(38322,0,256),(38388,0,262144),(38389,0,60129542150),(38392,0,4294967296),(38393,0,1),(38396,0,67108864),(38397,0,2081),(38398,0,536870912),(38399,0,33554432),(38407,0,4294967296),(38408,0,549755813888),(38410,0,512),(38411,0,4096),(38412,0,8192),(38413,0,32768),(38414,0,2),(38415,0,4),(38416,0,4503599635759104),(38416,1,4503599635759104),(38417,0,8589934592),(38420,0,32),(38421,0,17592186044416),(38422,0,32),(38424,0,549755813888),(38425,0,1073741824),(38426,0,2147483648),(38429,0,2416967680),(38434,0,256),(38435,0,128),(38436,0,1),(38447,0,4398046511104),(38447,1,274877906944),(38466,0,2251799813685248),(38499,0,549755813888),(38501,0,128),(38522,0,1073741824),(39805,0,3),(39805,1,3),(39926,1,8796093022208),(39926,2,35184372088832),(39950,0,64),(40389,0,140737488355328),(40460,0,38658768896),(41021,0,274877906944),(41021,1,274877906944),(41026,0,274877906944),(41026,1,274877906944),(41037,0,4672924418048),(41042,0,8388608),(42367,0,68719476736),(43339,0,2416967680),(43725,0,68719476736),(43736,0,16),(43743,1,134218752),(43752,0,256),(43837,0,2147483648),(43840,0,4672924418048),(43841,0,2),(43842,0,4672924418048),(43843,0,4672924418048),(43844,0,2),(43845,0,2),(43850,0,8388608),(43851,0,8388608),(43852,0,8388608),(43854,0,274877906944),(43855,0,274877906944),(43856,0,274877906944),(43857,0,68719476736),(43858,0,68719476736),(43859,0,68719476736),(43860,0,2416967680),(43861,0,2416967680),(43862,0,2416967680),(44292,0,4096),(44293,0,512),(44295,0,2416967680),(44296,0,1),(44297,0,65536),(44299,0,262144),(44300,0,140737488355328),(44301,0,16777216),(44302,0,16777216),(44373,0,0),(46088,0,4672924418048),(46090,0,2),(46091,0,8388608),(46095,0,274877906944),(46096,0,68719476736),(46097,0,2416967680),(46100,0,68719476736),(46833,0,4),(46834,0,64),(46851,0,281474976710656);
/*!40000 ALTER TABLE `spell_affect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_area`
--

DROP TABLE IF EXISTS `spell_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_area` (
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `quest_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aura_spell` mediumint(8) NOT NULL DEFAULT '0',
  `racemask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `autocast` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell`,`area`,`quest_start`,`quest_start_active`,`aura_spell`,`racemask`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_area`
--

LOCK TABLES `spell_area` WRITE;
/*!40000 ALTER TABLE `spell_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_chain`
--

DROP TABLE IF EXISTS `spell_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_chain` (
  `spell_id` mediumint(9) NOT NULL DEFAULT '0',
  `prev_spell` mediumint(9) NOT NULL DEFAULT '0',
  `first_spell` mediumint(9) NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `req_spell` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Additinal Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_chain`
--

LOCK TABLES `spell_chain` WRITE;
/*!40000 ALTER TABLE `spell_chain` DISABLE KEYS */;
INSERT INTO `spell_chain` VALUES (10,0,10,1,0),(17,0,17,1,0),(53,0,53,1,0),(72,0,72,1,0),(78,0,78,1,0),(99,0,99,1,0),(100,0,100,1,0),(116,0,116,1,0),(118,0,118,1,0),(120,0,120,1,0),(122,0,122,1,0),(133,0,133,1,0),(136,0,136,1,0),(139,0,139,1,0),(143,133,133,2,0),(145,143,133,3,0),(168,0,168,1,0),(172,0,172,1,0),(205,116,116,2,0),(284,78,78,2,0),(285,284,78,3,0),(324,0,324,1,0),(325,324,324,2,0),(331,0,331,1,0),(332,331,331,2,0),(339,0,339,1,0),(348,0,348,1,0),(370,0,370,1,0),(403,0,403,1,0),(408,0,408,1,0),(421,0,421,1,0),(453,0,453,1,0),(465,0,465,1,0),(467,0,467,1,0),(469,0,469,1,0),(498,0,498,1,0),(527,0,527,1,0),(529,403,403,2,0),(543,0,543,1,0),(547,332,331,3,0),(548,529,403,3,0),(585,0,585,1,0),(586,0,586,1,0),(587,0,587,1,0),(588,0,588,1,0),(589,0,589,1,0),(591,585,585,2,0),(592,17,17,2,0),(594,589,589,2,0),(596,0,596,1,0),(597,587,587,2,0),(598,591,585,3,0),(600,592,17,3,0),(602,7128,588,3,0),(603,0,603,1,0),(604,0,604,1,0),(605,0,605,1,0),(633,0,633,1,0),(635,0,635,1,0),(639,635,635,2,0),(642,0,642,1,0),(643,10290,465,3,0),(647,639,635,3,0),(686,0,686,1,0),(687,0,687,1,0),(688,0,688,1,0),(689,0,689,1,0),(693,0,693,1,0),(694,0,694,1,0),(695,686,686,2,0),(696,687,687,2,0),(699,689,689,2,0),(702,0,702,1,0),(703,0,703,1,0),(704,0,704,1,0),(705,695,686,3,0),(706,0,706,1,0),(707,348,348,2,0),(709,699,689,3,0),(710,0,710,1,0),(724,0,724,1,0),(740,0,740,1,0),(755,0,755,1,0),(769,780,779,3,0),(770,0,770,1,0),(772,0,772,1,0),(774,0,774,1,0),(778,770,770,2,0),(779,0,779,1,0),(780,779,779,2,0),(781,0,781,1,0),(782,467,467,2,0),(837,205,116,3,0),(845,0,845,1,0),(853,0,853,1,0),(865,122,122,2,0),(879,0,879,1,0),(905,325,324,3,0),(913,547,331,4,0),(915,548,403,4,0),(930,421,421,2,0),(939,913,331,5,0),(943,915,403,5,0),(945,905,324,4,0),(959,939,331,6,0),(970,594,589,3,0),(974,0,974,1,0),(976,0,976,1,0),(980,0,980,1,0),(984,598,585,4,0),(988,527,527,2,0),(990,597,587,3,0),(992,970,589,4,0),(996,596,596,2,0),(1004,984,585,5,0),(1006,602,588,4,0),(1008,0,1008,1,0),(1014,980,980,2,0),(1020,642,642,2,0),(1022,0,1022,1,0),(1026,647,635,4,0),(1032,10291,465,5,0),(1038,0,1038,1,0),(1042,1026,635,5,0),(1058,774,774,2,0),(1062,339,339,2,0),(1064,0,1064,1,0),(1075,782,467,3,0),(1079,0,1079,1,0),(1082,0,1082,1,0),(1086,706,706,2,0),(1088,705,686,4,0),(1094,707,348,3,0),(1098,0,1098,1,0),(1106,1088,686,5,0),(1108,702,702,2,0),(1120,0,1120,1,0),(1126,0,1126,1,0),(1130,0,1130,1,0),(1160,0,1160,1,0),(1243,0,1243,1,0),(1244,1243,1243,2,0),(1245,1244,1243,3,0),(1329,0,1329,1,0),(1430,1058,774,3,0),(1449,0,1449,1,0),(1454,0,1454,1,0),(1455,1454,1454,2,0),(1456,1455,1454,3,0),(1459,0,1459,1,0),(1460,1459,1459,2,0),(1461,1460,1459,3,0),(1463,0,1463,1,0),(1464,0,1464,1,0),(1490,0,1490,1,0),(1495,0,1495,1,0),(1499,0,1499,1,0),(1510,0,1510,1,0),(1513,0,1513,1,0),(1535,0,1535,1,0),(1608,285,78,4,0),(1671,72,72,2,0),(1672,1671,72,3,0),(1714,0,1714,1,0),(1715,0,1715,1,0),(1735,99,99,2,0),(1742,0,1742,1,0),(1752,0,1752,1,0),(1753,1742,1742,2,0),(1754,1753,1742,3,0),(1755,1754,1742,4,0),(1756,1755,1742,5,0),(1757,1752,1752,2,0),(1758,1757,1752,3,0),(1759,1758,1752,4,0),(1760,1759,1752,5,0),(1766,0,1766,1,0),(1767,1766,1766,2,0),(1768,1767,1766,3,0),(1769,1768,1766,4,0),(1776,0,1776,1,0),(1777,1776,1776,2,0),(1784,0,1784,1,0),(1785,1784,1784,2,0),(1786,1785,1784,3,0),(1787,1786,1784,4,0),(1804,0,1804,1,0),(1822,0,1822,1,0),(1823,1822,1822,2,0),(1824,1823,1822,3,0),(1850,0,1850,1,0),(1856,0,1856,1,0),(1857,1856,1856,2,0),(1943,0,1943,1,0),(1949,0,1949,1,0),(1966,0,1966,1,0),(1978,0,1978,1,0),(2006,0,2006,1,0),(2008,0,2008,1,0),(2010,2006,2006,2,0),(2018,0,2018,1,0),(2048,25289,6673,8,0),(2050,0,2050,1,0),(2052,2050,2050,2,0),(2053,2052,2050,3,0),(2054,0,2054,1,0),(2055,2054,2054,2,0),(2060,0,2060,1,0),(2061,0,2061,1,0),(2062,0,2062,1,0),(2070,6770,6770,2,0),(2090,1430,774,4,0),(2091,2090,774,5,0),(2096,0,2096,1,0),(2098,0,2098,1,0),(2108,0,2108,1,0),(2120,0,2120,1,0),(2121,2120,2120,2,0),(2136,0,2136,1,0),(2137,2136,2136,2,0),(2138,2137,2136,3,0),(2259,0,2259,1,0),(2362,0,2362,1,0),(2366,0,2366,1,0),(2368,2366,2366,2,0),(2550,0,2550,1,0),(2575,0,2575,1,0),(2576,2575,2575,2,0),(2589,53,53,2,0),(2590,2589,53,3,0),(2591,2590,53,4,0),(2637,0,2637,1,0),(2643,0,2643,1,0),(2649,0,2649,1,0),(2651,0,2651,1,0),(2652,0,2652,1,0),(2767,992,589,5,0),(2791,1245,1243,4,0),(2800,633,633,2,0),(2812,0,2812,1,0),(2825,0,2825,1,0),(2835,0,2835,1,0),(2837,2835,2835,2,0),(2860,930,421,3,0),(2878,0,2878,1,0),(2894,0,2894,1,0),(2908,0,2908,1,0),(2912,0,2912,1,0),(2941,1094,348,4,0),(2944,0,2944,1,0),(2947,0,2947,1,0),(2948,0,2948,1,0),(2973,0,2973,1,0),(2974,0,2974,1,0),(2983,0,2983,1,0),(3009,3010,16827,8,0),(3010,16832,16827,7,0),(3029,1082,1082,2,0),(3034,0,3034,1,0),(3044,0,3044,1,0),(3100,2018,2018,2,0),(3101,2259,2259,2,0),(3102,2550,2550,2,0),(3104,2108,2108,2,0),(3110,0,3110,1,0),(3111,136,136,2,0),(3140,145,133,4,0),(3273,0,3273,1,0),(3274,3273,3273,2,0),(3413,3102,2550,3,0),(3420,0,3420,1,0),(3421,3420,3420,2,0),(3464,3101,2259,3,0),(3472,1042,635,6,0),(3538,3100,2018,3,0),(3564,2576,2575,3,0),(3570,2368,2366,3,0),(3599,0,3599,1,0),(3627,2091,774,6,0),(3661,3111,136,3,0),(3662,3661,136,4,0),(3698,755,755,2,0),(3699,3698,755,3,0),(3700,3699,755,4,0),(3716,0,3716,1,0),(3738,0,3738,1,0),(3747,600,17,4,0),(3811,3104,2108,3,0),(3908,0,3908,1,0),(3909,3908,3908,2,0),(3910,3909,3908,3,0),(4036,0,4036,1,0),(4037,4036,4036,2,0),(4038,4037,4036,3,0),(4187,0,4187,1,0),(4188,4187,4187,2,0),(4189,4188,4187,3,0),(4190,4189,4187,4,0),(4191,4190,4187,5,0),(4192,4191,4187,6,0),(4193,4192,4187,7,0),(4194,4193,4187,8,0),(5041,4194,4187,9,0),(5042,5041,4187,10,0),(5138,0,5138,1,0),(5143,0,5143,1,0),(5144,5143,5143,2,0),(5145,5144,5143,3,0),(5171,0,5171,1,0),(5176,0,5176,1,0),(5177,5176,5176,2,0),(5178,5177,5176,3,0),(5179,5178,5176,4,0),(5180,5179,5176,5,0),(5185,0,5185,1,0),(5186,5185,5185,2,0),(5187,5186,5185,3,0),(5188,5187,5185,4,0),(5189,5188,5185,5,0),(5195,1062,339,3,0),(5196,5195,339,4,0),(5201,3029,1082,3,0),(5211,0,5211,1,0),(5215,0,5215,1,0),(5217,0,5217,1,0),(5221,0,5221,1,0),(5232,1126,1126,2,0),(5234,6756,1126,4,0),(5242,6673,6673,2,0),(5277,0,5277,1,0),(5308,0,5308,1,0),(5394,0,5394,1,0),(5484,0,5484,1,0),(5487,0,5487,1,0),(5504,0,5504,1,0),(5505,5504,5504,2,0),(5506,5505,5504,3,0),(5570,0,5570,1,0),(5573,498,498,2,0),(5588,853,853,2,0),(5589,5588,853,3,0),(5599,1022,1022,2,0),(5614,879,879,2,0),(5615,5614,879,3,0),(5627,2878,2878,2,0),(5675,0,5675,1,0),(5676,0,5676,1,0),(5699,6202,6201,3,0),(5730,0,5730,1,0),(5740,0,5740,1,0),(5763,0,5763,1,0),(5782,0,5782,1,0),(5938,0,5938,1,0),(6041,943,403,6,0),(6060,1004,585,6,0),(6063,2055,2054,3,0),(6064,6063,2054,4,0),(6065,3747,17,5,0),(6066,6065,17,6,0),(6074,139,139,2,0),(6075,6074,139,3,0),(6076,6075,139,4,0),(6077,6076,139,5,0),(6078,6077,139,6,0),(6117,0,6117,1,0),(6127,5506,5504,4,0),(6129,990,587,4,0),(6131,865,122,3,0),(6141,10,10,2,0),(6143,0,6143,1,0),(6178,100,100,2,0),(6190,1160,1160,2,0),(6192,5242,6673,3,0),(6201,0,6201,1,0),(6202,6201,6201,2,0),(6205,1108,702,3,0),(6213,5782,5782,2,0),(6215,6213,5782,3,0),(6217,1014,980,3,0),(6219,5740,5740,2,0),(6222,172,172,2,0),(6223,6222,172,3,0),(6226,5138,5138,2,0),(6229,0,6229,1,0),(6307,0,6307,1,0),(6343,0,6343,1,0),(6353,0,6353,1,0),(6360,0,6360,1,0),(6363,3599,3599,2,0),(6364,6363,3599,3,0),(6365,6364,3599,4,0),(6366,0,6366,1,0),(6375,5394,5394,2,0),(6377,6375,5394,3,0),(6390,5730,5730,2,0),(6391,6390,5730,3,0),(6392,6391,5730,4,0),(6542,0,6542,1,0),(6546,772,772,2,0),(6547,6546,772,3,0),(6548,6547,772,4,0),(6552,0,6552,1,0),(6554,6552,6552,2,0),(6572,0,6572,1,0),(6574,6572,6572,2,0),(6673,0,6673,1,0),(6756,5232,1126,3,0),(6760,2098,2098,2,0),(6761,6760,2098,3,0),(6762,6761,2098,4,0),(6768,1966,1966,2,0),(6770,0,6770,1,0),(6774,5171,5171,2,0),(6778,5189,5185,6,0),(6780,5180,5176,6,0),(6783,5215,5215,2,0),(6785,0,6785,1,0),(6787,6785,6785,2,0),(6789,0,6789,1,0),(6793,5217,5217,2,0),(6798,5211,5211,2,0),(6800,5221,5221,2,0),(6807,0,6807,1,0),(6808,6807,6807,2,0),(6809,6808,6807,3,0),(6940,0,6940,1,0),(7128,588,588,2,0),(7294,0,7294,1,0),(7300,168,168,2,0),(7301,7300,168,3,0),(7302,0,7302,1,0),(7320,7302,7302,2,0),(7322,837,116,4,0),(7328,0,7328,1,0),(7369,845,845,2,0),(7371,0,7371,1,0),(7372,1715,1715,2,0),(7373,7372,1715,3,0),(7379,6574,6572,3,0),(7384,0,7384,1,0),(7386,0,7386,1,0),(7400,694,694,2,0),(7402,7400,694,3,0),(7405,7386,7386,2,0),(7411,0,7411,1,0),(7412,7411,7411,2,0),(7413,7412,7411,3,0),(7620,0,7620,1,0),(7641,1106,686,6,0),(7646,6205,702,4,0),(7648,6223,172,4,0),(7651,709,689,4,0),(7658,704,704,2,0),(7659,7658,704,3,0),(7731,7620,7620,2,0),(7732,7731,7620,3,0),(7799,3110,3110,2,0),(7800,7799,3110,3,0),(7801,7800,3110,4,0),(7802,7801,3110,5,0),(7804,6307,6307,2,0),(7805,7804,6307,3,0),(7809,3716,3716,2,0),(7810,7809,3716,3,0),(7811,7810,3716,4,0),(7812,0,7812,1,0),(7813,6360,6360,2,0),(7814,0,7814,1,0),(7815,7814,7814,2,0),(7816,7815,7814,3,0),(7887,7384,7384,2,0),(7924,3274,3273,3,0),(8004,0,8004,1,0),(8005,959,331,7,0),(8008,8004,8004,2,0),(8010,8008,8004,3,0),(8012,370,370,2,0),(8017,0,8017,1,0),(8018,8017,8017,2,0),(8019,8018,8017,3,0),(8024,0,8024,1,0),(8027,8024,8024,2,0),(8030,8027,8024,3,0),(8033,0,8033,1,0),(8038,8033,8033,2,0),(8042,0,8042,1,0),(8044,8042,8042,2,0),(8045,8044,8042,3,0),(8046,8045,8042,4,0),(8050,0,8050,1,0),(8052,8050,8050,2,0),(8053,8052,8050,3,0),(8056,0,8056,1,0),(8058,8056,8056,2,0),(8071,0,8071,1,0),(8075,0,8075,1,0),(8092,0,8092,1,0),(8102,8092,8092,2,0),(8103,8102,8092,3,0),(8104,8103,8092,4,0),(8105,8104,8092,5,0),(8106,8105,8092,6,0),(8122,0,8122,1,0),(8124,8122,8122,2,0),(8129,0,8129,1,0),(8131,8129,8129,2,0),(8134,945,324,5,0),(8154,8071,8071,2,0),(8155,8154,8071,3,0),(8160,8075,8075,2,0),(8161,8160,8075,3,0),(8181,0,8181,1,0),(8184,0,8184,1,0),(8190,0,8190,1,0),(8192,453,453,2,0),(8198,6343,6343,2,0),(8204,8198,6343,3,0),(8205,8204,6343,4,0),(8227,0,8227,1,0),(8232,0,8232,1,0),(8235,8232,8232,2,0),(8249,8227,8227,2,0),(8288,1120,1120,2,0),(8289,8288,1120,3,0),(8316,2947,2947,2,0),(8317,8316,2947,3,0),(8380,7405,7386,3,0),(8400,3140,133,5,0),(8401,8400,133,6,0),(8402,8401,133,7,0),(8406,7322,116,5,0),(8407,8406,116,6,0),(8408,8407,116,7,0),(8412,2138,2136,4,0),(8413,8412,2136,5,0),(8416,5145,5143,4,0),(8417,8416,5143,5,0),(8422,2121,2120,3,0),(8423,8422,2120,4,0),(8427,6141,10,3,0),(8437,1449,1449,2,0),(8438,8437,1449,3,0),(8439,8438,1449,4,0),(8444,2948,2948,2,0),(8445,8444,2948,3,0),(8446,8445,2948,4,0),(8450,604,604,2,0),(8451,8450,604,3,0),(8455,1008,1008,2,0),(8457,543,543,2,0),(8458,8457,543,3,0),(8461,6143,6143,2,0),(8462,8461,6143,3,0),(8492,120,120,2,0),(8494,1463,1463,2,0),(8495,8494,1463,3,0),(8498,1535,1535,2,0),(8499,8498,1535,3,0),(8512,0,8512,1,0),(8613,0,8613,1,0),(8617,8613,8613,2,0),(8618,8617,8613,3,0),(8621,1760,1752,6,0),(8623,6762,2098,5,0),(8624,8623,2098,6,0),(8629,1777,1776,3,0),(8631,703,703,2,0),(8632,8631,703,3,0),(8633,8632,703,4,0),(8637,6768,1966,3,0),(8639,1943,1943,2,0),(8640,8639,1943,3,0),(8643,408,408,2,0),(8647,0,8647,1,0),(8649,8647,8647,2,0),(8650,8649,8647,3,0),(8676,0,8676,1,0),(8681,0,8681,1,0),(8687,8681,8681,2,0),(8691,8687,8681,3,0),(8694,5763,5763,2,0),(8696,2983,2983,2,0),(8721,2591,53,5,0),(8724,8676,8676,2,0),(8725,8724,8676,3,0),(8820,1464,1464,2,0),(8835,0,8835,1,0),(8903,6778,5185,7,0),(8905,6780,5176,7,0),(8907,5234,1126,5,0),(8910,3627,774,7,0),(8914,1075,467,4,0),(8918,740,740,2,0),(8921,0,8921,1,0),(8924,8921,8921,2,0),(8925,8924,8921,3,0),(8926,8925,8921,4,0),(8927,8926,8921,5,0),(8928,8927,8921,6,0),(8929,8928,8921,7,0),(8936,0,8936,1,0),(8938,8936,8936,2,0),(8939,8938,8936,3,0),(8940,8939,8936,4,0),(8941,8940,8936,5,0),(8949,2912,2912,2,0),(8950,8949,2912,3,0),(8951,8950,2912,4,0),(8955,2908,2908,2,0),(8972,6809,6807,4,0),(8983,6798,5211,3,0),(8992,6800,5221,3,0),(8998,0,8998,1,0),(9000,8998,8998,2,0),(9005,0,9005,1,0),(9035,0,9035,1,0),(9472,2061,2061,2,0),(9473,9472,2061,3,0),(9474,9473,2061,4,0),(9484,0,9484,1,0),(9485,9484,9484,2,0),(9490,1735,99,3,0),(9492,1079,1079,2,0),(9493,9492,1079,3,0),(9578,586,586,2,0),(9579,9578,586,3,0),(9592,9579,586,4,0),(9634,5487,5487,2,0),(9745,8972,6807,5,0),(9747,9490,99,4,0),(9749,778,770,3,0),(9750,8941,8936,6,0),(9752,9493,1079,4,0),(9754,769,779,4,0),(9756,8914,467,5,0),(9758,8903,5185,8,0),(9785,3538,2018,4,0),(9787,9785,2018,5,0),(9788,9785,2018,5,0),(9821,1850,1850,2,0),(9823,9005,9005,2,0),(9827,9823,9005,3,0),(9829,8992,5221,4,0),(9830,9829,5221,5,0),(9833,8929,8921,8,0),(9834,9833,8921,9,0),(9835,9834,8921,10,0),(9839,8910,774,8,0),(9840,9839,774,9,0),(9841,9840,774,10,0),(9845,6793,5217,3,0),(9846,9845,5217,4,0),(9849,5201,1082,4,0),(9850,9849,1082,5,0),(9852,5196,339,5,0),(9853,9852,339,6,0),(9856,9750,8936,7,0),(9857,9856,8936,8,0),(9858,9857,8936,9,0),(9862,8918,740,3,0),(9863,9862,740,4,0),(9866,6787,6785,3,0),(9867,9866,6785,4,0),(9875,8951,2912,5,0),(9876,9875,2912,6,0),(9880,9745,6807,6,0),(9881,9880,6807,7,0),(9884,8907,1126,6,0),(9885,9884,1126,7,0),(9888,9758,5185,9,0),(9889,9888,5185,10,0),(9892,9000,8998,3,0),(9894,9752,1079,5,0),(9896,9894,1079,6,0),(9898,9747,99,5,0),(9901,8955,2908,3,0),(9904,1824,1822,4,0),(9907,9749,770,4,0),(9908,9754,779,5,0),(9910,9756,467,6,0),(9912,8905,5176,8,0),(9913,6783,5215,3,0),(10138,6127,5504,5,0),(10139,10138,5504,6,0),(10140,10139,5504,7,0),(10144,6129,587,5,0),(10145,10144,587,6,0),(10148,8402,133,8,0),(10149,10148,133,9,0),(10150,10149,133,10,0),(10151,10150,133,11,0),(10156,1461,1459,4,0),(10157,10156,1459,5,0),(10159,8492,120,3,0),(10160,10159,120,4,0),(10161,10160,120,5,0),(10169,8455,1008,3,0),(10170,10169,1008,4,0),(10173,8451,604,4,0),(10174,10173,604,5,0),(10177,8462,6143,4,0),(10179,8408,116,8,0),(10180,10179,116,9,0),(10181,10180,116,10,0),(10185,8427,10,4,0),(10186,10185,10,5,0),(10187,10186,10,6,0),(10191,8495,1463,4,0),(10192,10191,1463,5,0),(10193,10192,1463,6,0),(10197,8413,2136,6,0),(10199,10197,2136,7,0),(10201,8439,1449,5,0),(10202,10201,1449,6,0),(10205,8446,2948,5,0),(10206,10205,2948,6,0),(10207,10206,2948,7,0),(10211,8417,5143,6,0),(10212,10211,5143,7,0),(10215,8423,2120,5,0),(10216,10215,2120,6,0),(10219,7320,7302,3,0),(10220,10219,7302,4,0),(10223,8458,543,4,0),(10225,10223,543,5,0),(10230,6131,122,4,0),(10248,3564,2575,4,0),(10278,5599,1022,3,0),(10290,465,465,2,0),(10291,643,465,4,0),(10292,1032,465,6,0),(10293,10292,465,7,0),(10298,7294,7294,2,0),(10299,10298,7294,3,0),(10300,10299,7294,4,0),(10301,10300,7294,5,0),(10308,5589,853,4,0),(10310,2800,633,3,0),(10312,5615,879,4,0),(10313,10312,879,5,0),(10314,10313,879,6,0),(10318,2812,2812,2,0),(10322,7328,7328,2,0),(10324,10322,7328,3,0),(10326,5627,2878,3,0),(10328,3472,635,7,0),(10329,10328,635,8,0),(10391,6041,403,7,0),(10392,10391,403,8,0),(10395,8005,331,8,0),(10396,10395,331,9,0),(10399,8019,8017,4,0),(10406,8155,8071,4,0),(10407,10406,8071,5,0),(10408,10407,8071,6,0),(10412,8046,8042,5,0),(10413,10412,8042,6,0),(10414,10413,8042,7,0),(10427,6392,5730,5,0),(10428,10427,5730,6,0),(10431,8134,324,6,0),(10432,10431,324,7,0),(10437,6365,3599,5,0),(10438,10437,3599,6,0),(10442,8161,8075,4,0),(10447,8053,8050,4,0),(10448,10447,8050,5,0),(10456,8038,8033,3,0),(10462,6377,5394,4,0),(10463,10462,5394,5,0),(10466,8010,8004,4,0),(10467,10466,8004,5,0),(10468,10467,8004,6,0),(10472,8058,8056,3,0),(10473,10472,8056,4,0),(10478,8181,8181,2,0),(10479,10478,8181,3,0),(10486,8235,8232,3,0),(10495,5675,5675,2,0),(10496,10495,5675,3,0),(10497,10496,5675,4,0),(10526,8249,8227,3,0),(10537,8184,8184,2,0),(10538,10537,8184,3,0),(10585,8190,8190,2,0),(10586,10585,8190,3,0),(10587,10586,8190,4,0),(10595,0,10595,1,0),(10600,10595,10595,2,0),(10601,10600,10595,3,0),(10605,2860,421,4,0),(10613,8512,8512,2,0),(10614,10613,8512,3,0),(10622,1064,1064,2,0),(10623,10622,1064,3,0),(10627,8835,8835,2,0),(10656,10662,2108,5,0),(10658,10662,2108,5,0),(10660,10662,2108,5,0),(10662,3811,2108,4,0),(10768,8618,8613,4,0),(10797,0,10797,1,0),(10846,7924,3273,4,0),(10874,8131,8129,3,0),(10875,10874,8129,4,0),(10876,10875,8129,5,0),(10880,2010,2006,3,0),(10881,10880,2006,4,0),(10888,8124,8122,3,0),(10890,10888,8122,4,0),(10892,2767,589,6,0),(10893,10892,589,7,0),(10894,10893,589,8,0),(10898,6066,17,7,0),(10899,10898,17,8,0),(10900,10899,17,9,0),(10901,10900,17,10,0),(10909,2096,2096,2,0),(10911,605,605,2,0),(10912,10911,605,3,0),(10915,9474,2061,5,0),(10916,10915,2061,6,0),(10917,10916,2061,7,0),(10927,6078,139,7,0),(10928,10927,139,8,0),(10929,10928,139,9,0),(10933,6060,585,7,0),(10934,10933,585,8,0),(10937,2791,1243,5,0),(10938,10937,1243,6,0),(10941,9592,586,5,0),(10942,10941,586,6,0),(10945,8106,8092,7,0),(10946,10945,8092,8,0),(10947,10946,8092,9,0),(10951,1006,588,5,0),(10952,10951,588,6,0),(10953,8192,453,3,0),(10955,9485,9484,3,0),(10957,976,976,2,0),(10958,10957,976,3,0),(10960,996,596,3,0),(10961,10960,596,4,0),(10963,2060,2060,2,0),(10964,10963,2060,3,0),(10965,10964,2060,4,0),(11113,0,11113,1,0),(11197,8650,8647,4,0),(11198,11197,8647,5,0),(11267,8725,8676,4,0),(11268,11267,8676,5,0),(11269,11268,8676,6,0),(11273,8640,1943,4,0),(11274,11273,1943,5,0),(11275,11274,1943,6,0),(11279,8721,53,6,0),(11280,11279,53,7,0),(11281,11280,53,8,0),(11285,8629,1776,4,0),(11286,11285,1776,5,0),(11289,8633,703,5,0),(11290,11289,703,6,0),(11293,8621,1752,7,0),(11294,11293,1752,8,0),(11297,2070,6770,3,0),(11299,8624,2098,7,0),(11300,11299,2098,8,0),(11303,8637,1966,4,0),(11305,8696,2983,3,0),(11314,8499,1535,4,0),(11315,11314,1535,5,0),(11341,8691,8681,4,0),(11342,11341,8681,5,0),(11343,11342,8681,6,0),(11357,2837,2835,3,0),(11358,11357,2835,4,0),(11366,0,11366,1,0),(11400,8694,5763,3,0),(11426,0,11426,1,0),(11549,6192,6673,4,0),(11550,11549,6673,5,0),(11551,11550,6673,6,0),(11554,6190,1160,3,0),(11555,11554,1160,4,0),(11556,11555,1160,5,0),(11564,1608,78,5,0),(11565,11564,78,6,0),(11566,11565,78,7,0),(11567,11566,78,8,0),(11572,6548,772,5,0),(11573,11572,772,6,0),(11574,11573,772,7,0),(11578,6178,100,3,0),(11580,8205,6343,5,0),(11581,11580,6343,6,0),(11584,7887,7384,3,0),(11585,11584,7384,4,0),(11596,8380,7386,4,0),(11597,11596,7386,5,0),(11600,7379,6572,4,0),(11601,11600,6572,5,0),(11604,8820,1464,3,0),(11605,11604,1464,4,0),(11608,7369,845,3,0),(11609,11608,845,4,0),(11611,3464,2259,4,0),(11659,7641,686,7,0),(11660,11659,686,8,0),(11661,11660,686,9,0),(11665,2941,348,5,0),(11667,11665,348,6,0),(11668,11667,348,7,0),(11671,7648,172,5,0),(11672,11671,172,6,0),(11675,8289,1120,4,0),(11677,6219,5740,3,0),(11678,11677,5740,4,0),(11683,1949,1949,2,0),(11684,11683,1949,3,0),(11687,1456,1454,4,0),(11688,11687,1454,5,0),(11689,11688,1454,6,0),(11693,3700,755,5,0),(11694,11693,755,6,0),(11695,11694,755,7,0),(11699,7651,689,5,0),(11700,11699,689,6,0),(11703,6226,5138,3,0),(11704,11703,5138,4,0),(11707,7646,702,5,0),(11708,11707,702,6,0),(11711,6217,980,4,0),(11712,11711,980,5,0),(11713,11712,980,6,0),(11717,7659,704,4,0),(11719,1714,1714,2,0),(11721,1490,1490,2,0),(11722,11721,1490,3,0),(11725,1098,1098,2,0),(11726,11725,1098,3,0),(11729,5699,6201,4,0),(11730,11729,6201,5,0),(11733,1086,706,3,0),(11734,11733,706,4,0),(11735,11734,706,5,0),(11739,6229,6229,2,0),(11740,11739,6229,3,0),(11762,7802,3110,6,0),(11763,11762,3110,7,0),(11766,7805,6307,4,0),(11767,11766,6307,5,0),(11770,8317,2947,4,0),(11771,11770,2947,5,0),(11774,7811,3716,5,0),(11775,11774,3716,6,0),(11778,7816,7814,4,0),(11779,11778,7814,5,0),(11780,11779,7814,6,0),(11784,7813,6360,3,0),(11785,11784,6360,4,0),(11993,3570,2366,4,0),(12180,3910,3908,4,0),(12656,4038,4036,4,0),(12294,0,12294,1,0),(12505,11366,11366,2,0),(12522,12505,11366,3,0),(12523,12522,11366,4,0),(12524,12523,11366,5,0),(12525,12524,11366,6,0),(12526,12525,11366,7,0),(12824,118,118,2,0),(12825,12824,118,3,0),(12826,12825,118,4,0),(13018,11113,11113,2,0),(13019,13018,11113,3,0),(13020,13019,11113,4,0),(13021,13020,11113,5,0),(13031,11426,11426,2,0),(13032,13031,11426,3,0),(13033,13032,11426,4,0),(13165,0,13165,1,0),(13220,0,13220,1,0),(13228,13220,13220,2,0),(13229,13228,13220,3,0),(13230,13229,13220,4,0),(13542,3662,136,5,0),(13543,13542,136,6,0),(13544,13543,136,7,0),(13549,1978,1978,2,0),(13550,13549,1978,3,0),(13551,13550,1978,4,0),(13552,13551,1978,5,0),(13553,13552,1978,6,0),(13554,13553,1978,7,0),(13555,13554,1978,8,0),(13795,0,13795,1,0),(13813,0,13813,1,0),(13896,0,13896,1,0),(13908,0,13908,1,0),(13920,7413,7411,4,0),(14260,2973,2973,2,0),(14261,14260,2973,3,0),(14262,14261,2973,4,0),(14263,14262,2973,5,0),(14264,14263,2973,6,0),(14265,14264,2973,7,0),(14266,14265,2973,8,0),(14267,2974,2974,2,0),(14268,14267,2974,3,0),(14269,1495,1495,2,0),(14270,14269,1495,3,0),(14271,14270,1495,4,0),(14272,781,781,2,0),(14273,14272,781,3,0),(14274,20736,20736,2,0),(14279,3034,3034,2,0),(14280,14279,3034,3,0),(14281,3044,3044,2,0),(14282,14281,3044,3,0),(14283,14282,3044,4,0),(14284,14283,3044,5,0),(14285,14284,3044,6,0),(14286,14285,3044,7,0),(14287,14286,3044,8,0),(14288,2643,2643,2,0),(14289,14288,2643,3,0),(14290,14289,2643,4,0),(14294,1510,1510,2,0),(14295,14294,1510,3,0),(14302,13795,13795,2,0),(14303,14302,13795,3,0),(14304,14303,13795,4,0),(14305,14304,13795,5,0),(14310,1499,1499,2,0),(14311,14310,1499,3,0),(14316,13813,13813,2,0),(14317,14316,13813,3,0),(14318,13165,13165,2,0),(14319,14318,13165,3,0),(14320,14319,13165,4,0),(14321,14320,13165,5,0),(14322,14321,13165,6,0),(14323,1130,1130,2,0),(14324,14323,1130,3,0),(14325,14324,1130,4,0),(14326,1513,1513,2,0),(14327,14326,1513,3,0),(14752,0,14752,1,0),(14818,14752,14752,2,0),(14819,14818,14752,3,0),(14914,0,14914,1,0),(14916,2649,2649,2,0),(14917,14916,2649,3,0),(14918,14917,2649,4,0),(14919,14918,2649,5,0),(14920,14919,2649,6,0),(14921,14920,2649,7,0),(15107,0,15107,1,0),(15111,15107,15107,2,0),(15112,15111,15107,3,0),(15207,10392,403,9,0),(15208,15207,403,10,0),(15237,0,15237,1,0),(15261,15267,14914,8,0),(15262,14914,14914,2,0),(15263,15262,14914,3,0),(15264,15263,14914,4,0),(15265,15264,14914,5,0),(15266,15265,14914,6,0),(15267,15266,14914,7,0),(15407,0,15407,1,0),(15430,15237,15237,2,0),(15431,15430,15237,3,0),(15629,14274,20736,3,0),(15630,15629,20736,4,0),(15631,15630,20736,5,0),(15632,15631,20736,6,0),(16314,10399,8017,5,0),(16315,16314,8017,6,0),(16316,16315,8017,7,0),(16339,8030,8024,4,0),(16341,16339,8024,5,0),(16342,16341,8024,6,0),(16355,10456,8033,4,0),(16356,16355,8033,5,0),(16362,10486,8232,4,0),(16387,10526,8227,4,0),(16511,0,16511,1,0),(16689,0,16689,1,339),(16697,1756,1742,6,0),(16810,16689,16689,2,1062),(16811,16810,16689,3,5195),(16812,16811,16689,4,5196),(16813,16812,16689,5,9852),(16827,0,16827,1,0),(16828,16827,16827,2,0),(16829,16828,16827,3,0),(16830,16829,16827,4,0),(16831,16830,16827,5,0),(16832,16831,16827,6,0),(16857,0,16857,1,0),(16914,0,16914,1,0),(17039,9787,2018,6,0),(17040,9787,2018,6,0),(17041,9787,2018,6,0),(17253,0,17253,1,0),(17255,17253,17253,2,0),(17256,17255,17253,3,0),(17257,17256,17253,4,0),(17258,17257,17253,5,0),(17259,17258,17253,6,0),(17260,17259,17253,7,0),(17261,17260,17253,8,0),(17311,15407,15407,2,0),(17312,17311,15407,3,0),(17313,17312,15407,4,0),(17314,17313,15407,5,0),(17329,16813,16689,6,9853),(17347,16511,16511,2,0),(17348,17347,16511,3,0),(17390,16857,16857,2,0),(17391,17390,16857,3,0),(17392,17391,16857,4,0),(17401,16914,16914,2,0),(17402,17401,16914,3,0),(17727,2362,2362,2,0),(17728,17727,2362,3,0),(17735,0,17735,1,0),(17750,17735,17735,2,0),(17751,17750,17735,3,0),(17752,17751,17735,4,0),(17767,0,17767,1,0),(17850,17767,17767,2,0),(17851,17850,17767,3,0),(17852,17851,17767,4,0),(17853,17852,17767,5,0),(17854,17853,17767,6,0),(17862,0,17862,1,0),(17877,0,17877,1,0),(17919,5676,5676,2,0),(17920,17919,5676,3,0),(17921,17920,5676,4,0),(17922,17921,5676,5,0),(17923,17922,5676,6,0),(17924,6353,6353,2,0),(17925,6789,6789,2,0),(17926,17925,6789,3,0),(17928,5484,5484,2,0),(17937,17862,17862,2,0),(17951,6366,6366,2,0),(17952,17951,6366,3,0),(17953,17952,6366,4,0),(17962,0,17962,1,0),(18137,0,18137,1,0),(18220,0,18220,1,0),(18248,7732,7620,4,0),(18260,3413,2550,4,0),(18265,0,18265,1,0),(18647,710,710,2,0),(18657,2637,2637,2,0),(18658,18657,2637,3,0),(18807,17314,15407,6,0),(18809,12526,11366,8,0),(18867,17877,17877,2,0),(18868,18867,17877,3,0),(18869,18868,17877,4,0),(18870,18869,17877,5,0),(18871,18870,17877,6,0),(18879,18265,18265,2,0),(18880,18879,18265,3,0),(18881,18880,18265,4,0),(18930,17962,17962,2,0),(18931,18930,17962,3,0),(18932,18931,17962,4,0),(18937,18220,18220,2,0),(18938,18937,18220,3,0),(19236,13908,13908,2,0),(19238,19236,13908,3,0),(19240,19238,13908,4,0),(19241,19240,13908,5,0),(19242,19241,13908,6,0),(19243,19242,13908,7,0),(19261,2652,2652,2,0),(19262,19261,2652,3,0),(19264,19262,2652,4,0),(19265,19264,2652,5,0),(19266,19265,2652,6,0),(19271,13896,13896,2,0),(19273,19271,13896,3,0),(19274,19273,13896,4,0),(19275,19274,13896,5,0),(19276,2944,2944,2,0),(19277,19276,2944,3,0),(19278,19277,2944,4,0),(19279,19278,2944,5,0),(19280,19279,2944,6,0),(19281,9035,9035,2,0),(19282,19281,9035,3,0),(19283,19282,9035,4,0),(19284,19283,9035,5,0),(19285,19284,9035,6,0),(19296,10797,10797,2,0),(19299,19296,10797,3,0),(19302,19299,10797,4,0),(19303,19302,10797,5,0),(19304,19303,10797,6,0),(19305,19304,10797,7,0),(19306,0,19306,1,0),(19308,18137,18137,2,0),(19309,19308,18137,3,0),(19310,19309,18137,4,0),(19311,19310,18137,5,0),(19312,19311,18137,6,0),(19386,0,19386,1,0),(19434,0,19434,1,0),(19438,7812,7812,2,0),(19440,19438,7812,3,0),(19441,19440,7812,4,0),(19442,19441,7812,5,0),(19443,19442,7812,6,0),(19244,0,19244,1,0),(19478,0,19478,1,0),(19505,0,19505,1,0),(19506,0,19506,1,0),(19647,19244,19244,2,0),(19655,19478,19478,2,0),(19656,19655,19478,3,0),(19660,19656,19478,4,0),(19731,19505,19505,2,0),(19734,19731,19505,3,0),(19736,19734,19505,4,0),(19740,0,19740,1,0),(19742,0,19742,1,0),(19750,0,19750,1,0),(19834,19740,19740,2,0),(19835,19834,19740,3,0),(19836,19835,19740,4,0),(19837,19836,19740,5,0),(19838,19837,19740,6,0),(19850,19742,19742,2,0),(19852,19850,19742,3,0),(19853,19852,19742,4,0),(19854,19853,19742,5,0),(19876,0,19876,1,0),(19888,0,19888,1,0),(19891,0,19891,1,0),(19895,19876,19876,2,0),(19896,19895,19876,3,0),(19897,19888,19888,2,0),(19898,19897,19888,3,0),(19899,19891,19891,2,0),(19900,19899,19891,3,0),(19939,19750,19750,2,0),(19940,19939,19750,3,0),(19941,19940,19750,4,0),(19942,19941,19750,5,0),(19943,19942,19750,6,0),(19977,0,19977,1,0),(19978,19977,19977,2,0),(19979,19978,19977,3,0),(20043,0,20043,1,0),(20116,26573,26573,2,0),(20162,21082,21082,2,0),(20164,0,20164,1,0),(20165,0,20165,1,0),(20166,0,20166,1,0),(20190,20043,20043,2,0),(20217,0,20217,1,0),(20219,12656,4036,5,0),(20222,12656,4036,5,0),(20243,0,20243,1,0),(20252,0,20252,1,0),(20287,21084,21084,2,0),(20288,20287,21084,3,0),(20289,20288,21084,4,0),(20290,20289,21084,5,0),(20291,20290,21084,6,0),(20292,20291,21084,7,0),(20293,20292,21084,8,0),(20305,20162,21082,3,0),(20306,20305,21082,4,0),(20307,20306,21082,5,0),(20308,20307,21082,6,0),(20347,20165,20165,2,0),(20348,20347,20165,3,0),(20349,20348,20165,4,0),(20356,20166,20166,2,0),(20357,20356,20166,3,0),(20375,0,20375,1,0),(20473,0,20473,1,0),(20484,0,20484,1,0),(20559,7402,694,4,0),(20560,20559,694,5,0),(20569,11609,845,5,0),(20609,2008,2008,2,0),(20610,20609,2008,3,0),(20616,20252,20252,2,0),(20617,20616,20252,3,0),(20658,5308,5308,2,0),(20660,20658,5308,3,0),(20661,20660,5308,4,0),(20662,20661,5308,5,0),(20729,6940,6940,2,0),(20736,0,20736,1,0),(20739,20484,20484,2,0),(20742,20739,20484,3,0),(20747,20742,20484,4,0),(20748,20747,20484,5,0),(20752,693,693,2,0),(20755,20752,693,3,0),(20756,20755,693,4,0),(20757,20756,693,5,0),(20770,10881,2006,5,0),(20772,10324,7328,4,0),(20773,20772,7328,5,0),(20776,20610,2008,4,0),(20777,20776,2008,5,0),(20900,19434,19434,2,0),(20901,20900,19434,3,0),(20902,20901,19434,4,0),(20903,20902,19434,5,0),(20904,20903,19434,6,0),(20905,19506,19506,2,0),(20906,20905,19506,3,0),(20909,19306,19306,2,0),(20910,20909,19306,3,0),(20911,0,20911,1,0),(20912,20911,20911,2,0),(20913,20912,20911,3,0),(20914,20913,20911,4,0),(20915,20375,20375,2,0),(20918,20915,20375,3,0),(20919,20918,20375,4,0),(20920,20919,20375,5,0),(20922,20116,26573,3,0),(20923,20922,26573,4,0),(20924,20923,26573,5,0),(20925,0,20925,1,0),(20927,20925,20925,2,0),(20928,20927,20925,3,0),(20929,20473,20473,2,0),(20930,20929,20473,3,0),(21082,0,21082,1,0),(21084,0,21084,1,0),(21551,12294,12294,2,0),(21552,21551,12294,3,0),(21553,21552,12294,4,0),(21562,0,21562,1,0),(21564,21562,21562,2,0),(21849,0,21849,1,0),(21850,21849,21849,2,0),(22568,0,22568,1,0),(22782,6117,6117,2,0),(22783,22782,6117,3,0),(22827,22568,22568,2,0),(22828,22827,22568,3,0),(22829,22828,22568,4,0),(22842,0,22842,1,0),(22895,22842,22842,2,0),(22896,22895,22842,3,0),(23028,0,23028,1,0),(23099,0,23099,1,0),(23109,23099,23099,2,0),(23110,23109,23099,3,0),(23145,0,23145,1,0),(23147,23145,23145,2,0),(23148,23147,23145,3,0),(23881,0,23881,1,0),(23892,23881,23881,2,0),(23893,23892,23881,3,0),(23894,23893,23881,4,0),(23922,0,23922,1,0),(23923,23922,23922,2,0),(23924,23923,23922,3,0),(23925,23924,23922,4,0),(23992,0,23992,1,0),(24132,19386,19386,2,0),(24133,24132,19386,3,0),(24224,0,24224,1,0),(24239,24274,24275,3,0),(24248,31018,22568,6,0),(24274,24275,24275,2,0),(24275,0,24275,1,0),(24398,0,24398,1,0),(24423,0,24423,1,0),(24439,23992,23992,2,0),(24444,24439,23992,3,0),(24445,24444,23992,4,0),(24446,0,24446,1,0),(24447,24446,24446,2,0),(24448,24447,24446,3,0),(24449,24448,24446,4,0),(24450,0,24450,1,0),(24452,24450,24450,2,0),(24453,24452,24450,3,0),(24488,0,24488,1,0),(24492,0,24492,1,0),(24493,0,24493,1,0),(24497,24493,24493,2,0),(24500,24497,24493,3,0),(24501,24500,24493,4,0),(24502,24492,24492,2,0),(24503,24502,24492,3,0),(24504,24503,24492,4,0),(24505,24488,24488,2,0),(24506,24505,24488,3,0),(24507,24506,24488,4,0),(24545,0,24545,1,0),(24549,24545,24545,2,0),(24550,24549,24545,3,0),(24551,24550,24545,4,0),(24552,24551,24545,5,0),(24553,24552,24545,6,0),(24554,24553,24545,7,0),(24555,24554,24545,8,0),(24577,24423,24423,2,0),(24578,24577,24423,3,0),(24579,24578,24423,4,0),(24583,24640,24640,2,0),(24586,24583,24640,3,0),(24587,24586,24640,4,0),(24597,24603,24604,4,0),(24604,0,24604,1,0),(24605,24604,24604,2,0),(24603,24605,24604,3,0),(24629,24555,24545,9,0),(24630,24629,24545,10,0),(24640,0,24640,1,0),(24844,0,24844,1,0),(24974,5570,5570,2,0),(24975,24974,5570,3,0),(24976,24975,5570,4,0),(24977,24976,5570,5,0),(25008,24844,24844,2,0),(25009,25008,24844,3,0),(25010,25009,24844,4,0),(25011,25010,24844,5,0),(25012,25011,24844,6,0),(25076,0,25076,1,0),(25202,11556,1160,6,0),(25203,25202,1160,7,0),(25208,11574,772,8,0),(25210,25314,2060,6,0),(25212,7373,1715,4,0),(25213,25210,2060,7,0),(25217,10901,17,11,0),(25218,25217,17,12,0),(25221,25315,139,11,0),(25222,25221,139,12,0),(25225,11597,7386,6,0),(25229,0,25229,1,0),(25230,25229,25229,2,0),(25231,20569,845,6,0),(25233,10917,2061,8,0),(25234,20662,5308,6,0),(25235,25233,2061,9,0),(25236,25234,5308,7,0),(25241,11605,1464,5,0),(25242,25241,1464,6,0),(25248,21553,12294,5,0),(25251,23894,23881,5,0),(25258,23925,23922,5,0),(25264,11581,6343,7,0),(25266,20560,694,6,0),(25269,25288,6572,7,0),(25272,20617,20252,4,0),(25275,25272,20252,5,0),(25286,11567,78,9,0),(25288,11601,6572,6,0),(25289,11551,6673,7,0),(25290,19854,19742,6,0),(25291,19838,19740,7,0),(25292,10329,635,9,0),(25294,14290,2643,5,0),(25295,13555,1978,9,0),(25296,14322,13165,7,0),(25297,9889,5185,11,0),(25298,9876,2912,7,0),(25299,9841,774,11,0),(25300,11281,53,9,0),(25302,11303,1966,5,0),(25304,10181,116,11,0),(25306,10151,133,12,0),(25307,11661,686,10,0),(25308,25316,596,6,0),(25309,11668,348,8,0),(25311,11672,172,7,0),(25312,27841,14752,5,0),(25314,10965,2060,5,0),(25315,10929,139,10,0),(25316,10961,596,5,0),(25331,27801,15237,7,0),(25345,10212,5143,8,0),(25347,11358,2835,5,0),(25357,10396,331,10,0),(25359,10627,8835,3,0),(25361,10442,8075,5,0),(25363,10934,585,9,0),(25364,25363,585,10,0),(25367,10894,589,9,0),(25368,25367,589,10,0),(25372,10947,8092,10,0),(25375,25372,8092,11,0),(25379,10876,8129,6,0),(25380,25379,8129,7,0),(25384,15261,14914,9,0),(25387,18807,15407,7,0),(25389,10938,1243,7,0),(25391,25357,331,11,0),(25396,25391,331,12,0),(25420,10468,8004,7,0),(25422,10623,1064,4,0),(25423,25422,1064,5,0),(25429,10942,586,7,0),(25431,10952,588,7,0),(25433,10958,976,4,0),(25435,20770,2006,6,0),(25437,19243,13908,8,0),(25439,10605,421,5,0),(25441,19275,13896,6,0),(25442,25439,421,6,0),(25446,19305,10797,8,0),(25448,15208,403,11,0),(25449,25448,403,12,0),(25454,10414,8042,8,0),(25457,29228,8050,7,0),(25464,10473,8056,5,0),(25467,19280,2944,7,0),(25469,10432,324,8,0),(25470,19285,9035,7,0),(25472,25469,324,9,0),(25477,19312,18137,7,0),(25479,16316,8017,8,0),(25485,25479,8017,9,0),(25489,16342,8024,7,0),(25500,16356,8033,6,0),(25505,16362,8232,5,0),(25508,10408,8071,7,0),(25509,25508,8071,8,0),(25525,10428,5730,7,0),(25528,25361,8075,6,0),(25533,10438,3599,7,0),(25546,11315,1535,6,0),(25547,25546,1535,7,0),(25552,10587,8190,5,0),(25557,16387,8227,5,0),(25560,10479,8181,4,0),(25563,10538,8184,4,0),(25567,10463,5394,6,0),(25570,10497,5675,5,0),(25574,10601,10595,4,0),(25577,15112,15107,4,0),(25585,10614,8512,4,0),(25587,25585,8512,5,0),(25596,10953,453,4,0),(25782,0,25782,1,19838),(25890,0,25890,1,19979),(25894,0,25894,1,19854),(25895,0,25895,1,1038),(25898,0,25898,1,20217),(25899,0,25899,1,20914),(25916,25782,25782,2,25291),(25918,25894,25894,2,25290),(26064,0,26064,1,0),(26090,0,26090,1,0),(26177,7371,7371,2,0),(26178,26177,7371,3,0),(26179,26178,7371,4,0),(26187,26090,26090,2,0),(26188,26187,26090,3,0),(26201,26179,7371,5,0),(26573,0,26573,1,0),(26790,12180,3908,5,0),(26797,12180,3908,5,0),(26798,12180,3908,5,0),(26801,12180,3908,5,0),(26839,11290,703,7,0),(26861,11294,1752,9,0),(26862,26861,1752,10,0),(26863,25300,53,10,0),(26864,17348,16511,4,0),(26865,31016,2098,10,0),(26866,11198,8647,6,0),(26867,11275,1943,7,0),(26884,26839,703,8,0),(26889,1857,1856,3,0),(26892,11343,8681,7,0),(26969,25347,2835,6,0),(26978,25297,5185,12,0),(26979,26978,5185,13,0),(26980,9858,8936,10,0),(26981,25299,774,12,0),(26982,26981,774,13,0),(26983,9863,740,5,0),(26984,9912,5176,9,0),(26985,26984,5176,10,0),(26986,25298,2912,8,0),(26987,9835,8921,11,0),(26988,26987,8921,12,0),(26989,9853,339,7,0),(26990,9885,1126,8,0),(26992,9910,467,7,0),(26993,9907,770,5,0),(26994,20748,20484,6,0),(26995,9901,2908,4,0),(26996,9881,6807,8,0),(26997,9908,779,6,0),(26998,9898,99,6,0),(26999,22896,22842,4,0),(27001,9830,5221,6,0),(27002,27001,5221,7,0),(27003,9904,1822,5,0),(27005,9867,6785,5,0),(27006,9827,9005,4,0),(27008,9896,1079,7,0),(27009,17329,16689,7,26989),(27011,17392,16857,5,0),(27012,17402,16914,4,0),(27013,24977,5570,6,0),(27014,14266,2973,9,0),(27015,14273,781,4,0),(27016,25295,1978,10,0),(27018,14280,3034,4,0),(27019,14287,3044,9,0),(27020,15632,20736,7,0),(27021,25294,2643,6,0),(27022,14295,1510,4,0),(27023,14305,13795,6,0),(27025,14317,13813,4,0),(27028,10846,3273,5,0),(27044,25296,13165,8,0),(27045,20190,20043,3,0),(27046,13544,136,8,0),(27047,14921,2649,8,0),(27048,16697,1742,7,0),(27049,3009,16827,9,0),(27050,17261,17253,9,0),(27051,24579,24423,5,0),(27052,24501,24493,5,0),(27053,24445,23992,5,0),(27054,24449,24446,5,0),(27055,24504,24492,5,0),(27056,24507,24488,5,0),(27060,24587,24640,5,0),(27061,24630,24545,11,0),(27062,5042,4187,11,0),(27063,26188,26090,4,0),(27065,20904,19434,7,0),(27066,20906,19506,4,0),(27067,20910,19306,4,0),(27068,24133,19386,4,0),(27070,25306,133,13,0),(27071,25304,116,12,0),(27072,27071,116,13,0),(27073,10207,2948,8,0),(27074,27073,2948,9,0),(27075,25345,5143,9,0),(27078,10199,2136,8,0),(27079,27078,2136,9,0),(27080,10202,1449,7,0),(27082,27080,1449,8,0),(27085,10187,10,7,0),(27086,10216,2120,7,0),(27087,10161,120,6,0),(27088,10230,122,5,0),(27090,37420,5504,9,0),(27124,10220,7302,5,0),(27125,22783,6117,4,0),(27126,10157,1459,6,0),(27128,10225,543,6,0),(27130,10170,1008,5,0),(27131,10193,1463,7,0),(27132,18809,11366,9,0),(27133,13021,11113,6,0),(27134,13033,11426,5,0),(27135,25292,635,10,0),(27136,27135,635,11,0),(27137,19943,19750,7,0),(27138,10314,879,7,0),(27139,10318,2812,3,0),(27140,25291,19740,8,0),(27141,25916,25782,3,27140),(27142,25290,19742,7,0),(27143,25918,25894,3,27142),(27144,19979,19977,4,0),(27145,25890,25890,2,27144),(27147,20729,6940,3,0),(27148,27147,6940,4,0),(27149,10293,465,8,0),(27150,10301,7294,6,0),(27151,19896,19876,4,0),(27152,19898,19888,4,0),(27153,19900,19891,4,0),(27154,10310,633,4,0),(27155,20293,21084,9,0),(27158,20308,21082,7,0),(27166,20357,20166,4,0),(27168,20914,20911,5,0),(27169,25899,25899,2,27168),(27170,20920,20375,6,0),(27173,20924,26573,6,0),(27174,20930,20473,4,0),(27179,20928,20925,4,0),(27180,24239,24275,4,0),(27209,25307,686,11,0),(27210,17923,5676,7,0),(27211,17924,6353,3,0),(27212,11678,5740,5,0),(27213,11684,1949,4,0),(27215,25309,348,9,0),(27216,25311,172,8,0),(27217,11675,1120,5,0),(27218,11713,980,7,0),(27219,11700,689,7,0),(27220,27219,689,8,0),(27221,11704,5138,5,0),(27222,11689,1454,7,0),(27223,17926,6789,4,0),(27224,11708,702,7,0),(27226,11717,704,5,0),(27228,11722,1490,4,0),(27229,17937,17862,3,0),(27230,11730,6201,6,0),(27238,20757,693,6,0),(27250,17953,6366,5,0),(27259,11695,755,8,0),(27260,11735,706,6,0),(27263,18871,17877,7,0),(27264,18881,18265,5,0),(27265,18938,18220,4,0),(27266,18932,17962,5,0),(27267,11763,3110,8,0),(27268,11767,6307,6,0),(27269,11771,2947,6,0),(27270,11775,3716,7,0),(27271,17752,17735,5,0),(27272,17854,17767,7,0),(27273,19443,7812,7,0),(27274,11780,7814,7,0),(27275,11785,6360,5,0),(27276,19736,19505,5,0),(27277,27276,19505,6,0),(27280,19660,19478,5,0),(27282,26969,2835,7,0),(27283,13230,13220,5,0),(27441,11269,8676,7,0),(27448,25302,1966,6,0),(27681,14752,14752,2,0),(27683,0,27683,1,0),(27685,26201,7371,6,0),(27799,15431,15237,4,0),(27800,27799,15237,5,0),(27801,27800,15237,6,0),(27841,14819,14752,4,0),(27870,724,724,2,0),(27871,27870,724,3,0),(28029,13920,7411,5,0),(28172,17728,2362,4,0),(28176,0,28176,1,0),(28189,28176,28176,2,0),(28275,27871,724,4,0),(28596,11611,2259,5,0),(28609,10177,6143,5,0),(28610,11740,6229,4,0),(28612,10145,587,7,0),(28672,11611,2259,5,0),(28675,11611,2259,5,0),(28677,11611,2259,5,0),(28695,11993,2366,5,0),(28894,25230,25229,3,0),(28895,28894,25229,4,0),(28897,28895,25229,5,0),(29228,10448,8050,6,0),(29354,10248,2575,5,0),(29704,1672,72,4,0),(29707,25286,78,10,0),(29722,0,29722,1,0),(29801,0,29801,1,0),(29844,9785,2018,5,0),(30016,20243,20243,2,0),(30022,30016,20243,3,0),(30030,29801,29801,2,0),(30033,30030,29801,3,0),(30108,0,30108,1,0),(30151,0,30151,1,0),(30194,30151,30151,2,0),(30198,30194,30151,3,0),(30213,0,30213,1,0),(30219,30213,30213,2,0),(30223,30219,30213,3,0),(30283,0,30283,1,0),(30324,29707,78,11,0),(30330,25248,12294,6,0),(30335,25251,23881,6,0),(30350,12656,4036,5,0),(30356,25258,23922,6,0),(30357,25269,6572,8,0),(30404,30108,30108,2,0),(30405,30404,30108,3,0),(30413,30283,30283,2,0),(30414,30413,30283,3,0),(30459,27210,5676,8,0),(30545,27211,6353,4,0),(30546,27263,17877,8,0),(30908,27221,5138,6,0),(30909,27224,702,8,0),(30910,603,603,2,0),(30911,27264,18265,6,0),(30912,27266,17962,6,0),(31016,11300,2098,9,0),(31018,22829,22568,5,0),(31661,0,31661,1,0),(31785,0,31785,1,0),(31895,20164,20164,2,0),(31935,0,31935,1,0),(32231,29722,29722,2,0),(32379,0,32379,1,0),(32549,10662,2108,5,0),(32593,974,974,2,0),(32594,32593,974,3,0),(32645,0,32645,1,0),(32678,10768,8613,5,0),(32684,32645,32645,2,0),(32699,31935,31935,2,0),(32700,32699,31935,3,0),(32796,28609,6143,6,0),(32996,32379,32379,2,0),(32999,27681,14752,3,0),(33041,31661,31661,2,0),(33042,33041,31661,3,0),(33043,33042,31661,4,0),(33072,27174,20473,5,0),(33095,18248,7620,5,0),(33142,0,33142,1,0),(33145,33142,33142,2,0),(33146,33145,33142,3,0),(33359,18260,2550,5,0),(33388,0,33388,1,0),(33391,33388,33388,2,0),(33405,27134,11426,6,0),(33698,0,33698,1,0),(33699,33698,33698,2,0),(33700,33699,33698,3,0),(33701,27271,17735,6,0),(33717,28612,587,8,0),(33736,24398,24398,2,0),(33776,31785,31785,2,0),(33876,0,33876,1,0),(33878,0,33878,1,0),(33933,27133,11113,7,0),(33938,27132,11366,10,0),(33943,0,33943,1,0),(33944,10174,604,6,0),(33946,27130,1008,6,0),(33982,33876,33876,2,0),(33983,33982,33876,3,0),(33986,33878,33878,2,0),(33987,33986,33878,3,0),(34411,1329,1329,2,0),(34412,34411,1329,3,0),(34413,34412,1329,4,0),(34506,0,34506,1,0),(34507,34506,34506,2,0),(34508,34507,34506,3,0),(34838,34508,34506,4,0),(34839,34838,34506,5,0),(34861,0,34861,1,0),(34863,34861,34861,2,0),(34864,34863,34861,3,0),(34865,34864,34861,4,0),(34866,34865,34861,5,0),(34889,0,34889,1,0),(34914,0,34914,1,0),(34916,34914,34914,2,0),(34917,34916,34914,3,0),(34950,0,34950,1,0),(34954,34950,34950,2,0),(35323,34889,34889,2,0),(35290,0,35290,1,0),(35291,35290,35290,2,0),(35292,35291,35290,3,0),(35293,35292,35290,4,0),(35294,35293,35290,5,0),(35295,35294,35290,6,0),(35296,35295,35290,7,0),(35297,35296,35290,8,0),(35298,35297,35290,9,0),(35387,0,35387,1,0),(35389,35387,35387,2,0),(35392,35389,35387,3,0),(35346,0,35346,1,0),(35694,0,35694,1,0),(35698,35694,35694,2,0),(36916,14271,1495,5,0),(37420,10140,5504,8,0),(38692,27070,133,14,0),(38697,27072,116,14,0),(38699,27075,5143,10,0),(38704,38699,5143,11,0),(38764,11286,1776,6,0),(38768,1769,1766,5,0),(40120,33943,33943,2,0);
/*!40000 ALTER TABLE `spell_chain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_elixir`
--

DROP TABLE IF EXISTS `spell_elixir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_elixir` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellId of potion',
  `mask` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Mask 0x1 battle 0x2 guardian 0x3 flask 0x7 unstable flasks 0xB shattrath flasks',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_elixir`
--

LOCK TABLES `spell_elixir` WRITE;
/*!40000 ALTER TABLE `spell_elixir` DISABLE KEYS */;
INSERT INTO `spell_elixir` VALUES (673,2),(2367,1),(2374,1),(2378,2),(2380,2),(3160,1),(3164,1),(3166,2),(3219,2),(3220,2),(3222,2),(3223,2),(3593,2),(7844,1),(8212,1),(10667,1),(10668,2),(10669,1),(10692,2),(10693,2),(11319,2),(11328,1),(11334,1),(11348,2),(11349,2),(11364,2),(11371,2),(11390,1),(11396,2),(11405,1),(11406,1),(11474,1),(15231,2),(15233,2),(16321,2),(16322,1),(16323,1),(16325,2),(16326,2),(16327,2),(16329,1),(17038,1),(17535,2),(17537,1),(17538,1),(17539,1),(17624,3),(17626,3),(17627,3),(17629,3),(17628,3),(18191,16),(18192,16),(18193,16),(18194,16),(18222,16),(21920,1),(22730,16),(24361,2),(24363,2),(24382,2),(24383,2),(24417,2),(25661,16),(26276,1),(27652,2),(27653,2),(28486,1),(28488,1),(28490,1),(28491,1),(28493,1),(28497,1),(28501,1),(28502,2),(28503,1),(28509,2),(28514,2),(28518,3),(28519,3),(28520,3),(28521,3),(28540,3),(29348,2),(33720,1),(33721,1),(33726,1),(38954,1),(39625,2),(39626,2),(39627,2),(39628,2),(40567,7),(40568,7),(40572,7),(40573,7),(40575,7),(40576,7),(41608,11),(41609,11),(41610,11),(41611,11),(42735,3),(45373,1),(46837,11),(46839,11);
/*!40000 ALTER TABLE `spell_elixir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_facing`
--

DROP TABLE IF EXISTS `spell_facing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_facing` (
  `entry` double DEFAULT NULL,
  `facingcasterflag` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_facing`
--

LOCK TABLES `spell_facing` WRITE;
/*!40000 ALTER TABLE `spell_facing` DISABLE KEYS */;
INSERT INTO `spell_facing` VALUES (53,1),(72,1),(75,1),(78,1),(100,1),(116,1),(133,1),(143,1),(145,1),(205,1),(284,1),(285,1),(348,1),(403,1),(408,1),(421,1),(529,1),(548,1),(585,1),(591,1),(598,1),(676,1),(686,1),(689,1),(694,1),(695,1),(699,1),(703,1),(705,1),(707,1),(709,1),(769,1),(772,1),(779,1),(780,1),(837,1),(845,1),(879,1),(915,1),(930,1),(943,1),(984,1),(1004,1),(1079,1),(1082,1),(1088,1),(1094,1),(1106,1),(1120,1),(1329,1),(1464,1),(1495,1),(1608,1),(1671,1),(1672,1),(1715,1),(1742,1),(1752,1),(1753,1),(1754,1),(1755,1),(1756,1),(1757,1),(1758,1),(1759,1),(1760,1),(1766,1),(1767,1),(1768,1),(1769,1),(1776,1),(1777,1),(1822,1),(1823,1),(1824,1),(1833,1),(1943,1),(1966,1),(1978,1),(2070,1),(2098,1),(2136,1),(2137,1),(2138,1),(2589,1),(2590,1),(2591,1),(2643,1),(2764,1),(2860,1),(2912,1),(2941,1),(2948,1),(2973,1),(2974,1),(3009,1),(3010,1),(3018,1),(3029,1),(3034,1),(3043,1),(3044,1),(3140,1),(3674,1),(4164,1),(4165,1),(5019,1),(5116,1),(5133,1),(5138,1),(5143,1),(5144,1),(5145,1),(5176,1),(5177,1),(5178,1),(5179,1),(5180,1),(5201,1),(5211,1),(5221,1),(5306,1),(5308,1),(5375,1),(5401,1),(5614,1),(5615,1),(5676,1),(5938,1),(6041,1),(6060,1),(6178,1),(6252,1),(6254,1),(6255,1),(6353,1),(6546,1),(6547,1),(6548,1),(6552,1),(6554,1),(6555,1),(6572,1),(6574,1),(6660,1),(6726,1),(6760,1),(6761,1),(6762,1),(6768,1),(6770,1),(6780,1),(6785,1),(6787,1),(6789,1),(6798,1),(6800,1),(6807,1),(6808,1),(6809,1),(6949,1),(7105,1),(7145,1),(7268,1),(7269,1),(7270,1),(7290,1),(7295,1),(7322,1),(7369,1),(7372,1),(7373,1),(7379,1),(7384,1),(7386,1),(7400,1),(7402,1),(7405,1),(7641,1),(7651,1),(7712,1),(7714,1),(7715,1),(7716,1),(7717,1),(7718,1),(7719,1),(7769,1),(7887,1),(8042,1),(8044,1),(8045,1),(8046,1),(8050,1),(8052,1),(8053,1),(8056,1),(8058,1),(8092,1),(8102,1),(8103,1),(8104,1),(8105,1),(8106,1),(8129,1),(8246,1),(8255,1),(8288,1),(8289,1),(8380,1),(8398,1),(8400,1),(8401,1),(8402,1),(8406,1),(8407,1),(8408,1),(8412,1),(8413,1),(8416,1),(8417,1),(8418,1),(8419,1),(8444,1),(8445,1),(8446,1),(8598,1),(8621,1),(8623,1),(8624,1),(8629,1),(8631,1),(8632,1),(8633,1),(8637,1),(8639,1),(8640,1),(8643,1),(8647,1),(8649,1),(8650,1),(8676,1),(8682,1),(8721,1),(8724,1),(8725,1),(8820,1),(8905,1),(8921,1),(8924,1),(8925,1),(8926,1),(8927,1),(8928,1),(8929,1),(8949,1),(8950,1),(8951,1),(8972,1),(8983,1),(8992,1),(8998,1),(9000,1),(9005,1),(9053,1),(9057,1),(9081,1),(9373,1),(9481,1),(9483,1),(9487,1),(9488,1),(9492,1),(9493,1),(9532,1),(9591,1),(9613,1),(9654,1),(9672,1),(9734,1),(9739,1),(9745,1),(9752,1),(9754,1),(9771,1),(9823,1),(9827,1),(9829,1),(9830,1),(9833,1),(9834,1),(9835,1),(9849,1),(9850,1),(9866,1),(9867,1),(9875,1),(9876,1),(9880,1),(9881,1),(9892,1),(9894,1),(9896,1),(9904,1),(9908,1),(9912,1),(10148,1),(10149,1),(10150,1),(10151,1),(10179,1),(10180,1),(10181,1),(10197,1),(10199,1),(10205,1),(10206,1),(10207,1),(10211,1),(10212,1),(10273,1),(10274,1),(10277,1),(10312,1),(10313,1),(10314,1),(10346,1),(10391,1),(10392,1),(10412,1),(10413,1),(10414,1),(10447,1),(10448,1),(10472,1),(10473,1),(10578,1),(10605,1),(10933,1),(10934,1),(10945,1),(10946,1),(10947,1),(11021,1),(11131,1),(11197,1),(11198,1),(11267,1),(11268,1),(11269,1),(11273,1),(11274,1),(11275,1),(11279,1),(11280,1),(11281,1),(11285,1),(11286,1),(11289,1),(11290,1),(11293,1),(11294,1),(11297,1),(11299,1),(11300,1),(11303,1),(11366,1),(11538,1),(11564,1),(11565,1),(11566,1),(11567,1),(11572,1),(11573,1),(11574,1),(11578,1),(11584,1),(11585,1),(11596,1),(11597,1),(11600,1),(11601,1),(11604,1),(11605,1),(11608,1),(11609,1),(11659,1),(11660,1),(11661,1),(11665,1),(11667,1),(11668,1),(11675,1),(11699,1),(11700,1),(11839,1),(11921,1),(11985,1),(11988,1),(11989,1),(12058,1),(12167,1),(12280,1),(12294,1),(12466,1),(12471,1),(12505,1),(12522,1),(12523,1),(12524,1),(12525,1),(12526,1),(12555,1),(12557,1),(12611,1),(12675,1),(12693,1),(12737,1),(12739,1),(12809,1),(13140,1),(13322,1),(13339,1),(13340,1),(13341,1),(13342,1),(13374,1),(13375,1),(13398,1),(13438,1),(13439,1),(13440,1),(13441,1),(13480,1),(13482,1),(13491,1),(13519,1),(13527,1),(13549,1),(13550,1),(13551,1),(13552,1),(13553,1),(13554,1),(13555,1),(13748,1),(13900,1),(13901,1),(13953,1),(14034,1),(14105,1),(14106,1),(14109,1),(14112,1),(14119,1),(14122,1),(14145,1),(14200,1),(14251,1),(14260,1),(14261,1),(14262,1),(14263,1),(14264,1),(14265,1),(14266,1),(14269,1),(14270,1),(14271,1),(14278,1),(14281,1),(14282,1),(14283,1),(14284,1),(14285,1),(14286,1),(14287,1),(14288,1),(14289,1),(14290,1),(14443,1),(14517,1),(14518,1),(14873,1),(14874,1),(14895,1),(14902,1),(14903,1),(14914,1),(15040,1),(15043,1),(15095,1),(15117,1),(15124,1),(15207,1),(15208,1),(15228,1),(15230,1),(15232,1),(15234,1),(15238,1),(15242,1),(15243,1),(15244,1),(15249,1),(15254,1),(15261,1),(15262,1),(15263,1),(15264,1),(15265,1),(15266,1),(15267,1),(15284,1),(15285,1),(15305,1),(15407,1),(15451,1),(15472,1),(15496,1),(15497,1),(15498,1),(15530,1),(15536,1),(15537,1),(15547,1),(15549,1),(15574,1),(15575,1),(15581,1),(15583,1),(15598,1),(15607,1),(15611,1),(15612,1),(15615,1),(15619,1),(15620,1),(15653,1),(15659,1),(15662,1),(15665,1),(15667,1),(15668,1),(15691,1),(15692,1),(15735,1),(15736,1),(15790,1),(15791,1),(15795,1),(15797,1),(15801,1),(15860,1),(15968,1),(16000,1),(16001,1),(16006,1),(16033,1),(16044,1),(16067,1),(16100,1),(16101,1),(16144,1),(16243,1),(16249,1),(16250,1),(16375,1),(16407,1),(16408,1),(16409,1),(16410,1),(16412,1),(16413,1),(16414,1),(16415,1),(16430,1),(16454,1),(16496,1),(16511,1),(16564,1),(16565,1),(16570,1),(16603,1),(16614,1),(16697,1),(16784,1),(16788,1),(16790,1),(16799,1),(16827,1),(16828,1),(16829,1),(16830,1),(16831,1),(16832,1),(16868,1),(16908,1),(16979,1),(16997,1),(17008,1),(17140,1),(17141,1),(17142,1),(17143,1),(17144,1),(17147,1),(17149,1),(17157,1),(17171,1),(17173,1),(17174,1),(17198,1),(17203,1),(17238,1),(17243,1),(17253,1),(17255,1),(17256,1),(17257,1),(17258,1),(17259,1),(17260,1),(17261,1),(17273,1),(17274,1),(17276,1),(17281,1),(17284,1),(17290,1),(17311,1),(17312,1),(17313,1),(17314,1),(17333,1),(17347,1),(17348,1),(17353,1),(17364,1),(17393,1),(17434,1),(17435,1),(17483,1),(17501,1),(17503,1),(17509,1),(17620,1),(17682,1),(17745,1),(17877,1),(17919,1),(17920,1),(17921,1),(17922,1),(17923,1),(17924,1),(17925,1),(17926,1),(17962,1),(17963,1),(18081,1),(18082,1),(18083,1),(18084,1),(18085,1),(18089,1),(18091,1),(18092,1),(18104,1),(18105,1),(18108,1),(18111,1),(18138,1),(18164,1),(18165,1),(18187,1),(18199,1),(18204,1),(18205,1),(18211,1),(18214,1),(18217,1),(18276,1),(18278,1),(18392,1),(18398,1),(18545,1),(18557,1),(18561,1),(18649,1),(18651,1),(18796,1),(18807,1),(18809,1),(18817,1),(18819,1),(18833,1),(18867,1),(18868,1),(18869,1),(18870,1),(18871,1),(18980,1),(18984,1),(19128,1),(19260,1),(19306,1),(19319,1),(19386,1),(19391,1),(19434,1),(19463,1),(19472,1),(19503,1),(19632,1),(19639,1),(19642,1),(19701,1),(19715,1),(19725,1),(19728,1),(19729,1),(19767,1),(19777,1),(19781,1),(19785,1),(19801,1),(19816,1),(19874,1),(19881,1),(19983,1),(20228,1),(20240,1),(20243,1),(20252,1),(20276,1),(20295,1),(20297,1),(20298,1),(20420,1),(20463,1),(20535,1),(20536,1),(20543,1),(20559,1),(20560,1),(20569,1),(20605,1),(20616,1),(20617,1),(20627,1),(20630,1),(20657,1),(20658,1),(20660,1),(20661,1),(20662,1),(20666,1),(20678,1),(20684,1),(20691,1),(20692,1),(20695,1),(20696,1),(20698,1),(20714,1),(20720,1),(20735,1),(20736,1),(20743,1),(20791,1),(20792,1),(20793,1),(20795,1),(20797,1),(20802,1),(20805,1),(20806,1),(20807,1),(20808,1),(20811,1),(20815,1),(20816,1),(20819,1),(20820,1),(20821,1),(20822,1),(20823,1),(20824,1),(20825,1),(20828,1),(20829,1),(20831,1),(20832,1),(20869,1),(20883,1),(20900,1),(20901,1),(20902,1),(20903,1),(20904,1),(20909,1),(20910,1),(21008,1),(21027,1),(21047,1),(21059,1),(21071,1),(21072,1),(21077,1),(21141,1),(21151,1),(21159,1),(21162,1),(21167,1),(21170,1),(21343,1),(21354,1),(21369,1),(21390,1),(21402,1),(21549,1),(21551,1),(21552,1),(21553,1),(21667,1),(21668,1),(21807,1),(21832,1),(21978,1),(22088,1),(22121,1),(22272,1),(22273,1),(22336,1),(22355,1),(22357,1),(22411,1),(22414,1),(22425,1),(22427,1),(22568,1),(22570,1),(22574,1),(22643,1),(22666,1),(22677,1),(22746,1),(22827,1),(22828,1),(22829,1),(22859,1),(22878,1),(22887,1),(22907,1),(22908,1),(23073,1),(23102,1),(23106,1),(23206,1),(23267,1),(23391,1),(23392,1),(23512,1),(23592,1),(23601,1),(23848,1),(23850,1),(23860,1),(23881,1),(23892,1),(23893,1),(23894,1),(23922,1),(23923,1),(23924,1),(23925,1),(23959,1),(23960,1),(24042,1),(24049,1),(24132,1),(24133,1),(24238,1),(24239,1),(24248,1),(24274,1),(24275,1),(24300,1),(24331,1),(24332,1),(24334,1),(24335,1),(24374,1),(24393,1),(24407,1),(24583,1),(24585,1),(24586,1),(24587,1),(24619,1),(24640,1),(24668,1),(24680,1),(24844,1),(24942,1),(25008,1),(25009,1),(25010,1),(25011,1),(25012,1),(25021,1),(25052,1),(25054,1),(25055,1),(25174,1),(25286,1),(25288,1),(25294,1),(25295,1),(25298,1),(25300,1),(25302,1),(25304,1),(25306,1),(25307,1),(25309,1),(25345,1),(25346,1),(25677,1),(25686,1),(25710,1),(25712,1),(25783,15),(25902,1),(25911,1),(25912,1),(25995,1),(26006,1),(26098,1),(26282,1),(26350,1),(26616,1),(26693,1),(27360,1),(27552,1),(27554,1),(27559,1),(27567,1),(27572,1),(27580,1),(27581,1),(27584,1),(27611,1),(27615,1),(27632,1),(27633,1),(27794,1),(27860,1),(28318,1),(28412,1),(28478,1),(28599,1),(29070,1),(29155,1),(29228,1),(29317,1),(29515,1),(30095,1),(31016,1),(31018,1);
/*!40000 ALTER TABLE `spell_facing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_learn_spell`
--

DROP TABLE IF EXISTS `spell_learn_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_learn_spell` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpellID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`,`SpellID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_learn_spell`
--

LOCK TABLES `spell_learn_spell` WRITE;
/*!40000 ALTER TABLE `spell_learn_spell` DISABLE KEYS */;
INSERT INTO `spell_learn_spell` VALUES (2842,8681,1),(5784,33388,1),(12303,45471,0),(12788,45471,0),(12789,45471,0),(13819,33388,1),(17002,24867,0),(23161,33391,1),(23214,33391,1),(24866,24864,0),(33872,47179,0),(33873,47180,0),(33943,34090,1),(34767,33391,1),(34769,33388,1);
/*!40000 ALTER TABLE `spell_learn_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_pet_auras`
--

DROP TABLE IF EXISTS `spell_pet_auras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `pet` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY (`spell`,`pet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_pet_auras`
--

LOCK TABLES `spell_pet_auras` WRITE;
/*!40000 ALTER TABLE `spell_pet_auras` DISABLE KEYS */;
INSERT INTO `spell_pet_auras` VALUES (19028,0,25228),(19578,0,19579),(20895,0,24529),(28757,0,28758),(35029,0,35060),(35030,0,35061),(35691,0,35696),(35692,0,35696),(35693,0,35696),(23785,416,23759),(23822,416,23826),(23823,416,23827),(23824,416,23828),(23825,416,23829),(23785,417,23762),(23822,417,23837),(23823,417,23838),(23824,417,23839),(23825,417,23840),(23785,1860,23760),(23822,1860,23841),(23823,1860,23842),(23824,1860,23843),(23825,1860,23844),(23785,1863,23761),(23822,1863,23833),(23823,1863,23834),(23824,1863,23835),(23825,1863,23836),(23785,17252,35702),(23822,17252,35703),(23823,17252,35704),(23824,17252,35705),(23825,17252,35706);
/*!40000 ALTER TABLE `spell_pet_auras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_proc_event`
--

DROP TABLE IF EXISTS `spell_proc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_proc_event` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SchoolMask` tinyint(4) NOT NULL DEFAULT '0',
  `Category` smallint(6) NOT NULL DEFAULT '0',
  `SkillID` smallint(6) NOT NULL DEFAULT '0',
  `SpellFamilyName` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask` bigint(20) unsigned NOT NULL DEFAULT '0',
  `procFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ppmRate` float NOT NULL DEFAULT '0',
  `cooldown` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_proc_event`
--

LOCK TABLES `spell_proc_event` WRITE;
/*!40000 ALTER TABLE `spell_proc_event` DISABLE KEYS */;
INSERT INTO `spell_proc_event` VALUES (168,0,0,0,0,0,2,0,0),(324,0,0,0,0,0,1049602,0,3),(325,0,0,0,0,0,1049602,0,3),(588,0,0,0,0,0,1026,0,0),(602,0,0,0,0,0,1026,0,0),(742,0,0,0,0,0,1,0,0),(905,0,0,0,0,0,1049602,0,3),(945,0,0,0,0,0,1049602,0,3),(974,0,0,0,0,0,1049602,0,3),(1006,0,0,0,0,0,1026,0,0),(1120,0,0,0,0,0,4,0,0),(2565,0,0,0,0,0,64,0,0),(2652,0,0,0,0,0,2,0,0),(3235,0,0,0,0,0,2,0,0),(3284,0,0,0,0,0,2,0,0),(3338,0,0,0,0,0,2,0,0),(3394,0,0,0,0,0,1,0,0),(3417,0,0,0,0,0,1,0,0),(3418,0,0,0,0,0,2,0,0),(3424,0,0,0,0,0,1,0,0),(3436,0,0,0,0,0,2,0,0),(3439,0,0,0,0,0,2,0,0),(3440,0,0,0,0,0,1,0,0),(3509,0,0,0,0,0,1,0,0),(3512,0,0,0,0,0,1,0,0),(3582,0,0,0,0,0,1,0,0),(3616,0,0,0,0,0,1,0,0),(3637,0,0,0,0,0,2,0,0),(4070,0,0,0,0,0,2,0,0),(4112,0,0,0,0,0,2,0,0),(4113,0,0,0,0,0,2,0,0),(4114,0,0,0,0,0,2,0,0),(4115,0,0,0,0,0,2,0,0),(4133,0,0,0,0,0,2,0,0),(4136,0,0,0,0,0,2,0,0),(4138,0,0,0,0,0,2,0,0),(4140,0,0,0,0,0,2,0,0),(4142,0,0,0,0,0,4,0,0),(4144,0,0,0,0,0,1,0,0),(4241,0,0,0,0,0,1,0,0),(4242,0,0,0,0,0,1,0,0),(4245,0,0,0,0,0,1,0,0),(4279,0,0,0,0,0,1,0,0),(4283,0,0,0,0,0,1,0,0),(4284,0,0,0,0,0,1,0,0),(4315,0,0,0,0,0,1,0,0),(4317,0,0,0,0,0,1,0,0),(4493,0,0,0,0,0,1,0,0),(4525,0,0,0,0,0,2,0,0),(4932,0,0,0,0,0,2,0,0),(4951,0,0,0,0,0,2,0,0),(5104,0,0,0,0,0,1,0,0),(5118,0,0,0,0,0,32768,0,0),(5202,0,0,0,0,0,1,0,0),(5205,0,0,0,0,0,2,0,0),(5262,0,0,0,0,0,1,0,0),(5301,0,0,0,0,0,0,0,0),(5364,0,0,0,0,0,2,0,0),(5368,0,0,0,0,0,2,0,0),(5369,0,0,0,0,0,2,0,0),(5370,0,0,0,0,0,2,0,0),(5377,0,0,0,0,0,1,0,0),(5427,0,0,0,0,0,1,0,0),(5680,0,0,0,0,0,1,0,0),(5728,0,0,0,0,0,1049602,0,0),(5811,0,0,0,0,0,2,0,0),(6268,0,0,0,0,0,1,0,0),(6397,0,0,0,0,0,1049602,0,0),(6398,0,0,0,0,0,1049602,0,0),(6399,0,0,0,0,0,1049602,0,0),(6433,0,0,0,0,0,2,0,0),(6645,0,0,0,0,0,1,0,0),(6750,0,0,0,0,0,1,0,0),(6752,0,0,0,0,0,1,0,0),(6866,0,0,0,0,0,114,0,0),(6867,0,0,0,0,0,1,0,0),(6870,0,0,0,0,0,0,0,0),(6871,0,0,0,0,0,1,0,0),(6909,0,0,0,0,0,1,0,0),(6921,0,0,0,0,0,1,0,0),(6923,0,0,0,0,0,1,0,0),(6947,0,0,0,0,0,1,0,0),(6961,0,0,0,0,0,1,0,0),(7095,0,0,0,0,0,1,0,0),(7098,0,0,0,0,0,1,0,0),(7102,0,0,0,0,0,1,0,0),(7103,0,0,0,0,0,2,0,0),(7128,0,0,0,0,0,1026,0,0),(7131,0,0,0,0,0,664232,0,0),(7137,0,0,0,0,0,1,0,0),(7276,0,0,0,0,0,1,0,0),(7300,0,0,0,0,0,2,0,0),(7301,0,0,0,0,0,2,0,0),(7302,0,0,0,0,0,2,0,0),(7320,0,0,0,0,0,2,0,0),(7445,0,0,0,0,0,2,0,0),(7446,0,0,0,0,0,2,0,0),(7486,0,0,0,0,0,1,0,0),(7617,0,0,0,0,0,1048578,0,0),(7619,0,0,0,0,0,1048578,0,0),(7711,0,0,0,0,0,1,0,0),(7721,0,0,0,0,0,1,0,0),(7722,0,0,0,0,0,1,0,0),(7723,0,0,0,0,0,1,0,0),(7724,0,0,0,0,0,1,0,0),(7725,0,0,0,0,0,1,0,0),(7726,0,0,0,0,0,1,0,0),(7806,0,0,0,0,0,1,0,0),(7807,0,0,0,0,0,1,0,0),(7808,0,0,0,0,0,1,0,0),(7849,0,0,0,0,0,2,0,0),(7999,0,0,0,0,0,2,0,0),(8134,0,0,0,0,0,1049602,0,3),(8224,0,0,0,0,0,2,0,0),(8247,0,0,0,0,0,1,0,0),(8260,0,0,0,0,0,1,0,0),(8288,0,0,0,0,0,4,0,0),(8289,0,0,0,0,0,4,0,0),(8397,0,0,0,0,0,2,0,0),(8494,0,0,0,0,0,1049602,0,0),(8495,0,0,0,0,0,1049602,0,0),(8601,0,0,0,0,0,1,0,0),(8612,0,0,0,0,0,2,0,0),(8788,0,0,0,0,0,1026,0,0),(8852,0,0,0,0,0,2,0,0),(8876,0,0,0,0,0,1,0,0),(8981,0,0,0,0,0,1,0,0),(9084,0,0,0,0,0,8,0,0),(9160,0,0,0,0,0,2,0,0),(9233,0,0,0,0,0,1,0,0),(9276,0,0,0,0,0,1,0,0),(9452,0,0,0,0,0,20,3,0),(9460,0,0,0,0,0,2,0,0),(9463,0,0,0,0,0,2,0,0),(9778,0,0,0,0,0,2,0,0),(9782,0,0,0,0,0,64,0,0),(9784,0,0,0,0,0,64,0,0),(9799,0,0,0,0,0,262144,0,0),(10022,0,0,0,0,0,1,0,0),(10092,0,0,0,0,0,128,0,0),(10191,0,0,0,0,0,1049602,0,0),(10192,0,0,0,0,0,1049602,0,0),(10193,0,0,0,0,0,1049602,0,0),(10219,0,0,0,0,0,2,0,0),(10220,0,0,0,0,0,2,0,0),(10425,0,0,0,0,0,1049602,0,0),(10426,0,0,0,0,0,1049602,0,0),(10431,0,0,0,0,0,1049602,0,3),(10432,0,0,0,0,0,1049602,0,3),(10951,0,0,0,0,0,1026,0,0),(10952,0,0,0,0,0,1026,0,0),(11103,4,0,0,0,0,131072,0,0),(11119,4,0,0,0,0,65536,0,0),(11120,4,0,0,0,0,65536,0,0),(11129,4,0,0,0,0,131072,0,0),(11180,16,0,0,0,0,131072,0,0),(11185,0,0,0,3,128,131072,0,0),(11213,0,0,0,0,0,131072,0,0),(11255,0,0,0,3,16384,16384,0,0),(11371,0,0,0,0,0,2,0,0),(11441,0,0,0,0,0,1,0,0),(11675,0,0,0,0,0,4,0,0),(11919,0,0,0,0,0,1,0,0),(11959,0,0,0,0,0,1,0,0),(11964,0,0,0,0,0,1,0,0),(11984,0,0,0,0,0,1,0,0),(12099,0,0,0,0,0,64,0,0),(12169,0,0,0,0,0,64,0,0),(12246,0,0,0,0,0,2,0,0),(12254,0,0,0,0,0,1,0,0),(12281,0,0,0,0,0,1,0,0),(12284,0,0,0,0,0,1,0.33252,0),(12289,0,0,26,0,2,131072,0,0),(12292,0,0,0,0,0,128,0,0),(12298,0,0,0,0,0,64,0,0),(12311,0,0,0,4,2048,131072,0,0),(12317,0,0,0,0,0,8658944,0,0),(12319,0,0,0,0,0,69632,0,0),(12322,0,0,0,0,0,1,2,0),(12328,0,0,0,0,0,3288334337,0,0),(12357,4,0,0,0,0,131072,0,0),(12358,4,0,0,0,0,131072,0,0),(12359,4,0,0,0,0,131072,0,0),(12360,4,0,0,0,0,131072,0,0),(12487,0,0,0,3,128,131072,0,0),(12488,0,0,0,3,128,131072,0,0),(12529,0,0,0,0,0,2,0,0),(12539,0,0,0,0,0,1,0,0),(12544,0,0,0,0,0,2,0,0),(12550,0,0,0,0,0,1026,0,0),(12556,0,0,0,0,0,2,0,0),(12574,0,0,0,0,0,131072,0,0),(12575,0,0,0,0,0,131072,0,0),(12576,0,0,0,0,0,131072,0,0),(12577,0,0,0,0,0,131072,0,0),(12598,0,0,0,3,16384,16384,0,0),(12668,0,0,26,0,2,131072,0,0),(12701,0,0,0,0,0,1,0.66504,0),(12702,0,0,0,0,0,1,0.99756,0),(12703,0,0,0,0,0,1,1.33008,0),(12704,0,0,0,0,0,1,1.6626,0),(12724,0,0,0,0,0,64,0,0),(12725,0,0,0,0,0,64,0,0),(12726,0,0,0,0,0,64,0,0),(12727,0,0,0,0,0,64,0,0),(12782,0,0,0,0,0,64,0,0),(12787,0,0,0,0,0,1,0,0),(12797,0,0,0,0,1024,131072,0,0),(12799,0,0,0,0,1024,131072,0,0),(12800,0,0,0,0,1024,131072,0,0),(12812,0,0,0,0,0,1,0,0),(12813,0,0,0,0,0,1,0,0),(12814,0,0,0,0,0,1,0,0),(12815,0,0,0,0,0,1,0,0),(12834,0,0,0,0,0,69632,0,0),(12846,4,0,0,0,0,65536,0,0),(12847,4,0,0,0,0,65536,0,0),(12848,4,0,0,0,0,65536,0,0),(12849,0,0,0,0,0,69632,0,0),(12867,0,0,0,0,0,69632,0,0),(12947,0,0,0,0,0,1,0,0),(12958,0,0,0,4,2048,131072,0,0),(12966,0,0,0,0,0,3288334337,0,0),(12967,0,0,0,0,0,3288334337,0,0),(12968,0,0,0,0,0,3288334337,0,0),(12969,0,0,0,0,0,3288334337,0,0),(12970,0,0,0,0,0,3288334337,0,0),(12971,0,0,0,0,0,69632,0,0),(12972,0,0,0,0,0,69632,0,0),(12973,0,0,0,0,0,69632,0,0),(12974,0,0,0,0,0,69632,0,0),(12999,0,0,0,0,0,1,4,0),(13000,0,0,0,0,0,1,6,0),(13001,0,0,0,0,0,1,8,0),(13002,0,0,0,0,0,1,10,0),(13045,0,0,0,0,0,8658944,0,0),(13046,0,0,0,0,0,8658944,0,0),(13047,0,0,0,0,0,8658944,0,0),(13048,0,0,0,0,0,8658944,0,0),(13159,0,0,0,0,0,32768,0,0),(13165,0,0,0,0,0,524288,0,0),(13299,0,0,0,0,0,1,0,0),(13358,0,0,0,0,0,0,0,0),(13585,0,0,0,0,0,1026,0,0),(13616,0,0,0,0,0,1,0,0),(13709,0,0,0,0,0,1,0,0),(13716,0,0,0,0,0,1026,0,0),(13754,0,0,0,0,16,131072,0,0),(13800,0,0,0,0,0,1,0,0),(13801,0,0,0,0,0,1,0,0),(13802,0,0,0,0,0,1,0,0),(13803,0,0,0,0,0,1,0,0),(13867,0,0,0,0,16,131072,0,0),(13877,0,0,0,0,0,3288334337,0,0),(13879,0,0,0,0,0,2,0,0),(13886,0,0,0,0,0,1,0,0),(13896,0,0,0,0,0,1048576,0,0),(13959,0,0,0,0,0,1048578,0,0),(13960,0,0,0,0,0,1,0,0),(13961,0,0,0,0,0,1,0,0),(13962,0,0,0,0,0,1,0,0),(13963,0,0,0,0,0,1,0,0),(13964,0,0,0,0,0,1,0,0),(13983,0,0,0,0,0,16777232,0,0),(14070,0,0,0,0,0,16777232,0,0),(14071,0,0,0,0,0,16777232,0,0),(14108,0,0,0,0,0,2,0,0),(14111,0,0,0,0,0,1,0,0),(14133,0,0,0,0,0,1,0,0),(14144,0,0,0,0,0,4,0,0),(14148,0,0,0,0,0,4,0,0),(14156,0,0,0,0,4063232,131072,0,0),(14160,0,0,0,0,4063232,131072,0,0),(14161,0,0,0,0,4063232,131072,0,0),(14178,0,0,0,0,0,2,0,0),(14186,0,0,0,8,1082131720,65536,0,0),(14190,0,0,0,8,1082131720,65536,0,0),(14193,0,0,0,8,1082131720,65536,0,0),(14194,0,0,0,8,1082131720,65536,0,0),(14195,0,0,0,8,1082131720,65536,0,0),(14318,0,0,0,0,0,524288,0,0),(14319,0,0,0,0,0,524288,0,0),(14320,0,0,0,0,0,524288,0,0),(14321,0,0,0,0,0,524288,0,0),(14322,0,0,0,0,0,524288,0,0),(14531,0,0,0,0,0,8192,0,0),(14774,0,0,0,0,0,8192,0,0),(14869,0,0,0,0,0,1,0,0),(14892,0,0,0,6,17448312320,268435456,0,0),(15088,0,0,0,0,0,4096,0,0),(15097,0,0,0,0,0,8192,0,0),(15268,32,0,0,0,0,131072,0,0),(15270,0,0,0,0,0,4,0,0),(15277,0,0,0,0,0,1,6,0),(15286,32,0,0,0,0,32768,0,0),(15323,32,0,0,0,0,131072,0,0),(15324,32,0,0,0,0,131072,0,0),(15325,32,0,0,0,0,131072,0,0),(15326,32,0,0,0,0,131072,0,0),(15335,0,0,0,0,0,4,0,0),(15336,0,0,0,0,0,4,0,0),(15337,0,0,0,0,0,4,0,0),(15338,0,0,0,0,0,4,0,0),(15346,0,0,0,0,0,1,6,0),(15362,0,0,0,6,17448312320,268435456,0,0),(15363,0,0,0,6,17448312320,268435456,0,0),(15506,0,0,0,0,0,1,0,0),(15507,0,0,0,0,0,1026,0,0),(15573,0,0,0,0,0,1,0,0),(15594,0,0,0,0,0,2,0,0),(15599,0,0,0,0,0,1,0,0),(15600,0,0,0,0,0,1,0.6,0),(15603,0,0,0,0,0,2,0,0),(15636,0,0,0,0,0,1,0,0),(15641,0,0,0,0,0,1,0,0),(15730,0,0,0,0,0,1,0,0),(15733,0,0,0,0,0,1,0,0),(15784,0,0,0,0,0,2,0,0),(15849,0,0,0,0,0,1,0,0),(15852,0,0,0,0,0,1,0,0),(15876,0,0,0,0,0,2,0,0),(15978,0,0,0,0,0,1,0,0),(16092,0,0,0,0,0,0,0,0),(16142,0,0,0,0,0,1,0,0),(16164,28,0,0,0,0,65536,0,0),(16176,0,0,0,0,0,268435456,0,0),(16235,0,0,0,0,0,268435456,0,0),(16240,0,0,0,0,0,268435456,0,0),(16247,0,0,0,0,0,1,0,0),(16256,0,0,0,0,0,4096,0,0),(16257,0,0,0,0,0,3288334337,0,0),(16277,0,0,0,0,0,3288334337,0,0),(16278,0,0,0,0,0,3288334337,0,0),(16279,0,0,0,0,0,3288334337,0,0),(16280,0,0,0,0,0,3288334337,0,0),(16281,0,0,0,0,0,4096,0,0),(16282,0,0,0,0,0,4096,0,0),(16283,0,0,0,0,0,4096,0,0),(16284,0,0,0,0,0,4096,0,0),(16428,0,0,0,0,0,1,0,0),(16487,0,0,0,0,0,8658944,0,0),(16489,0,0,0,0,0,8658944,0,0),(16492,0,0,0,0,0,8658944,0,0),(16550,0,0,0,0,0,8192,0,0),(16574,0,0,0,0,0,1,0,0),(16575,0,0,0,0,0,1,0,0),(16611,0,0,0,0,0,2,0,0),(16615,0,0,0,0,0,1,0,0),(16620,0,0,0,0,0,1049602,0,30),(16624,0,0,0,0,0,64,0,0),(16689,0,0,0,0,0,2,0,0),(16792,0,0,0,0,0,8192,0,0),(16800,0,0,0,0,0,1,0,0),(16810,0,0,0,0,0,2,0,0),(16811,0,0,0,0,0,2,0,0),(16812,0,0,0,0,0,2,0,0),(16813,0,0,0,0,0,2,0,0),(16843,0,0,0,0,0,1,0,0),(16850,0,0,0,0,4,131072,0,0),(16864,0,0,0,0,0,1,2,0),(16880,0,0,0,0,0,65536,0,0),(16923,0,0,0,0,4,131072,0,0),(16924,0,0,0,0,4,131072,0,0),(16952,0,0,0,0,4398046744576,65536,0,0),(16954,0,0,0,0,4398046744576,65536,0,0),(16958,0,0,0,0,0,69632,0,0),(16961,0,0,0,0,0,69632,0,0),(16982,0,0,0,0,0,1,0,0),(17010,0,0,0,0,0,1,0,0),(17106,0,0,0,7,524288,16384,0,0),(17107,0,0,0,7,524288,16384,0,0),(17108,0,0,0,7,524288,16384,0,0),(17329,0,0,0,0,0,2,0,0),(17332,0,0,0,0,0,1,0,0),(17350,0,0,0,0,0,2,0,0),(17364,0,0,0,0,0,32768,0,0),(17495,0,0,0,0,0,64,0,0),(17670,0,0,0,0,0,8,0,0),(17687,0,0,0,0,0,3288334337,0,0),(17688,0,0,0,0,0,128,0,0),(17690,0,0,0,0,0,2,0,0),(17793,0,0,0,5,1,65536,0,0),(17794,0,0,0,0,0,32768,0,0),(17796,0,0,0,5,1,65536,0,0),(17797,0,0,0,0,0,32768,0,0),(17798,0,0,0,0,0,32768,0,0),(17799,0,0,0,0,0,32768,0,0),(17800,0,0,0,0,0,32768,0,0),(17801,0,0,0,5,1,65536,0,0),(17802,0,0,0,5,1,65536,0,0),(17803,0,0,0,5,1,65536,0,0),(18073,0,0,0,0,549755813984,131072,0,0),(18094,0,0,0,5,10,2048,0,0),(18095,0,0,0,5,10,2048,0,0),(18096,0,0,0,0,549755813984,131072,0,0),(18097,0,0,0,0,0,2,0,0),(18100,0,0,0,0,0,2,0,0),(18119,0,0,593,0,0,133120,0,0),(18120,0,0,593,0,0,133120,0,0),(18121,0,0,593,0,0,133120,0,0),(18122,0,0,593,0,0,133120,0,0),(18123,0,0,593,0,0,133120,0,0),(18137,0,0,0,0,0,1049602,0,3),(18146,0,0,0,0,0,2,0,0),(18167,0,0,0,0,0,1,0,0),(18186,0,0,0,0,0,1,0,0),(18542,0,0,0,0,0,1,0,0),(18765,0,0,0,0,0,3288334337,0,0),(18799,0,0,0,0,0,2,0,0),(18800,0,0,0,0,0,8,0,0),(18803,0,0,0,0,0,16384,0,0),(18815,0,0,0,0,0,2,0,0),(18816,0,0,0,0,0,2,0,0),(18847,0,0,0,0,0,1,0,0),(18943,0,0,0,0,0,1,0,0),(18979,0,0,0,0,0,1,0,0),(18983,0,0,0,0,0,4,0,0),(19184,0,0,0,0,0,2097152,0,0),(19194,0,0,0,0,0,1,0,0),(19228,0,0,0,0,64,131072,0,0),(19232,0,0,0,0,64,131072,0,0),(19233,0,0,0,0,64,131072,0,0),(19261,0,0,0,0,0,2,0,0),(19262,0,0,0,0,0,2,0,0),(19264,0,0,0,0,0,2,0,0),(19265,0,0,0,0,0,2,0,0),(19266,0,0,0,0,0,2,0,0),(19271,0,0,0,0,0,1048576,0,0),(19273,0,0,0,0,0,1048576,0,0),(19274,0,0,0,0,0,1048576,0,0),(19275,0,0,0,0,0,1048576,0,0),(19308,0,0,0,0,0,1049602,0,3),(19309,0,0,0,0,0,1049602,0,3),(19310,0,0,0,0,0,1049602,0,3),(19311,0,0,0,0,0,1049602,0,3),(19312,0,0,0,0,0,1049602,0,3),(19387,0,0,0,0,0,2097152,0,0),(19388,0,0,0,0,0,2097152,0,0),(19407,0,0,0,0,512,131072,0,0),(19409,0,0,0,0,0,1048578,0,0),(19412,0,0,0,0,512,131072,0,0),(19413,0,0,0,0,512,131072,0,0),(19414,0,0,0,0,512,131072,0,0),(19415,0,0,0,0,512,131072,0,0),(19449,0,0,0,0,0,2,0,0),(19478,0,0,0,0,0,2,0,0),(19514,0,0,0,0,0,1026,0,0),(19572,0,0,0,9,8388608,2048,0,0),(19573,0,0,0,9,8388608,2048,0,0),(19577,0,0,0,0,0,1,0,0),(19655,0,0,0,0,0,2,0,0),(19656,0,0,0,0,0,2,0,0),(19660,0,0,0,0,0,2,0,0),(19817,0,0,0,0,0,1,0,0),(19818,0,0,0,0,0,1,0,0),(20049,0,0,0,0,0,69632,0,0),(20056,0,0,0,0,0,69632,0,0),(20057,0,0,0,0,0,69632,0,0),(20058,0,0,0,0,0,69632,0,0),(20059,0,0,0,0,0,69632,0,0),(20127,0,0,0,0,0,1026,0,0),(20128,0,0,0,0,0,64,0,0),(20130,0,0,0,0,0,1026,0,0),(20131,0,0,0,0,0,64,0,0),(20132,0,0,0,0,0,64,0,0),(20133,0,0,0,0,0,64,0,0),(20134,0,0,0,0,0,64,0,0),(20135,0,0,0,0,0,1026,0,0),(20136,0,0,0,0,0,1026,0,0),(20137,0,0,0,0,0,1026,0,0),(20154,0,0,0,0,0,1,0,0),(20164,0,0,0,0,0,1,5,0),(20165,0,0,0,0,0,1,20,0),(20166,0,0,0,0,0,1,20,0),(20177,0,0,0,0,0,1049602,0,0),(20178,0,0,0,0,0,1,0,0),(20179,0,0,0,0,0,1049602,0,0),(20180,0,0,0,0,0,1049602,0,0),(20181,0,0,0,0,0,1049602,0,0),(20182,0,0,0,0,0,1049602,0,0),(20185,0,0,0,0,0,2,0,0),(20186,0,0,0,0,0,1049602,0,0),(20210,0,0,0,10,281478197936128,268435456,0,0),(20212,0,0,0,10,281478197936128,268435456,0,0),(20213,0,0,0,10,281478197936128,268435456,0,0),(20214,0,0,0,10,281478197936128,268435456,0,0),(20215,0,0,0,10,281478197936128,268435456,0,0),(20230,0,0,0,0,0,2,0,0),(20234,0,0,0,0,32768,131072,0,0),(20235,0,0,0,0,32768,131072,0,0),(20287,0,0,0,0,0,1,0,0),(20288,0,0,0,0,0,1,0,0),(20289,0,0,0,0,0,1,0,0),(20290,0,0,0,0,0,1,0,0),(20291,0,0,0,0,0,1,0,0),(20292,0,0,0,0,0,1,0,0),(20293,0,0,0,0,0,1,0,0),(20344,0,0,0,0,0,2,0,0),(20345,0,0,0,0,0,2,0,0),(20346,0,0,0,0,0,2,0,0),(20347,0,0,0,0,0,1,20,0),(20348,0,0,0,0,0,1,20,0),(20349,0,0,0,0,0,1,20,0),(20354,0,0,0,0,0,1049602,0,0),(20355,0,0,0,0,0,1049602,0,0),(20356,0,0,0,0,0,1,20,0),(20357,0,0,0,0,0,1,20,0),(20375,0,0,0,0,0,1,7,0),(20500,0,0,0,4,268435456,16384,0,0),(20501,0,0,0,4,268435456,16384,0,0),(20545,0,0,0,0,0,1026,0,0),(20705,0,0,0,0,0,8192,0,0),(20725,0,0,0,0,0,4096,0,0),(20784,0,0,0,0,0,4096,0,0),(20847,0,0,0,0,0,2,0,0),(20884,0,0,0,0,0,1,0,0),(20891,0,0,0,0,0,4096,0,0),(20911,0,0,0,0,0,64,0,0),(20912,0,0,0,0,0,64,0,0),(20913,0,0,0,0,0,64,0,0),(20914,0,0,0,0,0,64,0,0),(20915,0,0,0,0,0,1,7,0),(20918,0,0,0,0,0,1,7,0),(20919,0,0,0,0,0,1,7,0),(20920,0,0,0,0,0,1,7,0),(20925,0,0,0,0,0,64,0,0),(20927,0,0,0,0,0,64,0,0),(20928,0,0,0,0,0,64,0,0),(21053,0,0,0,0,0,4,0,0),(21061,0,0,0,0,0,1,0,0),(21063,0,0,0,0,0,32768,0,0),(21080,0,0,0,0,0,1,0,0),(21084,0,0,0,0,0,1,0,0),(21185,0,0,0,0,0,4,0,10),(21334,0,0,0,0,0,32768,0,0),(21645,0,0,0,0,0,1,0,0),(21747,0,0,0,0,0,1,0,0),(21788,0,0,0,0,0,1,0,0),(21838,0,0,0,0,0,32768,0,0),(21841,0,0,0,0,0,1,0,0),(21853,0,0,0,0,0,2,0,0),(21882,0,0,0,0,0,4096,0,0),(21890,0,0,0,4,3763103747823,532481,0,0),(21893,0,0,0,0,0,2,0,0),(21897,0,0,0,0,0,2,0,0),(21911,0,0,0,0,0,1,0,0),(21969,0,0,0,0,0,2,0,0),(21978,0,0,0,0,0,131072,0,0),(22007,0,0,0,0,2099233,16384,0,0),(22413,0,0,0,0,0,1,0,0),(22438,0,0,0,0,0,2,0,0),(22618,0,0,0,0,0,64,0,0),(22620,0,0,0,0,0,64,0,0),(22648,0,0,0,0,0,4096,0,0),(22835,0,0,0,0,0,1,0,0),(22857,0,0,0,0,0,2,0,0),(23340,0,0,0,0,0,2,0,0),(23378,0,0,0,0,0,2,0,0),(23547,0,0,0,0,0,32,0,0),(23548,0,0,0,0,0,64,0,0),(23551,0,0,0,0,192,16384,0,0),(23552,0,0,0,0,0,1049602,0,3),(23572,0,0,0,0,192,16384,0,0),(23578,0,0,0,0,0,524288,2,0),(23581,0,0,0,0,0,1,2,0),(23686,0,0,0,0,0,1,2,0),(23688,0,0,0,0,0,16384,0,0),(23689,0,0,0,0,0,1,4,0),(23695,0,0,0,0,2,131072,0,0),(23721,0,0,0,0,2048,131072,0,0),(23771,0,0,0,0,0,1,0,0),(23780,0,0,0,0,0,1048578,0,0),(23863,0,0,0,0,0,1,0,0),(23867,0,0,0,0,0,129,0,0),(23885,0,0,0,0,0,1,0,0),(23886,0,0,0,0,0,1,0,0),(23887,0,0,0,0,0,1,0,0),(23888,0,0,0,0,0,1,0,0),(24051,0,0,0,0,0,1,0,0),(24256,0,0,0,0,0,524289,0,0),(24389,4,0,0,0,0,131072,0,0),(24398,0,0,0,0,0,1049602,0,3),(24574,0,0,0,0,0,1048578,0,0),(24596,0,0,0,0,0,0,0,0),(24597,0,0,0,0,0,524289,0,0),(24603,0,0,0,0,0,524289,0,0),(24604,0,0,0,0,0,524289,0,0),(24605,0,0,0,0,0,524289,0,0),(24658,0,0,0,0,0,16384,0,0),(24661,0,0,0,0,0,524289,0,0),(24905,0,0,0,0,0,1,15,0),(24932,0,0,0,0,0,4096,0,6),(24949,0,0,0,0,0,0,0,0),(25020,0,0,0,0,0,1026,0,0),(25023,0,0,0,0,0,2,0,0),(25296,0,0,0,0,0,524288,0,0),(25431,0,0,0,0,0,1026,0,0),(25441,0,0,0,0,0,1048576,0,0),(25461,0,0,0,0,0,2,0,0),(25469,0,0,0,0,0,1049602,0,3),(25472,0,0,0,0,0,1049602,0,3),(25477,0,0,0,0,0,1049602,0,3),(25513,0,0,0,0,0,1049602,0,0),(25669,0,0,0,0,0,1,1,0),(25759,0,0,0,0,0,0,0,0),(25760,0,0,0,0,0,0,0,0),(25761,0,0,0,0,0,0,0,0),(25762,0,0,0,0,0,0,0,0),(25767,0,0,0,0,0,131072,0,0),(25820,0,0,0,0,0,1049602,0,0),(25899,0,0,0,0,0,64,0,0),(25906,0,0,0,0,0,131072,0,0),(25937,0,0,0,0,0,0,0,0),(25988,0,0,0,0,0,262144,0,0),(26016,0,0,0,0,0,1,2,0),(26021,0,0,0,0,0,1,2,0),(26107,0,0,0,7,549764202496,3288334336,0,0),(26119,0,0,0,11,2416967683,16384,0,0),(26128,0,0,0,0,0,33554432,0,0),(26135,0,0,0,0,8388608,16384,0,0),(26169,0,0,0,0,0,134217728,0,0),(26376,0,0,0,0,0,0,0,0),(26463,0,0,0,0,0,1048576,0,0),(26467,0,0,0,0,0,134217728,0,0),(26480,0,0,0,0,0,524289,3,0),(27009,0,0,0,0,0,2,0,0),(27044,0,0,0,0,0,524288,0,0),(27124,0,0,0,0,0,2,0,0),(27131,0,0,0,0,0,1049602,0,0),(27155,0,0,0,0,0,1,0,0),(27160,0,0,0,0,0,1,20,0),(27162,0,0,0,0,0,2,0,0),(27164,0,0,0,0,0,1049602,0,0),(27166,0,0,0,0,0,1,20,0),(27168,0,0,0,0,0,64,0,0),(27169,0,0,0,0,0,64,0,0),(27170,0,0,0,0,0,1,7,0),(27179,0,0,0,0,0,64,0,0),(27200,0,0,0,0,0,0,0,0),(27217,0,0,0,0,0,4,0,0),(27243,0,0,0,0,0,32768,0,0),(27280,0,0,0,0,0,2,0,0),(27419,0,0,0,0,0,1,3,0),(27420,0,0,0,0,0,0,0,0),(27498,0,0,0,0,0,1,3,0),(27521,0,0,0,0,0,16384,0,0),(27522,0,0,0,0,0,524289,0,0),(27539,0,0,0,0,0,1048576,0,0),(27561,0,0,0,0,0,131072,0,0),(27656,0,0,0,0,0,1,3,0),(27688,0,0,0,0,0,1049602,0,0),(27774,0,0,0,0,0,16384,0,0),(27776,0,0,0,0,0,2,0,0),(27778,0,0,0,0,0,2,0,0),(27780,0,0,0,0,0,2,0,0),(27781,0,0,0,0,0,2,0,0),(27785,0,0,0,0,0,524288,0,0),(27787,0,0,0,0,0,1,3,0),(27811,0,0,0,0,0,8396800,0,0),(27815,0,0,0,0,0,8396800,0,0),(27816,0,0,0,0,0,8396800,0,0),(27852,0,0,0,0,0,32768,0,0),(27861,0,0,0,0,0,0,0,0),(27863,0,0,0,0,0,0,0,0),(27864,0,0,0,0,0,0,0,0),(27865,0,0,0,0,0,0,0,0),(27867,0,0,0,0,0,2,0,0),(28200,0,0,0,0,0,134217728,0,0),(28305,0,0,0,0,0,1,0,0),(28429,0,0,0,0,0,1,0,0),(28458,0,0,0,0,0,0,0,0),(28460,0,0,0,0,0,0,0,0),(28592,16,0,0,0,0,131072,0,0),(28593,16,0,0,0,0,131072,0,0),(28594,16,0,0,0,0,131072,0,0),(28595,16,0,0,0,0,131072,0,0),(28716,0,0,0,7,16,2048,0,0),(28719,0,0,0,7,32,268435456,0,0),(28744,0,0,0,7,64,134219776,0,0),(28752,0,0,0,0,0,4194304,0,0),(28761,0,0,0,0,0,131072,0,0),(28764,0,0,0,0,0,1048576,0,0),(28771,0,0,0,0,0,131072,0,0),(28780,0,0,0,0,0,134348800,0,0),(28789,0,0,0,10,24576,536870912,0,0),(28802,0,0,0,0,0,16384,0,0),(28809,0,0,0,0,4096,268435456,0,0),(28812,0,0,0,0,0,65536,0,0),(28816,0,0,0,0,0,1,3,0),(28823,0,0,0,0,192,134217728,0,0),(28845,0,0,0,0,0,512,0,0),(28847,0,0,0,7,32,16384,0,0),(28849,0,0,0,11,128,16384,0,0),(29062,0,0,0,0,0,8396800,0,0),(29064,0,0,0,0,0,8396800,0,0),(29065,0,0,0,0,0,8396800,0,0),(29074,20,0,0,0,0,65536,0,0),(29075,20,0,0,0,0,65536,0,0),(29076,20,0,0,0,0,65536,0,0),(29150,0,0,0,0,0,1,3,0),(29162,0,0,0,0,0,2,0,0),(29179,0,0,0,0,0,65536,0,0),(29180,0,0,0,0,0,65536,0,0),(29185,0,0,0,0,0,0,0,0),(29194,0,0,0,0,0,0,0,0),(29196,0,0,0,0,0,0,0,0),(29198,0,0,0,0,0,0,0,0),(29220,0,0,0,0,0,1,0,0),(29307,0,0,0,0,0,1,0,0),(29441,0,0,0,0,0,16777216,0,1),(29444,0,0,0,0,0,16777216,0,1),(29445,0,0,0,0,0,16777216,0,1),(29446,0,0,0,0,0,16777216,0,1),(29447,0,0,0,0,0,16777216,0,1),(29448,0,0,0,0,0,3288334337,0,0),(29501,0,0,0,0,0,524288,3,0),(29601,0,0,0,7,0,16384,0,0),(29624,0,0,0,0,0,524288,3,0),(29625,0,0,0,0,0,524288,3,0),(29626,0,0,0,0,0,524288,3,0),(29632,0,0,0,0,0,524288,3,0),(29633,0,0,0,0,0,524288,3,0),(29634,0,0,0,0,0,524288,3,0),(29635,0,0,0,0,0,524288,3,0),(29636,0,0,0,0,0,524288,3,0),(29637,0,0,0,0,0,524288,3,0),(29801,0,0,0,0,0,1,0,0),(30030,0,0,0,0,0,1,0,0),(30033,0,0,0,0,0,1,0,0),(30079,0,0,0,0,0,2,0,0),(30080,0,0,0,0,0,2,0,0),(30081,0,0,0,0,0,2,0,0),(30160,0,0,0,0,0,65536,0,0),(30293,0,0,0,5,824633721729,131072,0,0),(30295,0,0,0,5,824633721729,131072,0,0),(30296,0,0,0,5,824633721729,131072,0,0),(30299,36,0,0,0,0,1048576,0,0),(30301,36,0,0,0,0,1048576,0,0),(30302,36,0,0,0,0,1048576,0,0),(30339,0,0,0,0,0,1,0,0),(30482,0,0,0,0,0,2,0,0),(30636,0,0,0,0,0,524289,0,0),(30675,0,0,0,11,3,16384,0,0),(30678,0,0,0,11,3,16384,0,0),(30679,0,0,0,11,3,16384,0,0),(30680,0,0,0,11,3,16384,0,0),(30681,0,0,0,11,3,16384,0,0),(30802,0,0,0,0,0,4096,0,0),(30808,0,0,0,0,0,4096,0,0),(30809,0,0,0,0,0,4096,0,0),(30810,0,0,0,0,0,4096,0,0),(30811,0,0,0,0,0,4096,0,0),(30823,0,0,0,0,0,1,10.5,0),(30881,0,0,0,0,0,32768,0,5),(30883,0,0,0,0,0,32768,0,5),(30884,0,0,0,0,0,32768,0,5),(30885,0,0,0,0,0,32768,0,5),(30886,0,0,0,0,0,32768,0,5),(31233,0,0,0,8,38658768896,131072,0,0),(31239,0,0,0,8,38658768896,131072,0,0),(31240,0,0,0,8,38658768896,131072,0,0),(31241,0,0,0,8,38658768896,131072,0,0),(31242,0,0,0,8,38658768896,131072,0,0),(31244,0,0,0,0,0,2147483648,0,0),(31245,0,0,0,0,0,2147483648,0,0),(31255,0,0,0,0,0,256,0,0),(31316,0,0,0,0,0,2,0,0),(31569,0,0,0,3,65536,16384,0,0),(31570,0,0,0,3,65536,16384,0,0),(31641,0,0,0,0,0,524290,0,0),(31642,0,0,0,0,0,524290,0,0),(31785,0,0,0,0,0,536870912,0,0),(31794,0,0,0,0,0,16384,0,0),(31801,0,0,0,0,0,1,20,0),(31828,0,0,0,0,0,32768,0,0),(31829,0,0,0,0,0,32768,0,0),(31830,0,0,0,0,0,32768,0,0),(31833,0,0,0,10,2147483648,16384,0,0),(31835,0,0,0,10,2147483648,16384,0,0),(31836,0,0,0,10,2147483648,16384,0,0),(31892,0,0,0,0,0,1,0,0),(31895,0,0,0,0,0,1,5,0),(31896,0,0,0,0,0,1,2,0),(32215,0,0,0,0,0,4,0,0),(32385,0,0,0,5,73014445058,2048,0,0),(32387,0,0,0,5,73014445058,2048,0,0),(32392,0,0,0,5,73014445058,2048,0,0),(32393,0,0,0,5,73014445058,2048,0,0),(32394,0,0,0,5,73014445058,2048,0,0),(32587,0,0,0,0,0,64,0,0),(32593,0,0,0,0,0,1049602,0,3),(32594,0,0,0,0,0,1049602,0,3),(32642,0,0,0,0,0,64,0,0),(32734,0,0,0,0,0,2,0,3),(32748,0,0,0,8,4294967296,524288,0,0),(32776,0,0,0,0,0,64,0,0),(32777,0,0,0,0,0,64,0,0),(32837,0,0,0,0,0,16384,0,45),(32850,0,0,0,0,0,1,0,0),(32863,0,0,0,0,0,32768,0,0),(33012,0,0,0,0,0,4,0,0),(33014,0,0,0,0,0,4,0,0),(33089,0,0,0,0,0,64,0,0),(33142,0,0,0,0,0,8658944,0,0),(33145,0,0,0,0,0,8658944,0,0),(33146,0,0,0,0,0,8658944,0,0),(33150,0,0,0,0,0,268500992,0,0),(33154,0,0,0,0,0,268500992,0,0),(33191,0,0,0,6,4398054932480,2048,0,0),(33192,0,0,0,6,4398054932480,2048,0,0),(33193,0,0,0,6,4398054932480,2048,0,0),(33194,0,0,0,6,4398054932480,2048,0,0),(33195,0,0,0,6,4398054932480,2048,0,0),(33297,0,0,0,0,0,131072,0,0),(33299,0,0,0,0,0,16384,0,0),(33493,0,0,0,0,0,2,0,0),(33510,0,0,0,0,0,524289,5,0),(33511,0,0,0,0,0,131072,0,0),(33522,0,0,0,0,0,131072,0,0),(33648,0,0,0,0,0,4198400,0,0),(33727,0,0,0,0,0,0,0,0),(33735,0,0,0,0,0,3288334337,0,0),(33736,0,0,0,0,0,1049602,0,3),(33746,0,0,0,0,0,4,0,10),(33754,0,0,0,0,0,0,0,0),(33755,0,0,0,0,0,0,0,0),(33756,0,0,0,0,0,0,0,0),(33757,0,0,0,0,0,1,0,3),(33759,0,0,0,0,0,4,0,10),(33776,0,0,0,0,0,536870912,0,0),(33881,0,0,0,0,0,8658944,0,0),(33882,0,0,0,0,0,8658944,0,0),(33883,0,0,0,0,0,8658944,0,0),(33953,0,0,0,0,0,134219776,0,0),(34082,0,0,0,0,0,0,0,0),(34138,0,0,0,11,128,134217728,0,0),(34139,0,0,0,10,1073741824,134217728,0,0),(34303,0,0,0,0,0,128,0,0),(34320,0,0,0,0,0,65536,0,0),(34355,0,0,0,0,0,1049602,0,3),(34457,0,0,0,0,0,4096,0,0),(34497,0,0,0,0,0,4194304,0,0),(34498,0,0,0,0,0,4194304,0,0),(34499,0,0,0,0,0,4194304,0,0),(34500,0,0,0,0,0,4194304,0,0),(34502,0,0,0,0,0,4194304,0,0),(34503,0,0,0,0,0,4194304,0,0),(34506,0,0,0,0,0,524288,0,0),(34507,0,0,0,0,0,524288,0,0),(34508,0,0,0,0,0,524288,0,0),(34584,0,0,0,0,0,16384,0,30),(34586,0,0,0,0,0,524289,1.5,0),(34598,0,0,0,0,0,131072,0,45),(34749,0,0,0,0,0,33554432,0,0),(34753,0,0,0,6,6144,134217728,0,0),(34774,0,0,0,0,0,524289,1.5,20),(34827,0,0,0,0,0,1049602,0,3),(34838,0,0,0,0,0,524288,0,0),(34839,0,0,0,0,0,524288,0,0),(34859,0,0,0,6,6144,134217728,0,0),(34860,0,0,0,6,6144,134217728,0,0),(34914,32,0,0,0,0,32768,0,0),(34916,32,0,0,0,0,32768,0,0),(34917,32,0,0,0,0,32768,0,0),(34935,0,0,0,0,0,2,0,8),(34938,0,0,0,0,0,2,0,8),(34939,0,0,0,0,0,2,0,8),(34948,0,0,0,0,0,4,0,0),(34949,0,0,0,0,0,4,0,0),(34950,0,0,0,0,0,4194304,0,0),(34954,0,0,0,0,0,4194304,0,0),(35077,0,0,0,0,0,32768,0,60),(35080,0,0,0,0,0,524289,0,60),(35083,0,0,0,0,0,131072,0,60),(35086,0,0,0,0,0,134348800,0,60),(35100,0,0,0,0,0,524288,0,0),(35102,0,0,0,0,0,524288,0,0),(35103,0,0,0,0,0,524288,0,0),(35205,0,0,0,0,0,3288334337,0,0),(35541,0,0,0,0,0,1,0,0),(35550,0,0,0,0,0,1,0,0),(35551,0,0,0,0,0,1,0,0),(35552,0,0,0,0,0,1,0,0),(35553,0,0,0,0,0,1,0,0),(35942,0,0,0,0,0,524289,0,0),(36111,0,0,0,0,0,1,0,0),(36123,0,0,0,0,0,32768,0,0),(36488,0,0,0,0,0,134217728,0,0),(36576,0,0,0,0,0,32768,0,0),(37168,0,0,0,8,38658768896,131072,0,0),(37169,0,0,0,8,131072,0,0,0),(37170,0,0,0,0,0,1,1,0),(37173,0,0,0,8,1126031951256,655361,0,30),(37188,0,0,0,10,8388608,16384,0,0),(37189,0,0,0,10,24576,268435456,0,60),(37195,0,0,0,10,8388608,16384,0,0),(37197,0,0,0,0,0,16384,0,45),(37213,0,0,0,11,2416967687,65536,0,0),(37227,0,0,0,11,448,268435456,0,60),(37228,0,0,0,11,2416967687,131072,0,0),(37237,0,0,0,11,1,65536,0,0),(37239,0,0,0,0,0,1,0,0),(37247,8,0,0,0,0,16384,0,45),(37288,0,0,0,0,0,134219776,0,0),(37295,0,0,0,0,0,131072,0,0),(37306,0,0,0,0,0,1,0,0),(37311,0,0,0,0,0,1,0,0),(37336,0,0,0,0,0,540673,0,0),(37377,32,0,0,0,0,16384,0,0),(37381,0,0,0,0,0,657409,0,0),(37443,0,0,0,0,0,65536,0,0),(37447,0,0,0,3,1099511627776,16384,0,0),(37514,0,0,0,0,0,32,0,0),(37519,0,0,0,0,0,67108864,0,0),(37525,0,0,0,0,0,1049602,0,0),(37528,0,0,0,4,4,1,0,0),(37604,0,0,0,0,0,16384,0,0),(37617,0,0,0,0,0,1,0,0),(37655,0,0,0,0,0,16384,0,60),(37657,0,0,0,0,0,65536,0,0),(37705,0,0,0,0,0,134217728,0,0),(37982,0,0,0,0,0,1,0,0),(38031,0,0,0,0,0,64,0,0),(38196,0,0,0,0,0,1,0,0),(38252,0,0,0,0,0,32768,0,0),(38290,0,0,0,0,0,524288,3,0),(38299,0,0,0,0,0,134217728,0,0),(38319,0,0,0,0,0,16384,0,0),(38332,0,0,0,0,0,134217728,0,0),(38334,0,0,0,0,0,16384,0,60),(38347,0,0,0,0,0,65536,0,0),(38350,0,0,0,0,0,4198400,0,0),(38394,0,0,0,5,6,2048,0,0),(38427,0,0,0,0,0,1,0,0),(39027,0,0,0,0,0,1049602,0,3),(39367,0,0,0,0,0,32768,0,0),(39372,0,0,0,0,0,133120,0,0),(39437,4,0,0,0,0,16384,0,0),(39438,0,0,0,0,0,524289,0,0),(39440,0,0,0,0,0,131072,0,0),(39442,0,0,0,0,0,131073,0,0),(39443,0,0,0,0,0,4198400,0,0),(39444,0,0,0,0,0,1048578,0,0),(39446,0,0,0,0,0,4,0,0),(39530,0,0,0,0,0,16384,0,0),(39958,0,0,0,0,0,1,0.7,40),(40353,0,0,0,0,0,3288334337,0,0),(40407,0,0,0,0,0,1026,6,0),(40438,0,0,0,6,32784,2048,0,0),(40442,0,0,0,7,4672924418068,16385,0,0),(40444,0,0,0,0,0,64,0,0),(40458,0,0,0,4,6601398288384,1,0,0),(40463,0,0,0,11,68719476865,16385,0,0),(40470,0,0,0,10,3229614080,16384,0,0),(40475,0,0,0,0,0,524289,3,0),(40482,0,0,0,0,0,65536,0,0),(40485,0,0,0,9,4294967296,524288,0,0),(40478,0,0,0,5,2,2048,0,0),(40971,0,0,0,0,0,134217728,0,0),(41260,0,0,0,0,0,4,0,10),(41262,0,0,0,0,0,4,0,10),(41434,0,0,0,0,0,1,2,45),(41635,0,0,0,0,0,32768,0,0),(41989,0,0,0,0,0,1,3,0),(42083,0,0,0,0,0,4198400,0,45),(42135,0,0,0,0,0,1049602,0,90),(42136,0,0,0,0,0,1049602,0,90),(42368,0,0,0,10,1073741824,134217728,0,0),(42370,0,0,0,11,128,134217728,0,0),(43338,0,0,0,0,0,4096,0,0),(43726,0,0,0,10,1073741824,134217728,0,0),(43728,0,0,0,11,128,134217728,0,0),(43737,0,0,0,7,4672924418048,1,0,10),(43739,0,0,0,7,2,131072,0,0),(43745,0,0,0,10,2199023255552,131072,0,0),(43748,0,0,0,11,2416967680,16384,0,0),(43750,0,0,0,11,1,16384,0,0),(43823,0,0,0,0,0,32768,0,0),(44604,0,0,0,0,0,16384,0,0),(44599,0,0,0,0,0,1,0,5),(44835,0,0,0,7,549755813888,1,0,0),(45040,0,0,0,0,0,524289,0,0),(45054,0,0,0,0,0,2048,0,15),(45057,0,0,0,0,0,2,0,30),(45059,0,0,0,0,0,134217728,0,0),(45234,0,0,0,0,0,8658944,0,0),(45243,0,0,0,0,0,8658944,0,0),(45244,0,0,0,0,0,8658944,0,0),(45354,0,0,0,0,0,1,0,45),(45355,0,0,0,0,0,524289,0,0),(45444,0,0,0,0,0,1049602,0,0),(45481,0,0,0,0,0,133120,0,45),(45482,0,0,0,0,0,524289,0,45),(45483,0,0,0,0,0,524289,0,45),(45484,0,0,0,0,0,134219776,0,45),(46046,0,0,0,0,0,1,0,5),(46092,0,0,0,10,1073741824,134217728,0,0),(46098,0,0,0,11,128,134217728,0,0),(46364,0,0,0,0,0,1049602,0,0),(46569,0,0,0,0,0,16384,0,45),(46832,0,0,0,7,1,16384,0,0);
/*!40000 ALTER TABLE `spell_proc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_script_target`
--

DROP TABLE IF EXISTS `spell_script_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_script_target` (
  `entry` mediumint(8) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `targetEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `entry_type_target` (`entry`,`type`,`targetEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_script_target`
--

LOCK TABLES `spell_script_target` WRITE;
/*!40000 ALTER TABLE `spell_script_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_script_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_scripts`
--

DROP TABLE IF EXISTS `spell_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_scripts`
--

LOCK TABLES `spell_scripts` WRITE;
/*!40000 ALTER TABLE `spell_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_target_position`
--

DROP TABLE IF EXISTS `spell_target_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_target_position` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `target_map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_position_x` float NOT NULL DEFAULT '0',
  `target_position_y` float NOT NULL DEFAULT '0',
  `target_position_z` float NOT NULL DEFAULT '0',
  `target_orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_target_position`
--

LOCK TABLES `spell_target_position` WRITE;
/*!40000 ALTER TABLE `spell_target_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_target_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_threat`
--

DROP TABLE IF EXISTS `spell_threat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_threat` (
  `entry` mediumint(8) unsigned NOT NULL,
  `Threat` smallint(6) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_threat`
--

LOCK TABLES `spell_threat` WRITE;
/*!40000 ALTER TABLE `spell_threat` DISABLE KEYS */;
INSERT INTO `spell_threat` VALUES (78,20),(284,39),(285,59),(770,108),(778,108),(1608,78),(1672,180),(1715,61),(2139,300),(6343,17),(6572,155),(6574,195),(6809,89),(7372,101),(7373,141),(7379,235),(7386,100),(7405,140),(8198,40),(8204,64),(8205,96),(8380,180),(8972,118),(9745,148),(9749,108),(9880,178),(9881,207),(9907,108),(11556,43),(11564,98),(11565,118),(11566,137),(11567,145),(11580,143),(11581,180),(11596,220),(11597,261),(11600,275),(11601,315),(11775,395),(14274,200),(14921,415),(15629,300),(15630,400),(15631,500),(15632,600),(16857,108),(17735,200),(17750,300),(17751,450),(17752,600),(17390,108),(17391,108),(17392,108),(20569,100),(20736,100),(20925,20),(20927,30),(20928,40),(23922,160),(23923,190),(23924,220),(23925,250),(24394,580),(24583,5),(25225,300),(25231,130),(25258,286),(25264,215),(25269,400),(25286,175),(25288,355),(25289,60),(26993,127),(26996,176),(27011,127),(27179,54),(29704,230),(29707,196),(30324,220),(30356,323),(30357,483),(33745,285),(33878,129),(33986,180),(33987,232);
/*!40000 ALTER TABLE `spell_threat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transports`
--

DROP TABLE IF EXISTS `transports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transports` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `period` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transports`
--

LOCK TABLES `transports` WRITE;
/*!40000 ALTER TABLE `transports` DISABLE KEYS */;
/*!40000 ALTER TABLE `transports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-11-03 19:34:07
