-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ugly_blog
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

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
-- Table structure for table `arealayoutcolumns`
--

DROP TABLE IF EXISTS `arealayoutcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT 0,
  `arID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutColumnDisplayID` int(11) DEFAULT 0,
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutcolumns`
--

LOCK TABLES `arealayoutcolumns` WRITE;
/*!40000 ALTER TABLE `arealayoutcolumns` DISABLE KEYS */;
INSERT INTO `arealayoutcolumns` VALUES (1,1,0,2,1),(2,1,1,3,2),(3,1,2,4,3),(4,2,0,5,4),(5,2,1,6,5),(6,3,0,7,6),(7,3,1,8,7),(8,3,2,9,8),(9,4,0,11,9),(10,5,0,12,10),(11,6,0,14,11),(12,7,0,15,12);
/*!40000 ALTER TABLE `arealayoutcolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutcustomcolumns`
--

DROP TABLE IF EXISTS `arealayoutcustomcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutcustomcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutcustomcolumns`
--

LOCK TABLES `arealayoutcustomcolumns` WRITE;
/*!40000 ALTER TABLE `arealayoutcustomcolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutcustomcolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutpresets`
--

DROP TABLE IF EXISTS `arealayoutpresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutpresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutPresetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutpresets`
--

LOCK TABLES `arealayoutpresets` WRITE;
/*!40000 ALTER TABLE `arealayoutpresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutpresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayouts`
--

DROP TABLE IF EXISTS `arealayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT 0,
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT 0,
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayouts`
--

LOCK TABLES `arealayouts` WRITE;
/*!40000 ALTER TABLE `arealayouts` DISABLE KEYS */;
INSERT INTO `arealayouts` VALUES (1,0,0,0,12,1),(2,0,0,0,12,1),(3,0,0,0,12,1),(4,0,0,0,12,1),(5,0,0,0,12,1),(6,0,0,0,12,1),(7,0,0,0,12,1);
/*!40000 ALTER TABLE `arealayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutsusingpresets`
--

DROP TABLE IF EXISTS `arealayoutsusingpresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutsusingpresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`),
  CONSTRAINT `FK_7A9049A1385521EA` FOREIGN KEY (`arLayoutID`) REFERENCES `arealayouts` (`arLayoutID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutsusingpresets`
--

LOCK TABLES `arealayoutsusingpresets` WRITE;
/*!40000 ALTER TABLE `arealayoutsusingpresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutsusingpresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arealayoutthemegridcolumns`
--

DROP TABLE IF EXISTS `arealayoutthemegridcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arealayoutthemegridcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT 0,
  `arLayoutColumnOffset` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealayoutthemegridcolumns`
--

LOCK TABLES `arealayoutthemegridcolumns` WRITE;
/*!40000 ALTER TABLE `arealayoutthemegridcolumns` DISABLE KEYS */;
INSERT INTO `arealayoutthemegridcolumns` VALUES (1,4,0),(2,4,0),(3,4,0),(4,4,0),(5,8,0),(6,4,0),(7,4,0),(8,4,0),(9,12,0),(10,12,0),(11,12,0),(12,12,0);
/*!40000 ALTER TABLE `arealayoutthemegridcolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areapermissionassignments`
--

DROP TABLE IF EXISTS `areapermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areapermissionassignments`
--

LOCK TABLES `areapermissionassignments` WRITE;
/*!40000 ALTER TABLE `areapermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areapermissionblocktypeaccesslist`
--

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areapermissionblocktypeaccesslist`
--

LOCK TABLES `areapermissionblocktypeaccesslist` WRITE;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areapermissionblocktypeaccesslistcustom`
--

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areapermissionblocktypeaccesslistcustom`
--

LOCK TABLES `areapermissionblocktypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT 0,
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT 0,
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT 0,
  `arParentID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,164,'Main',0,0,0,0),(2,164,'Main : 1',0,0,0,1),(3,164,'Main : 2',0,0,0,1),(4,164,'Main : 3',0,0,0,1),(5,164,'Main : 4',0,0,0,1),(6,164,'Main : 5',0,0,0,1),(7,164,'Main : 6',0,0,0,1),(8,164,'Main : 7',0,0,0,1),(9,164,'Main : 8',0,0,0,1),(10,165,'Main',0,0,0,0),(11,165,'Main : 9',0,0,0,10),(12,165,'Main : 10',0,0,0,10),(13,178,'Main',0,0,0,0),(14,178,'Main : 11',0,0,0,13),(15,178,'Main : 12',0,0,0,13),(16,179,'Main',0,0,0,0),(21,1,'Main',0,0,0,0),(22,1,'Page Footer',0,0,0,0),(29,167,'Main',0,0,0,0),(30,1,'Default page content',0,0,0,0),(31,185,'Main',0,0,0,0),(32,185,'Default page content',0,0,0,0),(33,185,'Full width header area',0,0,0,0),(34,185,'Left side content area',0,0,0,0),(35,185,'Widget area',0,0,0,0),(36,188,'Main',0,0,0,0),(37,188,'Default page content',0,0,0,0),(41,191,'Full width header area',0,0,0,0),(42,191,'Left side content area',0,0,0,0),(43,191,'Widget area',0,0,0,0),(44,191,'Main',0,0,0,0),(45,192,'Full width header area',0,0,0,0),(46,192,'Left side content area',0,0,0,0),(47,192,'Widget area',0,0,0,0),(48,192,'Main',0,0,0,0),(49,193,'Full width header area',0,0,0,0),(50,193,'Left side content area',0,0,0,0),(51,193,'Widget area',0,0,0,0),(52,193,'Main',0,0,0,0),(53,194,'Main',0,0,0,0),(54,1,'Header area',0,0,1,0),(55,193,'Header area',0,0,1,0),(56,185,'Header area',0,0,1,0),(57,195,'Main',0,0,0,0),(58,1,'Footer area',0,0,1,0),(59,188,'Header area',0,0,1,0),(60,188,'Footer area',0,0,1,0);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ataddress`
--

DROP TABLE IF EXISTS `ataddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataddress` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataddress`
--

LOCK TABLES `ataddress` WRITE;
/*!40000 ALTER TABLE `ataddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ataddresssettings`
--

DROP TABLE IF EXISTS `ataddresssettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataddresssettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akGeolocateCountry` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataddresssettings`
--

LOCK TABLES `ataddresssettings` WRITE;
/*!40000 ALTER TABLE `ataddresssettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddresssettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atboolean`
--

DROP TABLE IF EXISTS `atboolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atboolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atboolean`
--

LOCK TABLES `atboolean` WRITE;
/*!40000 ALTER TABLE `atboolean` DISABLE KEYS */;
INSERT INTO `atboolean` VALUES (1,9),(1,16),(1,18),(1,24),(1,25),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,42),(1,43),(1,44),(1,45),(1,48),(1,49),(1,56),(1,67),(1,70),(1,71),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,92),(0,104),(1,129),(1,139),(1,140),(1,142),(0,143),(1,149),(1,150);
/*!40000 ALTER TABLE `atboolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atbooleansettings`
--

DROP TABLE IF EXISTS `atbooleansettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atbooleansettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atbooleansettings`
--

LOCK TABLES `atbooleansettings` WRITE;
/*!40000 ALTER TABLE `atbooleansettings` DISABLE KEYS */;
INSERT INTO `atbooleansettings` VALUES (0,NULL,5),(0,'Exclude Page from Navigation',7),(0,'Exclude Page from Page List Blocks',8),(0,'Feature this Page',11),(0,NULL,12),(0,NULL,13),(1,NULL,14),(1,NULL,15);
/*!40000 ALTER TABLE `atbooleansettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdatetime`
--

DROP TABLE IF EXISTS `atdatetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atdatetime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdatetime`
--

LOCK TABLES `atdatetime` WRITE;
/*!40000 ALTER TABLE `atdatetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdatetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdatetimesettings`
--

DROP TABLE IF EXISTS `atdatetimesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atdatetimesettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT 0,
  `akDateDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akTextCustomFormat` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Custom format for text inputs',
  `akTimeResolution` int(10) unsigned NOT NULL DEFAULT 60 COMMENT 'Time resolution (in seconds)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdatetimesettings`
--

LOCK TABLES `atdatetimesettings` WRITE;
/*!40000 ALTER TABLE `atdatetimesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdatetimesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atdefault`
--

DROP TABLE IF EXISTS `atdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atdefault` (
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atdefault`
--

LOCK TABLES `atdefault` WRITE;
/*!40000 ALTER TABLE `atdefault` DISABLE KEYS */;
INSERT INTO `atdefault` VALUES ('fa fa-th-large',1),('pages, add page, delete page, copy, move, alias',2),('pages, add page, delete page, copy, move, alias',3),('pages, add page, delete page, copy, move, alias, bulk',4),('find page, search page, search, find, pages, sitemap',5),('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',6),('file, file attributes, title, attribute, description, rename',7),('files, category, categories',8),('new file set',10),('users, groups, people, find, delete user, remove user, change password, password',11),('find, search, people, delete user, remove user, change password, password',12),('user, group, people, permissions, expire, badges',13),('user attributes, user data, gather data, registration data',14),('new user, create',15),('new user group, new group, group, create',17),('group set',19),('community, points, karma',20),('action, community actions',21),('forms, log, error, email, mysql, exception, survey',22),('forms, questions, response, data',23),('questions, quiz, response',26),('forms, log, error, email, mysql, exception, survey, history',27),('changes, csv, report',28),('new theme, theme, active theme, change theme, template, css',29),('page types',30),('page attributes, custom',39),('single, page, custom, application',40),('atom, rss, feed, syndication',41),('icon-bullhorn',46),('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',47),('edit stacks, view stacks, all stacks',50),('block, refresh, custom',51),('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',52),('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',53),('update, upgrade',54),('concrete5.org, my account, marketplace',55),('buy theme, new theme, marketplace, template',57),('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',58),('dashboard, configuration',59),('website name, title',60),('accessibility, easy mode',61),('sharing, facebook, twitter',62),('logo, favicon, iphone, icon, bookmark',63),('tinymce, content block, fonts, editor, content, overlay',64),('translate, translation, internationalization, multilingual',65),('languages, update, gettext, translation, translate',66),('timezone, profile, locale',68),('site attributes',69),('checkin, check-in, check, force',72),('multilingual, localization, internationalization, i18n',83),('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',84),('bulk, seo, change keywords, engine, optimization, search',85),('traffic, statistics, google analytics, quant, pageviews, hits',86),('pretty, slug',87),('configure search, site search, search option',88),('security, files, media, extension, manager, upload',89),('file options, file manager, upload, modify',90),('images, picture, responsive, retina',91),('thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency',93),('uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg',94),('security, alternate storage, hide files',95),('files, export, csv, bom, encoding',96),('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',97),('cache option, turn off cache, no cache, page cache, caching',98),('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',99),('queries, database, mysql',100),('editors, hide site, offline, private, public, access',101),('security, actions, administrator, admin, package, marketplace, search',102),('security, lock ip, lock out, block ip, address, restrict, access',103),('security, registration',105),('antispam, block spam, security',106),('lock site, under construction, hide, hidden',107),('trusted, proxy, proxies, ip, header, cloudflare',108),('signup, new user, community, public registration, public, registration',109),('profile, login, redirect, specific, dashboard, administrators',110),('member profile, member page, community, forums, social, avatar',111),('auth, authentication, types, oauth, facebook, login, registration',112),('global, password, reset, change password, force, sign out',113),('login, logout, user, agent, ip, change, security, session, invalidation, invalid',114),('password, requirements, code, key, login, registration, security, nist',115),('smtp, mail settings',116),('email server, mail settings, mail configuration, external, internal',117),('test smtp, test mail',118),('email server, mail settings, mail configuration, private message, message system, import, email, message',119),('mail settings, mail configuration, email, sender',120),('conversations',121),('conversations',122),('conversations ratings, ratings, community, community points',123),('conversations bad words, banned words, banned, bad words, bad, words, list',124),('attribute configuration',125),('attributes, types',126),('attributes, sets',127),('topics, tags, taxonomy',128),('overrides, system info, debug, support, help',130),('errors, exceptions, develop, support, help',131),('email, logging, logs, smtp, pop, errors, mysql, log',132),('network, proxy server',133),('database, entities, doctrine, orm',134),('database, character set, charset, collation, utf8',135),('geolocation, ip, address, country, nation, place, locate',136),('upgrade, new version, update',137),('API, programming, public, app',138),('fa fa-th',144),('fa fa-trash-o',145),('fa fa-briefcase',146),('fa fa-edit',147);
/*!40000 ALTER TABLE `atdefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atemptysettings`
--

DROP TABLE IF EXISTS `atemptysettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atemptysettings` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atemptysettings`
--

LOCK TABLES `atemptysettings` WRITE;
/*!40000 ALTER TABLE `atemptysettings` DISABLE KEYS */;
INSERT INTO `atemptysettings` VALUES (4),(16),(17),(18),(19);
/*!40000 ALTER TABLE `atemptysettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atexpress`
--

DROP TABLE IF EXISTS `atexpress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atexpress` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atexpress`
--

LOCK TABLES `atexpress` WRITE;
/*!40000 ALTER TABLE `atexpress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atexpress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atexpressselectedentries`
--

DROP TABLE IF EXISTS `atexpressselectedentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atexpressselectedentries` (
  `avID` int(10) unsigned NOT NULL,
  `exEntryID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`exEntryID`),
  KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  KEY `IDX_C9D404BB6DCB6296` (`exEntryID`),
  CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atexpress` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atexpressselectedentries`
--

LOCK TABLES `atexpressselectedentries` WRITE;
/*!40000 ALTER TABLE `atexpressselectedentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atexpressselectedentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atexpresssettings`
--

DROP TABLE IF EXISTS `atexpresssettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atexpresssettings` (
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`),
  CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `expressentities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atexpresssettings`
--

LOCK TABLES `atexpresssettings` WRITE;
/*!40000 ALTER TABLE `atexpresssettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atexpresssettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atfile`
--

DROP TABLE IF EXISTS `atfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atfile` (
  `fID` int(10) unsigned DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_73D17D61E3111F45` (`fID`),
  CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE,
  CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atfile`
--

LOCK TABLES `atfile` WRITE;
/*!40000 ALTER TABLE `atfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atfilesettings`
--

DROP TABLE IF EXISTS `atfilesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atfilesettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atfilesettings`
--

LOCK TABLES `atfilesettings` WRITE;
/*!40000 ALTER TABLE `atfilesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atfilesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atnumber`
--

DROP TABLE IF EXISTS `atnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atnumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atnumber`
--

LOCK TABLES `atnumber` WRITE;
/*!40000 ALTER TABLE `atnumber` DISABLE KEYS */;
INSERT INTO `atnumber` VALUES (2.0000,141),(1.0000,148),(1000.0000,151),(1250.0000,152),(975.0000,153),(1300.0000,154);
/*!40000 ALTER TABLE `atnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselect`
--

DROP TABLE IF EXISTS `atselect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselect` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselect`
--

LOCK TABLES `atselect` WRITE;
/*!40000 ALTER TABLE `atselect` DISABLE KEYS */;
INSERT INTO `atselect` VALUES (159),(160),(162),(163),(165),(166);
/*!40000 ALTER TABLE `atselect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectedsociallinks`
--

DROP TABLE IF EXISTS `atselectedsociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectedsociallinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `IDX_10743709A2A82A5D` (`avID`),
  CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atsociallinks` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectedsociallinks`
--

LOCK TABLES `atselectedsociallinks` WRITE;
/*!40000 ALTER TABLE `atselectedsociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atselectedsociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectedtopics`
--

DROP TABLE IF EXISTS `atselectedtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectedtopics` (
  `avTreeTopicNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avTreeTopicNodeID`),
  KEY `IDX_E42A7D5BA2A82A5D` (`avID`),
  CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attopic` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectedtopics`
--

LOCK TABLES `atselectedtopics` WRITE;
/*!40000 ALTER TABLE `atselectedtopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `atselectedtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectoptionlists`
--

DROP TABLE IF EXISTS `atselectoptionlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectoptionlists` (
  `avSelectOptionListID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectoptionlists`
--

LOCK TABLES `atselectoptionlists` WRITE;
/*!40000 ALTER TABLE `atselectoptionlists` DISABLE KEYS */;
INSERT INTO `atselectoptionlists` VALUES (1),(2);
/*!40000 ALTER TABLE `atselectoptionlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectoptions`
--

DROP TABLE IF EXISTS `atselectoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectoptions` (
  `avSelectOptionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avSelectOptionID`),
  KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atselectoptionlists` (`avSelectOptionListID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectoptions`
--

LOCK TABLES `atselectoptions` WRITE;
/*!40000 ALTER TABLE `atselectoptions` DISABLE KEYS */;
INSERT INTO `atselectoptions` VALUES (1,0,0,0,'Animals',2),(2,0,0,1,'Cars',2),(3,0,0,2,'Plants',2);
/*!40000 ALTER TABLE `atselectoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectoptionsselected`
--

DROP TABLE IF EXISTS `atselectoptionsselected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `avSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`avSelectOptionID`),
  KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`),
  CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atselect` (`avID`),
  CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atselectoptions` (`avSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectoptionsselected`
--

LOCK TABLES `atselectoptionsselected` WRITE;
/*!40000 ALTER TABLE `atselectoptionsselected` DISABLE KEYS */;
INSERT INTO `atselectoptionsselected` VALUES (159,1),(160,1),(160,3),(162,1),(163,2),(165,1),(165,3),(166,3);
/*!40000 ALTER TABLE `atselectoptionsselected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atselectsettings`
--

DROP TABLE IF EXISTS `atselectsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atselectsettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akHideNoneOption` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akDisplayMultipleValuesOnSelect` tinyint(1) NOT NULL,
  `avSelectOptionListID` int(10) unsigned DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`),
  CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atselectoptionlists` (`avSelectOptionListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atselectsettings`
--

LOCK TABLES `atselectsettings` WRITE;
/*!40000 ALTER TABLE `atselectsettings` DISABLE KEYS */;
INSERT INTO `atselectsettings` VALUES (1,1,0,'display_asc',0,1,10),(1,0,0,'alpha_asc',0,2,20);
/*!40000 ALTER TABLE `atselectsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atsociallinks`
--

DROP TABLE IF EXISTS `atsociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atsociallinks` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atsociallinks`
--

LOCK TABLES `atsociallinks` WRITE;
/*!40000 ALTER TABLE `atsociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atsociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attextareasettings`
--

DROP TABLE IF EXISTS `attextareasettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attextareasettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attextareasettings`
--

LOCK TABLES `attextareasettings` WRITE;
/*!40000 ALTER TABLE `attextareasettings` DISABLE KEYS */;
INSERT INTO `attextareasettings` VALUES ('',2),('',3),('',6),('',9);
/*!40000 ALTER TABLE `attextareasettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attextsettings`
--

DROP TABLE IF EXISTS `attextsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attextsettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attextsettings`
--

LOCK TABLES `attextsettings` WRITE;
/*!40000 ALTER TABLE `attextsettings` DISABLE KEYS */;
INSERT INTO `attextsettings` VALUES ('',1);
/*!40000 ALTER TABLE `attextsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attopic`
--

DROP TABLE IF EXISTS `attopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attopic` (
  `avID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attopic`
--

LOCK TABLES `attopic` WRITE;
/*!40000 ALTER TABLE `attopic` DISABLE KEYS */;
/*!40000 ALTER TABLE `attopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attopicsettings`
--

DROP TABLE IF EXISTS `attopicsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attopicsettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT 1,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attopicsettings`
--

LOCK TABLES `attopicsettings` WRITE;
/*!40000 ALTER TABLE `attopicsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `attopicsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributekeycategories`
--

DROP TABLE IF EXISTS `attributekeycategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributekeycategories`
--

LOCK TABLES `attributekeycategories` WRITE;
/*!40000 ALTER TABLE `attributekeycategories` DISABLE KEYS */;
INSERT INTO `attributekeycategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL),(4,'site',1,NULL),(5,'event',1,NULL);
/*!40000 ALTER TABLE `attributekeycategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributekeys`
--

DROP TABLE IF EXISTS `attributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_DCA32C62A12CFE33` (`atID`),
  KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `attributetypes` (`atID`),
  CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`),
  CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributekeys`
--

LOCK TABLES `attributekeys` WRITE;
/*!40000 ALTER TABLE `attributekeys` DISABLE KEYS */;
INSERT INTO `attributekeys` VALUES (1,'meta_title','Meta Title',1,0,0,1,1,NULL,'pagekey'),(2,'meta_description','Meta Description',1,0,0,2,1,NULL,'pagekey'),(3,'meta_keywords','Meta Keywords',1,0,0,2,1,NULL,'pagekey'),(4,'desktop_priority','Desktop Priority',1,1,0,6,1,NULL,'pagekey'),(5,'is_desktop','Is Desktop',1,1,0,3,1,NULL,'pagekey'),(6,'icon_dashboard','Dashboard Icon',1,1,0,2,1,NULL,'pagekey'),(7,'exclude_nav','Exclude From Nav',1,0,0,3,1,NULL,'pagekey'),(8,'exclude_page_list','Exclude From Page List',1,0,0,3,1,NULL,'pagekey'),(9,'header_extra_content','Header Extra Content',1,0,0,2,1,NULL,'pagekey'),(10,'tags','Tags',1,0,1,7,1,NULL,'pagekey'),(11,'is_featured','Is Featured',1,0,0,3,1,NULL,'pagekey'),(12,'exclude_search_index','Exclude From Search Index',1,0,0,3,1,NULL,'pagekey'),(13,'exclude_sitemapxml','Exclude From sitemap.xml',1,0,0,3,1,NULL,'pagekey'),(14,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,3,2,NULL,'userkey'),(15,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,3,2,NULL,'userkey'),(16,'width','Width',1,0,0,6,3,NULL,'filekey'),(17,'height','Height',1,0,0,6,3,NULL,'filekey'),(18,'account_profile_links','Personal Links',1,0,0,14,2,NULL,'userkey'),(19,'duration','Duration',1,0,0,6,3,NULL,'filekey'),(20,'category_selection','Select category',1,0,1,7,1,NULL,'pagekey');
/*!40000 ALTER TABLE `attributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributesetkeys`
--

DROP TABLE IF EXISTS `attributesetkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributesetkeys` (
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`,`asID`),
  KEY `IDX_222F72D8B6561A7E` (`akID`),
  KEY `IDX_222F72D8A463E8B6` (`asID`),
  CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `attributesets` (`asID`),
  CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributesetkeys`
--

LOCK TABLES `attributesetkeys` WRITE;
/*!40000 ALTER TABLE `attributesetkeys` DISABLE KEYS */;
INSERT INTO `attributesetkeys` VALUES (0,1,1),(1,2,1),(1,7,2),(2,8,2),(2,9,1),(4,10,2),(0,11,2),(3,12,2),(3,13,1);
/*!40000 ALTER TABLE `attributesetkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributesets`
--

DROP TABLE IF EXISTS `attributesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) unsigned NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`asID`),
  KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  KEY `asHandle` (`asHandle`),
  KEY `pkgID` (`pkgID`),
  CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`),
  CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributesets`
--

LOCK TABLES `attributesets` WRITE;
/*!40000 ALTER TABLE `attributesets` DISABLE KEYS */;
INSERT INTO `attributesets` VALUES (1,'seo','SEO',0,0,1,NULL),(2,'navigation','Navigation and Indexing',0,0,1,NULL);
/*!40000 ALTER TABLE `attributesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributetypecategories`
--

DROP TABLE IF EXISTS `attributetypecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributetypecategories` (
  `akCategoryID` int(10) unsigned NOT NULL,
  `atID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akCategoryID`,`atID`),
  KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  KEY `IDX_49A9CABEA12CFE33` (`atID`),
  CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `attributetypes` (`atID`),
  CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributetypecategories`
--

LOCK TABLES `attributetypecategories` WRITE;
/*!40000 ALTER TABLE `attributetypecategories` DISABLE KEYS */;
INSERT INTO `attributetypecategories` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,9),(1,10),(1,11),(1,12),(1,13),(1,15),(1,16),(1,17),(1,18),(1,19),(2,1),(2,2),(2,3),(2,4),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,13),(2,14),(2,17),(2,19),(3,1),(3,2),(3,3),(3,4),(3,6),(3,7),(3,9),(3,10),(3,11),(3,12),(3,13),(3,17),(3,19),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,13),(4,15),(4,17),(4,18),(4,19),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,13),(5,19);
/*!40000 ALTER TABLE `attributetypecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributetypes`
--

DROP TABLE IF EXISTS `attributetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  KEY `pkgID` (`pkgID`,`atID`),
  CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributetypes`
--

LOCK TABLES `attributetypes` WRITE;
/*!40000 ALTER TABLE `attributetypes` DISABLE KEYS */;
INSERT INTO `attributetypes` VALUES (1,'text','Text',NULL),(2,'textarea','Text Area',NULL),(3,'boolean','Checkbox',NULL),(4,'date_time','Date/Time',NULL),(5,'image_file','Image/File',NULL),(6,'number','Number',NULL),(7,'select','Option List',NULL),(8,'address','Address',NULL),(9,'telephone','Phone Number',NULL),(10,'url','URL',NULL),(11,'email','Email',NULL),(12,'rating','Rating',NULL),(13,'topics','Topics',NULL),(14,'social_links','Social Links',NULL),(15,'calendar','Calendar',NULL),(16,'calendar_event','Calendar Event',NULL),(17,'express','Express Entity',NULL),(18,'page_selector','Page Selector',NULL),(19,'user_selector','User Selector',NULL);
/*!40000 ALTER TABLE `attributetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributevalues`
--

DROP TABLE IF EXISTS `attributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `IDX_DCCE7864B6561A7E` (`akID`),
  CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributevalues`
--

LOCK TABLES `attributevalues` WRITE;
/*!40000 ALTER TABLE `attributevalues` DISABLE KEYS */;
INSERT INTO `attributevalues` VALUES (2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(17,3),(19,3),(20,3),(21,3),(22,3),(23,3),(26,3),(27,3),(28,3),(29,3),(30,3),(39,3),(40,3),(41,3),(47,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(68,3),(69,3),(72,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(90,3),(91,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(99,3),(100,3),(101,3),(102,3),(103,3),(105,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(112,3),(113,3),(114,3),(115,3),(116,3),(117,3),(118,3),(119,3),(120,3),(121,3),(122,3),(123,3),(124,3),(125,3),(126,3),(127,3),(128,3),(130,3),(131,3),(132,3),(133,3),(134,3),(135,3),(136,3),(137,3),(138,3),(141,4),(148,4),(142,5),(149,5),(1,6),(46,6),(144,6),(145,6),(146,6),(147,6),(9,7),(16,7),(18,7),(24,7),(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(38,7),(42,7),(44,7),(48,7),(56,7),(67,7),(70,7),(73,7),(75,7),(77,7),(79,7),(81,7),(92,7),(104,7),(139,7),(143,7),(150,7),(25,12),(43,12),(45,12),(49,12),(71,12),(74,12),(76,12),(78,12),(80,12),(82,12),(129,12),(140,12),(151,16),(153,16),(152,17),(154,17),(159,20),(160,20),(162,20),(163,20),(165,20),(166,20);
/*!40000 ALTER TABLE `attributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticationtypes`
--

DROP TABLE IF EXISTS `authenticationtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authenticationtypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticationtypes`
--

LOCK TABLES `authenticationtypes` WRITE;
/*!40000 ALTER TABLE `authenticationtypes` DISABLE KEYS */;
INSERT INTO `authenticationtypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',0,0,0),(6,'external_concrete5','External concrete5',0,0,0);
/*!40000 ALTER TABLE `authenticationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtypeconcretecookiemap`
--

DROP TABLE IF EXISTS `authtypeconcretecookiemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtypeconcretecookiemap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtypeconcretecookiemap`
--

LOCK TABLES `authtypeconcretecookiemap` WRITE;
/*!40000 ALTER TABLE `authtypeconcretecookiemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtypeconcretecookiemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannedwords`
--

DROP TABLE IF EXISTS `bannedwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bannedwords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannedwords`
--

LOCK TABLES `bannedwords` WRITE;
/*!40000 ALTER TABLE `bannedwords` DISABLE KEYS */;
INSERT INTO `bannedwords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `bannedwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicworkflowpermissionassignments`
--

DROP TABLE IF EXISTS `basicworkflowpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicworkflowpermissionassignments`
--

LOCK TABLES `basicworkflowpermissionassignments` WRITE;
/*!40000 ALTER TABLE `basicworkflowpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicworkflowpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicworkflowprogressdata`
--

DROP TABLE IF EXISTS `basicworkflowprogressdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT 0,
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT 0,
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicworkflowprogressdata`
--

LOCK TABLES `basicworkflowprogressdata` WRITE;
/*!40000 ALTER TABLE `basicworkflowprogressdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicworkflowprogressdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockfeatureassignments`
--

DROP TABLE IF EXISTS `blockfeatureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `faID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockfeatureassignments`
--

LOCK TABLES `blockfeatureassignments` WRITE;
/*!40000 ALTER TABLE `blockfeatureassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockfeatureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockpermissionassignments`
--

DROP TABLE IF EXISTS `blockpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockpermissionassignments`
--

LOCK TABLES `blockpermissionassignments` WRITE;
/*!40000 ALTER TABLE `blockpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',36,1,NULL),(2,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',44,1,NULL),(3,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',40,1,NULL),(4,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',38,1,NULL),(5,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',37,1,NULL),(6,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',44,1,NULL),(7,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',15,1,NULL),(8,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',39,1,NULL),(9,'','2019-12-22 11:34:46','2019-12-22 11:34:46',NULL,'0',44,1,NULL),(10,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',43,1,NULL),(11,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',43,1,NULL),(12,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',43,1,NULL),(13,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',15,1,NULL),(14,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',44,1,NULL),(15,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',41,1,NULL),(16,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',44,1,NULL),(17,'','2019-12-22 11:34:47','2019-12-22 11:34:47',NULL,'0',42,1,NULL),(18,'','2019-12-22 11:34:49','2019-12-22 11:34:49',NULL,'0',44,1,NULL),(19,'','2019-12-22 11:34:49','2019-12-22 11:34:49',NULL,'0',41,1,NULL),(20,'','2019-12-22 11:34:49','2019-12-22 11:34:49',NULL,'0',44,1,NULL),(21,'','2019-12-22 11:34:49','2019-12-22 11:34:49',NULL,'0',42,1,NULL),(22,'','2019-12-22 11:34:58','2019-12-22 11:34:58',NULL,'0',45,1,NULL),(23,'','2019-12-22 12:02:16','2019-12-22 12:02:16',NULL,'0',1,1,NULL),(27,'','2019-12-22 12:05:19','2019-12-22 12:05:19',NULL,'0',1,1,NULL),(28,'','2019-12-22 12:06:28','2019-12-22 12:06:28',NULL,'0',1,1,NULL),(29,'','2019-12-22 12:06:44','2019-12-22 12:06:44',NULL,'0',1,1,NULL),(30,'','2019-12-22 12:07:05','2019-12-22 12:07:05',NULL,'0',1,1,NULL),(32,'','2019-12-22 12:32:48','2019-12-22 12:32:48',NULL,'0',50,1,NULL),(35,'','2019-12-22 12:36:34','2019-12-22 12:36:34',NULL,'0',1,1,NULL),(36,'','2019-12-22 12:37:10','2019-12-22 12:37:10',NULL,'0',50,1,NULL),(37,'','2019-12-22 12:44:56','2019-12-22 12:44:56',NULL,'0',51,1,NULL),(39,'','2019-12-22 13:10:15','2019-12-22 13:10:15',NULL,'0',50,1,NULL),(41,'','2019-12-22 13:12:27','2019-12-22 13:12:27',NULL,'0',51,1,NULL),(42,'','2019-12-22 13:28:16','2019-12-22 13:28:16',NULL,'0',52,1,NULL),(43,'','2019-12-22 13:42:51','2019-12-22 13:42:51',NULL,'1',50,1,NULL),(44,'','2019-12-22 13:44:01','2019-12-22 13:44:01',NULL,'1',50,1,NULL),(46,'','2019-12-22 13:47:56','2019-12-22 13:47:56',NULL,'0',53,1,NULL),(47,'','2019-12-22 15:17:26','2019-12-22 15:17:26',NULL,'1',50,1,NULL),(48,'','2019-12-22 15:30:16','2019-12-22 15:30:16',NULL,'0',1,1,NULL),(49,'','2019-12-22 15:32:02','2019-12-22 15:32:02',NULL,'0',1,1,NULL),(50,'','2019-12-22 15:32:49','2019-12-22 15:32:49',NULL,'0',7,1,NULL);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypepermissionblocktypeaccesslist`
--

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypepermissionblocktypeaccesslist`
--

LOCK TABLES `blocktypepermissionblocktypeaccesslist` WRITE;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypepermissionblocktypeaccesslistcustom`
--

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypepermissionblocktypeaccesslistcustom`
--

LOCK TABLES `blocktypepermissionblocktypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypes`
--

DROP TABLE IF EXISTS `blocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`btID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypes`
--

LOCK TABLES `blocktypes` WRITE;
/*!40000 ALTER TABLE `blocktypes` DISABLE KEYS */;
INSERT INTO `blocktypes` VALUES (0,1,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,44,465,600,0),(1,2,'html','HTML','For adding HTML by hand.',0,0,0,0,0,31,500,600,0),(0,3,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,30,550,400,0),(0,4,'file','File','Link to files stored in the asset library.',0,0,0,0,0,29,320,300,0),(1,5,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,28,400,400,0),(0,6,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,27,520,400,0),(0,7,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,26,525,700,0),(0,8,'page_title','Page Title','Displays a Page\'s Title',0,0,0,0,0,25,500,470,0),(0,9,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,24,465,600,0),(0,10,'page_list','Page List','List pages based on type, area.',0,0,0,0,0,23,525,700,0),(0,11,'next_previous','Next & Previous Nav','Navigate through sibling pages.',0,0,0,0,0,22,400,430,0),(0,12,'date_navigation','Date Navigation','Displays a list of months to filter a page list by.',0,0,0,0,0,32,450,400,0),(0,13,'tags','Tags','List pages based on type, area.',0,0,0,0,0,33,439,450,0),(0,14,'topic_list','Topic List','Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',0,0,0,0,0,43,400,400,0),(0,15,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',0,0,0,0,0,42,550,400,0),(0,16,'switch_language','Switch Language','Adds a front-end language switcher to your website.',0,0,0,0,0,41,150,500,0),(0,17,'express_form','Form','Build simple forms and surveys.',0,0,0,0,0,40,700,640,0),(0,18,'search','Search','Add a search box to your site.',0,0,0,0,0,39,420,400,0),(0,19,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,38,175,420,0),(0,20,'express_entry_list','Express Entry List','Add a searchable Express entry list to a page.',0,0,0,0,0,37,400,640,0),(0,21,'express_entry_detail','Express Entry Detail','Add an Express entry detail display to a page.',0,0,0,0,0,36,400,640,0),(0,22,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,35,500,500,0),(0,23,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,34,400,450,0),(0,24,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,21,400,400,0),(0,25,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,20,560,450,0),(0,26,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,11,400,400,0),(0,27,'calendar','Calendar','Displays a month view calendar on a page.',0,0,0,0,0,10,475,500,0),(0,28,'event_list','Event List','Displays a list of events from a calendar.',0,0,0,0,0,9,340,500,0),(0,29,'calendar_event','Calendar Event','Displays a calendar event on a page.',0,0,0,0,0,8,400,550,0),(0,30,'page_attribute_display','Page Attribute Display','Displays the value of a page attribute for the current page.',0,0,0,0,0,7,365,500,0),(1,31,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,6,550,600,0),(0,32,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,5,440,450,0),(0,33,'document_library','Document Library','Add a searchable document library to a page.',0,0,0,0,0,4,400,640,0),(0,34,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,3,490,400,0),(0,35,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,2,550,525,0),(0,36,'desktop_app_status','concrete5 Status Messages','Displays alerts about your concrete5 site and package updates.',0,0,0,0,0,12,400,400,0),(0,37,'desktop_site_activity','Site Activity','Displays a graph of recent activity on your site.',0,0,0,0,0,13,560,450,0),(0,38,'desktop_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,0,0,0,19,100,300,0),(0,39,'desktop_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,0,0,0,18,100,300,0),(0,40,'desktop_latest_form','Latest Form','Shows the latest form submission.',0,0,0,0,0,17,400,400,0),(0,41,'desktop_waiting_for_me','Waiting for Me','Displays workflow actions waiting for you.',0,0,0,0,0,16,560,450,0),(0,42,'desktop_draft_list','Draft List','Displays a list of all drafts.',0,0,0,0,0,15,400,400,0),(0,43,'desktop_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,0,0,0,14,400,400,0),(0,44,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,400,400,0),(0,45,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,400,400,0),(0,46,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,400,400,0),(0,47,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,400,400,0),(0,48,'form','Legacy Form','Build simple forms and surveys.',1,0,0,0,0,1,430,420,0),(0,50,'big_hero_img','Big hero image','',0,0,0,0,0,0,650,800,0),(0,51,'text_block','Text block','',0,0,0,0,0,0,650,800,0),(0,52,'latest_three_posts','Latest 3 blog posts','',0,0,0,0,0,0,650,800,0),(0,53,'blog_post_widget','Blog posts widget','',0,0,0,0,0,0,650,800,0);
/*!40000 ALTER TABLE `blocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypesetblocktypes`
--

DROP TABLE IF EXISTS `blocktypesetblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypesetblocktypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT 0,
  `btsID` int(10) unsigned NOT NULL DEFAULT 0,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypesetblocktypes`
--

LOCK TABLES `blocktypesetblocktypes` WRITE;
/*!40000 ALTER TABLE `blocktypesetblocktypes` DISABLE KEYS */;
INSERT INTO `blocktypesetblocktypes` VALUES (1,1,0),(2,1,1),(3,1,2),(4,1,3),(5,1,4),(6,1,5),(7,2,0),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,2,9),(17,3,0),(18,3,1),(19,3,2),(20,4,0),(21,4,1),(22,5,0),(23,5,1),(24,5,2),(25,5,3),(26,5,4),(27,6,0),(28,6,1),(29,6,2),(30,7,0),(31,7,1),(32,7,2),(33,7,3),(34,7,4),(35,7,5),(36,8,0),(37,8,1),(38,8,2),(39,8,3),(40,8,4),(41,8,5),(42,8,6),(43,8,7);
/*!40000 ALTER TABLE `blocktypesetblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocktypesets`
--

DROP TABLE IF EXISTS `blocktypesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocktypesets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocktypesets`
--

LOCK TABLES `blocktypesets` WRITE;
/*!40000 ALTER TABLE `blocktypesets` DISABLE KEYS */;
INSERT INTO `blocktypesets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Express','express',0,0),(5,'Social Networking','social',0,0),(6,'Calendar & Events','calendar',0,0),(7,'Multimedia','multimedia',0,0),(8,'Desktop','core_desktop',0,0);
/*!40000 ALTER TABLE `blocktypesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btbigheroimg`
--

DROP TABLE IF EXISTS `btbigheroimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btbigheroimg` (
  `bID` int(10) unsigned NOT NULL,
  `bgImage` int(10) unsigned DEFAULT 0,
  `heroText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heroHeight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textPos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btbigheroimg`
--

LOCK TABLES `btbigheroimg` WRITE;
/*!40000 ALTER TABLE `btbigheroimg` DISABLE KEYS */;
INSERT INTO `btbigheroimg` VALUES (32,1,'An ugly looking blog','','right'),(36,1,'About','150px','left'),(39,2,'My dog leslie','150px','left'),(43,2,'My bird alberto','150px','left'),(44,2,'My pretty yellow car','150px','left'),(47,2,'My cactus','150px','left');
/*!40000 ALTER TABLE `btbigheroimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btblogpostwidget`
--

DROP TABLE IF EXISTS `btblogpostwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btblogpostwidget` (
  `bID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btblogpostwidget`
--

LOCK TABLES `btblogpostwidget` WRITE;
/*!40000 ALTER TABLE `btblogpostwidget` DISABLE KEYS */;
INSERT INTO `btblogpostwidget` VALUES (46);
/*!40000 ALTER TABLE `btblogpostwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcalendar`
--

DROP TABLE IF EXISTS `btcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcalendar` (
  `bID` int(10) unsigned NOT NULL,
  `caID` int(10) unsigned NOT NULL DEFAULT 0,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByTopicAttributeKeyID` int(10) unsigned NOT NULL DEFAULT 0,
  `filterByTopicID` int(10) unsigned NOT NULL DEFAULT 0,
  `viewTypes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewTypesOrder` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultView` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navLinks` int(11) DEFAULT NULL,
  `eventLimit` int(11) DEFAULT NULL,
  `lightboxProperties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcalendar`
--

LOCK TABLES `btcalendar` WRITE;
/*!40000 ALTER TABLE `btcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcalendarevent`
--

DROP TABLE IF EXISTS `btcalendarevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcalendarevent` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Specify, P = Page, R = Request',
  `calendarEventAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendarID` int(10) unsigned NOT NULL DEFAULT 0,
  `eventID` int(10) unsigned NOT NULL DEFAULT 0,
  `displayEventAttributes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableLinkToPage` tinyint(1) DEFAULT 0,
  `displayEventName` tinyint(1) DEFAULT 0,
  `displayEventDate` tinyint(1) DEFAULT 0,
  `displayEventDescription` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcalendarevent`
--

LOCK TABLES `btcalendarevent` WRITE;
/*!40000 ALTER TABLE `btcalendarevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcalendarevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcontentfile`
--

DROP TABLE IF EXISTS `btcontentfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcontentfile`
--

LOCK TABLES `btcontentfile` WRITE;
/*!40000 ALTER TABLE `btcontentfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcontentfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcontentimage`
--

DROP TABLE IF EXISTS `btcontentimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT 0,
  `fOnstateID` int(10) unsigned DEFAULT 0,
  `cropImage` int(10) unsigned DEFAULT 0,
  `maxWidth` int(10) unsigned DEFAULT 0,
  `maxHeight` int(10) unsigned DEFAULT 0,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT 0,
  `fileLinkID` int(10) unsigned DEFAULT 0,
  `openLinkInNewWindow` tinyint(1) NOT NULL DEFAULT 0,
  `altText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcontentimage`
--

LOCK TABLES `btcontentimage` WRITE;
/*!40000 ALTER TABLE `btcontentimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcontentimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcontentlocal`
--

DROP TABLE IF EXISTS `btcontentlocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcontentlocal`
--

LOCK TABLES `btcontentlocal` WRITE;
/*!40000 ALTER TABLE `btcontentlocal` DISABLE KEYS */;
INSERT INTO `btcontentlocal` VALUES (23,'<p style=\"text-align: center;\">Hello there bugs bunny</p>\r\n'),(27,''),(28,'<h1 style=\"text-align: center;\">My dog leslie</h1>\r\n'),(29,'<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Atque&nbsp;maxime&nbsp;libero&nbsp;recusandae&nbsp;quas&nbsp;excepturi&nbsp;facilis&nbsp;cumque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tenetur&nbsp;modi&nbsp;similique.&nbsp;Exercitationem&nbsp;quasi&nbsp;iusto&nbsp;optio&nbsp;atque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;harum&nbsp;ea,&nbsp;amet&nbsp;voluptatum&nbsp;voluptates&nbsp;vero.&nbsp;Lorem&nbsp;ipsum&nbsp;dolor</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Sequi&nbsp;dolores&nbsp;qui</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sapiente&nbsp;corrupti&nbsp;vitae,&nbsp;accusantium,&nbsp;fuga&nbsp;sunt&nbsp;aliquid</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doloribus&nbsp;asperiores&nbsp;odit&nbsp;molestias&nbsp;nemo&nbsp;consectetur</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laboriosam&nbsp;neque&nbsp;unde&nbsp;velit&nbsp;numquam&nbsp;eos?</p>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Atque&nbsp;maxime&nbsp;libero&nbsp;recusandae&nbsp;quas&nbsp;excepturi&nbsp;facilis&nbsp;cumque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tenetur&nbsp;modi&nbsp;similique.&nbsp;Exercitationem&nbsp;quasi&nbsp;iusto&nbsp;optio&nbsp;atque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;harum&nbsp;ea,&nbsp;amet&nbsp;voluptatum&nbsp;voluptates&nbsp;vero.&nbsp;Lorem&nbsp;ipsum&nbsp;dolor</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Sequi&nbsp;dolores&nbsp;qui</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sapiente&nbsp;corrupti&nbsp;vitae,&nbsp;accusantium,&nbsp;fuga&nbsp;sunt&nbsp;aliquid</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doloribus&nbsp;asperiores&nbsp;odit&nbsp;molestias&nbsp;nemo&nbsp;consectetur</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laboriosam&nbsp;neque&nbsp;unde&nbsp;velit&nbsp;numquam&nbsp;eos?</p>\r\n'),(30,'<ul>\r\n	<li>Widget 1</li>\r\n	<li>Widget 2</li>\r\n	<li>Widget 3</li>\r\n</ul>\r\n'),(35,''),(48,'<p>This is my custom header text</p>\r\n'),(49,'<p>Copyright 2019 - Ugly blog</p>\r\n');
/*!40000 ALTER TABLE `btcontentlocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorearealayout`
--

DROP TABLE IF EXISTS `btcorearealayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorearealayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorearealayout`
--

LOCK TABLES `btcorearealayout` WRITE;
/*!40000 ALTER TABLE `btcorearealayout` DISABLE KEYS */;
INSERT INTO `btcorearealayout` VALUES (2,1),(6,2),(9,3),(14,4),(16,5),(18,6),(20,7);
/*!40000 ALTER TABLE `btcorearealayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcoreconversation`
--

DROP TABLE IF EXISTS `btcoreconversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcoreconversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT 1,
  `paginate` tinyint(1) NOT NULL DEFAULT 1,
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT 50,
  `displayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT 1,
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT 1,
  `enableTopCommentReviews` tinyint(1) NOT NULL DEFAULT 0,
  `displaySocialLinks` tinyint(1) NOT NULL DEFAULT 1,
  `reviewAggregateAttributeKey` int(11) DEFAULT NULL,
  `displayPostingForm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcoreconversation`
--

LOCK TABLES `btcoreconversation` WRITE;
/*!40000 ALTER TABLE `btcoreconversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcoreconversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorepagetypecomposercontroloutput`
--

DROP TABLE IF EXISTS `btcorepagetypecomposercontroloutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorepagetypecomposercontroloutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorepagetypecomposercontroloutput`
--

LOCK TABLES `btcorepagetypecomposercontroloutput` WRITE;
/*!40000 ALTER TABLE `btcorepagetypecomposercontroloutput` DISABLE KEYS */;
INSERT INTO `btcorepagetypecomposercontroloutput` VALUES (22,1);
/*!40000 ALTER TABLE `btcorepagetypecomposercontroloutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorescrapbookdisplay`
--

DROP TABLE IF EXISTS `btcorescrapbookdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorescrapbookdisplay`
--

LOCK TABLES `btcorescrapbookdisplay` WRITE;
/*!40000 ALTER TABLE `btcorescrapbookdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorescrapbookdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcorestackdisplay`
--

DROP TABLE IF EXISTS `btcorestackdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcorestackdisplay`
--

LOCK TABLES `btcorestackdisplay` WRITE;
/*!40000 ALTER TABLE `btcorestackdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorestackdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdatenavigation`
--

DROP TABLE IF EXISTS `btdatenavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdatenavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT 0,
  `redirectToResults` tinyint(1) DEFAULT 0,
  `cParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `cTargetID` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdatenavigation`
--

LOCK TABLES `btdatenavigation` WRITE;
/*!40000 ALTER TABLE `btdatenavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btdatenavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdesktopdraftlist`
--

DROP TABLE IF EXISTS `btdesktopdraftlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdesktopdraftlist` (
  `bID` int(10) unsigned NOT NULL,
  `draftsPerPage` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdesktopdraftlist`
--

LOCK TABLES `btdesktopdraftlist` WRITE;
/*!40000 ALTER TABLE `btdesktopdraftlist` DISABLE KEYS */;
INSERT INTO `btdesktopdraftlist` VALUES (17,10),(21,10);
/*!40000 ALTER TABLE `btdesktopdraftlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdesktopnewsflowlatest`
--

DROP TABLE IF EXISTS `btdesktopnewsflowlatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdesktopnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdesktopnewsflowlatest`
--

LOCK TABLES `btdesktopnewsflowlatest` WRITE;
/*!40000 ALTER TABLE `btdesktopnewsflowlatest` DISABLE KEYS */;
INSERT INTO `btdesktopnewsflowlatest` VALUES (10,'A'),(11,'B'),(12,'C');
/*!40000 ALTER TABLE `btdesktopnewsflowlatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdesktopsiteactivity`
--

DROP TABLE IF EXISTS `btdesktopsiteactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdesktopsiteactivity` (
  `bID` int(10) unsigned NOT NULL,
  `types` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdesktopsiteactivity`
--

LOCK TABLES `btdesktopsiteactivity` WRITE;
/*!40000 ALTER TABLE `btdesktopsiteactivity` DISABLE KEYS */;
INSERT INTO `btdesktopsiteactivity` VALUES (5,'[\"form_submissions\",\"survey_results\",\"signups\",\"conversation_messages\",\"workflow\"]');
/*!40000 ALTER TABLE `btdesktopsiteactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btdocumentlibrary`
--

DROP TABLE IF EXISTS `btdocumentlibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btdocumentlibrary` (
  `bID` int(10) unsigned NOT NULL,
  `setIds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folderID` int(11) NOT NULL DEFAULT 0,
  `setMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onlyCurrentUser` int(11) DEFAULT 0,
  `tags` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewProperties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expandableProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'title',
  `displayLimit` int(11) DEFAULT 20,
  `displayOrderDesc` tinyint(1) NOT NULL DEFAULT 0,
  `addFilesToSetID` int(10) unsigned NOT NULL DEFAULT 0,
  `maxThumbWidth` int(11) DEFAULT 100,
  `maxThumbHeight` int(11) DEFAULT 150,
  `enableSearch` int(11) DEFAULT 0,
  `heightMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'auto',
  `downloadFileMethod` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'force',
  `fixedHeightSize` int(11) DEFAULT 0,
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowFileUploading` int(11) DEFAULT 0,
  `allowInPageFileManagement` int(11) DEFAULT 0,
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT 0,
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btdocumentlibrary`
--

LOCK TABLES `btdocumentlibrary` WRITE;
/*!40000 ALTER TABLE `btdocumentlibrary` DISABLE KEYS */;
/*!40000 ALTER TABLE `btdocumentlibrary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bteventlist`
--

DROP TABLE IF EXISTS `bteventlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bteventlist` (
  `bID` int(10) unsigned NOT NULL,
  `caID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalToRetrieve` smallint(5) unsigned NOT NULL DEFAULT 10,
  `totalPerPage` smallint(5) unsigned NOT NULL DEFAULT 10,
  `filterByTopicAttributeKeyID` int(10) unsigned NOT NULL DEFAULT 0,
  `filterByTopicID` int(10) unsigned NOT NULL DEFAULT 0,
  `filterByPageTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `eventListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkToPage` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bteventlist`
--

LOCK TABLES `bteventlist` WRITE;
/*!40000 ALTER TABLE `bteventlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `bteventlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btexpressentrydetail`
--

DROP TABLE IF EXISTS `btexpressentrydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btexpressentrydetail` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) unsigned DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btexpressentrydetail`
--

LOCK TABLES `btexpressentrydetail` WRITE;
/*!40000 ALTER TABLE `btexpressentrydetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `btexpressentrydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btexpressentrylist`
--

DROP TABLE IF EXISTS `btexpressentrylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btexpressentrylist` (
  `bID` int(10) unsigned NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailPage` int(10) unsigned NOT NULL DEFAULT 0,
  `linkedProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchAssociations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterFields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayLimit` int(11) DEFAULT 20,
  `enableSearch` int(11) DEFAULT 0,
  `enableKeywordSearch` int(11) DEFAULT 0,
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT 0,
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btexpressentrylist`
--

LOCK TABLES `btexpressentrylist` WRITE;
/*!40000 ALTER TABLE `btexpressentrylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `btexpressentrylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btexpressform`
--

DROP TABLE IF EXISTS `btexpressform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btexpressform` (
  `bID` int(10) unsigned NOT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `submitLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT 0,
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT 1,
  `storeFormSubmission` tinyint(1) DEFAULT 1,
  `redirectCID` int(11) DEFAULT 0,
  `replyToEmailControlID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT 0,
  `addFilesToFolder` int(11) DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btexpressform`
--

LOCK TABLES `btexpressform` WRITE;
/*!40000 ALTER TABLE `btexpressform` DISABLE KEYS */;
/*!40000 ALTER TABLE `btexpressform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btexternalform`
--

DROP TABLE IF EXISTS `btexternalform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btexternalform`
--

LOCK TABLES `btexternalform` WRITE;
/*!40000 ALTER TABLE `btexternalform` DISABLE KEYS */;
/*!40000 ALTER TABLE `btexternalform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btfaq`
--

DROP TABLE IF EXISTS `btfaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btfaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btfaq`
--

LOCK TABLES `btfaq` WRITE;
/*!40000 ALTER TABLE `btfaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `btfaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btfaqentries`
--

DROP TABLE IF EXISTS `btfaqentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btfaqentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btfaqentries`
--

LOCK TABLES `btfaqentries` WRITE;
/*!40000 ALTER TABLE `btfaqentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btfaqentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btfeature`
--

DROP TABLE IF EXISTS `btfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btfeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btfeature`
--

LOCK TABLES `btfeature` WRITE;
/*!40000 ALTER TABLE `btfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `btfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btform`
--

DROP TABLE IF EXISTS `btform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT 0,
  `surveyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT 0,
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT 1,
  `redirectCID` int(11) DEFAULT 0,
  `addFilesToSet` int(11) DEFAULT 0,
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btform`
--

LOCK TABLES `btform` WRITE;
/*!40000 ALTER TABLE `btform` DISABLE KEYS */;
/*!40000 ALTER TABLE `btform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btformanswers`
--

DROP TABLE IF EXISTS `btformanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT 0,
  `msqID` int(10) unsigned DEFAULT 0,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btformanswers`
--

LOCK TABLES `btformanswers` WRITE;
/*!40000 ALTER TABLE `btformanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btformanswerset`
--

DROP TABLE IF EXISTS `btformanswerset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `uID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btformanswerset`
--

LOCK TABLES `btformanswerset` WRITE;
/*!40000 ALTER TABLE `btformanswerset` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformanswerset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btformquestions`
--

DROP TABLE IF EXISTS `btformquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT 0,
  `bID` int(10) unsigned DEFAULT 0,
  `questionSetId` int(10) unsigned DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) unsigned DEFAULT 1000,
  `width` int(10) unsigned DEFAULT 50,
  `height` int(10) unsigned DEFAULT 3,
  `defaultDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT 0,
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btformquestions`
--

LOCK TABLES `btformquestions` WRITE;
/*!40000 ALTER TABLE `btformquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btgooglemap`
--

DROP TABLE IF EXISTS `btgooglemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btgooglemap`
--

LOCK TABLES `btgooglemap` WRITE;
/*!40000 ALTER TABLE `btgooglemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btgooglemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btimageslider`
--

DROP TABLE IF EXISTS `btimageslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btimageslider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT 0,
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btimageslider`
--

LOCK TABLES `btimageslider` WRITE;
/*!40000 ALTER TABLE `btimageslider` DISABLE KEYS */;
/*!40000 ALTER TABLE `btimageslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btimagesliderentries`
--

DROP TABLE IF EXISTS `btimagesliderentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btimagesliderentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT 0,
  `fID` int(10) unsigned DEFAULT 0,
  `linkURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT 0,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btimagesliderentries`
--

LOCK TABLES `btimagesliderentries` WRITE;
/*!40000 ALTER TABLE `btimagesliderentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btimagesliderentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btlatestthreeposts`
--

DROP TABLE IF EXISTS `btlatestthreeposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btlatestthreeposts` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btlatestthreeposts`
--

LOCK TABLES `btlatestthreeposts` WRITE;
/*!40000 ALTER TABLE `btlatestthreeposts` DISABLE KEYS */;
INSERT INTO `btlatestthreeposts` VALUES (42,'Recent blog posts');
/*!40000 ALTER TABLE `btlatestthreeposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btnavigation`
--

DROP TABLE IF EXISTS `btnavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT 1,
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT 0,
  `displaySubPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT 0,
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btnavigation`
--

LOCK TABLES `btnavigation` WRITE;
/*!40000 ALTER TABLE `btnavigation` DISABLE KEYS */;
INSERT INTO `btnavigation` VALUES (50,'display_asc','top',0,0,'none','enough',0,0);
/*!40000 ALTER TABLE `btnavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btnextprevious`
--

DROP TABLE IF EXISTS `btnextprevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT 1,
  `orderBy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btnextprevious`
--

LOCK TABLES `btnextprevious` WRITE;
/*!40000 ALTER TABLE `btnextprevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btnextprevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btpageattributedisplay`
--

DROP TABLE IF EXISTS `btpageattributedisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btpageattributedisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btpageattributedisplay`
--

LOCK TABLES `btpageattributedisplay` WRITE;
/*!40000 ALTER TABLE `btpageattributedisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btpageattributedisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btpagelist`
--

DROP TABLE IF EXISTS `btpagelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT 1,
  `cThis` tinyint(1) NOT NULL DEFAULT 0,
  `cThisParent` tinyint(1) NOT NULL DEFAULT 0,
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT 0,
  `buttonLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT 0,
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT 0,
  `filterDateOption` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT 0,
  `filterDateStart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT 0,
  `includeName` tinyint(1) NOT NULL DEFAULT 1,
  `includeDescription` tinyint(1) NOT NULL DEFAULT 1,
  `includeDate` tinyint(1) NOT NULL DEFAULT 0,
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT 0,
  `paginate` tinyint(1) NOT NULL DEFAULT 0,
  `displayAliases` tinyint(1) NOT NULL DEFAULT 1,
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT 0,
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT 0,
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT 0,
  `truncateSummaries` int(11) DEFAULT 0,
  `displayFeaturedOnly` tinyint(1) DEFAULT 0,
  `noResultsMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT 0,
  `truncateChars` int(11) DEFAULT 128,
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btpagelist`
--

LOCK TABLES `btpagelist` WRITE;
/*!40000 ALTER TABLE `btpagelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `btpagelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btpagetitle`
--

DROP TABLE IF EXISTS `btpagetitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btpagetitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT 0,
  `useFilterTitle` int(10) unsigned DEFAULT 0,
  `useFilterTopic` int(10) unsigned DEFAULT 0,
  `useFilterTag` int(10) unsigned DEFAULT 0,
  `useFilterDate` int(10) unsigned DEFAULT 0,
  `topicTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btpagetitle`
--

LOCK TABLES `btpagetitle` WRITE;
/*!40000 ALTER TABLE `btpagetitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `btpagetitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btrssdisplay`
--

DROP TABLE IF EXISTS `btrssdisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT 5,
  `showSummary` tinyint(1) NOT NULL DEFAULT 1,
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btrssdisplay`
--

LOCK TABLES `btrssdisplay` WRITE;
/*!40000 ALTER TABLE `btrssdisplay` DISABLE KEYS */;
INSERT INTO `btrssdisplay` VALUES (7,'Tutorials','http://documentation.concrete5.org/rss/tutorials','',1,1,1),(13,'News from concrete5.org','http://www.concrete5.org/rss/blog','',3,1,1);
/*!40000 ALTER TABLE `btrssdisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsearch`
--

DROP TABLE IF EXISTS `btsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postTo_cID` int(10) unsigned DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsearch`
--

LOCK TABLES `btsearch` WRITE;
/*!40000 ALTER TABLE `btsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsharethispage`
--

DROP TABLE IF EXISTS `btsharethispage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsharethispage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT 0,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsharethispage`
--

LOCK TABLES `btsharethispage` WRITE;
/*!40000 ALTER TABLE `btsharethispage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsharethispage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsociallinks`
--

DROP TABLE IF EXISTS `btsociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsociallinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT 0,
  `slID` int(10) unsigned DEFAULT 0,
  `displayOrder` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsociallinks`
--

LOCK TABLES `btsociallinks` WRITE;
/*!40000 ALTER TABLE `btsociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsurvey`
--

DROP TABLE IF EXISTS `btsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsurvey`
--

LOCK TABLES `btsurvey` WRITE;
/*!40000 ALTER TABLE `btsurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsurveyoptions`
--

DROP TABLE IF EXISTS `btsurveyoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT 0,
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsurveyoptions`
--

LOCK TABLES `btsurveyoptions` WRITE;
/*!40000 ALTER TABLE `btsurveyoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurveyoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btsurveyresults`
--

DROP TABLE IF EXISTS `btsurveyresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT 0,
  `uID` int(10) unsigned DEFAULT 0,
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btsurveyresults`
--

LOCK TABLES `btsurveyresults` WRITE;
/*!40000 ALTER TABLE `btsurveyresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurveyresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btswitchlanguage`
--

DROP TABLE IF EXISTS `btswitchlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btswitchlanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btswitchlanguage`
--

LOCK TABLES `btswitchlanguage` WRITE;
/*!40000 ALTER TABLE `btswitchlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btswitchlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttags`
--

DROP TABLE IF EXISTS `bttags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT 10,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttags`
--

LOCK TABLES `bttags` WRITE;
/*!40000 ALTER TABLE `bttags` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttestimonial`
--

DROP TABLE IF EXISTS `bttestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttestimonial`
--

LOCK TABLES `bttestimonial` WRITE;
/*!40000 ALTER TABLE `bttestimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttextblock`
--

DROP TABLE IF EXISTS `bttextblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttextblock` (
  `bID` int(10) unsigned NOT NULL,
  `textContent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blockPadding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttextblock`
--

LOCK TABLES `bttextblock` WRITE;
/*!40000 ALTER TABLE `bttextblock` DISABLE KEYS */;
INSERT INTO `bttextblock` VALUES (37,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n','50px'),(41,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n','');
/*!40000 ALTER TABLE `bttextblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bttopiclist`
--

DROP TABLE IF EXISTS `bttopiclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bttopiclist` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT 0,
  `cParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bttopiclist`
--

LOCK TABLES `bttopiclist` WRITE;
/*!40000 ALTER TABLE `bttopiclist` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttopiclist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btvideo`
--

DROP TABLE IF EXISTS `btvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT 0,
  `oggfID` int(10) unsigned DEFAULT 0,
  `posterfID` int(10) unsigned DEFAULT 0,
  `mp4fID` int(10) unsigned DEFAULT 0,
  `videoSize` int(10) unsigned DEFAULT 0,
  `width` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btvideo`
--

LOCK TABLES `btvideo` WRITE;
/*!40000 ALTER TABLE `btvideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btvideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btyoutube`
--

DROP TABLE IF EXISTS `btyoutube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTimeEnabled` tinyint(1) DEFAULT NULL,
  `startTime` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noCookie` tinyint(1) DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT 0,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT 0,
  `modestbranding` tinyint(1) NOT NULL DEFAULT 0,
  `rel` tinyint(1) NOT NULL DEFAULT 0,
  `showinfo` tinyint(1) NOT NULL DEFAULT 0,
  `showCaptions` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btyoutube`
--

LOCK TABLES `btyoutube` WRITE;
/*!40000 ALTER TABLE `btyoutube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btyoutube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventattributekeys`
--

DROP TABLE IF EXISTS `calendareventattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_27F477CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventattributekeys`
--

LOCK TABLES `calendareventattributekeys` WRITE;
/*!40000 ALTER TABLE `calendareventattributekeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventoccurrences`
--

DROP TABLE IF EXISTS `calendareventoccurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventoccurrences` (
  `occurrenceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `repetitionID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`occurrenceID`),
  KEY `IDX_7DD686EC31391E00` (`repetitionID`),
  KEY `eventdates` (`occurrenceID`,`startTime`,`endTime`),
  CONSTRAINT `FK_7DD686EC31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `calendareventrepetitions` (`repetitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventoccurrences`
--

LOCK TABLES `calendareventoccurrences` WRITE;
/*!40000 ALTER TABLE `calendareventoccurrences` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventoccurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventrepetitions`
--

DROP TABLE IF EXISTS `calendareventrepetitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventrepetitions` (
  `repetitionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `repetitionObject` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  PRIMARY KEY (`repetitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventrepetitions`
--

LOCK TABLES `calendareventrepetitions` WRITE;
/*!40000 ALTER TABLE `calendareventrepetitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventrepetitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarevents`
--

DROP TABLE IF EXISTS `calendarevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarevents` (
  `eventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventID`),
  KEY `IDX_7F23C55611C85723` (`caID`),
  CONSTRAINT `FK_7F23C55611C85723` FOREIGN KEY (`caID`) REFERENCES `calendars` (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarevents`
--

LOCK TABLES `calendarevents` WRITE;
/*!40000 ALTER TABLE `calendarevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventsearchindexattributes`
--

DROP TABLE IF EXISTS `calendareventsearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventsearchindexattributes` (
  `eventID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventsearchindexattributes`
--

LOCK TABLES `calendareventsearchindexattributes` WRITE;
/*!40000 ALTER TABLE `calendareventsearchindexattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventsearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventversionattributevalues`
--

DROP TABLE IF EXISTS `calendareventversionattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventversionattributevalues` (
  `eventVersionID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventVersionID`,`akID`),
  KEY `IDX_8C835B05403F5D6` (`eventVersionID`),
  KEY `IDX_8C835B05B6561A7E` (`akID`),
  KEY `IDX_8C835B05A2A82A5D` (`avID`),
  CONSTRAINT `FK_8C835B05403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `calendareventversions` (`eventVersionID`),
  CONSTRAINT `FK_8C835B05A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  CONSTRAINT `FK_8C835B05B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventversionattributevalues`
--

LOCK TABLES `calendareventversionattributevalues` WRITE;
/*!40000 ALTER TABLE `calendareventversionattributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventversionattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventversionoccurrences`
--

DROP TABLE IF EXISTS `calendareventversionoccurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventversionoccurrences` (
  `versionOccurrenceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventVersionID` int(10) unsigned DEFAULT NULL,
  `occurrenceID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`versionOccurrenceID`),
  KEY `IDX_60310489403F5D6` (`eventVersionID`),
  KEY `IDX_60310489B4FDDC0F` (`occurrenceID`),
  CONSTRAINT `FK_60310489403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `calendareventversions` (`eventVersionID`),
  CONSTRAINT `FK_60310489B4FDDC0F` FOREIGN KEY (`occurrenceID`) REFERENCES `calendareventoccurrences` (`occurrenceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventversionoccurrences`
--

LOCK TABLES `calendareventversionoccurrences` WRITE;
/*!40000 ALTER TABLE `calendareventversionoccurrences` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventversionoccurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventversionrepetitions`
--

DROP TABLE IF EXISTS `calendareventversionrepetitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventversionrepetitions` (
  `versionRepetitionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventVersionID` int(10) unsigned DEFAULT NULL,
  `repetitionID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`versionRepetitionID`),
  KEY `IDX_C1C3D3DB403F5D6` (`eventVersionID`),
  KEY `IDX_C1C3D3DB31391E00` (`repetitionID`),
  CONSTRAINT `FK_C1C3D3DB31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `calendareventrepetitions` (`repetitionID`),
  CONSTRAINT `FK_C1C3D3DB403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `calendareventversions` (`eventVersionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventversionrepetitions`
--

LOCK TABLES `calendareventversionrepetitions` WRITE;
/*!40000 ALTER TABLE `calendareventversionrepetitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventversionrepetitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventversions`
--

DROP TABLE IF EXISTS `calendareventversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventversions` (
  `eventVersionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `evDateAdded` datetime NOT NULL,
  `evActivateDateTime` datetime DEFAULT NULL,
  `evIsApproved` tinyint(1) NOT NULL,
  `evDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evName` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evRelatedPageRelationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `eventID` int(10) unsigned DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eventVersionID`),
  KEY `IDX_8E26027410409BA4` (`eventID`),
  KEY `IDX_8E260274FD71026C` (`uID`),
  CONSTRAINT `FK_8E26027410409BA4` FOREIGN KEY (`eventID`) REFERENCES `calendarevents` (`eventID`),
  CONSTRAINT `FK_8E260274FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventversions`
--

LOCK TABLES `calendareventversions` WRITE;
/*!40000 ALTER TABLE `calendareventversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendareventworkflowprogress`
--

DROP TABLE IF EXISTS `calendareventworkflowprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendareventworkflowprogress` (
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  `eventID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eventID`,`wpID`),
  KEY `IDX_C5EAACF910409BA4` (`eventID`),
  KEY `wpID` (`wpID`),
  CONSTRAINT `FK_C5EAACF910409BA4` FOREIGN KEY (`eventID`) REFERENCES `calendarevents` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendareventworkflowprogress`
--

LOCK TABLES `calendareventworkflowprogress` WRITE;
/*!40000 ALTER TABLE `calendareventworkflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendareventworkflowprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarpermissionassignments`
--

DROP TABLE IF EXISTS `calendarpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarpermissionassignments` (
  `pkID` int(10) unsigned NOT NULL,
  `paID` int(10) unsigned NOT NULL,
  `caID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`caID`,`pkID`,`paID`),
  KEY `IDX_5AD546AA11C85723` (`caID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`),
  CONSTRAINT `FK_5AD546AA11C85723` FOREIGN KEY (`caID`) REFERENCES `calendars` (`caID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarpermissionassignments`
--

LOCK TABLES `calendarpermissionassignments` WRITE;
/*!40000 ALTER TABLE `calendarpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarrelatedevents`
--

DROP TABLE IF EXISTS `calendarrelatedevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarrelatedevents` (
  `relatedEventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relationID` int(10) unsigned NOT NULL,
  `relationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`relatedEventID`),
  KEY `IDX_310130E910409BA4` (`eventID`),
  CONSTRAINT `FK_310130E910409BA4` FOREIGN KEY (`eventID`) REFERENCES `calendarevents` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarrelatedevents`
--

LOCK TABLES `calendarrelatedevents` WRITE;
/*!40000 ALTER TABLE `calendarrelatedevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarrelatedevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendars` (
  `caID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caOverridePermissions` tinyint(1) NOT NULL DEFAULT 0,
  `eventPageAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableMoreDetails` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventPageParentID` int(10) unsigned DEFAULT 0,
  `eventPageTypeID` int(10) unsigned DEFAULT 0,
  `eventPageAssociatedID` int(10) unsigned DEFAULT 0,
  `siteID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`caID`),
  KEY `IDX_62E00AC521D8435` (`siteID`),
  CONSTRAINT `FK_62E00AC521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionattributekeys`
--

DROP TABLE IF EXISTS `collectionattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionattributekeys`
--

LOCK TABLES `collectionattributekeys` WRITE;
/*!40000 ALTER TABLE `collectionattributekeys` DISABLE KEYS */;
INSERT INTO `collectionattributekeys` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(20);
/*!40000 ALTER TABLE `collectionattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionattributevalues`
--

DROP TABLE IF EXISTS `collectionattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL,
  `cvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `IDX_BB9995FCB6561A7E` (`akID`),
  KEY `IDX_BB9995FCA2A82A5D` (`avID`),
  CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionattributevalues`
--

LOCK TABLES `collectionattributevalues` WRITE;
/*!40000 ALTER TABLE `collectionattributevalues` DISABLE KEYS */;
INSERT INTO `collectionattributevalues` VALUES (2,1,6,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,7,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,7,16),(17,1,3,17),(17,1,7,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(25,1,3,22),(26,1,3,23),(27,1,7,24),(27,1,12,25),(28,1,3,26),(29,1,3,27),(30,1,3,28),(32,1,3,29),(33,1,3,30),(33,1,7,31),(35,1,7,32),(36,1,7,33),(37,1,7,34),(38,1,7,35),(39,1,7,36),(40,1,7,37),(42,1,7,38),(43,1,3,39),(44,1,3,40),(45,1,3,41),(48,1,7,42),(48,1,12,43),(50,1,7,44),(50,1,12,45),(53,1,6,46),(55,1,3,47),(57,1,7,48),(57,1,12,49),(57,1,3,50),(58,1,3,51),(59,1,3,52),(60,1,3,53),(61,1,3,54),(62,1,3,55),(62,1,7,56),(63,1,3,57),(64,1,3,58),(65,1,3,59),(67,1,3,60),(68,1,3,61),(69,1,3,62),(70,1,3,63),(71,1,3,64),(72,1,3,65),(73,1,3,66),(73,1,7,67),(74,1,3,68),(75,1,3,69),(75,1,7,70),(75,1,12,71),(76,1,3,72),(79,1,7,73),(79,1,12,74),(80,1,7,75),(80,1,12,76),(81,1,7,77),(81,1,12,78),(82,1,7,79),(82,1,12,80),(83,1,7,81),(83,1,12,82),(85,1,3,83),(91,1,3,84),(92,1,3,85),(93,1,3,86),(94,1,3,87),(95,1,3,88),(97,1,3,89),(98,1,3,90),(99,1,3,91),(100,1,7,92),(100,1,3,93),(101,1,3,94),(102,1,3,95),(103,1,3,96),(105,1,3,97),(106,1,3,98),(107,1,3,99),(108,1,3,100),(110,1,3,101),(111,1,3,102),(115,1,3,103),(116,1,7,104),(117,1,3,105),(118,1,3,106),(119,1,3,107),(120,1,3,108),(122,1,3,109),(123,1,3,110),(124,1,3,111),(125,1,3,112),(126,1,3,113),(129,1,3,114),(130,1,3,115),(131,1,3,116),(132,1,3,117),(133,1,3,118),(134,1,3,119),(135,1,3,120),(141,1,3,121),(142,1,3,122),(143,1,3,123),(144,1,3,124),(146,1,3,125),(147,1,3,126),(148,1,3,127),(149,1,3,128),(151,1,12,129),(152,1,3,130),(153,1,3,131),(154,1,3,132),(155,1,3,133),(156,1,3,134),(157,1,3,135),(158,1,3,136),(160,1,3,137),(162,1,3,138),(163,1,7,139),(163,1,12,140),(164,1,4,141),(164,1,5,142),(164,1,7,143),(166,1,6,144),(168,1,6,145),(171,1,6,146),(177,1,6,147),(178,1,4,148),(178,1,5,149),(178,1,7,150),(185,7,20,159),(191,7,20,159),(192,7,20,159),(193,7,20,159),(185,8,20,160),(191,8,20,160),(192,8,20,160),(193,8,20,160),(191,9,20,162),(191,10,20,162),(192,9,20,163),(192,10,20,163),(193,9,20,165),(193,10,20,166);
/*!40000 ALTER TABLE `collectionattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'2019-12-22 11:32:16','2019-12-22 15:33:02',NULL),(2,'2019-12-22 11:34:29','2019-12-22 11:34:29','dashboard'),(3,'2019-12-22 11:34:29','2019-12-22 11:34:29','sitemap'),(4,'2019-12-22 11:34:29','2019-12-22 11:34:29','full'),(5,'2019-12-22 11:34:29','2019-12-22 11:34:29','explore'),(6,'2019-12-22 11:34:29','2019-12-22 11:34:29','search'),(7,'2019-12-22 11:34:29','2019-12-22 11:34:29','files'),(8,'2019-12-22 11:34:29','2019-12-22 11:34:29','search'),(9,'2019-12-22 11:34:30','2019-12-22 11:34:30','attributes'),(10,'2019-12-22 11:34:30','2019-12-22 11:34:30','sets'),(11,'2019-12-22 11:34:30','2019-12-22 11:34:30','add_set'),(12,'2019-12-22 11:34:30','2019-12-22 11:34:30','users'),(13,'2019-12-22 11:34:30','2019-12-22 11:34:30','search'),(14,'2019-12-22 11:34:30','2019-12-22 11:34:30','groups'),(15,'2019-12-22 11:34:30','2019-12-22 11:34:30','attributes'),(16,'2019-12-22 11:34:30','2019-12-22 11:34:30','add'),(17,'2019-12-22 11:34:30','2019-12-22 11:34:30','add_group'),(18,'2019-12-22 11:34:30','2019-12-22 11:34:30','bulkupdate'),(19,'2019-12-22 11:34:30','2019-12-22 11:34:30','group_sets'),(20,'2019-12-22 11:34:30','2019-12-22 11:34:31','points'),(21,'2019-12-22 11:34:31','2019-12-22 11:34:31','assign'),(22,'2019-12-22 11:34:31','2019-12-22 11:34:31','actions'),(23,'2019-12-22 11:34:31','2019-12-22 11:34:31','express'),(24,'2019-12-22 11:34:31','2019-12-22 11:34:31','entries'),(25,'2019-12-22 11:34:31','2019-12-22 11:34:31','reports'),(26,'2019-12-22 11:34:31','2019-12-22 11:34:31','forms'),(27,'2019-12-22 11:34:31','2019-12-22 11:34:31','legacy'),(28,'2019-12-22 11:34:31','2019-12-22 11:34:31','surveys'),(29,'2019-12-22 11:34:31','2019-12-22 11:34:31','logs'),(30,'2019-12-22 11:34:31','2019-12-22 11:34:31','page_changes'),(31,'2019-12-22 11:34:31','2019-12-22 11:34:31','pages'),(32,'2019-12-22 11:34:31','2019-12-22 11:34:31','themes'),(33,'2019-12-22 11:34:31','2019-12-22 11:34:31','inspect'),(34,'2019-12-22 11:34:31','2019-12-22 11:34:31','types'),(35,'2019-12-22 11:34:31','2019-12-22 11:34:31','organize'),(36,'2019-12-22 11:34:31','2019-12-22 11:34:31','add'),(37,'2019-12-22 11:34:31','2019-12-22 11:34:31','form'),(38,'2019-12-22 11:34:31','2019-12-22 11:34:31','output'),(39,'2019-12-22 11:34:31','2019-12-22 11:34:32','attributes'),(40,'2019-12-22 11:34:32','2019-12-22 11:34:32','permissions'),(41,'2019-12-22 11:34:32','2019-12-22 11:34:32','templates'),(42,'2019-12-22 11:34:32','2019-12-22 11:34:32','add'),(43,'2019-12-22 11:34:32','2019-12-22 11:34:32','attributes'),(44,'2019-12-22 11:34:32','2019-12-22 11:34:32','single'),(45,'2019-12-22 11:34:32','2019-12-22 11:34:32','feeds'),(46,'2019-12-22 11:34:32','2019-12-22 11:34:32','calendar'),(47,'2019-12-22 11:34:32','2019-12-22 11:34:32','events'),(48,'2019-12-22 11:34:32','2019-12-22 11:34:32','event_list'),(49,'2019-12-22 11:34:32','2019-12-22 11:34:32','add'),(50,'2019-12-22 11:34:32','2019-12-22 11:34:32','permissions'),(51,'2019-12-22 11:34:32','2019-12-22 11:34:32','attributes'),(52,'2019-12-22 11:34:33','2019-12-22 11:34:33','conversations'),(53,'2019-12-22 11:34:33','2019-12-22 11:34:33','messages'),(54,'2019-12-22 11:34:33','2019-12-22 11:34:33','blocks'),(55,'2019-12-22 11:34:33','2019-12-22 11:34:33','stacks'),(56,'2019-12-22 11:34:33','2019-12-22 11:34:33','permissions'),(57,'2019-12-22 11:34:33','2019-12-22 11:34:33','list'),(58,'2019-12-22 11:34:33','2019-12-22 11:34:33','types'),(59,'2019-12-22 11:34:33','2019-12-22 11:34:33','extend'),(60,'2019-12-22 11:34:33','2019-12-22 11:34:33','install'),(61,'2019-12-22 11:34:33','2019-12-22 11:34:33','update'),(62,'2019-12-22 11:34:33','2019-12-22 11:34:33','connect'),(63,'2019-12-22 11:34:33','2019-12-22 11:34:33','themes'),(64,'2019-12-22 11:34:33','2019-12-22 11:34:33','addons'),(65,'2019-12-22 11:34:33','2019-12-22 11:34:33','system'),(66,'2019-12-22 11:34:34','2019-12-22 11:34:34','basics'),(67,'2019-12-22 11:34:34','2019-12-22 11:34:34','name'),(68,'2019-12-22 11:34:34','2019-12-22 11:34:34','accessibility'),(69,'2019-12-22 11:34:34','2019-12-22 11:34:34','social'),(70,'2019-12-22 11:34:34','2019-12-22 11:34:34','icons'),(71,'2019-12-22 11:34:34','2019-12-22 11:34:34','editor'),(72,'2019-12-22 11:34:34','2019-12-22 11:34:34','multilingual'),(73,'2019-12-22 11:34:34','2019-12-22 11:34:34','update'),(74,'2019-12-22 11:34:34','2019-12-22 11:34:34','timezone'),(75,'2019-12-22 11:34:34','2019-12-22 11:34:34','attributes'),(76,'2019-12-22 11:34:34','2019-12-22 11:34:34','reset_edit_mode'),(77,'2019-12-22 11:34:34','2019-12-22 11:34:34','express'),(78,'2019-12-22 11:34:34','2019-12-22 11:34:34','entities'),(79,'2019-12-22 11:34:34','2019-12-22 11:34:34','attributes'),(80,'2019-12-22 11:34:34','2019-12-22 11:34:34','associations'),(81,'2019-12-22 11:34:34','2019-12-22 11:34:34','forms'),(82,'2019-12-22 11:34:34','2019-12-22 11:34:35','customize_search'),(83,'2019-12-22 11:34:35','2019-12-22 11:34:35','order_entries'),(84,'2019-12-22 11:34:35','2019-12-22 11:34:35','entries'),(85,'2019-12-22 11:34:35','2019-12-22 11:34:35','multilingual'),(86,'2019-12-22 11:34:35','2019-12-22 11:34:35','setup'),(87,'2019-12-22 11:34:35','2019-12-22 11:34:35','copy'),(88,'2019-12-22 11:34:35','2019-12-22 11:34:35','page_report'),(89,'2019-12-22 11:34:35','2019-12-22 11:34:35','translate_interface'),(90,'2019-12-22 11:34:35','2019-12-22 11:34:35','seo'),(91,'2019-12-22 11:34:35','2019-12-22 11:34:35','urls'),(92,'2019-12-22 11:34:35','2019-12-22 11:34:35','bulk'),(93,'2019-12-22 11:34:35','2019-12-22 11:34:35','codes'),(94,'2019-12-22 11:34:35','2019-12-22 11:34:35','excluded'),(95,'2019-12-22 11:34:35','2019-12-22 11:34:35','searchindex'),(96,'2019-12-22 11:34:35','2019-12-22 11:34:35','files'),(97,'2019-12-22 11:34:35','2019-12-22 11:34:35','filetypes'),(98,'2019-12-22 11:34:35','2019-12-22 11:34:35','permissions'),(99,'2019-12-22 11:34:35','2019-12-22 11:34:35','thumbnails'),(100,'2019-12-22 11:34:35','2019-12-22 11:34:35','options'),(101,'2019-12-22 11:34:36','2019-12-22 11:34:36','image_uploading'),(102,'2019-12-22 11:34:36','2019-12-22 11:34:36','storage'),(103,'2019-12-22 11:34:36','2019-12-22 11:34:36','export_options'),(104,'2019-12-22 11:34:36','2019-12-22 11:34:36','optimization'),(105,'2019-12-22 11:34:36','2019-12-22 11:34:36','cache'),(106,'2019-12-22 11:34:36','2019-12-22 11:34:36','clearcache'),(107,'2019-12-22 11:34:36','2019-12-22 11:34:36','jobs'),(108,'2019-12-22 11:34:36','2019-12-22 11:34:36','query_log'),(109,'2019-12-22 11:34:36','2019-12-22 11:34:36','permissions'),(110,'2019-12-22 11:34:36','2019-12-22 11:34:36','site'),(111,'2019-12-22 11:34:36','2019-12-22 11:34:36','tasks'),(112,'2019-12-22 11:34:36','2019-12-22 11:34:36','users'),(113,'2019-12-22 11:34:36','2019-12-22 11:34:36','advanced'),(114,'2019-12-22 11:34:36','2019-12-22 11:34:36','workflows'),(115,'2019-12-22 11:34:36','2019-12-22 11:34:36','blacklist'),(116,'2019-12-22 11:34:36','2019-12-22 11:34:36','range'),(117,'2019-12-22 11:34:36','2019-12-22 11:34:36','captcha'),(118,'2019-12-22 11:34:36','2019-12-22 11:34:36','antispam'),(119,'2019-12-22 11:34:36','2019-12-22 11:34:36','maintenance'),(120,'2019-12-22 11:34:37','2019-12-22 11:34:37','trusted_proxies'),(121,'2019-12-22 11:34:37','2019-12-22 11:34:37','registration'),(122,'2019-12-22 11:34:37','2019-12-22 11:34:37','open'),(123,'2019-12-22 11:34:37','2019-12-22 11:34:37','postlogin'),(124,'2019-12-22 11:34:37','2019-12-22 11:34:37','profiles'),(125,'2019-12-22 11:34:37','2019-12-22 11:34:37','authentication'),(126,'2019-12-22 11:34:37','2019-12-22 11:34:37','global_password_reset'),(127,'2019-12-22 11:34:37','2019-12-22 11:34:37','notification'),(128,'2019-12-22 11:34:37','2019-12-22 11:34:37','deactivation'),(129,'2019-12-22 11:34:37','2019-12-22 11:34:37','automated_logout'),(130,'2019-12-22 11:34:37','2019-12-22 11:34:37','password_requirements'),(131,'2019-12-22 11:34:37','2019-12-22 11:34:37','mail'),(132,'2019-12-22 11:34:37','2019-12-22 11:34:37','method'),(133,'2019-12-22 11:34:37','2019-12-22 11:34:37','test'),(134,'2019-12-22 11:34:37','2019-12-22 11:34:37','importers'),(135,'2019-12-22 11:34:37','2019-12-22 11:34:37','addresses'),(136,'2019-12-22 11:34:37','2019-12-22 11:34:38','calendar'),(137,'2019-12-22 11:34:38','2019-12-22 11:34:38','settings'),(138,'2019-12-22 11:34:38','2019-12-22 11:34:38','colors'),(139,'2019-12-22 11:34:38','2019-12-22 11:34:38','permissions'),(140,'2019-12-22 11:34:38','2019-12-22 11:34:38','import'),(141,'2019-12-22 11:34:38','2019-12-22 11:34:38','conversations'),(142,'2019-12-22 11:34:38','2019-12-22 11:34:38','settings'),(143,'2019-12-22 11:34:38','2019-12-22 11:34:38','points'),(144,'2019-12-22 11:34:38','2019-12-22 11:34:38','bannedwords'),(145,'2019-12-22 11:34:38','2019-12-22 11:34:38','permissions'),(146,'2019-12-22 11:34:38','2019-12-22 11:34:38','attributes'),(147,'2019-12-22 11:34:38','2019-12-22 11:34:38','types'),(148,'2019-12-22 11:34:38','2019-12-22 11:34:38','sets'),(149,'2019-12-22 11:34:38','2019-12-22 11:34:38','topics'),(150,'2019-12-22 11:34:38','2019-12-22 11:34:38','add'),(151,'2019-12-22 11:34:38','2019-12-22 11:34:38','environment'),(152,'2019-12-22 11:34:38','2019-12-22 11:34:38','info'),(153,'2019-12-22 11:34:38','2019-12-22 11:34:38','debug'),(154,'2019-12-22 11:34:38','2019-12-22 11:34:39','logging'),(155,'2019-12-22 11:34:39','2019-12-22 11:34:39','proxy'),(156,'2019-12-22 11:34:39','2019-12-22 11:34:39','entities'),(157,'2019-12-22 11:34:39','2019-12-22 11:34:39','database_charset'),(158,'2019-12-22 11:34:39','2019-12-22 11:34:39','geolocation'),(159,'2019-12-22 11:34:39','2019-12-22 11:34:39','update'),(160,'2019-12-22 11:34:39','2019-12-22 11:34:39','update'),(161,'2019-12-22 11:34:39','2019-12-22 11:34:39','api'),(162,'2019-12-22 11:34:39','2019-12-22 11:34:39','settings'),(163,'2019-12-22 11:34:39','2019-12-22 11:34:39','integrations'),(164,'2019-12-22 11:34:39','2019-12-22 11:34:39','welcome'),(165,'2019-12-22 11:34:39','2019-12-22 11:34:40','me'),(166,'2019-12-22 11:34:48','2019-12-22 11:34:48','!stacks'),(167,'2019-12-22 11:34:48','2019-12-22 11:34:48','page_not_found'),(168,'2019-12-22 11:34:48','2019-12-22 11:34:48','!trash'),(169,'2019-12-22 11:34:48','2019-12-22 11:34:48','login'),(170,'2019-12-22 11:34:48','2019-12-22 11:34:48','register'),(171,'2019-12-22 11:34:48','2019-12-22 11:34:48','account'),(172,'2019-12-22 11:34:49','2019-12-22 11:34:49','edit_profile'),(173,'2019-12-22 11:34:49','2019-12-22 11:34:49','avatar'),(174,'2019-12-22 11:34:49','2019-12-22 11:34:49','messages'),(175,'2019-12-22 11:34:49','2019-12-22 11:34:49','page_forbidden'),(176,'2019-12-22 11:34:49','2019-12-22 11:34:49','download_file'),(177,'2019-12-22 11:34:49','2019-12-22 11:34:49','!drafts'),(178,'2019-12-22 11:34:49','2019-12-22 11:34:49','desktop'),(179,'2019-12-22 11:34:58','2019-12-22 11:34:58',NULL),(185,'2019-12-22 12:04:34','2019-12-22 13:39:41',''),(186,'2019-12-22 12:05:10','2019-12-22 12:05:10',NULL),(187,'2019-12-22 12:11:25','2019-12-22 12:11:25','block_builder'),(188,'2019-12-22 12:36:11','2019-12-22 12:45:05',''),(189,'2019-12-22 13:21:09','2019-12-22 13:21:09',NULL),(191,'2019-12-22 13:41:33','2019-12-22 13:43:12',NULL),(192,'2019-12-22 13:43:26','2019-12-22 13:48:02',NULL),(193,'2019-12-22 15:16:53','2019-12-22 15:22:39',NULL),(194,'2019-12-22 15:29:52','2019-12-22 15:33:02','header-area'),(195,'2019-12-22 15:31:32','2019-12-22 15:33:02','footer-area');
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionsearchindexattributes`
--

DROP TABLE IF EXISTS `collectionsearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionsearchindexattributes` (
  `cID` int(10) unsigned NOT NULL,
  `ak_meta_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ak_meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ak_meta_keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ak_desktop_priority` decimal(14,4) DEFAULT 0.0000,
  `ak_is_desktop` tinyint(1) DEFAULT 0,
  `ak_icon_dashboard` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ak_exclude_nav` tinyint(1) DEFAULT 0,
  `ak_exclude_page_list` tinyint(1) DEFAULT 0,
  `ak_header_extra_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ak_tags` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT 0,
  `ak_exclude_search_index` tinyint(1) DEFAULT 0,
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT 0,
  `ak_category_selection` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  CONSTRAINT `FK_FD84E56FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `collections` (`cID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionsearchindexattributes`
--

LOCK TABLES `collectionsearchindexattributes` WRITE;
/*!40000 ALTER TABLE `collectionsearchindexattributes` DISABLE KEYS */;
INSERT INTO `collectionsearchindexattributes` VALUES (2,NULL,NULL,NULL,0.0000,0,'fa fa-th-large',0,0,NULL,NULL,0,0,0,NULL),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(10,NULL,NULL,'files, category, categories',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(11,NULL,NULL,'new file set',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(14,NULL,NULL,'user, group, people, permissions, expire, badges',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(15,NULL,NULL,'user attributes, user data, gather data, registration data',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(16,NULL,NULL,'new user, create',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(17,NULL,NULL,'new user group, new group, group, create',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(19,NULL,NULL,'group set',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(20,NULL,NULL,'community, points, karma',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(22,NULL,NULL,'action, community actions',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(25,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(26,NULL,NULL,'forms, questions, response, data',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(27,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(28,NULL,NULL,'questions, quiz, response',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(29,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(30,NULL,NULL,'changes, csv, report',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(32,NULL,NULL,'new theme, theme, active theme, change theme, template, css',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(33,NULL,NULL,'page types',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(35,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(36,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(37,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(38,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(39,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(40,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(42,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(43,NULL,NULL,'page attributes, custom',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(44,NULL,NULL,'single, page, custom, application',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(45,NULL,NULL,'atom, rss, feed, syndication',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(48,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(50,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(53,NULL,NULL,NULL,0.0000,0,'icon-bullhorn',0,0,NULL,NULL,0,0,0,NULL),(55,NULL,NULL,'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(57,NULL,NULL,'edit stacks, view stacks, all stacks',0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(58,NULL,NULL,'block, refresh, custom',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(59,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(60,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(61,NULL,NULL,'update, upgrade',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(62,NULL,NULL,'concrete5.org, my account, marketplace',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(63,NULL,NULL,'buy theme, new theme, marketplace, template',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(64,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(65,NULL,NULL,'dashboard, configuration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(67,NULL,NULL,'website name, title',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(68,NULL,NULL,'accessibility, easy mode',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(69,NULL,NULL,'sharing, facebook, twitter',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(70,NULL,NULL,'logo, favicon, iphone, icon, bookmark',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(71,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(72,NULL,NULL,'translate, translation, internationalization, multilingual',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(73,NULL,NULL,'languages, update, gettext, translation, translate',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(74,NULL,NULL,'timezone, profile, locale',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(75,NULL,NULL,'site attributes',0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(76,NULL,NULL,'checkin, check-in, check, force',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(79,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(80,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(81,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(82,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(83,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(85,NULL,NULL,'multilingual, localization, internationalization, i18n',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(91,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(92,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(93,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(94,NULL,NULL,'pretty, slug',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(95,NULL,NULL,'configure search, site search, search option',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(97,NULL,NULL,'security, files, media, extension, manager, upload',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(98,NULL,NULL,'file options, file manager, upload, modify',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(99,NULL,NULL,'images, picture, responsive, retina',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(100,NULL,NULL,'thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency',0.0000,0,NULL,1,0,NULL,NULL,0,0,0,NULL),(101,NULL,NULL,'uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(102,NULL,NULL,'security, alternate storage, hide files',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(103,NULL,NULL,'files, export, csv, bom, encoding',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(105,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(106,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(107,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(108,NULL,NULL,'queries, database, mysql',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(110,NULL,NULL,'editors, hide site, offline, private, public, access',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(111,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(115,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(116,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(117,NULL,NULL,'security, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(118,NULL,NULL,'antispam, block spam, security',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(119,NULL,NULL,'lock site, under construction, hide, hidden',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(120,NULL,NULL,'trusted, proxy, proxies, ip, header, cloudflare',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(122,NULL,NULL,'signup, new user, community, public registration, public, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(123,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(124,NULL,NULL,'member profile, member page, community, forums, social, avatar',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(125,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(126,NULL,NULL,'global, password, reset, change password, force, sign out',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(129,NULL,NULL,'login, logout, user, agent, ip, change, security, session, invalidation, invalid',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(130,NULL,NULL,'password, requirements, code, key, login, registration, security, nist',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(131,NULL,NULL,'smtp, mail settings',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(132,NULL,NULL,'email server, mail settings, mail configuration, external, internal',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(133,NULL,NULL,'test smtp, test mail',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(134,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(135,NULL,NULL,'mail settings, mail configuration, email, sender',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(141,NULL,NULL,'conversations',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(142,NULL,NULL,'conversations',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(143,NULL,NULL,'conversations ratings, ratings, community, community points',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(144,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(146,NULL,NULL,'attribute configuration',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(147,NULL,NULL,'attributes, types',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(148,NULL,NULL,'attributes, sets',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(149,NULL,NULL,'topics, tags, taxonomy',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(151,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,1,0,NULL),(152,NULL,NULL,'overrides, system info, debug, support, help',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(153,NULL,NULL,'errors, exceptions, develop, support, help',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(154,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(155,NULL,NULL,'network, proxy server',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(156,NULL,NULL,'database, entities, doctrine, orm',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(157,NULL,NULL,'database, character set, charset, collation, utf8',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(158,NULL,NULL,'geolocation, ip, address, country, nation, place, locate',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(160,NULL,NULL,'upgrade, new version, update',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(162,NULL,NULL,'API, programming, public, app',0.0000,0,NULL,0,0,NULL,NULL,0,0,0,NULL),(163,NULL,NULL,NULL,0.0000,0,NULL,1,0,NULL,NULL,0,1,0,NULL),(164,NULL,NULL,NULL,2.0000,1,NULL,0,0,NULL,NULL,0,0,0,NULL),(166,NULL,NULL,NULL,0.0000,0,'fa fa-th',0,0,NULL,NULL,0,0,0,NULL),(168,NULL,NULL,NULL,0.0000,0,'fa fa-trash-o',0,0,NULL,NULL,0,0,0,NULL),(171,NULL,NULL,NULL,0.0000,0,'fa fa-briefcase',0,0,NULL,NULL,0,0,0,NULL),(177,NULL,NULL,NULL,0.0000,0,'fa fa-edit',0,0,NULL,NULL,0,0,0,NULL),(178,NULL,NULL,NULL,1.0000,1,NULL,1,0,NULL,NULL,0,0,0,NULL),(185,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'\nAnimals\nPlants\n'),(191,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'\nAnimals\n'),(192,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'\nCars\n'),(193,NULL,NULL,NULL,0.0000,0,NULL,0,0,NULL,NULL,0,0,0,'\nPlants\n');
/*!40000 ALTER TABLE `collectionsearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionareastyles`
--

DROP TABLE IF EXISTS `collectionversionareastyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionareastyles`
--

LOCK TABLES `collectionversionareastyles` WRITE;
/*!40000 ALTER TABLE `collectionversionareastyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionareastyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblocks`
--

DROP TABLE IF EXISTS `collectionversionblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbRelationID` int(10) unsigned DEFAULT 0,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `isOriginal` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT 0,
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT 0,
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`),
  KEY `cbRelationID` (`cbRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblocks`
--

LOCK TABLES `collectionversionblocks` WRITE;
/*!40000 ALTER TABLE `collectionversionblocks` DISABLE KEYS */;
INSERT INTO `collectionversionblocks` VALUES (1,2,23,'Default page content',23,0,1,0,0,0,0,0),(1,3,32,'Default page content',28,0,1,0,0,0,0,0),(1,4,32,'Default page content',28,0,0,0,0,0,0,0),(1,4,42,'Default page content',34,1,1,0,0,0,0,0),(1,5,32,'Default page content',28,0,0,0,0,0,0,0),(1,5,42,'Default page content',34,1,0,0,0,0,0,0),(1,6,32,'Default page content',28,0,0,0,0,0,0,0),(1,6,42,'Default page content',34,1,0,0,0,0,0,0),(164,1,1,'Main',1,0,1,0,0,0,0,0),(164,1,2,'Main',2,1,1,0,0,0,0,0),(164,1,3,'Main : 1',3,0,1,0,0,0,0,0),(164,1,4,'Main : 2',4,0,1,0,0,0,0,0),(164,1,5,'Main : 3',5,0,1,0,0,0,0,0),(164,1,6,'Main',6,2,1,0,0,0,0,0),(164,1,7,'Main : 4',7,0,1,0,0,0,0,0),(164,1,8,'Main : 5',8,0,1,0,0,0,0,0),(164,1,9,'Main',9,3,1,0,0,0,0,0),(164,1,10,'Main : 6',10,0,1,0,0,0,0,0),(164,1,11,'Main : 7',11,0,1,0,0,0,0,0),(164,1,12,'Main : 8',12,0,1,0,0,0,0,0),(164,1,13,'Main',13,4,1,0,0,0,0,0),(165,1,14,'Main',14,0,1,0,0,0,0,0),(165,1,15,'Main : 9',15,0,1,0,0,0,0,0),(165,1,16,'Main',16,1,1,0,0,0,0,0),(165,1,17,'Main : 10',17,0,1,0,0,0,0,0),(178,1,18,'Main',18,0,1,0,0,0,0,0),(178,1,19,'Main : 11',19,0,1,0,0,0,0,0),(178,1,20,'Main',20,1,1,0,0,0,0,0),(178,1,21,'Main : 12',21,0,1,0,0,0,0,0),(179,1,22,'Main',22,0,1,0,0,0,0,0),(185,1,27,'Main',24,0,1,0,0,0,0,0),(185,2,27,'Main',24,0,0,0,0,0,0,0),(185,2,28,'Full width header area',25,0,1,0,0,0,0,0),(185,2,29,'Left side content area',26,0,1,0,0,0,0,0),(185,2,30,'Widget area',27,0,1,0,0,0,0,0),(185,3,27,'Main',24,0,0,0,0,0,0,0),(185,3,29,'Left side content area',26,0,0,0,0,0,0,0),(185,3,30,'Widget area',27,0,0,0,0,0,0,0),(185,3,39,'Full width header area',32,0,1,0,0,0,0,0),(185,4,27,'Main',24,0,0,0,0,0,0,0),(185,4,30,'Widget area',27,0,0,0,0,0,0,0),(185,4,39,'Full width header area',32,0,0,0,0,0,0,0),(185,4,41,'Left side content area',33,0,1,0,0,0,0,0),(185,5,27,'Main',24,0,0,0,0,0,0,0),(185,5,30,'Widget area',27,0,0,0,0,0,0,0),(185,5,39,'Full width header area',32,0,0,0,0,0,0,0),(185,5,41,'Left side content area',33,0,0,0,0,0,0,0),(185,6,27,'Main',24,0,0,0,0,0,0,0),(185,6,30,'Widget area',27,0,0,0,0,0,0,0),(185,6,39,'Full width header area',32,0,0,0,0,0,0,0),(185,6,41,'Left side content area',33,0,0,0,0,0,0,0),(185,7,27,'Main',24,0,0,0,0,0,0,0),(185,7,30,'Widget area',27,0,0,0,0,0,0,0),(185,7,39,'Full width header area',32,0,0,0,0,0,0,0),(185,7,41,'Left side content area',33,0,0,0,0,0,0,0),(185,8,27,'Main',24,0,0,0,0,0,0,0),(185,8,30,'Widget area',27,0,0,0,0,0,0,0),(185,8,39,'Full width header area',32,0,0,0,0,0,0,0),(185,8,41,'Left side content area',33,0,0,0,0,0,0,0),(188,1,35,'Main',29,0,1,0,0,0,0,0),(188,2,35,'Main',29,0,0,0,0,0,0,0),(188,2,36,'Default page content',30,0,1,0,0,0,0,0),(188,3,35,'Main',29,0,0,0,0,0,0,0),(188,3,36,'Default page content',30,0,0,0,0,0,0,0),(188,3,37,'Default page content',31,1,1,0,0,0,0,0),(191,1,27,'Main',24,0,0,0,0,0,0,0),(191,2,27,'Main',24,0,0,0,0,0,0,0),(191,2,28,'Full width header area',25,0,0,0,0,0,0,0),(191,2,29,'Left side content area',26,0,0,0,0,0,0,0),(191,2,30,'Widget area',27,0,0,0,0,0,0,0),(191,3,27,'Main',24,0,0,0,0,0,0,0),(191,3,29,'Left side content area',26,0,0,0,0,0,0,0),(191,3,30,'Widget area',27,0,0,0,0,0,0,0),(191,3,39,'Full width header area',32,0,0,0,0,0,0,0),(191,4,27,'Main',24,0,0,0,0,0,0,0),(191,4,30,'Widget area',27,0,0,0,0,0,0,0),(191,4,39,'Full width header area',32,0,0,0,0,0,0,0),(191,4,41,'Left side content area',33,0,0,0,0,0,0,0),(191,5,27,'Main',24,0,0,0,0,0,0,0),(191,5,30,'Widget area',27,0,0,0,0,0,0,0),(191,5,39,'Full width header area',32,0,0,0,0,0,0,0),(191,5,41,'Left side content area',33,0,0,0,0,0,0,0),(191,6,27,'Main',24,0,0,0,0,0,0,0),(191,6,30,'Widget area',27,0,0,0,0,0,0,0),(191,6,39,'Full width header area',32,0,0,0,0,0,0,0),(191,6,41,'Left side content area',33,0,0,0,0,0,0,0),(191,7,27,'Main',24,0,0,0,0,0,0,0),(191,7,30,'Widget area',27,0,0,0,0,0,0,0),(191,7,39,'Full width header area',32,0,0,0,0,0,0,0),(191,7,41,'Left side content area',33,0,0,0,0,0,0,0),(191,8,27,'Main',24,0,0,0,0,0,0,0),(191,8,30,'Widget area',27,0,0,0,0,0,0,0),(191,8,39,'Full width header area',32,0,0,0,0,0,0,0),(191,8,41,'Left side content area',33,0,0,0,0,0,0,0),(191,9,27,'Main',24,0,0,0,0,0,0,0),(191,9,30,'Widget area',27,0,0,0,0,0,0,0),(191,9,39,'Full width header area',32,0,0,0,0,0,0,0),(191,9,41,'Left side content area',33,0,0,0,0,0,0,0),(191,10,27,'Main',24,0,0,0,0,0,0,0),(191,10,30,'Widget area',27,0,0,0,0,0,0,0),(191,10,41,'Left side content area',33,0,0,0,0,0,0,0),(191,10,43,'Full width header area',32,0,1,0,0,0,0,0),(192,1,27,'Main',24,0,0,0,0,0,0,0),(192,2,27,'Main',24,0,0,0,0,0,0,0),(192,2,28,'Full width header area',25,0,0,0,0,0,0,0),(192,2,29,'Left side content area',26,0,0,0,0,0,0,0),(192,2,30,'Widget area',27,0,0,0,0,0,0,0),(192,3,27,'Main',24,0,0,0,0,0,0,0),(192,3,29,'Left side content area',26,0,0,0,0,0,0,0),(192,3,30,'Widget area',27,0,0,0,0,0,0,0),(192,3,39,'Full width header area',32,0,0,0,0,0,0,0),(192,4,27,'Main',24,0,0,0,0,0,0,0),(192,4,30,'Widget area',27,0,0,0,0,0,0,0),(192,4,39,'Full width header area',32,0,0,0,0,0,0,0),(192,4,41,'Left side content area',33,0,0,0,0,0,0,0),(192,5,27,'Main',24,0,0,0,0,0,0,0),(192,5,30,'Widget area',27,0,0,0,0,0,0,0),(192,5,39,'Full width header area',32,0,0,0,0,0,0,0),(192,5,41,'Left side content area',33,0,0,0,0,0,0,0),(192,6,27,'Main',24,0,0,0,0,0,0,0),(192,6,30,'Widget area',27,0,0,0,0,0,0,0),(192,6,39,'Full width header area',32,0,0,0,0,0,0,0),(192,6,41,'Left side content area',33,0,0,0,0,0,0,0),(192,7,27,'Main',24,0,0,0,0,0,0,0),(192,7,30,'Widget area',27,0,0,0,0,0,0,0),(192,7,39,'Full width header area',32,0,0,0,0,0,0,0),(192,7,41,'Left side content area',33,0,0,0,0,0,0,0),(192,8,27,'Main',24,0,0,0,0,0,0,0),(192,8,30,'Widget area',27,0,0,0,0,0,0,0),(192,8,39,'Full width header area',32,0,0,0,0,0,0,0),(192,8,41,'Left side content area',33,0,0,0,0,0,0,0),(192,9,27,'Main',24,0,0,0,0,0,0,0),(192,9,30,'Widget area',27,0,0,0,0,0,0,0),(192,9,41,'Left side content area',33,0,0,0,0,0,0,0),(192,9,44,'Full width header area',32,0,1,0,0,0,0,0),(192,10,27,'Main',24,0,0,0,0,0,0,0),(192,10,41,'Left side content area',33,0,0,0,0,0,0,0),(192,10,44,'Full width header area',32,0,0,0,0,0,0,0),(192,10,46,'Widget area',35,0,1,0,0,0,0,0),(193,1,27,'Main',24,0,0,0,0,0,0,0),(193,2,27,'Main',24,0,0,0,0,0,0,0),(193,2,28,'Full width header area',25,0,0,0,0,0,0,0),(193,2,29,'Left side content area',26,0,0,0,0,0,0,0),(193,2,30,'Widget area',27,0,0,0,0,0,0,0),(193,3,27,'Main',24,0,0,0,0,0,0,0),(193,3,29,'Left side content area',26,0,0,0,0,0,0,0),(193,3,30,'Widget area',27,0,0,0,0,0,0,0),(193,3,39,'Full width header area',32,0,0,0,0,0,0,0),(193,4,27,'Main',24,0,0,0,0,0,0,0),(193,4,30,'Widget area',27,0,0,0,0,0,0,0),(193,4,39,'Full width header area',32,0,0,0,0,0,0,0),(193,4,41,'Left side content area',33,0,0,0,0,0,0,0),(193,5,27,'Main',24,0,0,0,0,0,0,0),(193,5,30,'Widget area',27,0,0,0,0,0,0,0),(193,5,39,'Full width header area',32,0,0,0,0,0,0,0),(193,5,41,'Left side content area',33,0,0,0,0,0,0,0),(193,6,27,'Main',24,0,0,0,0,0,0,0),(193,6,30,'Widget area',27,0,0,0,0,0,0,0),(193,6,39,'Full width header area',32,0,0,0,0,0,0,0),(193,6,41,'Left side content area',33,0,0,0,0,0,0,0),(193,7,27,'Main',24,0,0,0,0,0,0,0),(193,7,30,'Widget area',27,0,0,0,0,0,0,0),(193,7,39,'Full width header area',32,0,0,0,0,0,0,0),(193,7,41,'Left side content area',33,0,0,0,0,0,0,0),(193,8,27,'Main',24,0,0,0,0,0,0,0),(193,8,30,'Widget area',27,0,0,0,0,0,0,0),(193,8,39,'Full width header area',32,0,0,0,0,0,0,0),(193,8,41,'Left side content area',33,0,0,0,0,0,0,0),(193,9,27,'Main',24,0,0,0,0,0,0,0),(193,9,30,'Widget area',27,0,0,0,0,0,0,0),(193,9,41,'Left side content area',33,0,0,0,0,0,0,0),(193,9,47,'Full width header area',32,0,1,0,0,0,0,0),(193,10,27,'Main',24,0,0,0,0,0,0,0),(193,10,30,'Widget area',27,0,0,0,0,0,0,0),(193,10,41,'Left side content area',33,0,0,0,0,0,0,0),(193,10,47,'Full width header area',32,0,0,0,0,0,0,0),(194,2,48,'Main',36,0,1,0,0,0,0,0),(194,3,48,'Main',36,0,0,0,0,0,0,0),(194,3,50,'Main',38,1,1,0,0,0,0,0),(194,4,50,'Main',38,1,0,0,0,0,0,0),(195,2,49,'Main',37,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `collectionversionblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblockscachesettings`
--

DROP TABLE IF EXISTS `collectionversionblockscachesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblockscachesettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblockscachesettings`
--

LOCK TABLES `collectionversionblockscachesettings` WRITE;
/*!40000 ALTER TABLE `collectionversionblockscachesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionblockscachesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblocksoutputcache`
--

DROP TABLE IF EXISTS `collectionversionblocksoutputcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblocksoutputcache`
--

LOCK TABLES `collectionversionblocksoutputcache` WRITE;
/*!40000 ALTER TABLE `collectionversionblocksoutputcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionblocksoutputcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionblockstyles`
--

DROP TABLE IF EXISTS `collectionversionblockstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionblockstyles`
--

LOCK TABLES `collectionversionblockstyles` WRITE;
/*!40000 ALTER TABLE `collectionversionblockstyles` DISABLE KEYS */;
INSERT INTO `collectionversionblockstyles` VALUES (164,1,13,'Main',1);
/*!40000 ALTER TABLE `collectionversionblockstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionfeatureassignments`
--

DROP TABLE IF EXISTS `collectionversionfeatureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `faID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionfeatureassignments`
--

LOCK TABLES `collectionversionfeatureassignments` WRITE;
/*!40000 ALTER TABLE `collectionversionfeatureassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionfeatureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionrelatededits`
--

DROP TABLE IF EXISTS `collectionversionrelatededits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `cRelationID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionrelatededits`
--

LOCK TABLES `collectionversionrelatededits` WRITE;
/*!40000 ALTER TABLE `collectionversionrelatededits` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionrelatededits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversions`
--

DROP TABLE IF EXISTS `collectionversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `cvName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT 0,
  `cvIsNew` tinyint(1) NOT NULL DEFAULT 0,
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  `cvPublishEndDate` datetime DEFAULT NULL,
  `cvDateApproved` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversions`
--

LOCK TABLES `collectionversions` WRITE;
/*!40000 ALTER TABLE `collectionversions` DISABLE KEYS */;
INSERT INTO `collectionversions` VALUES (1,1,'Home','',NULL,'2019-12-22 11:32:16','2019-12-22 11:32:16','Initial Version',0,0,1,NULL,2,4,NULL,NULL,NULL,NULL),(1,2,'Home','',NULL,'2019-12-22 11:32:16','2019-12-22 12:02:16','Version 2',0,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 12:02:21'),(1,3,'Home','',NULL,'2019-12-22 11:32:16','2019-12-22 12:31:41','Version 3',0,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 12:32:56'),(1,4,'Home','',NULL,'2019-12-22 11:32:16','2019-12-22 13:28:16','Version 4',0,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 13:40:39'),(1,5,'Home','',NULL,'2019-12-22 11:32:16','2019-12-22 15:30:17','Version 5',0,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 15:30:24'),(1,6,'Home','',NULL,'2019-12-22 11:32:16','2019-12-22 15:32:02','Version 6',1,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 15:33:02'),(2,1,'Dashboard','dashboard','','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(4,1,'Full Sitemap','full','','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(5,1,'Flat View','explore','','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(6,1,'Page Search','search','','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(7,1,'Files','files','All documents and images.','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(8,1,'File Manager','search','','2019-12-22 11:34:29','2019-12-22 11:34:29','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(9,1,'Attributes','attributes','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(10,1,'File Sets','sets','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(11,1,'Add File Set','add_set','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(13,1,'Search Users','search','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(14,1,'User Groups','groups','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(15,1,'Attributes','attributes','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(16,1,'Add User','add','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(17,1,'Add Group','add_group','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(19,1,'Group Sets','group_sets','','2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(20,1,'Community Points','points',NULL,'2019-12-22 11:34:30','2019-12-22 11:34:30','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(21,1,'Assign Points','assign',NULL,'2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(22,1,'Actions','actions',NULL,'2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(23,1,'Express','express','Express Data Objects','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(24,1,'View Entries','entries','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(25,1,'Reports','reports','Get data from forms and logs.','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(26,1,'Form Results','forms','Get submission data.','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(27,1,'Form Results','legacy','Get submission data.','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(28,1,'Surveys','surveys','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(29,1,'Logs','logs','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(30,1,'Page Changes','page_changes','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(31,1,'Pages & Themes','pages','Reskin your site.','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(32,1,'Themes','themes','Reskin your site.','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(33,1,'Inspect','inspect','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(34,1,'Page Types','types','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(35,1,'Organize Page Type Order','organize','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(36,1,'Add Page Type','add','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(37,1,'Compose Form','form','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(38,1,'Defaults and Output','output','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(39,1,'Page Type Attributes','attributes','','2019-12-22 11:34:31','2019-12-22 11:34:31','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(40,1,'Page Type Permissions','permissions','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(41,1,'Page Templates','templates','Form factors for pages in your site.','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(42,1,'Add Page Template','add','Add page templates to your site.','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(43,1,'Attributes','attributes','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(44,1,'Single Pages','single','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(45,1,'RSS Feeds','feeds','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(46,1,'Calendar & Events','calendar','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(47,1,'View Calendar','events','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(48,1,'Event List','event_list','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(49,1,'Add Calendar','add','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(50,1,'Permissions','permissions','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(51,1,'Attributes','attributes','','2019-12-22 11:34:32','2019-12-22 11:34:32','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(52,1,'Conversations','conversations','','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(53,1,'Messages','messages','','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(54,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(55,1,'Stacks & Global Areas','stacks','Share content across your site.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(56,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(57,1,'Stack List','list','','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(58,1,'Block Types','types','Manage the installed block types in your site.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(59,1,'Extend concrete5','extend','','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(60,1,'Add Functionality','install','Install add-ons & themes.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(61,1,'Update Add-Ons','update','Update your installed packages.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(62,1,'Connect to the Community','connect','Connect to the concrete5 community.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(63,1,'Get More Themes','themes','Download themes from concrete5.org.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(64,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(65,1,'System & Settings','system','Secure and setup your site.','2019-12-22 11:34:33','2019-12-22 11:34:33','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(66,1,'Basics','basics','Basic information about your website.','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(67,1,'Name & Attributes','name','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(68,1,'Accessibility','accessibility','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(69,1,'Social Links','social','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(70,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(71,1,'Rich Text Editor','editor','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(72,1,'Languages','multilingual','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(73,1,'Update Languages','update','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(74,1,'Time Zone','timezone','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(75,1,'Custom Attributes','attributes','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(76,1,'Reset Edit Mode','reset_edit_mode','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(77,1,'Express','express','Express','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(78,1,'Data Objects','entities','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(79,1,'Attributes','attributes','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(80,1,'Associations','associations','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(81,1,'Forms','forms','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(82,1,'Customize Search','customize_search','','2019-12-22 11:34:34','2019-12-22 11:34:34','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(83,1,'Update Entry Display Order','order_entries','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(84,1,'Custom Entry Locations','entries','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(85,1,'Multilingual','multilingual','Run your site in multiple languages.','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(86,1,'Multilingual Setup','setup','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(87,1,'Copy Languages','copy','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(88,1,'Page Report','page_report','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(89,1,'Translate Site Interface','translate_interface','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(90,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(91,1,'URLs and Redirection','urls','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(92,1,'Bulk SEO Updater','bulk','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(93,1,'Tracking Codes','codes','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(94,1,'Excluded URL Word List','excluded','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(95,1,'Search Index','searchindex','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(96,1,'Files','files','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(97,1,'Allowed File Types','filetypes','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(98,1,'File Manager Permissions','permissions','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(99,1,'Thumbnails','thumbnails','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(100,1,'Thumbnail Options','options','','2019-12-22 11:34:35','2019-12-22 11:34:35','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(101,1,'Image Options','image_uploading','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(102,1,'File Storage Locations','storage','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(103,1,'Export Options','export_options','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(104,1,'Optimization','optimization','Keep your site running well.','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(105,1,'Cache & Speed Settings','cache','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(106,1,'Clear Cache','clearcache','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(107,1,'Automated Jobs','jobs','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(108,1,'Database Query Log','query_log','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(109,1,'Permissions & Access','permissions','Control who sees and edits your site.','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(110,1,'Site Access','site','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(111,1,'Task Permissions','tasks','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(112,1,'User Permissions','users','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(113,1,'Advanced Permissions','advanced','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(114,1,'Workflows','workflows','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(115,1,'IP Blacklist','blacklist','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(116,1,'IP Range','range','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(117,1,'Captcha Setup','captcha','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(118,1,'Spam Control','antispam','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(119,1,'Maintenance Mode','maintenance','','2019-12-22 11:34:36','2019-12-22 11:34:36','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(120,1,'Trusted Proxies','trusted_proxies','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(121,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(122,1,'Account Options','open','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(123,1,'Login Destination','postlogin','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(124,1,'Public Profiles','profiles','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(125,1,'Authentication Types','authentication','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(126,1,'Global Password Reset','global_password_reset','Signs out all users, resets all passwords and forces users to choose a new one','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(127,1,'Notification Settings','notification','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(128,1,'User Deactivation Settings','deactivation','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(129,1,'Automated Logout','automated_logout','Automate when users are logged out, or do it manually','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(130,1,'Password Requirements','password_requirements','Set password rule and regulations.','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(131,1,'Email','mail','Control how your site send and processes mail.','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(132,1,'SMTP Method','method','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(133,1,'Test Mail Settings','test','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(134,1,'Email Importers','importers','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(135,1,'System Email Addresses','addresses','','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(136,1,'Calendar','calendar','Manage your calendar settings','2019-12-22 11:34:37','2019-12-22 11:34:37','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(137,1,'General Settings','settings','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(138,1,'Color Settings','colors','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(139,1,'Permissions','permissions','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(140,1,'Import Calendar Data','import','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(141,1,'Conversations','conversations','Manage your conversations settings','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(142,1,'Settings','settings','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(143,1,'Community Points','points','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(144,1,'Banned Words','bannedwords','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(145,1,'Conversation Permissions','permissions','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(146,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(147,1,'Types','types','Choose which attribute types are available for different items.','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(148,1,'Sets','sets','Group attributes into sets for easier organization','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(149,1,'Topics','topics','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(150,1,'Add Topic Tree','add','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(151,1,'Environment','environment','Advanced settings for web developers.','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(152,1,'Environment Information','info','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(153,1,'Debug Settings','debug','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(154,1,'Logging Settings','logging','','2019-12-22 11:34:38','2019-12-22 11:34:38','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(155,1,'Proxy Server','proxy','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(156,1,'Database Entities','entities','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(157,1,'Database Character Set','database_charset','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(158,1,'Geolocation','geolocation','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(159,1,'Update concrete5','update','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(160,1,'Apply Update','update','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(161,1,'API','api','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(162,1,'API Settings','settings','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(163,1,'API Integrations','integrations','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(164,1,'Welcome','welcome','','2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(165,1,'Waiting for Me','me',NULL,'2019-12-22 11:34:39','2019-12-22 11:34:39','Initial Version',1,0,1,NULL,2,2,NULL,NULL,NULL,NULL),(166,1,'Stacks','!stacks','','2019-12-22 11:34:48','2019-12-22 11:34:48','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(167,1,'Page Not Found','page_not_found','','2019-12-22 11:34:48','2019-12-22 11:34:48','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(168,1,'Trash','!trash','','2019-12-22 11:34:48','2019-12-22 11:34:48','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(169,1,'Login','login','','2019-12-22 11:34:48','2019-12-22 11:34:48','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(170,1,'Register','register','','2019-12-22 11:34:48','2019-12-22 11:34:48','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(171,1,'My Account','account','','2019-12-22 11:34:48','2019-12-22 11:34:48','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(172,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(173,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(174,1,'Private Messages','messages','Inbox for site-specific messages.','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(175,1,'Page Forbidden','page_forbidden','','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(176,1,'Download File','download_file','','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(177,1,'Drafts','!drafts','','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(178,1,'Welcome Back','desktop','','2019-12-22 11:34:49','2019-12-22 11:34:49','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(179,1,'',NULL,NULL,'2019-12-22 11:34:58','2019-12-22 11:34:58','Initial Version',1,0,NULL,NULL,0,4,NULL,NULL,NULL,NULL),(185,1,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 12:04:34','Initial Version',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 12:05:19'),(185,2,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 12:06:28','Version 2',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 12:07:09'),(185,3,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:09:23','Version 3',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:10:22'),(185,4,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:11:46','Version 4',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:12:33'),(185,5,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:17:22','New Version 5',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:17:22'),(185,6,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:19:31','New Version 6',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:19:54'),(185,7,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:21:06','Version 7',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:21:15'),(185,8,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:39:41','New Version 8',1,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:39:41'),(186,1,'',NULL,NULL,'2019-12-22 12:05:10','2019-12-22 12:05:10','Initial Version',1,0,NULL,NULL,0,5,NULL,NULL,NULL,NULL),(187,1,'Block Builder','block-builder',NULL,'2019-12-22 12:11:25','2019-12-22 12:11:25','Initial Version',1,0,1,NULL,0,0,NULL,NULL,NULL,NULL),(188,1,'About','about','','2019-12-22 12:36:11','2019-12-22 12:36:11','Initial Version',0,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 12:36:34'),(188,2,'About','about','','2019-12-22 12:36:11','2019-12-22 12:37:10','Version 2',0,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 12:37:16'),(188,3,'About','about','','2019-12-22 12:36:11','2019-12-22 12:44:56','Version 3',1,0,1,1,2,4,NULL,NULL,NULL,'2019-12-22 12:45:05'),(189,1,'',NULL,NULL,'2019-12-22 13:21:09','2019-12-22 13:21:09','Initial Version',1,0,NULL,NULL,0,5,NULL,NULL,NULL,NULL),(191,1,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:41:34','Initial Version',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,2,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:41:35','Version 2',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,3,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:41:36','Version 3',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,4,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:41:37','Version 4',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,5,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:41:38','New Version 5',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,6,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:41:39','New Version 6',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,7,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:41:40','Version 7',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,8,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:41:41','New Version 8',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(191,9,'My bird Alberto','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:42:01','New Version 9',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:42:01'),(191,10,'My bird Alberto','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:42:51','Version 10',1,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:42:56'),(192,1,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:43:27','Initial Version',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,2,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:43:28','Version 2',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,3,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:43:29','Version 3',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,4,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:43:30','Version 4',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,5,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 13:43:31','New Version 5',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,6,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:43:32','New Version 6',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,7,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:43:33','Version 7',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,8,'My dog leslie 2','blog-1-2','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:43:34','New Version 8',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(192,9,'My pretty yellow car','blog-1-2','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:44:01','New Version 9',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:44:15'),(192,10,'My pretty yellow car','blog-1-2','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 13:47:34','Version 10',1,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 13:48:02'),(193,1,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 15:16:54','Initial Version',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,2,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 15:16:55','Version 2',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,3,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 15:16:56','Version 3',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,4,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 15:16:57','Version 4',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,5,'Blog 1','blog-1','Lorem ipsum','2019-12-22 12:04:34','2019-12-22 15:16:58','New Version 5',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,6,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 15:16:59','New Version 6',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,7,'My dog leslie','blog-1','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 15:17:00','Version 7',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,8,'My dog leslie 2','blog-1-3','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 15:17:01','New Version 8',0,0,1,NULL,2,5,NULL,NULL,NULL,NULL),(193,9,'My cactus','blog-1-3','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 15:17:07','Version 9',0,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 15:17:31'),(193,10,'My cactus','blog-1-3','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','2019-12-22 12:04:34','2019-12-22 15:22:39','New Version 10',1,0,1,1,2,5,NULL,NULL,NULL,'2019-12-22 15:22:39'),(194,1,'Header area','header-area',NULL,'2019-12-22 15:29:52','2019-12-22 15:29:52','Initial Version',0,0,1,NULL,2,0,NULL,NULL,NULL,NULL),(194,2,'Header area','header-area',NULL,'2019-12-22 15:29:52','2019-12-22 15:30:16','New Version 2',0,0,1,1,2,0,NULL,NULL,NULL,'2019-12-22 15:30:24'),(194,3,'Header area','header-area',NULL,'2019-12-22 15:29:52','2019-12-22 15:32:49','New Version 3',0,0,1,1,2,0,NULL,NULL,NULL,'2019-12-22 15:33:02'),(194,4,'Header area','header-area',NULL,'2019-12-22 15:29:52','2019-12-22 15:32:58','New Version 4',1,0,1,1,2,0,NULL,NULL,NULL,'2019-12-22 15:33:02'),(195,1,'Footer area','footer-area',NULL,'2019-12-22 15:31:32','2019-12-22 15:31:32','Initial Version',0,0,1,NULL,2,0,NULL,NULL,NULL,NULL),(195,2,'Footer area','footer-area',NULL,'2019-12-22 15:31:32','2019-12-22 15:32:02','New Version 2',1,0,1,1,2,0,NULL,NULL,NULL,'2019-12-22 15:33:02');
/*!40000 ALTER TABLE `collectionversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionversionthemecustomstyles`
--

DROP TABLE IF EXISTS `collectionversionthemecustomstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectionversionthemecustomstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 1,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  `scvlID` int(10) unsigned DEFAULT 0,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionversionthemecustomstyles`
--

LOCK TABLES `collectionversionthemecustomstyles` WRITE;
/*!40000 ALTER TABLE `collectionversionthemecustomstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionthemecustomstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `configNamespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('','app','privacy_policy_accepted','1'),('','concrete','security.token.encryption','27cf6c800a1b91710f391fe22ad6d8a928f19b097189e038f1fca0ab571efb41'),('','concrete','security.token.jobs','162051d8b4b6da84a899e9a21e6510dc7ec0f07871c305740f0fde4aae75171c'),('','concrete','security.token.validation','7d4add668effe4b2fc265c9942caa4d781928044988076d81405130093ebd350');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configstore`
--

DROP TABLE IF EXISTS `configstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configstore` (
  `cfKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `cfValue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configstore`
--

LOCK TABLES `configstore` WRITE;
/*!40000 ALTER TABLE `configstore` DISABLE KEYS */;
INSERT INTO `configstore` VALUES ('MAIN_HELP_LAST_VIEWED','2019-12-22 10:35:17','1577010917',1,0);
/*!40000 ALTER TABLE `configstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationdiscussions`
--

DROP TABLE IF EXISTS `conversationdiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationdiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationdiscussions`
--

LOCK TABLES `conversationdiscussions` WRITE;
/*!40000 ALTER TABLE `conversationdiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationdiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationeditors`
--

DROP TABLE IF EXISTS `conversationeditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationeditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationeditors`
--

LOCK TABLES `conversationeditors` WRITE;
/*!40000 ALTER TABLE `conversationeditors` DISABLE KEYS */;
INSERT INTO `conversationeditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'rich_text','Rich Text',0,0);
/*!40000 ALTER TABLE `conversationeditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationfeaturedetailassignments`
--

DROP TABLE IF EXISTS `conversationfeaturedetailassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationfeaturedetailassignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationfeaturedetailassignments`
--

LOCK TABLES `conversationfeaturedetailassignments` WRITE;
/*!40000 ALTER TABLE `conversationfeaturedetailassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationfeaturedetailassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationflaggedmessages`
--

DROP TABLE IF EXISTS `conversationflaggedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationflaggedmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationflaggedmessages`
--

LOCK TABLES `conversationflaggedmessages` WRITE;
/*!40000 ALTER TABLE `conversationflaggedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationflaggedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationflaggedmessagetypes`
--

DROP TABLE IF EXISTS `conversationflaggedmessagetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationflaggedmessagetypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationflaggedmessagetypes`
--

LOCK TABLES `conversationflaggedmessagetypes` WRITE;
/*!40000 ALTER TABLE `conversationflaggedmessagetypes` DISABLE KEYS */;
INSERT INTO `conversationflaggedmessagetypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `conversationflaggedmessagetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessageattachments`
--

DROP TABLE IF EXISTS `conversationmessageattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessageattachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessageattachments`
--

LOCK TABLES `conversationmessageattachments` WRITE;
/*!40000 ALTER TABLE `conversationmessageattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessageattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessagenotifications`
--

DROP TABLE IF EXISTS `conversationmessagenotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessagenotifications` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessagenotifications`
--

LOCK TABLES `conversationmessagenotifications` WRITE;
/*!40000 ALTER TABLE `conversationmessagenotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessagenotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessageratings`
--

DROP TABLE IF EXISTS `conversationmessageratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessageratings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageRatingIP` tinyblob DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessageratings`
--

LOCK TABLES `conversationmessageratings` WRITE;
/*!40000 ALTER TABLE `conversationmessageratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessageratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationmessages`
--

DROP TABLE IF EXISTS `conversationmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageReview` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageAuthorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob DEFAULT NULL,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageBody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT 0,
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT 0,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationmessages`
--

LOCK TABLES `conversationmessages` WRITE;
/*!40000 ALTER TABLE `conversationmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationpermissionaddmessageaccesslist`
--

DROP TABLE IF EXISTS `conversationpermissionaddmessageaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationpermissionaddmessageaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationpermissionaddmessageaccesslist`
--

LOCK TABLES `conversationpermissionaddmessageaccesslist` WRITE;
/*!40000 ALTER TABLE `conversationpermissionaddmessageaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationpermissionaddmessageaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationpermissionassignments`
--

DROP TABLE IF EXISTS `conversationpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationpermissionassignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationpermissionassignments`
--

LOCK TABLES `conversationpermissionassignments` WRITE;
/*!40000 ALTER TABLE `conversationpermissionassignments` DISABLE KEYS */;
INSERT INTO `conversationpermissionassignments` VALUES (0,67,103),(0,68,104),(0,69,108),(0,70,106),(0,71,105),(0,72,107),(0,73,109),(0,74,110);
/*!40000 ALTER TABLE `conversationpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationratingtypes`
--

DROP TABLE IF EXISTS `conversationratingtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationratingtypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationratingtypes`
--

LOCK TABLES `conversationratingtypes` WRITE;
/*!40000 ALTER TABLE `conversationratingtypes` DISABLE KEYS */;
INSERT INTO `conversationratingtypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `conversationratingtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT 0,
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT 0,
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT 1,
  `cnvMessagesTotal` int(10) unsigned DEFAULT 0,
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT 0,
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `cnvMaxFilesGuest` int(11) DEFAULT 0,
  `cnvMaxFilesRegistered` int(11) DEFAULT 0,
  `cnvMaxFileSizeGuest` int(11) DEFAULT 0,
  `cnvMaxFileSizeRegistered` int(11) DEFAULT 0,
  `cnvFileExtensions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `cnvEnableSubscription` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationsubscriptions`
--

DROP TABLE IF EXISTS `conversationsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationsubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationsubscriptions`
--

LOCK TABLES `conversationsubscriptions` WRITE;
/*!40000 ALTER TABLE `conversationsubscriptions` DISABLE KEYS */;
INSERT INTO `conversationsubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `conversationsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadstatistics`
--

DROP TABLE IF EXISTS `downloadstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadstatistics`
--

LOCK TABLES `downloadstatistics` WRITE;
/*!40000 ALTER TABLE `downloadstatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadstatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressattributekeys`
--

DROP TABLE IF EXISTS `expressattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressattributekeys` (
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  KEY `IDX_8C881F181257D5D` (`entity_id`),
  CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `expressentities` (`id`),
  CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressattributekeys`
--

LOCK TABLES `expressattributekeys` WRITE;
/*!40000 ALTER TABLE `expressattributekeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressentities`
--

DROP TABLE IF EXISTS `expressentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressentities` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `default_edit_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_column_set` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `items_per_page` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  KEY `IDX_BC772AA6CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `expressforms` (`id`),
  CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `expressforms` (`id`),
  CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressentities`
--

LOCK TABLES `expressentities` WRITE;
/*!40000 ALTER TABLE `expressentities` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressentityassociationentries`
--

DROP TABLE IF EXISTS `expressentityassociationentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressentityassociationentries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` int(11) DEFAULT NULL,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `exEntryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9C2BB76C6DCB6296` (`exEntryID`),
  KEY `IDX_9C2BB76CEFB9C8A5` (`association_id`),
  CONSTRAINT `FK_9C2BB76C6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  CONSTRAINT `FK_9C2BB76CEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityentryassociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressentityassociationentries`
--

LOCK TABLES `expressentityassociationentries` WRITE;
/*!40000 ALTER TABLE `expressentityassociationentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressentityassociationentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressentityassociations`
--

DROP TABLE IF EXISTS `expressentityassociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressentityassociations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  KEY `IDX_98A0F796B5910F71` (`target_entity_id`),
  CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `expressentities` (`id`),
  CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `expressentities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressentityassociations`
--

LOCK TABLES `expressentityassociations` WRITE;
/*!40000 ALTER TABLE `expressentityassociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressentityassociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressentityentries`
--

DROP TABLE IF EXISTS `expressentityentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressentityentries` (
  `exEntryID` int(11) NOT NULL AUTO_INCREMENT,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryDateModified` datetime DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `exEntryEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`exEntryID`),
  KEY `IDX_B8AE3531FD71026C` (`uID`),
  KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`),
  CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `expressentities` (`id`),
  CONSTRAINT `FK_B8AE3531FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressentityentries`
--

LOCK TABLES `expressentityentries` WRITE;
/*!40000 ALTER TABLE `expressentityentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressentityentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressentityentryassociations`
--

DROP TABLE IF EXISTS `expressentityentryassociations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressentityentryassociations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  KEY `IDX_25B3A082EFB9C8A5` (`association_id`),
  CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityassociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressentityentryassociations`
--

LOCK TABLES `expressentityentryassociations` WRITE;
/*!40000 ALTER TABLE `expressentityentryassociations` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressentityentryassociations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressentityentryattributevalues`
--

DROP TABLE IF EXISTS `expressentityentryattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressentityentryattributevalues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`exEntryID`,`akID`),
  KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  KEY `IDX_6DB64154B6561A7E` (`akID`),
  KEY `IDX_6DB64154A2A82A5D` (`avID`),
  CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressentityentryattributevalues`
--

LOCK TABLES `expressentityentryattributevalues` WRITE;
/*!40000 ALTER TABLE `expressentityentryattributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressentityentryattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressformfieldsetassociationcontrols`
--

DROP TABLE IF EXISTS `expressformfieldsetassociationcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressformfieldsetassociationcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_selector_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `enable_entry_reordering` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`),
  CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityassociations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressformfieldsetassociationcontrols`
--

LOCK TABLES `expressformfieldsetassociationcontrols` WRITE;
/*!40000 ALTER TABLE `expressformfieldsetassociationcontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressformfieldsetassociationcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressformfieldsetattributekeycontrols`
--

DROP TABLE IF EXISTS `expressformfieldsetattributekeycontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressformfieldsetattributekeycontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8481F9D1B6561A7E` (`akID`),
  CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressformfieldsetattributekeycontrols`
--

LOCK TABLES `expressformfieldsetattributekeycontrols` WRITE;
/*!40000 ALTER TABLE `expressformfieldsetattributekeycontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressformfieldsetattributekeycontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressformfieldsetauthorcontrols`
--

DROP TABLE IF EXISTS `expressformfieldsetauthorcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressformfieldsetauthorcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_CF378786BF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressformfieldsetauthorcontrols`
--

LOCK TABLES `expressformfieldsetauthorcontrols` WRITE;
/*!40000 ALTER TABLE `expressformfieldsetauthorcontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressformfieldsetauthorcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressformfieldsetcontrols`
--

DROP TABLE IF EXISTS `expressformfieldsetcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressformfieldsetcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E42868A43ABF811A` (`field_set_id`),
  CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `expressformfieldsets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressformfieldsetcontrols`
--

LOCK TABLES `expressformfieldsetcontrols` WRITE;
/*!40000 ALTER TABLE `expressformfieldsetcontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressformfieldsetcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressformfieldsets`
--

DROP TABLE IF EXISTS `expressformfieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressformfieldsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A33BBBEC5FF69B7D` (`form_id`),
  CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `expressforms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressformfieldsets`
--

LOCK TABLES `expressformfieldsets` WRITE;
/*!40000 ALTER TABLE `expressformfieldsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressformfieldsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressformfieldsettextcontrols`
--

DROP TABLE IF EXISTS `expressformfieldsettextcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressformfieldsettextcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressformfieldsettextcontrols`
--

LOCK TABLES `expressformfieldsettextcontrols` WRITE;
/*!40000 ALTER TABLE `expressformfieldsettextcontrols` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressformfieldsettextcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expressforms`
--

DROP TABLE IF EXISTS `expressforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressforms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D09031A81257D5D` (`entity_id`),
  CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `expressentities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expressforms`
--

LOCK TABLES `expressforms` WRITE;
/*!40000 ALTER TABLE `expressforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `expressforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failedloginattempts`
--

DROP TABLE IF EXISTS `failedloginattempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failedloginattempts` (
  `lcirID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record identifier',
  `flaIp` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address of the failed login attempt',
  `flaTimestamp` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Timestamp of the failed login attempt',
  PRIMARY KEY (`lcirID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records failed login attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failedloginattempts`
--

LOCK TABLES `failedloginattempts` WRITE;
/*!40000 ALTER TABLE `failedloginattempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `failedloginattempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featureassignments`
--

DROP TABLE IF EXISTS `featureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featureassignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featureassignments`
--

LOCK TABLES `featureassignments` WRITE;
/*!40000 ALTER TABLE `featureassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `featureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featurecategories`
--

DROP TABLE IF EXISTS `featurecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurecategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featurecategories`
--

LOCK TABLES `featurecategories` WRITE;
/*!40000 ALTER TABLE `featurecategories` DISABLE KEYS */;
INSERT INTO `featurecategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `featurecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT 1,
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileattributekeys`
--

DROP TABLE IF EXISTS `fileattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileattributekeys`
--

LOCK TABLES `fileattributekeys` WRITE;
/*!40000 ALTER TABLE `fileattributekeys` DISABLE KEYS */;
INSERT INTO `fileattributekeys` VALUES (16),(17),(19);
/*!40000 ALTER TABLE `fileattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileattributevalues`
--

DROP TABLE IF EXISTS `fileattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  KEY `IDX_BBECEAA4A2A82A5D` (`avID`),
  CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileattributevalues`
--

LOCK TABLES `fileattributevalues` WRITE;
/*!40000 ALTER TABLE `fileattributevalues` DISABLE KEYS */;
INSERT INTO `fileattributevalues` VALUES (1,1,16,151),(1,1,17,152),(2,1,16,153),(2,1,17,154);
/*!40000 ALTER TABLE `fileattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileimagethumbnailpaths`
--

DROP TABLE IF EXISTS `fileimagethumbnailpaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileimagethumbnailpaths` (
  `fileID` int(10) unsigned NOT NULL,
  `fileVersionID` int(10) unsigned NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageLocationID` int(10) unsigned NOT NULL,
  `thumbnailFormat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL,
  PRIMARY KEY (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`,`thumbnailFormat`),
  KEY `thumbnailPathIsBuilt` (`isBuilt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileimagethumbnailpaths`
--

LOCK TABLES `fileimagethumbnailpaths` WRITE;
/*!40000 ALTER TABLE `fileimagethumbnailpaths` DISABLE KEYS */;
INSERT INTO `fileimagethumbnailpaths` VALUES (1,1,'file_manager_detail',1,'jpeg','/thumbnails/file_manager_detail/6015/7701/4337/sample.jpg',1,NULL,NULL),(1,1,'file_manager_listing',1,'jpeg','/thumbnails/file_manager_listing/6015/7701/4337/sample.jpg',1,NULL,NULL),(1,1,'file_manager_listing_2x',1,'jpeg','/thumbnails/file_manager_listing_2x/6015/7701/4337/sample.jpg',1,NULL,NULL),(2,1,'file_manager_detail',1,'jpeg','/thumbnails/file_manager_detail/3815/7701/6591/plants.jpg',1,NULL,NULL),(2,1,'file_manager_listing',1,'jpeg','/thumbnails/file_manager_listing/3815/7701/6591/plants.jpg',1,NULL,NULL),(2,1,'file_manager_listing_2x',1,'jpeg','/thumbnails/file_manager_listing_2x/3815/7701/6591/plants.jpg',1,NULL,NULL);
/*!40000 ALTER TABLE `fileimagethumbnailpaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileimagethumbnailtypefilesets`
--

DROP TABLE IF EXISTS `fileimagethumbnailtypefilesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileimagethumbnailtypefilesets` (
  `ftfsFileSetID` int(10) unsigned NOT NULL,
  `ftfsThumbnailType` int(11) NOT NULL,
  PRIMARY KEY (`ftfsThumbnailType`,`ftfsFileSetID`),
  KEY `IDX_BD75F88D480660E5` (`ftfsThumbnailType`),
  CONSTRAINT `FK_BD75F88D480660E5` FOREIGN KEY (`ftfsThumbnailType`) REFERENCES `fileimagethumbnailtypes` (`ftTypeID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileimagethumbnailtypefilesets`
--

LOCK TABLES `fileimagethumbnailtypefilesets` WRITE;
/*!40000 ALTER TABLE `fileimagethumbnailtypefilesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileimagethumbnailtypefilesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileimagethumbnailtypes`
--

DROP TABLE IF EXISTS `fileimagethumbnailtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileimagethumbnailtypes` (
  `ftTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftUpscalingEnabled` tinyint(1) NOT NULL,
  `ftLimitedToFileSets` tinyint(1) NOT NULL,
  `ftKeepAnimations` tinyint(1) NOT NULL,
  `ftSaveAreaBackgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileimagethumbnailtypes`
--

LOCK TABLES `fileimagethumbnailtypes` WRITE;
/*!40000 ALTER TABLE `fileimagethumbnailtypes` DISABLE KEYS */;
INSERT INTO `fileimagethumbnailtypes` VALUES (1,'file_manager_listing','File Manager Thumbnails',60,60,1,'exact',1,0,0,''),(2,'file_manager_detail','File Manager Detail Thumbnails',400,400,1,'exact',0,0,0,'');
/*!40000 ALTER TABLE `fileimagethumbnailtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionassignments`
--

DROP TABLE IF EXISTS `filepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionassignments`
--

LOCK TABLES `filepermissionassignments` WRITE;
/*!40000 ALTER TABLE `filepermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionfiletypeaccesslist`
--

DROP TABLE IF EXISTS `filepermissionfiletypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionfiletypeaccesslist`
--

LOCK TABLES `filepermissionfiletypeaccesslist` WRITE;
/*!40000 ALTER TABLE `filepermissionfiletypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionfiletypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionfiletypeaccesslistcustom`
--

DROP TABLE IF EXISTS `filepermissionfiletypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionfiletypeaccesslistcustom` (
  `extension` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionfiletypeaccesslistcustom`
--

LOCK TABLES `filepermissionfiletypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `filepermissionfiletypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionfiletypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filepermissionfiletypes`
--

DROP TABLE IF EXISTS `filepermissionfiletypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepermissionfiletypes` (
  `extension` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT 0,
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filepermissionfiletypes`
--

LOCK TABLES `filepermissionfiletypes` WRITE;
/*!40000 ALTER TABLE `filepermissionfiletypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionfiletypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) unsigned NOT NULL,
  `folderTreeNodeID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `fslID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`),
  CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `filestoragelocations` (`fslID`),
  CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'2019-12-22 12:32:17',NULL,0,0,7,1,1),(2,'2019-12-22 13:09:51',NULL,0,0,7,1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesearchindexattributes`
--

DROP TABLE IF EXISTS `filesearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesearchindexattributes` (
  `fID` int(10) unsigned NOT NULL,
  `ak_width` decimal(14,4) DEFAULT 0.0000,
  `ak_height` decimal(14,4) DEFAULT 0.0000,
  `ak_duration` decimal(14,4) DEFAULT 0.0000,
  PRIMARY KEY (`fID`),
  CONSTRAINT `FK_3A3A4845E3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesearchindexattributes`
--

LOCK TABLES `filesearchindexattributes` WRITE;
/*!40000 ALTER TABLE `filesearchindexattributes` DISABLE KEYS */;
INSERT INTO `filesearchindexattributes` VALUES (1,1000.0000,1250.0000,0.0000),(2,975.0000,1300.0000,0.0000);
/*!40000 ALTER TABLE `filesearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetfiles`
--

DROP TABLE IF EXISTS `filesetfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetfiles`
--

LOCK TABLES `filesetfiles` WRITE;
/*!40000 ALTER TABLE `filesetfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesets`
--

DROP TABLE IF EXISTS `filesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesets`
--

LOCK TABLES `filesets` WRITE;
/*!40000 ALTER TABLE `filesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesetsavedsearches`
--

DROP TABLE IF EXISTS `filesetsavedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT 0,
  `fsSearchRequest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsResultColumns` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesetsavedsearches`
--

LOCK TABLES `filesetsavedsearches` WRITE;
/*!40000 ALTER TABLE `filesetsavedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetsavedsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestoragelocations`
--

DROP TABLE IF EXISTS `filestoragelocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestoragelocations` (
  `fslName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslIsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestoragelocations`
--

LOCK TABLES `filestoragelocations` WRITE;
/*!40000 ALTER TABLE `filestoragelocations` DISABLE KEYS */;
INSERT INTO `filestoragelocations` VALUES ('Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1,1);
/*!40000 ALTER TABLE `filestoragelocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filestoragelocationtypes`
--

DROP TABLE IF EXISTS `filestoragelocationtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filestoragelocationtypes` (
  `fslTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`fslTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filestoragelocationtypes`
--

LOCK TABLES `filestoragelocationtypes` WRITE;
/*!40000 ALTER TABLE `filestoragelocationtypes` DISABLE KEYS */;
INSERT INTO `filestoragelocationtypes` VALUES ('default','Default',1,0),('local','Local',2,0);
/*!40000 ALTER TABLE `filestoragelocationtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileusagerecord`
--

DROP TABLE IF EXISTS `fileusagerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileusagerecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileusagerecord`
--

LOCK TABLES `fileusagerecord` WRITE;
/*!40000 ALTER TABLE `fileusagerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileusagerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileversionlog`
--

DROP TABLE IF EXISTS `fileversionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT 0,
  `fvID` int(10) unsigned NOT NULL DEFAULT 0,
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT 0,
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileversionlog`
--

LOCK TABLES `fileversionlog` WRITE;
/*!40000 ALTER TABLE `fileversionlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fileversionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileversions`
--

DROP TABLE IF EXISTS `fileversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileversions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvExtension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvTags` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvType` int(11) NOT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fID`,`fvID`),
  KEY `IDX_D7B5A13AE3111F45` (`fID`),
  KEY `fvFilename` (`fvFilename`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileversions`
--

LOCK TABLES `fileversions` WRITE;
/*!40000 ALTER TABLE `fileversions` DISABLE KEYS */;
INSERT INTO `fileversions` VALUES (1,'sample.jpeg','601577014337','2019-12-22 12:32:17','2019-12-22 12:32:17',1,1,1,80538,'sample.jpeg','','jpeg','',1,1,1,1),(1,'plants.jpeg','381577016591','2019-12-22 13:09:51','2019-12-22 13:09:51',1,1,1,188005,'plants.jpeg','','jpeg','',1,1,1,2);
/*!40000 ALTER TABLE `fileversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formsubmissionnotifications`
--

DROP TABLE IF EXISTS `formsubmissionnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsubmissionnotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_E7B6BE406DCB6296` (`exEntryID`),
  CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`) ON DELETE CASCADE,
  CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formsubmissionnotifications`
--

LOCK TABLES `formsubmissionnotifications` WRITE;
/*!40000 ALTER TABLE `formsubmissionnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `formsubmissionnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gapage`
--

DROP TABLE IF EXISTS `gapage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gapage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gapage`
--

LOCK TABLES `gapage` WRITE;
/*!40000 ALTER TABLE `gapage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gapage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringconfigureddatasources`
--

DROP TABLE IF EXISTS `gatheringconfigureddatasources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringconfigureddatasources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringconfigureddatasources`
--

LOCK TABLES `gatheringconfigureddatasources` WRITE;
/*!40000 ALTER TABLE `gatheringconfigureddatasources` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringconfigureddatasources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringdatasources`
--

DROP TABLE IF EXISTS `gatheringdatasources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringdatasources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringdatasources`
--

LOCK TABLES `gatheringdatasources` WRITE;
/*!40000 ALTER TABLE `gatheringdatasources` DISABLE KEYS */;
INSERT INTO `gatheringdatasources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `gatheringdatasources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemfeatureassignments`
--

DROP TABLE IF EXISTS `gatheringitemfeatureassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemfeatureassignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemfeatureassignments`
--

LOCK TABLES `gatheringitemfeatureassignments` WRITE;
/*!40000 ALTER TABLE `gatheringitemfeatureassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitemfeatureassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitems`
--

DROP TABLE IF EXISTS `gatheringitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaiSlotWidth` int(10) unsigned DEFAULT 1,
  `gaiSlotHeight` int(10) unsigned DEFAULT 1,
  `gaiKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `gaiIsDeleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitems`
--

LOCK TABLES `gatheringitems` WRITE;
/*!40000 ALTER TABLE `gatheringitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemselectedtemplates`
--

DROP TABLE IF EXISTS `gatheringitemselectedtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemselectedtemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT 0,
  `gatID` int(10) unsigned NOT NULL DEFAULT 0,
  `gatTypeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemselectedtemplates`
--

LOCK TABLES `gatheringitemselectedtemplates` WRITE;
/*!40000 ALTER TABLE `gatheringitemselectedtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitemselectedtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemtemplatefeatures`
--

DROP TABLE IF EXISTS `gatheringitemtemplatefeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemtemplatefeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemtemplatefeatures`
--

LOCK TABLES `gatheringitemtemplatefeatures` WRITE;
/*!40000 ALTER TABLE `gatheringitemtemplatefeatures` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplatefeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `gatheringitemtemplatefeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemtemplates`
--

DROP TABLE IF EXISTS `gatheringitemtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemtemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `gatFixedSlotWidth` int(10) unsigned DEFAULT 0,
  `gatFixedSlotHeight` int(10) unsigned DEFAULT 0,
  `gatForceDefault` int(10) unsigned DEFAULT 0,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemtemplates`
--

LOCK TABLES `gatheringitemtemplates` WRITE;
/*!40000 ALTER TABLE `gatheringitemtemplates` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `gatheringitemtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringitemtemplatetypes`
--

DROP TABLE IF EXISTS `gatheringitemtemplatetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringitemtemplatetypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringitemtemplatetypes`
--

LOCK TABLES `gatheringitemtemplatetypes` WRITE;
/*!40000 ALTER TABLE `gatheringitemtemplatetypes` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplatetypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `gatheringitemtemplatetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatheringpermissionassignments`
--

DROP TABLE IF EXISTS `gatheringpermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatheringpermissionassignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatheringpermissionassignments`
--

LOCK TABLES `gatheringpermissionassignments` WRITE;
/*!40000 ALTER TABLE `gatheringpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringpermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatherings`
--

DROP TABLE IF EXISTS `gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatherings`
--

LOCK TABLES `gatherings` WRITE;
/*!40000 ALTER TABLE `gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocators`
--

DROP TABLE IF EXISTS `geolocators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geolocators` (
  `glID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Geolocator ID',
  `glHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator handle',
  `glName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator name',
  `glDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator description',
  `glConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator configuration options(DC2Type:json_array)',
  `glActive` tinyint(1) NOT NULL COMMENT 'Is this Geolocator the active one?',
  `glPackage` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`glID`),
  UNIQUE KEY `UNIQ_83BB1614D4F4D416` (`glHandle`),
  KEY `IDX_83BB1614D5F6CC40` (`glPackage`),
  CONSTRAINT `FK_83BB1614D5F6CC40` FOREIGN KEY (`glPackage`) REFERENCES `packages` (`pkgID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all the installed Geolocator services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocators`
--

LOCK TABLES `geolocators` WRITE;
/*!40000 ALTER TABLE `geolocators` DISABLE KEYS */;
INSERT INTO `geolocators` VALUES (1,'geoplugin','geoPlugin','','{\"url\":\"http:\\/\\/www.geoplugin.net\\/json.gp?ip=[[IP]]\"}',1,NULL);
/*!40000 ALTER TABLE `geolocators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `gUserExpirationMethod` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT 0,
  `gUserExpirationAction` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT 0,
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT 0,
  `gBadgeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT 0,
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT 0,
  `gPath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupsetgroups`
--

DROP TABLE IF EXISTS `groupsetgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  `gsID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupsetgroups`
--

LOCK TABLES `groupsetgroups` WRITE;
/*!40000 ALTER TABLE `groupsetgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupsetgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupsets`
--

DROP TABLE IF EXISTS `groupsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupsets`
--

LOCK TABLES `groupsets` WRITE;
/*!40000 ALTER TABLE `groupsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `jLastStatusText` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT 0,
  `jStatus` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT 0,
  `isScheduled` smallint(6) NOT NULL DEFAULT 0,
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0),(8,'Update Statistics Trackers','Scan the sitemap for file usage and stack usage to update statistics trackers','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','update_statistics',0,0,'days',0),(9,'Fill thumbnail database table','Re-populate the thumbnail path database table.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','fill_thumbnails_table',0,0,'days',0),(10,'Deactivate Users','Deactivates users who haven\'t logged in recently, if automatic user deactivation is active.','2019-12-22 11:34:28',NULL,0,NULL,0,'ENABLED','deactivate_users',0,0,'days',0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsetjobs`
--

DROP TABLE IF EXISTS `jobsetjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT 0,
  `jID` int(10) unsigned NOT NULL DEFAULT 0,
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsetjobs`
--

LOCK TABLES `jobsetjobs` WRITE;
/*!40000 ALTER TABLE `jobsetjobs` DISABLE KEYS */;
INSERT INTO `jobsetjobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0),(1,9,0),(1,10,0);
/*!40000 ALTER TABLE `jobsetjobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsets`
--

DROP TABLE IF EXISTS `jobsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT 0,
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsets`
--

LOCK TABLES `jobsets` WRITE;
/*!40000 ALTER TABLE `jobsets` DISABLE KEYS */;
INSERT INTO `jobsets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `jobsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobslog`
--

DROP TABLE IF EXISTS `jobslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `jlError` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobslog`
--

LOCK TABLES `jobslog` WRITE;
/*!40000 ALTER TABLE `jobslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legacyattributekeys`
--

DROP TABLE IF EXISTS `legacyattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legacyattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legacyattributekeys`
--

LOCK TABLES `legacyattributekeys` WRITE;
/*!40000 ALTER TABLE `legacyattributekeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `legacyattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logincontrolipranges`
--

DROP TABLE IF EXISTS `logincontrolipranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logincontrolipranges` (
  `lcirID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Record identifier',
  `lcirIpFrom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Start of the range',
  `lcirIpTo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'End of the range',
  `lcirType` smallint(5) unsigned NOT NULL COMMENT 'Type of the record',
  `lcirExpires` datetime DEFAULT NULL COMMENT 'Record end-of-life timestamp',
  PRIMARY KEY (`lcirID`),
  KEY `IX_LoginControlIpRanges_Search` (`lcirIpFrom`,`lcirIpTo`,`lcirExpires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='IP ranges used to control login attempts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logincontrolipranges`
--

LOCK TABLES `logincontrolipranges` WRITE;
/*!40000 ALTER TABLE `logincontrolipranges` DISABLE KEYS */;
/*!40000 ALTER TABLE `logincontrolipranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'operations',1577010910,'Clearing cache with CacheClearer::flush().',1,250),(2,'exceptions',1577010919,'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\vendor\\tedivm\\stash\\src\\Stash\\Driver\\FileSystem.php:326 unlink(D:/KEA - Webdev/webdev-live/ugly_blog/application/files/cache/overrides\\1952a01898073d1e\\561b9b4f2e42cbd7\\38a865804f8fdcb6\\57cd99682e939275\\fc0977b51d605a7a\\f511e1606b3917cf.php): No such file or directory (2)\n',1,600),(3,'operations',1577013125,'Clearing cache with CacheClearer::flush().',1,250),(4,'site_organization',1577013133,'Page \"Footer Contact\" at path \"/!stacks/footer-contact\" deleted',1,250),(5,'site_organization',1577013133,'Page \"Footer Legal\" at path \"/!stacks/footer-legal\" deleted',1,250),(6,'site_organization',1577013134,'Page \"Footer Navigation\" at path \"/!stacks/footer-navigation\" deleted',1,250),(7,'site_organization',1577013134,'Page \"Header Navigation\" at path \"/!stacks/header-navigation\" deleted',1,250),(8,'site_organization',1577013134,'Page \"Header Site Title\" at path \"/!stacks/header-site-title\" deleted',1,250),(9,'exceptions',1577017698,'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:46 filterNyCollectionTypeHandle method does not exist for the Concrete\\Core\\Page\\PageList class (0)\n',1,600),(10,'exceptions',1577017702,'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:46 filterNyCollectionTypeHandle method does not exist for the Concrete\\Core\\Page\\PageList class (0)\n',1,600),(11,'exceptions',1577018317,'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\application\\blocks\\latest_three_posts\\view.php:10 Allowed memory size of 536870912 bytes exhausted (tried to allocate 264257536 bytes) (1)\n',1,600),(12,'site_organization',1577018476,'Page \"\" at path \"/!drafts/190\" deleted',1,250),(13,'exceptions',1577022416,'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:17 Unable to find attribute select_attribute (0)\n',1,600),(14,'exceptions',1577022627,'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:17 Unable to find attribute select_attribute (0)\n',1,600);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailimporters`
--

DROP TABLE IF EXISTS `mailimporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `miEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailimporters`
--

LOCK TABLES `mailimporters` WRITE;
/*!40000 ALTER TABLE `mailimporters` DISABLE KEYS */;
INSERT INTO `mailimporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `mailimporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailvalidationhashes`
--

DROP TABLE IF EXISTS `mailvalidationhashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT 0,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT 0,
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailvalidationhashes`
--

LOCK TABLES `mailvalidationhashes` WRITE;
/*!40000 ALTER TABLE `mailvalidationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailvalidationhashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilingualpagerelations`
--

DROP TABLE IF EXISTS `multilingualpagerelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multilingualpagerelations` (
  `mpLocale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilingualpagerelations`
--

LOCK TABLES `multilingualpagerelations` WRITE;
/*!40000 ALTER TABLE `multilingualpagerelations` DISABLE KEYS */;
INSERT INTO `multilingualpagerelations` VALUES ('en_US','en',1,191),('en_US','en',2,192),('en_US','en',3,193);
/*!40000 ALTER TABLE `multilingualpagerelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multilingualtranslations`
--

DROP TABLE IF EXISTS `multilingualtranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multilingualtranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT 0,
  `msgid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msgstr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msgstrPlurals` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multilingualtranslations`
--

LOCK TABLES `multilingualtranslations` WRITE;
/*!40000 ALTER TABLE `multilingualtranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualtranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationalerts`
--

DROP TABLE IF EXISTS `notificationalerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationalerts` (
  `naID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`naID`),
  KEY `IDX_E11C7408FD71026C` (`uID`),
  KEY `IDX_E11C7408ED024EFD` (`nID`),
  CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`),
  CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationalerts`
--

LOCK TABLES `notificationalerts` WRITE;
/*!40000 ALTER TABLE `notificationalerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationalerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationpermissionsubscriptionlist`
--

DROP TABLE IF EXISTS `notificationpermissionsubscriptionlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationpermissionsubscriptionlist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationpermissionsubscriptionlist`
--

LOCK TABLES `notificationpermissionsubscriptionlist` WRITE;
/*!40000 ALTER TABLE `notificationpermissionsubscriptionlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationpermissionsubscriptionlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationpermissionsubscriptionlistcustom`
--

DROP TABLE IF EXISTS `notificationpermissionsubscriptionlistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationpermissionsubscriptionlistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  KEY `peID` (`peID`),
  KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationpermissionsubscriptionlistcustom`
--

LOCK TABLES `notificationpermissionsubscriptionlistcustom` WRITE;
/*!40000 ALTER TABLE `notificationpermissionsubscriptionlistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificationpermissionsubscriptionlistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `nID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`nID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2accesstoken`
--

DROP TABLE IF EXISTS `oauth2accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2accesstoken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) unsigned DEFAULT NULL,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`identifier`),
  KEY `IDX_60D69F3FC7440455` (`client`),
  CONSTRAINT `FK_60D69F3FC7440455` FOREIGN KEY (`client`) REFERENCES `oauth2client` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2accesstoken`
--

LOCK TABLES `oauth2accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2authcode`
--

DROP TABLE IF EXISTS `oauth2authcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2authcode` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`identifier`),
  KEY `IDX_29D07B5C7440455` (`client`),
  CONSTRAINT `FK_29D07B5C7440455` FOREIGN KEY (`client`) REFERENCES `oauth2client` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2authcode`
--

LOCK TABLES `oauth2authcode` WRITE;
/*!40000 ALTER TABLE `oauth2authcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2authcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2client`
--

DROP TABLE IF EXISTS `oauth2client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2client` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirectUri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientSecret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consentType` int(10) unsigned NOT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `client_idx` (`clientKey`,`clientSecret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2client`
--

LOCK TABLES `oauth2client` WRITE;
/*!40000 ALTER TABLE `oauth2client` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2refreshtoken`
--

DROP TABLE IF EXISTS `oauth2refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2refreshtoken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `accessToken` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `UNIQ_A205CB8350A9822` (`accessToken`),
  CONSTRAINT `FK_A205CB8350A9822` FOREIGN KEY (`accessToken`) REFERENCES `oauth2accesstoken` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2refreshtoken`
--

LOCK TABLES `oauth2refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2scope`
--

DROP TABLE IF EXISTS `oauth2scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2scope` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2scope`
--

LOCK TABLES `oauth2scope` WRITE;
/*!40000 ALTER TABLE `oauth2scope` DISABLE KEYS */;
INSERT INTO `oauth2scope` VALUES ('account:read','Read information about the remotely authenticated user.'),('files:read','Read detailed information about uploaded files.'),('openid','Remotely authenticate into concrete5.'),('site:trees:read','Read information about system site trees.'),('system:info:read','Read detailed information about the system.');
/*!40000 ALTER TABLE `oauth2scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauthusermap`
--

DROP TABLE IF EXISTS `oauthusermap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauthusermap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauthusermap`
--

LOCK TABLES `oauthusermap` WRITE;
/*!40000 ALTER TABLE `oauthusermap` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthusermap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1,'block_builder','1.2.1',1,NULL,'Build your custom c5 blocks (with optional set of repeatable entries).','2019-12-22 12:11:15','Block Builder');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagefeeds`
--

DROP TABLE IF EXISTS `pagefeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagefeeds` (
  `checkPagePermissions` tinyint(1) NOT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL,
  `iconFID` int(10) unsigned NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL,
  `ptID` int(10) unsigned NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL,
  PRIMARY KEY (`pfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagefeeds`
--

LOCK TABLES `pagefeeds` WRITE;
/*!40000 ALTER TABLE `pagefeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagefeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepaths`
--

DROP TABLE IF EXISTS `pagepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepaths` (
  `cPath` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL,
  PRIMARY KEY (`ppID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepaths`
--

LOCK TABLES `pagepaths` WRITE;
/*!40000 ALTER TABLE `pagepaths` DISABLE KEYS */;
INSERT INTO `pagepaths` VALUES ('/dashboard',1,2,1,1),('/dashboard/sitemap',2,3,1,1),('/dashboard/sitemap/full',3,4,1,1),('/dashboard/sitemap/explore',4,5,1,1),('/dashboard/sitemap/search',5,6,1,1),('/dashboard/files',6,7,1,1),('/dashboard/files/search',7,8,1,1),('/dashboard/files/attributes',8,9,1,1),('/dashboard/files/sets',9,10,1,1),('/dashboard/files/add_set',10,11,1,1),('/dashboard/users',11,12,1,1),('/dashboard/users/search',12,13,1,1),('/dashboard/users/groups',13,14,1,1),('/dashboard/users/attributes',14,15,1,1),('/dashboard/users/add',15,16,1,1),('/dashboard/users/add_group',16,17,1,1),('/dashboard/users/groups/bulkupdate',17,18,1,1),('/dashboard/users/group_sets',18,19,1,1),('/dashboard/users/points',19,20,1,1),('/dashboard/users/points/assign',20,21,1,1),('/dashboard/users/points/actions',21,22,1,1),('/dashboard/express',22,23,1,1),('/dashboard/express/entries',23,24,1,1),('/dashboard/reports',24,25,1,1),('/dashboard/reports/forms',25,26,1,1),('/dashboard/reports/forms/legacy',26,27,1,1),('/dashboard/reports/surveys',27,28,1,1),('/dashboard/reports/logs',28,29,1,1),('/dashboard/reports/page_changes',29,30,1,1),('/dashboard/pages',30,31,1,1),('/dashboard/pages/themes',31,32,1,1),('/dashboard/pages/themes/inspect',32,33,1,1),('/dashboard/pages/types',33,34,1,1),('/dashboard/pages/types/organize',34,35,1,1),('/dashboard/pages/types/add',35,36,1,1),('/dashboard/pages/types/form',36,37,1,1),('/dashboard/pages/types/output',37,38,1,1),('/dashboard/pages/types/attributes',38,39,1,1),('/dashboard/pages/types/permissions',39,40,1,1),('/dashboard/pages/templates',40,41,1,1),('/dashboard/pages/templates/add',41,42,1,1),('/dashboard/pages/attributes',42,43,1,1),('/dashboard/pages/single',43,44,1,1),('/dashboard/pages/feeds',44,45,1,1),('/dashboard/calendar',45,46,1,1),('/dashboard/calendar/events',46,47,1,1),('/dashboard/calendar/event_list',47,48,1,1),('/dashboard/calendar/add',48,49,1,1),('/dashboard/calendar/permissions',49,50,1,1),('/dashboard/calendar/attributes',50,51,1,1),('/dashboard/conversations',51,52,1,1),('/dashboard/conversations/messages',52,53,1,1),('/dashboard/blocks',53,54,1,1),('/dashboard/blocks/stacks',54,55,1,1),('/dashboard/blocks/permissions',55,56,1,1),('/dashboard/blocks/stacks/list',56,57,1,1),('/dashboard/blocks/types',57,58,1,1),('/dashboard/extend',58,59,1,1),('/dashboard/extend/install',59,60,1,1),('/dashboard/extend/update',60,61,1,1),('/dashboard/extend/connect',61,62,1,1),('/dashboard/extend/themes',62,63,1,1),('/dashboard/extend/addons',63,64,1,1),('/dashboard/system',64,65,1,1),('/dashboard/system/basics',65,66,1,1),('/dashboard/system/basics/name',66,67,1,1),('/dashboard/system/basics/accessibility',67,68,1,1),('/dashboard/system/basics/social',68,69,1,1),('/dashboard/system/basics/icons',69,70,1,1),('/dashboard/system/basics/editor',70,71,1,1),('/dashboard/system/basics/multilingual',71,72,1,1),('/dashboard/system/basics/multilingual/update',72,73,1,1),('/dashboard/system/basics/timezone',73,74,1,1),('/dashboard/system/basics/attributes',74,75,1,1),('/dashboard/system/basics/reset_edit_mode',75,76,1,1),('/dashboard/system/express',76,77,1,1),('/dashboard/system/express/entities',77,78,1,1),('/dashboard/system/express/entities/attributes',78,79,1,1),('/dashboard/system/express/entities/associations',79,80,1,1),('/dashboard/system/express/entities/forms',80,81,1,1),('/dashboard/system/express/entities/customize_search',81,82,1,1),('/dashboard/system/express/entities/order_entries',82,83,1,1),('/dashboard/system/express/entries',83,84,1,1),('/dashboard/system/multilingual',84,85,1,1),('/dashboard/system/multilingual/setup',85,86,1,1),('/dashboard/system/multilingual/copy',86,87,1,1),('/dashboard/system/multilingual/page_report',87,88,1,1),('/dashboard/system/multilingual/translate_interface',88,89,1,1),('/dashboard/system/seo',89,90,1,1),('/dashboard/system/seo/urls',90,91,1,1),('/dashboard/system/seo/bulk',91,92,1,1),('/dashboard/system/seo/codes',92,93,1,1),('/dashboard/system/seo/excluded',93,94,1,1),('/dashboard/system/seo/searchindex',94,95,1,1),('/dashboard/system/files',95,96,1,1),('/dashboard/system/files/filetypes',96,97,1,1),('/dashboard/system/files/permissions',97,98,1,1),('/dashboard/system/files/thumbnails',98,99,1,1),('/dashboard/system/files/thumbnails/options',99,100,1,1),('/dashboard/system/files/image_uploading',100,101,1,1),('/dashboard/system/files/storage',101,102,1,1),('/dashboard/system/files/export_options',102,103,1,1),('/dashboard/system/optimization',103,104,1,1),('/dashboard/system/optimization/cache',104,105,1,1),('/dashboard/system/optimization/clearcache',105,106,1,1),('/dashboard/system/optimization/jobs',106,107,1,1),('/dashboard/system/optimization/query_log',107,108,1,1),('/dashboard/system/permissions',108,109,1,1),('/dashboard/system/permissions/site',109,110,1,1),('/dashboard/system/permissions/tasks',110,111,1,1),('/dashboard/system/permissions/users',111,112,1,1),('/dashboard/system/permissions/advanced',112,113,1,1),('/dashboard/system/permissions/workflows',113,114,1,1),('/dashboard/system/permissions/blacklist',114,115,1,1),('/dashboard/system/permissions/blacklist/range',115,116,1,1),('/dashboard/system/permissions/captcha',116,117,1,1),('/dashboard/system/permissions/antispam',117,118,1,1),('/dashboard/system/permissions/maintenance',118,119,1,1),('/dashboard/system/permissions/trusted_proxies',119,120,1,1),('/dashboard/system/registration',120,121,1,1),('/dashboard/system/registration/open',121,122,1,1),('/dashboard/system/registration/postlogin',122,123,1,1),('/dashboard/system/registration/profiles',123,124,1,1),('/dashboard/system/registration/authentication',124,125,1,1),('/dashboard/system/registration/global_password_reset',125,126,1,1),('/dashboard/system/registration/notification',126,127,1,1),('/dashboard/system/registration/deactivation',127,128,1,1),('/dashboard/system/registration/automated_logout',128,129,1,1),('/dashboard/system/registration/password_requirements',129,130,1,1),('/dashboard/system/mail',130,131,1,1),('/dashboard/system/mail/method',131,132,1,1),('/dashboard/system/mail/method/test',132,133,1,1),('/dashboard/system/mail/importers',133,134,1,1),('/dashboard/system/mail/addresses',134,135,1,1),('/dashboard/system/calendar',135,136,1,1),('/dashboard/system/calendar/settings',136,137,1,1),('/dashboard/system/calendar/colors',137,138,1,1),('/dashboard/system/calendar/permissions',138,139,1,1),('/dashboard/system/calendar/import',139,140,1,1),('/dashboard/system/conversations',140,141,1,1),('/dashboard/system/conversations/settings',141,142,1,1),('/dashboard/system/conversations/points',142,143,1,1),('/dashboard/system/conversations/bannedwords',143,144,1,1),('/dashboard/system/conversations/permissions',144,145,1,1),('/dashboard/system/attributes',145,146,1,1),('/dashboard/system/attributes/types',146,147,1,1),('/dashboard/system/attributes/sets',147,148,1,1),('/dashboard/system/attributes/topics',148,149,1,1),('/dashboard/system/attributes/topics/add',149,150,1,1),('/dashboard/system/environment',150,151,1,1),('/dashboard/system/environment/info',151,152,1,1),('/dashboard/system/environment/debug',152,153,1,1),('/dashboard/system/environment/logging',153,154,1,1),('/dashboard/system/environment/proxy',154,155,1,1),('/dashboard/system/environment/entities',155,156,1,1),('/dashboard/system/environment/database_charset',156,157,1,1),('/dashboard/system/environment/geolocation',157,158,1,1),('/dashboard/system/update',158,159,1,1),('/dashboard/system/update/update',159,160,1,1),('/dashboard/system/api',160,161,1,1),('/dashboard/system/api/settings',161,162,1,1),('/dashboard/system/api/integrations',162,163,1,1),('/dashboard/welcome',163,164,1,1),('/dashboard/welcome/me',164,165,1,1),('/!stacks',165,166,1,1),('/page_not_found',166,167,1,1),('/!trash',167,168,1,1),('/login',168,169,1,1),('/register',169,170,1,1),('/account',170,171,1,1),('/account/edit_profile',171,172,1,1),('/account/avatar',172,173,1,1),('/account/messages',173,174,1,1),('/page_forbidden',174,175,1,1),('/download_file',175,176,1,1),('/!drafts',176,177,1,1),('/account/welcome',177,178,1,0),('/blog-1',183,185,1,1),('/dashboard/blocks/block_builder',184,187,1,1),('/about',185,188,1,1),('/blog-1-1',187,191,1,1),('/blog-1-2',188,192,1,1),('/blog-1-3',189,193,1,1),('/!stacks/header-area',190,194,1,1),('/!stacks/footer-area',191,195,1,1);
/*!40000 ALTER TABLE `pagepaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionassignments`
--

DROP TABLE IF EXISTS `pagepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionassignments`
--

LOCK TABLES `pagepermissionassignments` WRITE;
/*!40000 ALTER TABLE `pagepermissionassignments` DISABLE KEYS */;
INSERT INTO `pagepermissionassignments` VALUES (1,1,80),(1,2,81),(1,3,82),(1,4,83),(1,5,84),(1,6,85),(1,7,86),(1,8,88),(1,9,89),(1,10,90),(1,11,91),(1,12,92),(1,13,93),(1,14,94),(1,15,95),(1,16,96),(1,17,97),(1,18,87),(2,1,61),(167,1,60),(169,1,57),(170,1,58),(175,1,59),(177,1,62),(177,2,63),(177,3,64),(177,4,65),(177,5,66),(177,6,67),(177,7,68),(177,8,70),(177,9,71),(177,10,72),(177,11,73),(177,12,74),(177,13,75),(177,14,76),(177,15,77),(177,16,78),(177,17,79),(177,18,69);
/*!40000 ALTER TABLE `pagepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpagetypeaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpagetypeaccesslist`
--

LOCK TABLES `pagepermissionpagetypeaccesslist` WRITE;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpagetypeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpagetypeaccesslistcustom`
--

LOCK TABLES `pagepermissionpagetypeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpropertyaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionpropertyaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `name` tinyint(1) DEFAULT 0,
  `publicDateTime` tinyint(1) DEFAULT 0,
  `uID` tinyint(1) DEFAULT 0,
  `description` tinyint(1) DEFAULT 0,
  `paths` tinyint(1) DEFAULT 0,
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpropertyaccesslist`
--

LOCK TABLES `pagepermissionpropertyaccesslist` WRITE;
/*!40000 ALTER TABLE `pagepermissionpropertyaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpropertyaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionpropertyattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionpropertyattributeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `akID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionpropertyattributeaccesslistcustom`
--

LOCK TABLES `pagepermissionpropertyattributeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionthemeaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionthemeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionthemeaccesslist`
--

LOCK TABLES `pagepermissionthemeaccesslist` WRITE;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagepermissionthemeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionthemeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagepermissionthemeaccesslistcustom`
--

LOCK TABLES `pagepermissionthemeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `siteTreeID` int(10) unsigned DEFAULT 0,
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT 0,
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT 0,
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT 1,
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT 0,
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT 0,
  `cPointerExternalLink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT 0,
  `cIsActive` tinyint(1) NOT NULL DEFAULT 1,
  `cChildren` int(10) unsigned NOT NULL DEFAULT 0,
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  `cParentID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT 0,
  `cIsDraft` tinyint(1) NOT NULL DEFAULT 0,
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT -1,
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT 0,
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `siteTreeID` (`siteTreeID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,5,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,16,0,0,0,0,0,-1,'0',0,0),(2,0,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,12,0,0,0,0,0,-1,'0',0,1),(3,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,0,0,-1,'0',0,1),(4,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,0,-1,'0',0,1),(5,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,0,-1,'0',0,1),(6,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,0,-1,'0',0,1),(7,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,0,0,-1,'0',0,1),(8,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,0,-1,'0',0,1),(9,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,0,-1,'0',0,1),(10,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,0,-1,'0',0,1),(11,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,0,-1,'0',0,1),(12,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,7,3,2,0,0,0,-1,'0',0,1),(13,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,0,-1,'0',0,1),(14,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,0,-1,'0',0,1),(15,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,0,-1,'0',0,1),(16,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,0,-1,'0',0,1),(17,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,0,-1,'0',0,1),(18,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,0,-1,'0',0,1),(19,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,0,-1,'0',0,1),(20,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,0,-1,'0',0,1),(21,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,0,-1,'0',0,1),(22,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,0,-1,'0',0,1),(23,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/express/view.php',0,NULL,0,1,1,4,2,0,0,0,-1,'0',0,1),(24,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/express/entries.php',0,NULL,0,1,0,0,23,0,0,0,-1,'0',0,1),(25,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,5,2,0,0,0,-1,'0',0,1),(26,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,1,0,25,0,0,0,-1,'0',0,1),(27,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms/legacy.php',0,NULL,0,1,0,0,26,0,0,0,-1,'0',0,1),(28,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,25,0,0,0,-1,'0',0,1),(29,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,25,0,0,0,-1,'0',0,1),(30,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/page_changes.php',0,NULL,0,1,0,3,25,0,0,0,-1,'0',0,1),(31,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,6,6,2,0,0,0,-1,'0',0,1),(32,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,31,0,0,0,-1,'0',0,1),(33,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,32,0,0,0,-1,'0',0,1),(34,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,31,0,0,0,-1,'0',0,1),(35,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,34,0,0,0,-1,'0',0,1),(36,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,34,0,0,0,-1,'0',0,1),(37,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,34,0,0,0,-1,'0',0,1),(38,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,34,0,0,0,-1,'0',0,1),(39,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,34,0,0,0,-1,'0',0,1),(40,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,34,0,0,0,-1,'0',0,1),(41,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,31,0,0,0,-1,'0',0,1),(42,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,41,0,0,0,-1,'0',0,1),(43,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,31,0,0,0,-1,'0',0,1),(44,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,31,0,0,0,-1,'0',0,1),(45,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,31,0,0,0,-1,'0',0,1),(46,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/calendar/view.php',0,NULL,0,1,5,7,2,0,0,0,-1,'0',0,1),(47,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/calendar/events.php',0,NULL,0,1,0,0,46,0,0,0,-1,'0',0,1),(48,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/calendar/event_list.php',0,NULL,0,1,0,1,46,0,0,0,-1,'0',0,1),(49,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/calendar/add.php',0,NULL,0,1,0,2,46,0,0,0,-1,'0',0,1),(50,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/calendar/permissions.php',0,NULL,0,1,0,3,46,0,0,0,-1,'0',0,1),(51,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/calendar/attributes.php',0,NULL,0,1,0,4,46,0,0,0,-1,'0',0,1),(52,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/view.php',0,NULL,0,1,1,8,2,0,0,0,-1,'0',0,1),(53,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,52,0,0,0,-1,'0',0,1),(54,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,4,9,2,0,0,0,-1,'0',0,1),(55,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,54,0,0,0,-1,'0',0,1),(56,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,54,0,0,0,-1,'0',0,1),(57,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,55,0,0,0,-1,'0',0,1),(58,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,54,0,0,0,-1,'0',0,1),(59,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,10,2,0,0,0,-1,'0',0,1),(60,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,59,0,0,0,-1,'0',0,1),(61,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,59,0,0,0,-1,'0',0,1),(62,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,59,0,0,0,-1,'0',0,1),(63,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,59,0,0,0,-1,'0',0,1),(64,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,59,0,0,0,-1,'0',0,1),(65,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,15,11,2,0,0,0,-1,'0',0,1),(66,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,9,0,65,0,0,0,-1,'0',0,1),(67,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,66,0,0,0,-1,'0',0,1),(68,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,66,0,0,0,-1,'0',0,1),(69,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,66,0,0,0,-1,'0',0,1),(70,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,66,0,0,0,-1,'0',0,1),(71,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,66,0,0,0,-1,'0',0,1),(72,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,1,5,66,0,0,0,-1,'0',0,1),(73,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/update.php',0,NULL,0,1,0,0,72,0,0,0,-1,'0',0,1),(74,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,66,0,0,0,-1,'0',0,1),(75,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/attributes.php',0,NULL,0,1,0,7,66,0,0,0,-1,'0',0,1),(76,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/reset_edit_mode.php',0,NULL,0,1,0,8,66,0,0,0,-1,'0',0,1),(77,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/view.php',0,NULL,0,1,2,1,65,0,0,0,-1,'0',0,1),(78,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities.php',0,NULL,0,1,5,0,77,0,0,0,-1,'0',0,1),(79,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/attributes.php',0,NULL,0,1,0,0,78,0,0,0,-1,'0',0,1),(80,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/associations.php',0,NULL,0,1,0,1,78,0,0,0,-1,'0',0,1),(81,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/forms.php',0,NULL,0,1,0,2,78,0,0,0,-1,'0',0,1),(82,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/customize_search.php',0,NULL,0,1,0,3,78,0,0,0,-1,'0',0,1),(83,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entities/order_entries.php',0,NULL,0,1,0,4,78,0,0,0,-1,'0',0,1),(84,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/express/entries.php',0,NULL,0,1,0,1,77,0,0,0,-1,'0',0,1),(85,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,2,65,0,0,0,-1,'0',0,1),(86,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,85,0,0,0,-1,'0',0,1),(87,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,1,85,0,0,0,-1,'0',0,1),(88,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,2,85,0,0,0,-1,'0',0,1),(89,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,3,85,0,0,0,-1,'0',0,1),(90,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,3,65,0,0,0,-1,'0',0,1),(91,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,90,0,0,0,-1,'0',0,1),(92,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,90,0,0,0,-1,'0',0,1),(93,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,90,0,0,0,-1,'0',0,1),(94,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,90,0,0,0,-1,'0',0,1),(95,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,90,0,0,0,-1,'0',0,1),(96,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,6,4,65,0,0,0,-1,'0',0,1),(97,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,0,96,0,0,0,-1,'0',0,1),(98,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,1,96,0,0,0,-1,'0',0,1),(99,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,1,2,96,0,0,0,-1,'0',0,1),(100,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/thumbnails/options.php',0,NULL,0,1,0,0,99,0,0,0,-1,'0',0,1),(101,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/image_uploading.php',0,NULL,0,1,0,3,96,0,0,0,-1,'0',0,1),(102,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,4,96,0,0,0,-1,'0',0,1),(103,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/files/export_options.php',0,NULL,0,1,0,5,96,0,0,0,-1,'0',0,1),(104,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,5,65,0,0,0,-1,'0',0,1),(105,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,104,0,0,0,-1,'0',0,1),(106,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,104,0,0,0,-1,'0',0,1),(107,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,104,0,0,0,-1,'0',0,1),(108,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','',0,NULL,0,1,0,3,104,0,0,0,-1,'0',0,1),(109,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,6,65,0,0,0,-1,'0',0,1),(110,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,109,0,0,0,-1,'0',0,1),(111,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,109,0,0,0,-1,'0',0,1),(112,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,109,0,0,0,-1,'0',0,1),(113,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,109,0,0,0,-1,'0',0,1),(114,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/workflows.php',0,NULL,0,1,0,4,109,0,0,0,-1,'0',0,1),(115,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,1,5,109,0,0,0,-1,'0',0,1),(116,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/blacklist/range.php',0,NULL,0,1,0,0,115,0,0,0,-1,'0',0,1),(117,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,6,109,0,0,0,-1,'0',0,1),(118,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,7,109,0,0,0,-1,'0',0,1),(119,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,8,109,0,0,0,-1,'0',0,1),(120,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/trusted_proxies.php',0,NULL,0,1,0,9,109,0,0,0,-1,'0',0,1),(121,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,9,7,65,0,0,0,-1,'0',0,1),(122,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,0,121,0,0,0,-1,'0',0,1),(123,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,1,121,0,0,0,-1,'0',0,1),(124,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,2,121,0,0,0,-1,'0',0,1),(125,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,121,0,0,0,-1,'0',0,1),(126,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/global_password_reset.php',0,NULL,0,1,0,4,121,0,0,0,-1,'0',0,1),(127,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/notification.php',0,NULL,0,1,0,5,121,0,0,0,-1,'0',0,1),(128,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/deactivation.php',0,NULL,0,1,0,6,121,0,0,0,-1,'0',0,1),(129,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/automated_logout.php',0,NULL,0,1,0,7,121,0,0,0,-1,'0',0,1),(130,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/password_requirements.php',0,NULL,0,1,0,8,121,0,0,0,-1,'0',0,1),(131,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,3,8,65,0,0,0,-1,'0',0,1),(132,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,131,0,0,0,-1,'0',0,1),(133,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,132,0,0,0,-1,'0',0,1),(134,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,131,0,0,0,-1,'0',0,1),(135,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/addresses.php',0,NULL,0,1,0,2,131,0,0,0,-1,'0',0,1),(136,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/calendar/view.php',0,NULL,0,1,4,9,65,0,0,0,-1,'0',0,1),(137,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/calendar/settings.php',0,NULL,0,1,0,0,136,0,0,0,-1,'0',0,1),(138,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/calendar/colors.php',0,NULL,0,1,0,1,136,0,0,0,-1,'0',0,1),(139,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/calendar/permissions.php',0,NULL,0,1,0,2,136,0,0,0,-1,'0',0,1),(140,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/calendar/import.php',0,NULL,0,1,0,3,136,0,0,0,-1,'0',0,1),(141,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,10,65,0,0,0,-1,'0',0,1),(142,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,141,0,0,0,-1,'0',0,1),(143,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,141,0,0,0,-1,'0',0,1),(144,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,141,0,0,0,-1,'0',0,1),(145,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,141,0,0,0,-1,'0',0,1),(146,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,11,65,0,0,0,-1,'0',0,1),(147,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,0,146,0,0,0,-1,'0',0,1),(148,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,1,146,0,0,0,-1,'0',0,1),(149,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,146,0,0,0,-1,'0',0,1),(150,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,149,0,0,0,-1,'0',0,1),(151,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,7,12,65,0,0,0,-1,'0',0,1),(152,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,151,0,0,0,-1,'0',0,1),(153,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,151,0,0,0,-1,'0',0,1),(154,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,151,0,0,0,-1,'0',0,1),(155,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,151,0,0,0,-1,'0',0,1),(156,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,151,0,0,0,-1,'0',0,1),(157,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/database_charset.php',0,NULL,0,1,0,5,151,0,0,0,-1,'0',0,1),(158,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/geolocation.php',0,NULL,0,1,0,6,151,0,0,0,-1,'0',0,1),(159,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/update/view.php',0,NULL,0,1,1,13,65,0,0,0,-1,'0',0,1),(160,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/update/update.php',0,NULL,0,1,0,0,159,0,0,0,-1,'0',0,1),(161,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/api/view.php',0,NULL,0,1,2,14,65,0,0,0,-1,'0',0,1),(162,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/api/settings.php',0,NULL,0,1,0,0,161,0,0,0,-1,'0',0,1),(163,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/api/integrations.php',0,NULL,0,1,0,1,161,0,0,0,-1,'0',0,1),(164,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/welcome.php',0,NULL,0,1,1,0,2,0,0,0,-1,'0',0,1),(165,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,0,164,0,0,0,-1,'0',0,1),(166,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,2,0,0,0,0,0,-1,'0',0,1),(167,0,0,0,1,0,NULL,NULL,NULL,1,167,'OVERRIDE','/page_not_found.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(168,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(169,0,0,0,1,0,NULL,NULL,NULL,1,169,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(170,0,0,0,1,0,NULL,NULL,NULL,1,170,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(171,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,0,-1,'0',0,1),(172,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,171,0,0,0,-1,'0',0,1),(173,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,171,0,0,0,-1,'0',0,1),(174,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages.php',0,NULL,0,1,0,2,171,0,0,0,-1,'0',0,1),(175,0,0,0,1,0,NULL,NULL,NULL,1,175,'OVERRIDE','/page_forbidden.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(176,0,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(177,1,0,0,1,0,NULL,NULL,NULL,1,177,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(178,1,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/desktop.php',0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,1),(179,1,5,1,NULL,0,NULL,NULL,NULL,1,179,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,0),(185,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,1,0,1,0,-1,'0',0,0),(186,1,5,1,NULL,0,NULL,NULL,NULL,1,186,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,0),(187,0,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/block_builder.php',0,NULL,0,1,0,3,54,1,0,0,-1,'0',0,1),(188,1,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,1,0,-1,'0',0,0),(189,1,6,1,NULL,0,NULL,NULL,NULL,1,189,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,0,-1,'0',0,0),(191,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,1,0,0,0,-1,'0',0,0),(192,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,1,0,0,0,-1,'0',0,0),(193,1,6,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,0,0,-1,'0',0,0),(194,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,166,0,0,0,-1,'0',0,1),(195,0,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,166,0,0,0,-1,'0',0,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagesearchindex`
--

DROP TABLE IF EXISTS `pagesearchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagesearchindex`
--

LOCK TABLES `pagesearchindex` WRITE;
/*!40000 ALTER TABLE `pagesearchindex` DISABLE KEYS */;
INSERT INTO `pagesearchindex` VALUES (165,'','Waiting for Me',NULL,'/dashboard/welcome/me','2019-12-22 11:34:39','2019-12-22 11:34:47',NULL,0),(1,'An ugly looking blog  Recent blog posts ','Home',NULL,NULL,'2019-12-22 11:32:16','2019-12-22 15:33:06',NULL,0),(185,'\r\n	Widget 1\r\n	Widget 2\r\n	Widget 3\r\n\r\n My dog leslie 150px  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  ','My dog leslie','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','/blog-1','2019-12-22 12:04:34','2019-12-22 13:39:45',NULL,0),(188,'About 150px  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n 50px ','About','','/about','2019-12-22 12:36:11','2019-12-22 12:45:08',NULL,0),(191,'\r\n	Widget 1\r\n	Widget 2\r\n	Widget 3\r\n\r\n  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  My bird alberto 150px ','My bird Alberto','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','/blog-1/blog-1','2019-12-22 12:04:34','2019-12-22 13:42:59',NULL,0),(192,' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  My pretty yellow car 150px ','My pretty yellow car','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','/blog-1-2','2019-12-22 12:04:34','2019-12-22 13:48:07',NULL,0),(193,'\r\n	Widget 1\r\n	Widget 2\r\n	Widget 3\r\n\r\n  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  My cactus 150px ','My cactus','Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?','/blog-1-3','2019-12-22 12:04:34','2019-12-22 15:22:45',NULL,0),(194,'','Header area',NULL,'/!stacks/header-area','2019-12-22 15:29:52','2019-12-22 15:33:02',NULL,0),(195,' Copyright 2019 - Ugly blog \r\n ','Footer area',NULL,'/!stacks/footer-area','2019-12-22 15:31:32','2019-12-22 15:33:02',NULL,0);
/*!40000 ALTER TABLE `pagesearchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetemplates`
--

DROP TABLE IF EXISTS `pagetemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetemplates` (
  `pTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL,
  PRIMARY KEY (`pTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetemplates`
--

LOCK TABLES `pagetemplates` WRITE;
/*!40000 ALTER TABLE `pagetemplates` DISABLE KEYS */;
INSERT INTO `pagetemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'desktop','','Desktop',1,0),(3,'dashboard_full','','Dashboard Full',1,0),(4,'full','full.png','Full',0,0),(5,'single','full.png','Single',0,0);
/*!40000 ALTER TABLE `pagetemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagethemecustomstyles`
--

DROP TABLE IF EXISTS `pagethemecustomstyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagethemecustomstyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT 0,
  `scvlID` int(10) unsigned DEFAULT 0,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagethemecustomstyles`
--

LOCK TABLES `pagethemecustomstyles` WRITE;
/*!40000 ALTER TABLE `pagethemecustomstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagethemecustomstyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagethemes`
--

DROP TABLE IF EXISTS `pagethemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagethemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagethemes`
--

LOCK TABLES `pagethemes` WRITE;
/*!40000 ALTER TABLE `pagethemes` DISABLE KEYS */;
INSERT INTO `pagethemes` VALUES (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1),(2,'ugly-blog','Ugly blog theme','The custom theme for the ugly blog',0,0);
/*!40000 ALTER TABLE `pagethemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposercontroltypes`
--

DROP TABLE IF EXISTS `pagetypecomposercontroltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposercontroltypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposercontroltypes`
--

LOCK TABLES `pagetypecomposercontroltypes` WRITE;
/*!40000 ALTER TABLE `pagetypecomposercontroltypes` DISABLE KEYS */;
INSERT INTO `pagetypecomposercontroltypes` VALUES (1,'core_page_property','Built-In Property',0),(2,'collection_attribute','Custom Attribute',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `pagetypecomposercontroltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposerformlayoutsetcontrols`
--

DROP TABLE IF EXISTS `pagetypecomposerformlayoutsetcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposerformlayoutsetcontrols` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT 0,
  `ptComposerControlTypeID` int(10) unsigned DEFAULT 0,
  `ptComposerControlObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT 0,
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposerformlayoutsetcontrols`
--

LOCK TABLES `pagetypecomposerformlayoutsetcontrols` WRITE;
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsetcontrols` DISABLE KEYS */;
INSERT INTO `pagetypecomposerformlayoutsetcontrols` VALUES (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,'Page Name',NULL,NULL,1),(2,1,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(4,1,1,'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"list-alt\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(5,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(6,2,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":15:{s:7:\"\0*\0btID\";i:1;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:1;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/ugly_blog/concrete/blocks/content/icon.png\";s:33:\"\0*\0ptComposerControlIconFormatter\";N;s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,'Body',NULL,NULL,0),(7,3,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',0,NULL,NULL,NULL,1),(8,3,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(9,3,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(10,3,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(11,3,2,'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:20;}',4,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsetcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposerformlayoutsets`
--

DROP TABLE IF EXISTS `pagetypecomposerformlayoutsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposerformlayoutsets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposerformlayoutsets`
--

LOCK TABLES `pagetypecomposerformlayoutsets` WRITE;
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsets` DISABLE KEYS */;
INSERT INTO `pagetypecomposerformlayoutsets` VALUES (1,5,'Basics','',0),(2,5,'Content','',1),(3,6,'Blog page','Basic blog page information',0);
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposeroutputblocks`
--

DROP TABLE IF EXISTS `pagetypecomposeroutputblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposeroutputblocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `cvID` int(10) unsigned NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT 0,
  `bID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposeroutputblocks`
--

LOCK TABLES `pagetypecomposeroutputblocks` WRITE;
/*!40000 ALTER TABLE `pagetypecomposeroutputblocks` DISABLE KEYS */;
INSERT INTO `pagetypecomposeroutputblocks` VALUES (4,185,1,'Main',0,6,27),(7,188,1,'Main',0,6,35),(8,191,1,'Main',0,6,27),(9,192,1,'Main',0,6,27),(10,193,1,'Main',0,6,27);
/*!40000 ALTER TABLE `pagetypecomposeroutputblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypecomposeroutputcontrols`
--

DROP TABLE IF EXISTS `pagetypecomposeroutputcontrols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypecomposeroutputcontrols` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT 0,
  `ptID` int(10) unsigned DEFAULT 0,
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypecomposeroutputcontrols`
--

LOCK TABLES `pagetypecomposeroutputcontrols` WRITE;
/*!40000 ALTER TABLE `pagetypecomposeroutputcontrols` DISABLE KEYS */;
INSERT INTO `pagetypecomposeroutputcontrols` VALUES (1,4,5,6),(2,5,5,6);
/*!40000 ALTER TABLE `pagetypecomposeroutputcontrols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepagetemplatedefaultpages`
--

DROP TABLE IF EXISTS `pagetypepagetemplatedefaultpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepagetemplatedefaultpages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT 0,
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `cID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepagetemplatedefaultpages`
--

LOCK TABLES `pagetypepagetemplatedefaultpages` WRITE;
/*!40000 ALTER TABLE `pagetypepagetemplatedefaultpages` DISABLE KEYS */;
INSERT INTO `pagetypepagetemplatedefaultpages` VALUES (4,5,179),(5,5,186),(5,6,189);
/*!40000 ALTER TABLE `pagetypepagetemplatedefaultpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepagetemplates`
--

DROP TABLE IF EXISTS `pagetypepagetemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepagetemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepagetemplates`
--

LOCK TABLES `pagetypepagetemplates` WRITE;
/*!40000 ALTER TABLE `pagetypepagetemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagetypepagetemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepermissionassignments`
--

DROP TABLE IF EXISTS `pagetypepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepermissionassignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepermissionassignments`
--

LOCK TABLES `pagetypepermissionassignments` WRITE;
/*!40000 ALTER TABLE `pagetypepermissionassignments` DISABLE KEYS */;
INSERT INTO `pagetypepermissionassignments` VALUES (1,60,17),(1,61,17),(1,62,17),(1,63,17),(1,64,40),(2,60,17),(2,61,17),(2,62,17),(2,63,17),(2,64,41),(3,60,17),(3,61,17),(3,62,17),(3,63,17),(3,64,42),(4,60,17),(4,61,17),(4,62,17),(4,63,17),(4,64,43),(5,60,17),(5,61,17),(5,62,17),(5,63,17),(5,64,45),(6,60,17),(6,61,17),(6,62,17),(6,63,17),(6,64,112);
/*!40000 ALTER TABLE `pagetypepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypepublishtargettypes`
--

DROP TABLE IF EXISTS `pagetypepublishtargettypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypepublishtargettypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypepublishtargettypes`
--

LOCK TABLES `pagetypepublishtargettypes` WRITE;
/*!40000 ALTER TABLE `pagetypepublishtargettypes` DISABLE KEYS */;
INSERT INTO `pagetypepublishtargettypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `pagetypepublishtargettypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagetypes`
--

DROP TABLE IF EXISTS `pagetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagetypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT 0,
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT 1,
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `ptPublishTargetObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteTypeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `siteTypeID` (`siteTypeID`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagetypes`
--

LOCK TABLES `pagetypes` WRITE;
/*!40000 ALTER TABLE `pagetypes` DISABLE KEYS */;
INSERT INTO `pagetypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(2,'Stack Category','core_stack_category',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(3,'Desktop','core_desktop',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(4,'Dashboard Full','dashboard_full',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}',1),(5,'Page','page',3,4,'A',0,1,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}',1),(6,'Blog page','blog_page',1,5,'A',0,1,1,0,0,'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}',1);
/*!40000 ALTER TABLE `pagetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pageworkflowprogress`
--

DROP TABLE IF EXISTS `pageworkflowprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pageworkflowprogress`
--

LOCK TABLES `pageworkflowprogress` WRITE;
/*!40000 ALTER TABLE `pageworkflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `pageworkflowprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccess`
--

DROP TABLE IF EXISTS `permissionaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccess`
--

LOCK TABLES `permissionaccess` WRITE;
/*!40000 ALTER TABLE `permissionaccess` DISABLE KEYS */;
INSERT INTO `permissionaccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1);
/*!40000 ALTER TABLE `permissionaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentities`
--

DROP TABLE IF EXISTS `permissionaccessentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentities`
--

LOCK TABLES `permissionaccessentities` WRITE;
/*!40000 ALTER TABLE `permissionaccessentities` DISABLE KEYS */;
INSERT INTO `permissionaccessentities` VALUES (1,1),(2,1),(6,1),(7,2),(3,5),(4,6),(5,7);
/*!40000 ALTER TABLE `permissionaccessentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitygroups`
--

DROP TABLE IF EXISTS `permissionaccessentitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitygroups`
--

LOCK TABLES `permissionaccessentitygroups` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitygroups` DISABLE KEYS */;
INSERT INTO `permissionaccessentitygroups` VALUES (1,1,3),(2,2,1),(3,6,2);
/*!40000 ALTER TABLE `permissionaccessentitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitygroupsets`
--

DROP TABLE IF EXISTS `permissionaccessentitygroupsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `gsID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitygroupsets`
--

LOCK TABLES `permissionaccessentitygroupsets` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitygroupsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessentitygroupsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitytypecategories`
--

DROP TABLE IF EXISTS `permissionaccessentitytypecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitytypecategories`
--

LOCK TABLES `permissionaccessentitytypecategories` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitytypecategories` DISABLE KEYS */;
INSERT INTO `permissionaccessentitytypecategories` VALUES (1,1),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(2,1),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(3,1),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,24),(3,25),(4,1),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(5,1),(5,15),(6,5),(6,6),(7,21),(7,22);
/*!40000 ALTER TABLE `permissionaccessentitytypecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentitytypes`
--

DROP TABLE IF EXISTS `permissionaccessentitytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentitytypes`
--

LOCK TABLES `permissionaccessentitytypes` WRITE;
/*!40000 ALTER TABLE `permissionaccessentitytypes` DISABLE KEYS */;
INSERT INTO `permissionaccessentitytypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `permissionaccessentitytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessentityusers`
--

DROP TABLE IF EXISTS `permissionaccessentityusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessentityusers`
--

LOCK TABLES `permissionaccessentityusers` WRITE;
/*!40000 ALTER TABLE `permissionaccessentityusers` DISABLE KEYS */;
INSERT INTO `permissionaccessentityusers` VALUES (7,1);
/*!40000 ALTER TABLE `permissionaccessentityusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccesslist`
--

DROP TABLE IF EXISTS `permissionaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `pdID` int(10) unsigned NOT NULL DEFAULT 0,
  `accessType` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccesslist`
--

LOCK TABLES `permissionaccesslist` WRITE;
/*!40000 ALTER TABLE `permissionaccesslist` DISABLE KEYS */;
INSERT INTO `permissionaccesslist` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,2,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,2,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(28,1,0,10),(29,1,0,10),(30,1,0,10),(31,1,0,10),(32,1,0,10),(33,1,0,10),(34,1,0,10),(35,1,0,10),(36,1,0,10),(36,2,0,10),(37,1,0,10),(37,2,0,10),(38,1,0,10),(39,1,0,10),(40,3,0,10),(41,3,0,10),(42,3,0,10),(43,3,0,10),(44,1,0,10),(45,3,0,10),(46,2,0,10),(47,1,0,10),(47,2,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,2,0,10),(58,2,0,10),(59,2,0,10),(60,2,0,10),(61,1,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10),(69,1,0,10),(70,1,0,10),(71,1,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(78,1,0,10),(79,1,0,10),(80,2,0,10),(81,1,0,10),(82,1,0,10),(83,1,0,10),(84,1,0,10),(85,1,0,10),(86,1,0,10),(87,1,0,10),(88,1,0,10),(89,1,0,10),(90,1,0,10),(91,1,0,10),(92,1,0,10),(93,1,0,10),(94,1,0,10),(95,1,0,10),(96,1,0,10),(97,1,0,10),(98,1,0,10),(99,1,0,10),(100,1,0,10),(101,1,0,10),(102,1,0,10),(103,2,0,10),(104,2,0,10),(105,1,0,10),(105,5,0,10),(106,1,0,10),(106,5,0,10),(107,1,0,10),(107,6,0,10),(108,1,0,10),(109,1,0,10),(110,1,0,10),(111,1,0,10),(111,7,0,10),(112,3,0,10);
/*!40000 ALTER TABLE `permissionaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionaccessworkflows`
--

DROP TABLE IF EXISTS `permissionaccessworkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `wfID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionaccessworkflows`
--

LOCK TABLES `permissionaccessworkflows` WRITE;
/*!40000 ALTER TABLE `permissionaccessworkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessworkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionassignments`
--

DROP TABLE IF EXISTS `permissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionassignments`
--

LOCK TABLES `permissionassignments` WRITE;
/*!40000 ALTER TABLE `permissionassignments` DISABLE KEYS */;
INSERT INTO `permissionassignments` VALUES (1,19),(2,20),(3,75),(4,76),(5,77),(6,79),(7,80),(8,81),(9,83),(10,84),(11,85),(12,86),(13,87),(14,88),(15,89),(16,90),(17,110),(18,112),(19,113),(20,114),(21,115),(22,116),(23,117),(24,118),(25,119),(26,120),(27,121),(28,122),(29,123),(30,124),(31,125),(38,126),(39,127),(111,82);
/*!40000 ALTER TABLE `permissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissiondurationobjects`
--

DROP TABLE IF EXISTS `permissiondurationobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissiondurationobjects`
--

LOCK TABLES `permissiondurationobjects` WRITE;
/*!40000 ALTER TABLE `permissiondurationobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissiondurationobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionkeycategories`
--

DROP TABLE IF EXISTS `permissionkeycategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionkeycategories`
--

LOCK TABLES `permissionkeycategories` WRITE;
/*!40000 ALTER TABLE `permissionkeycategories` DISABLE KEYS */;
INSERT INTO `permissionkeycategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_folder',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'notification',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL),(15,'page_type',NULL),(16,'gathering',NULL),(17,'group_tree_node',NULL),(18,'express_tree_node',NULL),(19,'category_tree_node',NULL),(20,'topic_tree_node',NULL),(21,'conversation',NULL),(22,'conversation_message',NULL),(23,'multilingual_section',NULL),(24,'calendar_admin',NULL),(25,'calendar',NULL);
/*!40000 ALTER TABLE `permissionkeycategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionkeys`
--

DROP TABLE IF EXISTS `permissionkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT 0,
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `pkDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionkeys`
--

LOCK TABLES `permissionkeys` WRITE;
/*!40000 ALTER TABLE `permissionkeys` DISABLE KEYS */;
INSERT INTO `permissionkeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_folder_file','View Files',0,0,'View files within folder in the site.',5,0),(40,'search_file_folder','Search File Folder',0,0,'See this file folder in the file manager',5,0),(41,'edit_file_folder','Edit File Folder',0,0,'Edit a file folder.',5,0),(42,'edit_file_folder_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(43,'edit_file_folder_file_contents','Edit File Contents',0,0,'Can edit or replace files in folder.',5,0),(44,'copy_file_folder_files','Copy File',0,0,'Can copy files in file folder.',5,0),(45,'edit_file_folder_permissions','Edit File Access',0,0,'Can edit access to file folder.',5,0),(46,'delete_file_folder','Delete File Set',0,0,'Can delete file folder.',5,0),(47,'delete_file_folder_files','Delete File',0,0,'Can delete files in folder.',5,0),(48,'add_file','Add File',0,1,'Can add files to folder.',5,0),(49,'view_file','View Files',0,0,'Can view and download files.',6,0),(50,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(51,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(52,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(53,'copy_file','Copy File',0,0,'Can copy file.',6,0),(54,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(55,'delete_file','Delete File',0,0,'Can delete file.',6,0),(56,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(57,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(58,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(59,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(60,'add_page_type','Add Pages of This Type',0,0,'',15,0),(61,'edit_page_type','Edit Page Type',0,0,'',15,0),(62,'delete_page_type','Delete Page Type',0,0,'',15,0),(63,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',15,0),(64,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',15,0),(65,'view_topic_tree_node','View Topic Tree Node',0,0,'',20,0),(66,'view_category_tree_node','View Category Tree Node',0,0,'',19,0),(67,'add_conversation_message','Add Message to Conversation',0,1,'',21,0),(68,'add_conversation_message_attachments','Add Message Attachments',0,0,'',21,0),(69,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',21,0),(70,'delete_conversation_message','Delete Message',0,0,'',21,0),(71,'edit_conversation_message','Edit Message',0,0,'',21,0),(72,'rate_conversation_message','Rate Message',0,0,'',21,0),(73,'flag_conversation_message','Flag Message',0,0,'',21,0),(74,'approve_conversation_message','Approve Message',0,0,'',21,0),(75,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(76,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(77,'activate_user','Activate/Deactivate User',1,0,NULL,4,0),(78,'sudo','Sign in as User',0,0,NULL,4,0),(79,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(80,'access_group_search','Access Group Search',0,0,NULL,4,0),(81,'delete_user','Delete User',1,0,NULL,4,0),(82,'notify_in_notification_center','Notify in Notification Center',0,1,'Controls who receives updates in the notification center.',11,0),(83,'add_calendar','Add Calendar',0,0,'',24,0),(84,'view_calendars','View Calendars',0,0,'',24,0),(85,'edit_calendars','Edit Calendars',0,0,'',24,0),(86,'edit_calendars_permissions','Edit Permissions',0,0,'',24,0),(87,'add_calendar_events','Add Calendar Events',0,0,'',24,0),(88,'approve_calendar_events','Approve Calendar Events',1,0,'',24,0),(89,'delete_calendars','Delete Calendars',0,0,'',24,0),(90,'access_calendar_rss_feeds','Access RSS Feeds',0,0,'',24,0),(91,'view_calendar','View Calendar',0,0,'',25,0),(92,'view_calendar_in_edit_interface','View in Edit Interface',0,0,'',25,0),(93,'edit_calendar_permissions','Edit Permissions',0,0,'',25,0),(94,'edit_calendar','Edit Calendar',0,0,'',25,0),(95,'add_calendar_event','Add Calendar Event',0,0,'',25,0),(96,'approve_calendar_event','Approve Calendar Event',1,0,'',25,0),(97,'edit_calendar_event_more_details_location','Modify More Details Location',0,0,'',25,0),(98,'edit_calendar_events','Edit Calendar Events',0,0,'',25,0),(99,'access_calendar_rss_feed','Access RSS Feed',0,0,'',25,0),(100,'delete_calendar','Delete Calendar',0,0,'',25,0),(101,'view_express_entries','View Entries',0,0,NULL,18,0),(102,'add_express_entries','Add Entry',0,0,NULL,18,0),(103,'edit_express_entries','Edit Entry',0,0,NULL,18,0),(104,'delete_express_entries','Delete Entry',0,0,NULL,18,0),(105,'search_users_in_group','Search User Group',0,0,NULL,17,0),(106,'edit_group','Edit Group',0,0,NULL,17,0),(107,'assign_group','Assign Group',0,0,NULL,17,0),(108,'add_sub_group','Add Child Group',0,0,NULL,17,0),(109,'edit_group_permissions','Edit Group Permissions',0,0,NULL,17,0),(110,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(111,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(112,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(113,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(114,'customize_themes','Customize Themes',0,0,NULL,10,0),(115,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(116,'empty_trash','Empty Trash',0,0,NULL,10,0),(117,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(118,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(119,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(120,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(121,'install_packages','Install Packages',0,0,NULL,13,0),(122,'view_newsflow','View Newsflow',0,0,NULL,13,0),(123,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(124,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(125,'edit_topic_tree','Edit Topic Tree',0,0,NULL,10,0),(126,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(127,'edit_gathering_items','Edit Gathering Items',0,0,'',16,0);
/*!40000 ALTER TABLE `permissionkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilecontents`
--

DROP TABLE IF EXISTS `pilecontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT 0,
  `itemID` int(10) unsigned NOT NULL DEFAULT 0,
  `itemType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `displayOrder` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilecontents`
--

LOCK TABLES `pilecontents` WRITE;
/*!40000 ALTER TABLE `pilecontents` DISABLE KEYS */;
/*!40000 ALTER TABLE `pilecontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piles`
--

DROP TABLE IF EXISTS `piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piles`
--

LOCK TABLES `piles` WRITE;
/*!40000 ALTER TABLE `piles` DISABLE KEYS */;
/*!40000 ALTER TABLE `piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privatemessagenotifications`
--

DROP TABLE IF EXISTS `privatemessagenotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privatemessagenotifications` (
  `msgID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privatemessagenotifications`
--

LOCK TABLES `privatemessagenotifications` WRITE;
/*!40000 ALTER TABLE `privatemessagenotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `privatemessagenotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queuemessages`
--

DROP TABLE IF EXISTS `queuemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queuemessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queuemessages`
--

LOCK TABLES `queuemessages` WRITE;
/*!40000 ALTER TABLE `queuemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuemessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queuepageduplicationrelations`
--

DROP TABLE IF EXISTS `queuepageduplicationrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queuepageduplicationrelations` (
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `originalCID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queuepageduplicationrelations`
--

LOCK TABLES `queuepageduplicationrelations` WRITE;
/*!40000 ALTER TABLE `queuepageduplicationrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuepageduplicationrelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT 30,
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedexpresssearchqueries`
--

DROP TABLE IF EXISTS `savedexpresssearchqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedexpresssearchqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedexpresssearchqueries`
--

LOCK TABLES `savedexpresssearchqueries` WRITE;
/*!40000 ALTER TABLE `savedexpresssearchqueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedexpresssearchqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedfilesearchqueries`
--

DROP TABLE IF EXISTS `savedfilesearchqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedfilesearchqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedfilesearchqueries`
--

LOCK TABLES `savedfilesearchqueries` WRITE;
/*!40000 ALTER TABLE `savedfilesearchqueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedfilesearchqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedpagesearchqueries`
--

DROP TABLE IF EXISTS `savedpagesearchqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedpagesearchqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedpagesearchqueries`
--

LOCK TABLES `savedpagesearchqueries` WRITE;
/*!40000 ALTER TABLE `savedpagesearchqueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedpagesearchqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedusersearchqueries`
--

DROP TABLE IF EXISTS `savedusersearchqueries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedusersearchqueries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedusersearchqueries`
--

LOCK TABLES `savedusersearchqueries` WRITE;
/*!40000 ALTER TABLE `savedusersearchqueries` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedusersearchqueries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sessionID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionValue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  `sessionLifeTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siblingpagerelations`
--

DROP TABLE IF EXISTS `siblingpagerelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siblingpagerelations` (
  `mpRelationID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siblingpagerelations`
--

LOCK TABLES `siblingpagerelations` WRITE;
/*!40000 ALTER TABLE `siblingpagerelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `siblingpagerelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteattributekeys`
--

DROP TABLE IF EXISTS `siteattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteattributekeys`
--

LOCK TABLES `siteattributekeys` WRITE;
/*!40000 ALTER TABLE `siteattributekeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `siteattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteattributevalues`
--

DROP TABLE IF EXISTS `siteattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteattributevalues` (
  `siteID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`,`akID`),
  KEY `IDX_67658AF7521D8435` (`siteID`),
  KEY `IDX_67658AF7B6561A7E` (`akID`),
  KEY `IDX_67658AF7A2A82A5D` (`avID`),
  CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`),
  CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteattributevalues`
--

LOCK TABLES `siteattributevalues` WRITE;
/*!40000 ALTER TABLE `siteattributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `siteattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitelocales`
--

DROP TABLE IF EXISTS `sitelocales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitelocales` (
  `siteLocaleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteLocaleID`),
  UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  KEY `IDX_2527AB2C521D8435` (`siteID`),
  CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`),
  CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `sitetreetrees` (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitelocales`
--

LOCK TABLES `sitelocales` WRITE;
/*!40000 ALTER TABLE `sitelocales` DISABLE KEYS */;
INSERT INTO `sitelocales` VALUES (1,1,'en','US',2,'n != 1','one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',1,1);
/*!40000 ALTER TABLE `sitelocales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `siteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeID` int(10) unsigned NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteID`),
  UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  KEY `IDX_7DC18567E9548DF7` (`siteTypeID`),
  CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `sitetypes` (`siteTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,2,1,'default',1);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitesearchindexattributes`
--

DROP TABLE IF EXISTS `sitesearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitesearchindexattributes` (
  `siteID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`siteID`),
  CONSTRAINT `FK_3DD070B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitesearchindexattributes`
--

LOCK TABLES `sitesearchindexattributes` WRITE;
/*!40000 ALTER TABLE `sitesearchindexattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitesearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitetrees`
--

DROP TABLE IF EXISTS `sitetrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitetrees` (
  `siteTreeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteHomePageID` int(10) unsigned NOT NULL,
  `treeType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`siteTreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitetrees`
--

LOCK TABLES `sitetrees` WRITE;
/*!40000 ALTER TABLE `sitetrees` DISABLE KEYS */;
INSERT INTO `sitetrees` VALUES (1,1,'sitetree');
/*!40000 ALTER TABLE `sitetrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitetreetrees`
--

DROP TABLE IF EXISTS `sitetreetrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitetreetrees` (
  `siteLocaleID` int(10) unsigned DEFAULT NULL,
  `siteTreeID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`siteTreeID`),
  UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `sitelocales` (`siteLocaleID`),
  CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `sitetrees` (`siteTreeID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitetreetrees`
--

LOCK TABLES `sitetreetrees` WRITE;
/*!40000 ALTER TABLE `sitetreetrees` DISABLE KEYS */;
INSERT INTO `sitetreetrees` VALUES (1,1);
/*!40000 ALTER TABLE `sitetreetrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitetypes`
--

DROP TABLE IF EXISTS `sitetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitetypes` (
  `siteTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`siteTypeID`),
  UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  KEY `IDX_7CBFE975CE45CBB0` (`pkgID`),
  CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitetypes`
--

LOCK TABLES `sitetypes` WRITE;
/*!40000 ALTER TABLE `sitetypes` DISABLE KEYS */;
INSERT INTO `sitetypes` VALUES (1,'default','Default Site Type',0,0,NULL);
/*!40000 ALTER TABLE `sitetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociallinks`
--

DROP TABLE IF EXISTS `sociallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sociallinks` (
  `ssHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL AUTO_INCREMENT,
  `siteID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slID`),
  KEY `IDX_84EBA2B4521D8435` (`siteID`),
  CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociallinks`
--

LOCK TABLES `sociallinks` WRITE;
/*!40000 ALTER TABLE `sociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `sociallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stacks`
--

DROP TABLE IF EXISTS `stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT 0,
  `cID` int(10) unsigned NOT NULL DEFAULT 0,
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stacks`
--

LOCK TABLES `stacks` WRITE;
/*!40000 ALTER TABLE `stacks` DISABLE KEYS */;
INSERT INTO `stacks` VALUES (6,'Header area',20,194,0),(7,'Footer area',20,195,0);
/*!40000 ALTER TABLE `stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stackusagerecord`
--

DROP TABLE IF EXISTS `stackusagerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stackusagerecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL,
  PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  KEY `block` (`block_id`),
  KEY `collection_version` (`collection_id`,`collection_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stackusagerecord`
--

LOCK TABLES `stackusagerecord` WRITE;
/*!40000 ALTER TABLE `stackusagerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `stackusagerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizercustomcssrecords`
--

DROP TABLE IF EXISTS `stylecustomizercustomcssrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizercustomcssrecords` (
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizercustomcssrecords`
--

LOCK TABLES `stylecustomizercustomcssrecords` WRITE;
/*!40000 ALTER TABLE `stylecustomizercustomcssrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizercustomcssrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizerinlinestylepresets`
--

DROP TABLE IF EXISTS `stylecustomizerinlinestylepresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizerinlinestylepresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizerinlinestylepresets`
--

LOCK TABLES `stylecustomizerinlinestylepresets` WRITE;
/*!40000 ALTER TABLE `stylecustomizerinlinestylepresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizerinlinestylepresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizerinlinestylesets`
--

DROP TABLE IF EXISTS `stylecustomizerinlinestylesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizerinlinestylesets` (
  `issID` int(11) NOT NULL AUTO_INCREMENT,
  `customClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customElementAttribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizerinlinestylesets`
--

LOCK TABLES `stylecustomizerinlinestylesets` WRITE;
/*!40000 ALTER TABLE `stylecustomizerinlinestylesets` DISABLE KEYS */;
INSERT INTO `stylecustomizerinlinestylesets` VALUES (1,'concrete5-org-stories','','','',0,'','','','','','','','','','','','','','','','','','','','','','','','','',0,0,0,0);
/*!40000 ALTER TABLE `stylecustomizerinlinestylesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizervaluelists`
--

DROP TABLE IF EXISTS `stylecustomizervaluelists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizervaluelists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizervaluelists`
--

LOCK TABLES `stylecustomizervaluelists` WRITE;
/*!40000 ALTER TABLE `stylecustomizervaluelists` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizervaluelists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylecustomizervalues`
--

DROP TABLE IF EXISTS `stylecustomizervalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stylecustomizervalues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylecustomizervalues`
--

LOCK TABLES `stylecustomizervalues` WRITE;
/*!40000 ALTER TABLE `stylecustomizervalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizervalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemantispamlibraries`
--

DROP TABLE IF EXISTS `systemantispamlibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemantispamlibraries` (
  `saslHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemantispamlibraries`
--

LOCK TABLES `systemantispamlibraries` WRITE;
/*!40000 ALTER TABLE `systemantispamlibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemantispamlibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemcaptchalibraries`
--

DROP TABLE IF EXISTS `systemcaptchalibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemcaptchalibraries` (
  `sclHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemcaptchalibraries`
--

LOCK TABLES `systemcaptchalibraries` WRITE;
/*!40000 ALTER TABLE `systemcaptchalibraries` DISABLE KEYS */;
INSERT INTO `systemcaptchalibraries` VALUES ('recaptchaV3','reCAPTCHA v3',0,0),('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `systemcaptchalibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemcontenteditorsnippets`
--

DROP TABLE IF EXISTS `systemcontenteditorsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemcontenteditorsnippets` (
  `scsHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemcontenteditorsnippets`
--

LOCK TABLES `systemcontenteditorsnippets` WRITE;
/*!40000 ALTER TABLE `systemcontenteditorsnippets` DISABLE KEYS */;
INSERT INTO `systemcontenteditorsnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `systemcontenteditorsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemdatabasemigrations`
--

DROP TABLE IF EXISTS `systemdatabasemigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemdatabasemigrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemdatabasemigrations`
--

LOCK TABLES `systemdatabasemigrations` WRITE;
/*!40000 ALTER TABLE `systemdatabasemigrations` DISABLE KEYS */;
INSERT INTO `systemdatabasemigrations` VALUES ('20140919000000'),('20140930000000'),('20141017000000'),('20141024000000'),('20141113000000'),('20141219000000'),('20150109000000'),('20150504000000'),('20150515000000'),('20150610000000'),('20150612000000'),('20150615000000'),('20150616000000'),('20150619000000'),('20150622000000'),('20150623000000'),('20150713000000'),('20150731000000'),('20151221000000'),('20160107000000'),('20160213000000'),('20160314000000'),('20160412000000'),('20160615000000'),('20160725000000'),('20161109000000'),('20161203000000'),('20161208000000'),('20161216000000'),('20161216100000'),('20170118000000'),('20170123000000'),('20170201000000'),('20170202000000'),('20170227063249'),('20170313000000'),('20170316000000'),('20170404000000'),('20170406000000'),('20170407000001'),('20170412000000'),('20170418000000'),('20170420000000'),('20170421000000'),('20170424000000'),('20170505000000'),('20170512000000'),('20170519000000'),('20170608000000'),('20170608100000'),('20170609000000'),('20170609100000'),('20170610000000'),('20170611000000'),('20170613000000'),('20170614000000'),('20170626000000'),('20170711151953'),('20170731021618'),('20170802000000'),('20170804000000'),('20170810000000'),('20170818000000'),('20170824000000'),('20170905000000'),('20170915000000'),('20170926000000'),('20171012000000'),('20171025000000'),('20171109000000'),('20171109065758'),('20171110032423'),('20171121000000'),('20171129190607'),('20171218000000'),('20171221194440'),('20180119000000'),('20180122213656'),('20180122220813'),('20180123000000'),('20180126000000'),('20180130000000'),('20180212000000'),('20180213000000'),('20180227035239'),('20180308043255'),('20180328215345'),('20180329183749'),('20180330080830'),('20180403143200'),('20180518153531'),('20180524000000'),('20180531000000'),('20180604000000'),('20180609000000'),('20180615000000'),('20180617000000'),('20180621222449'),('20180622192332'),('20180627000000'),('20180709175202'),('20180710203437'),('20180716000000'),('20180717000000'),('20180813220933'),('20180816210727'),('20180820205800'),('20180831213421'),('20180904165911'),('20180907091500'),('20180910000000'),('20180912113737'),('20180920000000'),('20180926000000'),('20180926070200'),('20180926070300'),('20181006212300'),('20181006212400'),('20181019010145'),('20181029223809'),('20181105102800'),('20181112211702'),('20181116072400'),('20181211000000'),('20181211100000'),('20181212000000'),('20181212221911'),('20181222183445'),('20190106000000'),('20190110194848'),('20190110231015'),('20190111181236'),('20190112000000'),('20190129000000'),('20190225000000'),('20190225184524'),('20190301133300'),('20190516204806'),('20190520171430'),('20190625177700'),('20190625177710'),('20190717090600'),('20190817000000'),('20190822160700'),('20190826000000'),('20190925072210');
/*!40000 ALTER TABLE `systemdatabasemigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemdatabasequerylog`
--

DROP TABLE IF EXISTS `systemdatabasequerylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemdatabasequerylog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `executionMS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemdatabasequerylog`
--

LOCK TABLES `systemdatabasequerylog` WRITE;
/*!40000 ALTER TABLE `systemdatabasequerylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemdatabasequerylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topictrees`
--

DROP TABLE IF EXISTS `topictrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topictrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT 0,
  `topicTreeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topictrees`
--

LOCK TABLES `topictrees` WRITE;
/*!40000 ALTER TABLE `topictrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `topictrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treefilenodes`
--

DROP TABLE IF EXISTS `treefilenodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treefilenodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treefilenodes`
--

LOCK TABLES `treefilenodes` WRITE;
/*!40000 ALTER TABLE `treefilenodes` DISABLE KEYS */;
INSERT INTO `treefilenodes` VALUES (8,1),(9,2);
/*!40000 ALTER TABLE `treefilenodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treegroupnodes`
--

DROP TABLE IF EXISTS `treegroupnodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treegroupnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treegroupnodes`
--

LOCK TABLES `treegroupnodes` WRITE;
/*!40000 ALTER TABLE `treegroupnodes` DISABLE KEYS */;
INSERT INTO `treegroupnodes` VALUES (2,1),(3,2),(4,3);
/*!40000 ALTER TABLE `treegroupnodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodepermissionassignments`
--

DROP TABLE IF EXISTS `treenodepermissionassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodepermissionassignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkID` int(10) unsigned NOT NULL DEFAULT 0,
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodepermissionassignments`
--

LOCK TABLES `treenodepermissionassignments` WRITE;
/*!40000 ALTER TABLE `treenodepermissionassignments` DISABLE KEYS */;
INSERT INTO `treenodepermissionassignments` VALUES (1,105,98),(1,106,99),(1,107,100),(1,108,101),(1,109,102),(5,101,37),(5,102,33),(5,103,34),(5,104,35),(6,101,32),(6,102,36),(6,103,34),(6,104,35),(7,39,47),(7,40,48),(7,41,49),(7,42,50),(7,43,51),(7,44,52),(7,45,53),(7,46,55),(7,47,54),(7,48,56),(7,66,44);
/*!40000 ALTER TABLE `treenodepermissionassignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodes`
--

DROP TABLE IF EXISTS `treenodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT 0,
  `treeID` int(10) unsigned DEFAULT 0,
  `treeNodeParentID` int(10) unsigned DEFAULT 0,
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT 0,
  `treeNodeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT 0,
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodes`
--

LOCK TABLES `treenodes` WRITE;
/*!40000 ALTER TABLE `treenodes` DISABLE KEYS */;
INSERT INTO `treenodes` VALUES (1,1,1,0,0,'','2019-12-22 11:32:12','2019-12-22 11:32:12',1,1),(2,1,1,1,0,'','2019-12-22 11:32:12','2019-12-22 11:32:12',0,1),(3,1,1,1,1,'','2019-12-22 11:32:12','2019-12-22 11:32:12',0,1),(4,1,1,1,2,'','2019-12-22 11:32:12','2019-12-22 11:32:12',0,1),(5,3,2,0,0,'','2019-12-22 11:32:16','2019-12-22 11:32:15',1,5),(6,3,2,5,0,'Forms','2019-12-22 11:32:16','2019-12-22 11:32:16',1,6),(7,7,3,0,0,'','2019-12-22 13:09:51','2019-12-22 11:34:52',1,7),(8,6,3,7,0,'','2019-12-22 12:32:17','2019-12-22 12:32:17',0,7),(9,6,3,7,1,'','2019-12-22 13:09:51','2019-12-22 13:09:51',0,7);
/*!40000 ALTER TABLE `treenodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treenodetypes`
--

DROP TABLE IF EXISTS `treenodetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treenodetypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treenodetypes`
--

LOCK TABLES `treenodetypes` WRITE;
/*!40000 ALTER TABLE `treenodetypes` DISABLE KEYS */;
INSERT INTO `treenodetypes` VALUES (1,'group',0),(2,'category',0),(3,'express_entry_category',0),(4,'express_entry_results',0),(5,'topic',0),(6,'file',0),(7,'file_folder',0),(8,'search_preset',0);
/*!40000 ALTER TABLE `treenodetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT 0,
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trees`
--

LOCK TABLES `trees` WRITE;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` VALUES (1,1,'2019-12-22 11:32:12',1),(2,2,'2019-12-22 11:32:15',5),(3,4,'2019-12-22 11:34:52',7);
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treesearchquerynodes`
--

DROP TABLE IF EXISTS `treesearchquerynodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treesearchquerynodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savedSearchID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`treeNodeID`),
  KEY `savedSearchID` (`savedSearchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treesearchquerynodes`
--

LOCK TABLES `treesearchquerynodes` WRITE;
/*!40000 ALTER TABLE `treesearchquerynodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `treesearchquerynodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treetypes`
--

DROP TABLE IF EXISTS `treetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treetypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treetypes`
--

LOCK TABLES `treetypes` WRITE;
/*!40000 ALTER TABLE `treetypes` DISABLE KEYS */;
INSERT INTO `treetypes` VALUES (1,'group',0),(2,'express_entry_results',0),(3,'topic',0),(4,'file_manager',0);
/*!40000 ALTER TABLE `treetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usedstringlog`
--

DROP TABLE IF EXISTS `usedstringlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usedstringlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usedString` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4E83837CF5E609AF` (`usedString`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usedstringlog`
--

LOCK TABLES `usedstringlog` WRITE;
/*!40000 ALTER TABLE `usedstringlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `usedstringlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userattributekeys`
--

DROP TABLE IF EXISTS `userattributekeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userattributekeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`akID`),
  CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattributekeys`
--

LOCK TABLES `userattributekeys` WRITE;
/*!40000 ALTER TABLE `userattributekeys` DISABLE KEYS */;
INSERT INTO `userattributekeys` VALUES (0,1,0,1,0,0,14),(0,1,0,1,0,0,15),(0,0,0,0,0,0,18);
/*!40000 ALTER TABLE `userattributekeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userattributevalues`
--

DROP TABLE IF EXISTS `userattributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userattributevalues` (
  `uID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uID`,`akID`),
  KEY `IDX_4DB68CA6FD71026C` (`uID`),
  KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  KEY `IDX_4DB68CA6A2A82A5D` (`avID`),
  CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattributevalues`
--

LOCK TABLES `userattributevalues` WRITE;
/*!40000 ALTER TABLE `userattributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `userattributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdeactivatednotifications`
--

DROP TABLE IF EXISTS `userdeactivatednotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdeactivatednotifications` (
  `userID` int(10) unsigned NOT NULL,
  `actorID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_ED5A1F9FED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdeactivatednotifications`
--

LOCK TABLES `userdeactivatednotifications` WRITE;
/*!40000 ALTER TABLE `userdeactivatednotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdeactivatednotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `gID` int(10) unsigned NOT NULL DEFAULT 0,
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userloginattempts`
--

DROP TABLE IF EXISTS `userloginattempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userloginattempts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `userId` int(10) unsigned NOT NULL,
  `utcDate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userloginattempts`
--

LOCK TABLES `userloginattempts` WRITE;
/*!40000 ALTER TABLE `userloginattempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `userloginattempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissioneditpropertyaccesslist`
--

DROP TABLE IF EXISTS `userpermissioneditpropertyaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `uName` tinyint(1) DEFAULT 0,
  `uEmail` tinyint(1) DEFAULT 0,
  `uPassword` tinyint(1) DEFAULT 0,
  `uAvatar` tinyint(1) DEFAULT 0,
  `uTimezone` tinyint(1) DEFAULT 0,
  `uDefaultLanguage` tinyint(1) DEFAULT 0,
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissioneditpropertyaccesslist`
--

LOCK TABLES `userpermissioneditpropertyaccesslist` WRITE;
/*!40000 ALTER TABLE `userpermissioneditpropertyaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissioneditpropertyaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissioneditpropertyattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissioneditpropertyattributeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `akID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissioneditpropertyattributeaccesslistcustom`
--

LOCK TABLES `userpermissioneditpropertyattributeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissionviewattributeaccesslist`
--

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissionviewattributeaccesslist`
--

LOCK TABLES `userpermissionviewattributeaccesslist` WRITE;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissionviewattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslistcustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT 0,
  `peID` int(10) unsigned NOT NULL DEFAULT 0,
  `akID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissionviewattributeaccesslistcustom`
--

LOCK TABLES `userpermissionviewattributeaccesslistcustom` WRITE;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslistcustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpointactions`
--

DROP TABLE IF EXISTS `userpointactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpointactions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `upaIsActive` tinyint(1) NOT NULL DEFAULT 1,
  `gBadgeID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpointactions`
--

LOCK TABLES `userpointactions` WRITE;
/*!40000 ALTER TABLE `userpointactions` DISABLE KEYS */;
INSERT INTO `userpointactions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `userpointactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpointhistory`
--

DROP TABLE IF EXISTS `userpointhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT 0,
  `upaID` int(11) DEFAULT 0,
  `upPoints` int(11) DEFAULT 0,
  `object` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpointhistory`
--

LOCK TABLES `userpointhistory` WRITE;
/*!40000 ALTER TABLE `userpointhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpointhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprivatemessages`
--

DROP TABLE IF EXISTS `userprivatemessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT 0,
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uToID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprivatemessages`
--

LOCK TABLES `userprivatemessages` WRITE;
/*!40000 ALTER TABLE `userprivatemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprivatemessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprivatemessagesto`
--

DROP TABLE IF EXISTS `userprivatemessagesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT 0,
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT 0,
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT 0,
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT 0,
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprivatemessagesto`
--

LOCK TABLES `userprivatemessagesto` WRITE;
/*!40000 ALTER TABLE `userprivatemessagesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprivatemessagesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT -1,
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT 0,
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT 0,
  `uPreviousLogin` int(10) unsigned DEFAULT 0,
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT 0,
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT 0,
  `uLastIP` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uTimezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','info@example.com','$2a$12$/piw9lhQQzVZlyB6b956QOqWk97v/zat32FBe/V/BnbKjY3xFpm7i',1,1,1,'2019-12-22 11:32:12','2019-12-22 11:32:12',0,1577026841,1577010732,0,1,0,'00000000000000000000000000000001',NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersearchindexattributes`
--

DROP TABLE IF EXISTS `usersearchindexattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersearchindexattributes` (
  `uID` int(10) unsigned NOT NULL,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT 0,
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`uID`),
  CONSTRAINT `FK_74798B07FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersearchindexattributes`
--

LOCK TABLES `usersearchindexattributes` WRITE;
/*!40000 ALTER TABLE `usersearchindexattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersearchindexattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersignupnotifications`
--

DROP TABLE IF EXISTS `usersignupnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersignupnotifications` (
  `usID` int(10) unsigned DEFAULT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  KEY `IDX_7FB1DF5B7B18287E` (`usID`),
  CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `usersignups` (`usID`),
  CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersignupnotifications`
--

LOCK TABLES `usersignupnotifications` WRITE;
/*!40000 ALTER TABLE `usersignupnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersignupnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersignups`
--

DROP TABLE IF EXISTS `usersignups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersignups` (
  `usID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `createdBy` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`usID`),
  UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  KEY `IDX_FEB5D909D3564642` (`createdBy`),
  CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `users` (`uID`),
  CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersignups`
--

LOCK TABLES `usersignups` WRITE;
/*!40000 ALTER TABLE `usersignups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersignups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uservalidationhashes`
--

DROP TABLE IF EXISTS `uservalidationhashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT 0,
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uservalidationhashes`
--

LOCK TABLES `uservalidationhashes` WRITE;
/*!40000 ALTER TABLE `uservalidationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uservalidationhashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userworkflowprogress`
--

DROP TABLE IF EXISTS `userworkflowprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userworkflowprogress` (
  `uID` int(10) unsigned NOT NULL DEFAULT 0,
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userworkflowprogress`
--

LOCK TABLES `userworkflowprogress` WRITE;
/*!40000 ALTER TABLE `userworkflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `userworkflowprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogress`
--

DROP TABLE IF EXISTS `workflowprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT 0,
  `wpApproved` tinyint(1) NOT NULL DEFAULT 0,
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT 0,
  `wrID` int(11) NOT NULL DEFAULT 0,
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogress`
--

LOCK TABLES `workflowprogress` WRITE;
/*!40000 ALTER TABLE `workflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogresscategories`
--

DROP TABLE IF EXISTS `workflowprogresscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogresscategories`
--

LOCK TABLES `workflowprogresscategories` WRITE;
/*!40000 ALTER TABLE `workflowprogresscategories` DISABLE KEYS */;
INSERT INTO `workflowprogresscategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL),(4,'calendar_event',NULL);
/*!40000 ALTER TABLE `workflowprogresscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogresshistory`
--

DROP TABLE IF EXISTS `workflowprogresshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `object` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogresshistory`
--

LOCK TABLES `workflowprogresshistory` WRITE;
/*!40000 ALTER TABLE `workflowprogresshistory` DISABLE KEYS */;
INSERT INTO `workflowprogresshistory` VALUES (1,1,'2019-12-22 11:02:21','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"2\";}'),(2,2,'2019-12-22 11:05:19','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"1\";}'),(3,3,'2019-12-22 11:07:09','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"2\";}'),(4,4,'2019-12-22 11:32:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"3\";}'),(5,5,'2019-12-22 11:36:34','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"1\";}'),(6,6,'2019-12-22 11:37:16','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"2\";}'),(7,7,'2019-12-22 11:45:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"3\";}'),(8,8,'2019-12-22 12:10:22','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"3\";}'),(9,9,'2019-12-22 12:12:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"4\";}'),(10,10,'2019-12-22 12:17:22','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"5\";}'),(11,11,'2019-12-22 12:19:54','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"6\";}'),(12,12,'2019-12-22 12:21:15','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"7\";}'),(13,13,'2019-12-22 12:39:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"8\";}'),(14,14,'2019-12-22 12:40:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"4\";}'),(15,15,'2019-12-22 12:42:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:1:\"9\";}'),(16,16,'2019-12-22 12:42:56','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:2:\"10\";}'),(17,17,'2019-12-22 12:43:12','O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";i:1;s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:16;s:3:\"cID\";i:191;s:15:\"saveOldPagePath\";b:0;}'),(18,18,'2019-12-22 12:44:15','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:1:\"9\";}'),(19,19,'2019-12-22 12:48:02','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:2:\"10\";}'),(20,20,'2019-12-22 14:17:31','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:1:\"9\";}'),(21,21,'2019-12-22 14:22:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:2:\"10\";}'),(22,22,'2019-12-22 14:30:24','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"5\";}'),(23,23,'2019-12-22 14:33:02','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"6\";}');
/*!40000 ALTER TABLE `workflowprogresshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowprogressnotifications`
--

DROP TABLE IF EXISTS `workflowprogressnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowprogressnotifications` (
  `wpID` int(10) unsigned NOT NULL,
  `nID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nID`),
  CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowprogressnotifications`
--

LOCK TABLES `workflowprogressnotifications` WRITE;
/*!40000 ALTER TABLE `workflowprogressnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowprogressnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowrequestobjects`
--

DROP TABLE IF EXISTS `workflowrequestobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowrequestobjects`
--

LOCK TABLES `workflowrequestobjects` WRITE;
/*!40000 ALTER TABLE `workflowrequestobjects` DISABLE KEYS */;
INSERT INTO `workflowrequestobjects` VALUES (1,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"2\";}'),(2,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"1\";}'),(3,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"2\";}'),(4,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"3\";}'),(5,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"1\";}'),(6,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"2\";}'),(7,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"3\";}'),(8,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"3\";}'),(9,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"4\";}'),(10,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"5\";}'),(11,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"6\";}'),(12,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"7\";}'),(13,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"8\";}'),(14,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"4\";}'),(15,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:1:\"9\";}'),(16,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:2:\"10\";}'),(17,'O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";i:1;s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:16;s:3:\"cID\";i:191;s:15:\"saveOldPagePath\";b:0;}'),(18,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:1:\"9\";}'),(19,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:2:\"10\";}'),(20,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:1:\"9\";}'),(21,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:2:\"10\";}'),(22,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"5\";}'),(23,'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"6\";}');
/*!40000 ALTER TABLE `workflowrequestobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT 0,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowtypes`
--

DROP TABLE IF EXISTS `workflowtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowtypes`
--

LOCK TABLES `workflowtypes` WRITE;
/*!40000 ALTER TABLE `workflowtypes` DISABLE KEYS */;
INSERT INTO `workflowtypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `workflowtypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-22 16:04:17
