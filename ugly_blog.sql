-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 05:12 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ugly_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `arealayoutcolumns`
--

CREATE TABLE `arealayoutcolumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arLayoutColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arLayoutColumnDisplayID` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arealayoutcolumns`
--

INSERT INTO `arealayoutcolumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1, 1, 0, 2, 1),
(2, 1, 1, 3, 2),
(3, 1, 2, 4, 3),
(4, 2, 0, 5, 4),
(5, 2, 1, 6, 5),
(6, 3, 0, 7, 6),
(7, 3, 1, 8, 7),
(8, 3, 2, 9, 8),
(9, 4, 0, 11, 9),
(10, 5, 0, 12, 10),
(11, 6, 0, 14, 11),
(12, 7, 0, 15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `arealayoutcustomcolumns`
--

CREATE TABLE `arealayoutcustomcolumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arealayoutpresets`
--

CREATE TABLE `arealayoutpresets` (
  `arLayoutPresetID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arLayoutPresetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arealayouts`
--

CREATE TABLE `arealayouts` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `arLayoutSpacing` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT 0,
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT 0,
  `arLayoutMaxColumns` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arealayouts`
--

INSERT INTO `arealayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1, 0, 0, 0, 12, 1),
(2, 0, 0, 0, 12, 1),
(3, 0, 0, 0, 12, 1),
(4, 0, 0, 0, 12, 1),
(5, 0, 0, 0, 12, 1),
(6, 0, 0, 0, 12, 1),
(7, 0, 0, 0, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `arealayoutsusingpresets`
--

CREATE TABLE `arealayoutsusingpresets` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arealayoutthemegridcolumns`
--

CREATE TABLE `arealayoutthemegridcolumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnSpan` int(10) UNSIGNED DEFAULT 0,
  `arLayoutColumnOffset` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arealayoutthemegridcolumns`
--

INSERT INTO `arealayoutthemegridcolumns` (`arLayoutColumnID`, `arLayoutColumnSpan`, `arLayoutColumnOffset`) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(4, 4, 0),
(5, 8, 0),
(6, 4, 0),
(7, 4, 0),
(8, 4, 0),
(9, 12, 0),
(10, 12, 0),
(11, 12, 0),
(12, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionassignments`
--

CREATE TABLE `areapermissionassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionblocktypeaccesslist`
--

CREATE TABLE `areapermissionblocktypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionblocktypeaccesslistcustom`
--

CREATE TABLE `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `btID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `arID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT 0,
  `arInheritPermissionsFromAreaOnCID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT 0,
  `arParentID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 164, 'Main', 0, 0, 0, 0),
(2, 164, 'Main : 1', 0, 0, 0, 1),
(3, 164, 'Main : 2', 0, 0, 0, 1),
(4, 164, 'Main : 3', 0, 0, 0, 1),
(5, 164, 'Main : 4', 0, 0, 0, 1),
(6, 164, 'Main : 5', 0, 0, 0, 1),
(7, 164, 'Main : 6', 0, 0, 0, 1),
(8, 164, 'Main : 7', 0, 0, 0, 1),
(9, 164, 'Main : 8', 0, 0, 0, 1),
(10, 165, 'Main', 0, 0, 0, 0),
(11, 165, 'Main : 9', 0, 0, 0, 10),
(12, 165, 'Main : 10', 0, 0, 0, 10),
(13, 178, 'Main', 0, 0, 0, 0),
(14, 178, 'Main : 11', 0, 0, 0, 13),
(15, 178, 'Main : 12', 0, 0, 0, 13),
(16, 179, 'Main', 0, 0, 0, 0),
(21, 1, 'Main', 0, 0, 0, 0),
(22, 1, 'Page Footer', 0, 0, 0, 0),
(29, 167, 'Main', 0, 0, 0, 0),
(30, 1, 'Default page content', 0, 0, 0, 0),
(31, 185, 'Main', 0, 0, 0, 0),
(32, 185, 'Default page content', 0, 0, 0, 0),
(33, 185, 'Full width header area', 0, 0, 0, 0),
(34, 185, 'Left side content area', 0, 0, 0, 0),
(35, 185, 'Widget area', 0, 0, 0, 0),
(36, 188, 'Main', 0, 0, 0, 0),
(37, 188, 'Default page content', 0, 0, 0, 0),
(41, 191, 'Full width header area', 0, 0, 0, 0),
(42, 191, 'Left side content area', 0, 0, 0, 0),
(43, 191, 'Widget area', 0, 0, 0, 0),
(44, 191, 'Main', 0, 0, 0, 0),
(45, 192, 'Full width header area', 0, 0, 0, 0),
(46, 192, 'Left side content area', 0, 0, 0, 0),
(47, 192, 'Widget area', 0, 0, 0, 0),
(48, 192, 'Main', 0, 0, 0, 0),
(49, 193, 'Full width header area', 0, 0, 0, 0),
(50, 193, 'Left side content area', 0, 0, 0, 0),
(51, 193, 'Widget area', 0, 0, 0, 0),
(52, 193, 'Main', 0, 0, 0, 0),
(53, 194, 'Main', 0, 0, 0, 0),
(54, 1, 'Header area', 0, 0, 1, 0),
(55, 193, 'Header area', 0, 0, 1, 0),
(56, 185, 'Header area', 0, 0, 1, 0),
(57, 195, 'Main', 0, 0, 0, 0),
(58, 1, 'Footer area', 0, 0, 1, 0),
(59, 188, 'Header area', 0, 0, 1, 0),
(60, 188, 'Footer area', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ataddress`
--

CREATE TABLE `ataddress` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ataddresssettings`
--

CREATE TABLE `ataddresssettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akGeolocateCountry` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atboolean`
--

CREATE TABLE `atboolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atboolean`
--

INSERT INTO `atboolean` (`value`, `avID`) VALUES
(1, 9),
(1, 16),
(1, 18),
(1, 24),
(1, 25),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 48),
(1, 49),
(1, 56),
(1, 67),
(1, 70),
(1, 71),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 92),
(0, 104),
(1, 129),
(1, 139),
(1, 140),
(1, 142),
(0, 143),
(1, 149),
(1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `atbooleansettings`
--

CREATE TABLE `atbooleansettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atbooleansettings`
--

INSERT INTO `atbooleansettings` (`akCheckedByDefault`, `checkboxLabel`, `akID`) VALUES
(0, NULL, 5),
(0, 'Exclude Page from Navigation', 7),
(0, 'Exclude Page from Page List Blocks', 8),
(0, 'Feature this Page', 11),
(0, NULL, 12),
(0, NULL, 13),
(1, NULL, 14),
(1, NULL, 15);

-- --------------------------------------------------------

--
-- Table structure for table `atdatetime`
--

CREATE TABLE `atdatetime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atdatetimesettings`
--

CREATE TABLE `atdatetimesettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT 0,
  `akDateDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akTextCustomFormat` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Custom format for text inputs',
  `akTimeResolution` int(10) UNSIGNED NOT NULL DEFAULT 60 COMMENT 'Time resolution (in seconds)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atdefault`
--

CREATE TABLE `atdefault` (
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atdefault`
--

INSERT INTO `atdefault` (`value`, `avID`) VALUES
('fa fa-th-large', 1),
('pages, add page, delete page, copy, move, alias', 2),
('pages, add page, delete page, copy, move, alias', 3),
('pages, add page, delete page, copy, move, alias, bulk', 4),
('find page, search page, search, find, pages, sitemap', 5),
('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 6),
('file, file attributes, title, attribute, description, rename', 7),
('files, category, categories', 8),
('new file set', 10),
('users, groups, people, find, delete user, remove user, change password, password', 11),
('find, search, people, delete user, remove user, change password, password', 12),
('user, group, people, permissions, expire, badges', 13),
('user attributes, user data, gather data, registration data', 14),
('new user, create', 15),
('new user group, new group, group, create', 17),
('group set', 19),
('community, points, karma', 20),
('action, community actions', 21),
('forms, log, error, email, mysql, exception, survey', 22),
('forms, questions, response, data', 23),
('questions, quiz, response', 26),
('forms, log, error, email, mysql, exception, survey, history', 27),
('changes, csv, report', 28),
('new theme, theme, active theme, change theme, template, css', 29),
('page types', 30),
('page attributes, custom', 39),
('single, page, custom, application', 40),
('atom, rss, feed, syndication', 41),
('icon-bullhorn', 46),
('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 47),
('edit stacks, view stacks, all stacks', 50),
('block, refresh, custom', 51),
('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', 52),
('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', 53),
('update, upgrade', 54),
('concrete5.org, my account, marketplace', 55),
('buy theme, new theme, marketplace, template', 57),
('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', 58),
('dashboard, configuration', 59),
('website name, title', 60),
('accessibility, easy mode', 61),
('sharing, facebook, twitter', 62),
('logo, favicon, iphone, icon, bookmark', 63),
('tinymce, content block, fonts, editor, content, overlay', 64),
('translate, translation, internationalization, multilingual', 65),
('languages, update, gettext, translation, translate', 66),
('timezone, profile, locale', 68),
('site attributes', 69),
('checkin, check-in, check, force', 72),
('multilingual, localization, internationalization, i18n', 83),
('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', 84),
('bulk, seo, change keywords, engine, optimization, search', 85),
('traffic, statistics, google analytics, quant, pageviews, hits', 86),
('pretty, slug', 87),
('configure search, site search, search option', 88),
('security, files, media, extension, manager, upload', 89),
('file options, file manager, upload, modify', 90),
('images, picture, responsive, retina', 91),
('thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency', 93),
('uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg', 94),
('security, alternate storage, hide files', 95),
('files, export, csv, bom, encoding', 96),
('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', 97),
('cache option, turn off cache, no cache, page cache, caching', 98),
('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', 99),
('queries, database, mysql', 100),
('editors, hide site, offline, private, public, access', 101),
('security, actions, administrator, admin, package, marketplace, search', 102),
('security, lock ip, lock out, block ip, address, restrict, access', 103),
('security, registration', 105),
('antispam, block spam, security', 106),
('lock site, under construction, hide, hidden', 107),
('trusted, proxy, proxies, ip, header, cloudflare', 108),
('signup, new user, community, public registration, public, registration', 109),
('profile, login, redirect, specific, dashboard, administrators', 110),
('member profile, member page, community, forums, social, avatar', 111),
('auth, authentication, types, oauth, facebook, login, registration', 112),
('global, password, reset, change password, force, sign out', 113),
('login, logout, user, agent, ip, change, security, session, invalidation, invalid', 114),
('password, requirements, code, key, login, registration, security, nist', 115),
('smtp, mail settings', 116),
('email server, mail settings, mail configuration, external, internal', 117),
('test smtp, test mail', 118),
('email server, mail settings, mail configuration, private message, message system, import, email, message', 119),
('mail settings, mail configuration, email, sender', 120),
('conversations', 121),
('conversations', 122),
('conversations ratings, ratings, community, community points', 123),
('conversations bad words, banned words, banned, bad words, bad, words, list', 124),
('attribute configuration', 125),
('attributes, types', 126),
('attributes, sets', 127),
('topics, tags, taxonomy', 128),
('overrides, system info, debug, support, help', 130),
('errors, exceptions, develop, support, help', 131),
('email, logging, logs, smtp, pop, errors, mysql, log', 132),
('network, proxy server', 133),
('database, entities, doctrine, orm', 134),
('database, character set, charset, collation, utf8', 135),
('geolocation, ip, address, country, nation, place, locate', 136),
('upgrade, new version, update', 137),
('API, programming, public, app', 138),
('fa fa-th', 144),
('fa fa-trash-o', 145),
('fa fa-briefcase', 146),
('fa fa-edit', 147);

-- --------------------------------------------------------

--
-- Table structure for table `atemptysettings`
--

CREATE TABLE `atemptysettings` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atemptysettings`
--

INSERT INTO `atemptysettings` (`akID`) VALUES
(4),
(16),
(17),
(18),
(19);

-- --------------------------------------------------------

--
-- Table structure for table `atexpress`
--

CREATE TABLE `atexpress` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atexpressselectedentries`
--

CREATE TABLE `atexpressselectedentries` (
  `avID` int(10) UNSIGNED NOT NULL,
  `exEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atexpresssettings`
--

CREATE TABLE `atexpresssettings` (
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atfile`
--

CREATE TABLE `atfile` (
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atfilesettings`
--

CREATE TABLE `atfilesettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atnumber`
--

CREATE TABLE `atnumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atnumber`
--

INSERT INTO `atnumber` (`value`, `avID`) VALUES
('2.0000', 141),
('1.0000', 148),
('1000.0000', 151),
('1250.0000', 152),
('975.0000', 153),
('1300.0000', 154);

-- --------------------------------------------------------

--
-- Table structure for table `atselect`
--

CREATE TABLE `atselect` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atselect`
--

INSERT INTO `atselect` (`avID`) VALUES
(159),
(160),
(162),
(163),
(165),
(166);

-- --------------------------------------------------------

--
-- Table structure for table `atselectedsociallinks`
--

CREATE TABLE `atselectedsociallinks` (
  `avsID` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atselectedtopics`
--

CREATE TABLE `atselectedtopics` (
  `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptionlists`
--

CREATE TABLE `atselectoptionlists` (
  `avSelectOptionListID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atselectoptionlists`
--

INSERT INTO `atselectoptionlists` (`avSelectOptionListID`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptions`
--

CREATE TABLE `atselectoptions` (
  `avSelectOptionID` int(10) UNSIGNED NOT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atselectoptions`
--

INSERT INTO `atselectoptions` (`avSelectOptionID`, `isEndUserAdded`, `isDeleted`, `displayOrder`, `value`, `avSelectOptionListID`) VALUES
(1, 0, 0, 0, 'Animals', 2),
(2, 0, 0, 1, 'Cars', 2),
(3, 0, 0, 2, 'Plants', 2);

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptionsselected`
--

CREATE TABLE `atselectoptionsselected` (
  `avID` int(10) UNSIGNED NOT NULL,
  `avSelectOptionID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atselectoptionsselected`
--

INSERT INTO `atselectoptionsselected` (`avID`, `avSelectOptionID`) VALUES
(159, 1),
(160, 1),
(160, 3),
(162, 1),
(163, 2),
(165, 1),
(165, 3),
(166, 3);

-- --------------------------------------------------------

--
-- Table structure for table `atselectsettings`
--

CREATE TABLE `atselectsettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akHideNoneOption` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akDisplayMultipleValuesOnSelect` tinyint(1) NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atselectsettings`
--

INSERT INTO `atselectsettings` (`akSelectAllowMultipleValues`, `akSelectAllowOtherValues`, `akHideNoneOption`, `akSelectOptionDisplayOrder`, `akDisplayMultipleValuesOnSelect`, `avSelectOptionListID`, `akID`) VALUES
(1, 1, 0, 'display_asc', 0, 1, 10),
(1, 0, 0, 'alpha_asc', 0, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `atsociallinks`
--

CREATE TABLE `atsociallinks` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attextareasettings`
--

CREATE TABLE `attextareasettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attextareasettings`
--

INSERT INTO `attextareasettings` (`akTextareaDisplayMode`, `akID`) VALUES
('', 2),
('', 3),
('', 6),
('', 9);

-- --------------------------------------------------------

--
-- Table structure for table `attextsettings`
--

CREATE TABLE `attextsettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attextsettings`
--

INSERT INTO `attextsettings` (`akTextPlaceholder`, `akID`) VALUES
('', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attopic`
--

CREATE TABLE `attopic` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attopicsettings`
--

CREATE TABLE `attopicsettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT 1,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributekeycategories`
--

CREATE TABLE `attributekeycategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributekeycategories`
--

INSERT INTO `attributekeycategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL),
(4, 'site', 1, NULL),
(5, 'event', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributekeys`
--

CREATE TABLE `attributekeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) UNSIGNED DEFAULT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributekeys`
--

INSERT INTO `attributekeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsInternal`, `akIsSearchableIndexed`, `atID`, `akCategoryID`, `pkgID`, `akCategory`) VALUES
(1, 'meta_title', 'Meta Title', 1, 0, 0, 1, 1, NULL, 'pagekey'),
(2, 'meta_description', 'Meta Description', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(3, 'meta_keywords', 'Meta Keywords', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(4, 'desktop_priority', 'Desktop Priority', 1, 1, 0, 6, 1, NULL, 'pagekey'),
(5, 'is_desktop', 'Is Desktop', 1, 1, 0, 3, 1, NULL, 'pagekey'),
(6, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 2, 1, NULL, 'pagekey'),
(7, 'exclude_nav', 'Exclude From Nav', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(8, 'exclude_page_list', 'Exclude From Page List', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(9, 'header_extra_content', 'Header Extra Content', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(10, 'tags', 'Tags', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(11, 'is_featured', 'Is Featured', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(12, 'exclude_search_index', 'Exclude From Search Index', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(13, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(14, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(15, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(16, 'width', 'Width', 1, 0, 0, 6, 3, NULL, 'filekey'),
(17, 'height', 'Height', 1, 0, 0, 6, 3, NULL, 'filekey'),
(18, 'account_profile_links', 'Personal Links', 1, 0, 0, 14, 2, NULL, 'userkey'),
(19, 'duration', 'Duration', 1, 0, 0, 6, 3, NULL, 'filekey'),
(20, 'category_selection', 'Select category', 1, 0, 1, 7, 1, NULL, 'pagekey');

-- --------------------------------------------------------

--
-- Table structure for table `attributesetkeys`
--

CREATE TABLE `attributesetkeys` (
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributesetkeys`
--

INSERT INTO `attributesetkeys` (`asDisplayOrder`, `akID`, `asID`) VALUES
(0, 1, 1),
(1, 2, 1),
(1, 7, 2),
(2, 8, 2),
(2, 9, 1),
(4, 10, 2),
(0, 11, 2),
(3, 12, 2),
(3, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributesets`
--

CREATE TABLE `attributesets` (
  `asID` int(10) UNSIGNED NOT NULL,
  `asHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributesets`
--

INSERT INTO `attributesets` (`asID`, `asHandle`, `asName`, `asDisplayOrder`, `asIsLocked`, `akCategoryID`, `pkgID`) VALUES
(1, 'seo', 'SEO', 0, 0, 1, NULL),
(2, 'navigation', 'Navigation and Indexing', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributetypecategories`
--

CREATE TABLE `attributetypecategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `atID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributetypecategories`
--

INSERT INTO `attributetypecategories` (`akCategoryID`, `atID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 13),
(2, 14),
(2, 17),
(2, 19),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 17),
(3, 19),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 13),
(4, 15),
(4, 17),
(4, 18),
(4, 19),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 13),
(5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `attributetypes`
--

CREATE TABLE `attributetypes` (
  `atID` int(10) UNSIGNED NOT NULL,
  `atHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributetypes`
--

INSERT INTO `attributetypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', NULL),
(2, 'textarea', 'Text Area', NULL),
(3, 'boolean', 'Checkbox', NULL),
(4, 'date_time', 'Date/Time', NULL),
(5, 'image_file', 'Image/File', NULL),
(6, 'number', 'Number', NULL),
(7, 'select', 'Option List', NULL),
(8, 'address', 'Address', NULL),
(9, 'telephone', 'Phone Number', NULL),
(10, 'url', 'URL', NULL),
(11, 'email', 'Email', NULL),
(12, 'rating', 'Rating', NULL),
(13, 'topics', 'Topics', NULL),
(14, 'social_links', 'Social Links', NULL),
(15, 'calendar', 'Calendar', NULL),
(16, 'calendar_event', 'Calendar Event', NULL),
(17, 'express', 'Express Entity', NULL),
(18, 'page_selector', 'Page Selector', NULL),
(19, 'user_selector', 'User Selector', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributevalues`
--

CREATE TABLE `attributevalues` (
  `avID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributevalues`
--

INSERT INTO `attributevalues` (`avID`, `akID`) VALUES
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(17, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(39, 3),
(40, 3),
(41, 3),
(47, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(68, 3),
(69, 3),
(72, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(141, 4),
(148, 4),
(142, 5),
(149, 5),
(1, 6),
(46, 6),
(144, 6),
(145, 6),
(146, 6),
(147, 6),
(9, 7),
(16, 7),
(18, 7),
(24, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 7),
(37, 7),
(38, 7),
(42, 7),
(44, 7),
(48, 7),
(56, 7),
(67, 7),
(70, 7),
(73, 7),
(75, 7),
(77, 7),
(79, 7),
(81, 7),
(92, 7),
(104, 7),
(139, 7),
(143, 7),
(150, 7),
(25, 12),
(43, 12),
(45, 12),
(49, 12),
(71, 12),
(74, 12),
(76, 12),
(78, 12),
(80, 12),
(82, 12),
(129, 12),
(140, 12),
(151, 16),
(153, 16),
(152, 17),
(154, 17),
(159, 20),
(160, 20),
(162, 20),
(163, 20),
(165, 20),
(166, 20);

-- --------------------------------------------------------

--
-- Table structure for table `authenticationtypes`
--

CREATE TABLE `authenticationtypes` (
  `authTypeID` int(10) UNSIGNED NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authenticationtypes`
--

INSERT INTO `authenticationtypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0),
(6, 'external_concrete5', 'External concrete5', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `authtypeconcretecookiemap`
--

CREATE TABLE `authtypeconcretecookiemap` (
  `ID` int(10) UNSIGNED NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bannedwords`
--

CREATE TABLE `bannedwords` (
  `bwID` int(10) UNSIGNED NOT NULL,
  `bannedWord` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bannedwords`
--

INSERT INTO `bannedwords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Table structure for table `basicworkflowpermissionassignments`
--

CREATE TABLE `basicworkflowpermissionassignments` (
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basicworkflowprogressdata`
--

CREATE TABLE `basicworkflowprogressdata` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uIDStarted` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uIDCompleted` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blockfeatureassignments`
--

CREATE TABLE `blockfeatureassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `faID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blockpermissionassignments`
--

CREATE TABLE `blockpermissionassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 36, 1, NULL),
(2, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 44, 1, NULL),
(3, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 40, 1, NULL),
(4, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 38, 1, NULL),
(5, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 37, 1, NULL),
(6, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 44, 1, NULL),
(7, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 15, 1, NULL),
(8, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 39, 1, NULL),
(9, '', '2019-12-22 11:34:46', '2019-12-22 11:34:46', NULL, '0', 44, 1, NULL),
(10, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 43, 1, NULL),
(11, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 43, 1, NULL),
(12, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 43, 1, NULL),
(13, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 15, 1, NULL),
(14, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 44, 1, NULL),
(15, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 41, 1, NULL),
(16, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 44, 1, NULL),
(17, '', '2019-12-22 11:34:47', '2019-12-22 11:34:47', NULL, '0', 42, 1, NULL),
(18, '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', NULL, '0', 44, 1, NULL),
(19, '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', NULL, '0', 41, 1, NULL),
(20, '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', NULL, '0', 44, 1, NULL),
(21, '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', NULL, '0', 42, 1, NULL),
(22, '', '2019-12-22 11:34:58', '2019-12-22 11:34:58', NULL, '0', 45, 1, NULL),
(23, '', '2019-12-22 12:02:16', '2019-12-22 12:02:16', NULL, '0', 1, 1, NULL),
(27, '', '2019-12-22 12:05:19', '2019-12-22 12:05:19', NULL, '0', 1, 1, NULL),
(28, '', '2019-12-22 12:06:28', '2019-12-22 12:06:28', NULL, '0', 1, 1, NULL),
(29, '', '2019-12-22 12:06:44', '2019-12-22 12:06:44', NULL, '0', 1, 1, NULL),
(30, '', '2019-12-22 12:07:05', '2019-12-22 12:07:05', NULL, '0', 1, 1, NULL),
(32, '', '2019-12-22 12:32:48', '2019-12-22 12:32:48', NULL, '0', 50, 1, NULL),
(35, '', '2019-12-22 12:36:34', '2019-12-22 12:36:34', NULL, '0', 1, 1, NULL),
(36, '', '2019-12-22 12:37:10', '2019-12-22 12:37:10', NULL, '0', 50, 1, NULL),
(37, '', '2019-12-22 12:44:56', '2019-12-22 12:44:56', NULL, '0', 51, 1, NULL),
(39, '', '2019-12-22 13:10:15', '2019-12-22 13:10:15', NULL, '0', 50, 1, NULL),
(41, '', '2019-12-22 13:12:27', '2019-12-22 13:12:27', NULL, '0', 51, 1, NULL),
(42, '', '2019-12-22 13:28:16', '2019-12-22 13:28:16', NULL, '0', 52, 1, NULL),
(43, '', '2019-12-22 13:42:51', '2019-12-22 13:42:51', NULL, '1', 50, 1, NULL),
(44, '', '2019-12-22 13:44:01', '2019-12-22 13:44:01', NULL, '1', 50, 1, NULL),
(46, '', '2019-12-22 13:47:56', '2019-12-22 13:47:56', NULL, '0', 53, 1, NULL),
(47, '', '2019-12-22 15:17:26', '2019-12-22 15:17:26', NULL, '1', 50, 1, NULL),
(48, '', '2019-12-22 15:30:16', '2019-12-22 15:30:16', NULL, '0', 1, 1, NULL),
(49, '', '2019-12-22 15:32:02', '2019-12-22 15:32:02', NULL, '0', 1, 1, NULL),
(50, '', '2019-12-22 15:32:49', '2019-12-22 15:32:49', NULL, '0', 7, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blocktypepermissionblocktypeaccesslist`
--

CREATE TABLE `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocktypepermissionblocktypeaccesslistcustom`
--

CREATE TABLE `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `btID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocktypes`
--

CREATE TABLE `blocktypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL,
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
  `pkgID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocktypes`
--

INSERT INTO `blocktypes` (`btIgnorePageThemeGridFrameworkContainer`, `btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineEdit`, `btSupportsInlineAdd`, `btDisplayOrder`, `btInterfaceHeight`, `btInterfaceWidth`, `pkgID`) VALUES
(0, 1, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 44, 465, 600, 0),
(1, 2, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 31, 500, 600, 0),
(0, 3, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 30, 550, 400, 0),
(0, 4, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 29, 320, 300, 0),
(1, 5, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 28, 400, 400, 0),
(0, 6, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 27, 520, 400, 0),
(0, 7, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 26, 525, 700, 0),
(0, 8, 'page_title', 'Page Title', 'Displays a Page\'s Title', 0, 0, 0, 0, 0, 25, 500, 470, 0),
(0, 9, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 24, 465, 600, 0),
(0, 10, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 23, 525, 700, 0),
(0, 11, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 22, 400, 430, 0),
(0, 12, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 32, 450, 400, 0),
(0, 13, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 33, 439, 450, 0),
(0, 14, 'topic_list', 'Topic List', 'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 43, 400, 400, 0),
(0, 15, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 42, 550, 400, 0),
(0, 16, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 41, 150, 500, 0),
(0, 17, 'express_form', 'Form', 'Build simple forms and surveys.', 0, 0, 0, 0, 0, 40, 700, 640, 0),
(0, 18, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 39, 420, 400, 0),
(0, 19, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 38, 175, 420, 0),
(0, 20, 'express_entry_list', 'Express Entry List', 'Add a searchable Express entry list to a page.', 0, 0, 0, 0, 0, 37, 400, 640, 0),
(0, 21, 'express_entry_detail', 'Express Entry Detail', 'Add an Express entry detail display to a page.', 0, 0, 0, 0, 0, 36, 400, 640, 0),
(0, 22, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 35, 500, 500, 0),
(0, 23, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 34, 400, 450, 0),
(0, 24, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 21, 400, 400, 0),
(0, 25, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person\'s picture.', 0, 0, 0, 0, 0, 20, 560, 450, 0),
(0, 26, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 11, 400, 400, 0),
(0, 27, 'calendar', 'Calendar', 'Displays a month view calendar on a page.', 0, 0, 0, 0, 0, 10, 475, 500, 0),
(0, 28, 'event_list', 'Event List', 'Displays a list of events from a calendar.', 0, 0, 0, 0, 0, 9, 340, 500, 0),
(0, 29, 'calendar_event', 'Calendar Event', 'Displays a calendar event on a page.', 0, 0, 0, 0, 0, 8, 400, 550, 0),
(0, 30, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 7, 365, 500, 0),
(1, 31, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 6, 550, 600, 0),
(0, 32, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 5, 440, 450, 0),
(0, 33, 'document_library', 'Document Library', 'Add a searchable document library to a page.', 0, 0, 0, 0, 0, 4, 400, 640, 0),
(0, 34, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 3, 490, 400, 0),
(0, 35, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 2, 550, 525, 0),
(0, 36, 'desktop_app_status', 'concrete5 Status Messages', 'Displays alerts about your concrete5 site and package updates.', 0, 0, 0, 0, 0, 12, 400, 400, 0),
(0, 37, 'desktop_site_activity', 'Site Activity', 'Displays a graph of recent activity on your site.', 0, 0, 0, 0, 0, 13, 560, 450, 0),
(0, 38, 'desktop_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 0, 0, 0, 19, 100, 300, 0),
(0, 39, 'desktop_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 0, 0, 0, 18, 100, 300, 0),
(0, 40, 'desktop_latest_form', 'Latest Form', 'Shows the latest form submission.', 0, 0, 0, 0, 0, 17, 400, 400, 0),
(0, 41, 'desktop_waiting_for_me', 'Waiting for Me', 'Displays workflow actions waiting for you.', 0, 0, 0, 0, 0, 16, 560, 450, 0),
(0, 42, 'desktop_draft_list', 'Draft List', 'Displays a list of all drafts.', 0, 0, 0, 0, 0, 15, 400, 400, 0),
(0, 43, 'desktop_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 0, 0, 0, 14, 400, 400, 0),
(0, 44, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 400, 400, 0),
(0, 45, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 46, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 47, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 48, 'form', 'Legacy Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 0, 1, 430, 420, 0),
(0, 50, 'big_hero_img', 'Big hero image', '', 0, 0, 0, 0, 0, 0, 650, 800, 0),
(0, 51, 'text_block', 'Text block', '', 0, 0, 0, 0, 0, 0, 650, 800, 0),
(0, 52, 'latest_three_posts', 'Latest 3 blog posts', '', 0, 0, 0, 0, 0, 0, 650, 800, 0),
(0, 53, 'blog_post_widget', 'Blog posts widget', '', 0, 0, 0, 0, 0, 0, 650, 800, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blocktypesetblocktypes`
--

CREATE TABLE `blocktypesetblocktypes` (
  `btID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `btsID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocktypesetblocktypes`
--

INSERT INTO `blocktypesetblocktypes` (`btID`, `btsID`, `displayOrder`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 2, 0),
(8, 2, 1),
(9, 2, 2),
(10, 2, 3),
(11, 2, 4),
(12, 2, 5),
(13, 2, 6),
(14, 2, 7),
(15, 2, 8),
(16, 2, 9),
(17, 3, 0),
(18, 3, 1),
(19, 3, 2),
(20, 4, 0),
(21, 4, 1),
(22, 5, 0),
(23, 5, 1),
(24, 5, 2),
(25, 5, 3),
(26, 5, 4),
(27, 6, 0),
(28, 6, 1),
(29, 6, 2),
(30, 7, 0),
(31, 7, 1),
(32, 7, 2),
(33, 7, 3),
(34, 7, 4),
(35, 7, 5),
(36, 8, 0),
(37, 8, 1),
(38, 8, 2),
(39, 8, 3),
(40, 8, 4),
(41, 8, 5),
(42, 8, 6),
(43, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `blocktypesets`
--

CREATE TABLE `blocktypesets` (
  `btsID` int(10) UNSIGNED NOT NULL,
  `btsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `btsDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocktypesets`
--

INSERT INTO `blocktypesets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Express', 'express', 0, 0),
(5, 'Social Networking', 'social', 0, 0),
(6, 'Calendar & Events', 'calendar', 0, 0),
(7, 'Multimedia', 'multimedia', 0, 0),
(8, 'Desktop', 'core_desktop', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btbigheroimg`
--

CREATE TABLE `btbigheroimg` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bgImage` int(10) UNSIGNED DEFAULT 0,
  `heroText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heroHeight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textPos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btbigheroimg`
--

INSERT INTO `btbigheroimg` (`bID`, `bgImage`, `heroText`, `heroHeight`, `textPos`) VALUES
(32, 1, 'An ugly looking blog', '', 'right'),
(36, 1, 'About', '150px', 'left'),
(39, 2, 'My dog leslie', '150px', 'left'),
(43, 2, 'My bird alberto', '150px', 'left'),
(44, 2, 'My pretty yellow car', '150px', 'left'),
(47, 2, 'My cactus', '150px', 'left');

-- --------------------------------------------------------

--
-- Table structure for table `btblogpostwidget`
--

CREATE TABLE `btblogpostwidget` (
  `bID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btblogpostwidget`
--

INSERT INTO `btblogpostwidget` (`bID`) VALUES
(46);

-- --------------------------------------------------------

--
-- Table structure for table `btcalendar`
--

CREATE TABLE `btcalendar` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `viewTypes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewTypesOrder` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultView` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navLinks` int(11) DEFAULT NULL,
  `eventLimit` int(11) DEFAULT NULL,
  `lightboxProperties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btcalendarevent`
--

CREATE TABLE `btcalendarevent` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Specify, P = Page, R = Request',
  `calendarEventAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendarID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `displayEventAttributes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableLinkToPage` tinyint(1) DEFAULT 0,
  `displayEventName` tinyint(1) DEFAULT 0,
  `displayEventDate` tinyint(1) DEFAULT 0,
  `displayEventDescription` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btcontentfile`
--

CREATE TABLE `btcontentfile` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btcontentimage`
--

CREATE TABLE `btcontentimage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT 0,
  `fOnstateID` int(10) UNSIGNED DEFAULT 0,
  `cropImage` int(10) UNSIGNED DEFAULT 0,
  `maxWidth` int(10) UNSIGNED DEFAULT 0,
  `maxHeight` int(10) UNSIGNED DEFAULT 0,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT 0,
  `fileLinkID` int(10) UNSIGNED DEFAULT 0,
  `openLinkInNewWindow` tinyint(1) NOT NULL DEFAULT 0,
  `altText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btcontentlocal`
--

CREATE TABLE `btcontentlocal` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btcontentlocal`
--

INSERT INTO `btcontentlocal` (`bID`, `content`) VALUES
(23, '<p style=\"text-align: center;\">Hello there bugs bunny</p>\r\n'),
(27, ''),
(28, '<h1 style=\"text-align: center;\">My dog leslie</h1>\r\n'),
(29, '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Atque&nbsp;maxime&nbsp;libero&nbsp;recusandae&nbsp;quas&nbsp;excepturi&nbsp;facilis&nbsp;cumque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tenetur&nbsp;modi&nbsp;similique.&nbsp;Exercitationem&nbsp;quasi&nbsp;iusto&nbsp;optio&nbsp;atque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;harum&nbsp;ea,&nbsp;amet&nbsp;voluptatum&nbsp;voluptates&nbsp;vero.&nbsp;Lorem&nbsp;ipsum&nbsp;dolor</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Sequi&nbsp;dolores&nbsp;qui</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sapiente&nbsp;corrupti&nbsp;vitae,&nbsp;accusantium,&nbsp;fuga&nbsp;sunt&nbsp;aliquid</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doloribus&nbsp;asperiores&nbsp;odit&nbsp;molestias&nbsp;nemo&nbsp;consectetur</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laboriosam&nbsp;neque&nbsp;unde&nbsp;velit&nbsp;numquam&nbsp;eos?</p>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Atque&nbsp;maxime&nbsp;libero&nbsp;recusandae&nbsp;quas&nbsp;excepturi&nbsp;facilis&nbsp;cumque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tenetur&nbsp;modi&nbsp;similique.&nbsp;Exercitationem&nbsp;quasi&nbsp;iusto&nbsp;optio&nbsp;atque</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;harum&nbsp;ea,&nbsp;amet&nbsp;voluptatum&nbsp;voluptates&nbsp;vero.&nbsp;Lorem&nbsp;ipsum&nbsp;dolor</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Sequi&nbsp;dolores&nbsp;qui</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sapiente&nbsp;corrupti&nbsp;vitae,&nbsp;accusantium,&nbsp;fuga&nbsp;sunt&nbsp;aliquid</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doloribus&nbsp;asperiores&nbsp;odit&nbsp;molestias&nbsp;nemo&nbsp;consectetur</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laboriosam&nbsp;neque&nbsp;unde&nbsp;velit&nbsp;numquam&nbsp;eos?</p>\r\n'),
(30, '<ul>\r\n	<li>Widget 1</li>\r\n	<li>Widget 2</li>\r\n	<li>Widget 3</li>\r\n</ul>\r\n'),
(35, ''),
(48, '<p>This is my custom header text</p>\r\n'),
(49, '<p>Copyright 2019 - Ugly blog</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `btcorearealayout`
--

CREATE TABLE `btcorearealayout` (
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btcorearealayout`
--

INSERT INTO `btcorearealayout` (`bID`, `arLayoutID`) VALUES
(2, 1),
(6, 2),
(9, 3),
(14, 4),
(16, 5),
(18, 6),
(20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `btcoreconversation`
--

CREATE TABLE `btcoreconversation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT 1,
  `paginate` tinyint(1) NOT NULL DEFAULT 1,
  `itemsPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT 50,
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
  `customDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btcorepagetypecomposercontroloutput`
--

CREATE TABLE `btcorepagetypecomposercontroloutput` (
  `bID` int(10) UNSIGNED NOT NULL,
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btcorepagetypecomposercontroloutput`
--

INSERT INTO `btcorepagetypecomposercontroloutput` (`bID`, `ptComposerOutputControlID`) VALUES
(22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btcorescrapbookdisplay`
--

CREATE TABLE `btcorescrapbookdisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bOriginalID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btcorestackdisplay`
--

CREATE TABLE `btcorestackdisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `stID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btdatenavigation`
--

CREATE TABLE `btdatenavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT 0,
  `redirectToResults` tinyint(1) DEFAULT 0,
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cTargetID` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btdesktopdraftlist`
--

CREATE TABLE `btdesktopdraftlist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `draftsPerPage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btdesktopdraftlist`
--

INSERT INTO `btdesktopdraftlist` (`bID`, `draftsPerPage`) VALUES
(17, 10),
(21, 10);

-- --------------------------------------------------------

--
-- Table structure for table `btdesktopnewsflowlatest`
--

CREATE TABLE `btdesktopnewsflowlatest` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btdesktopnewsflowlatest`
--

INSERT INTO `btdesktopnewsflowlatest` (`bID`, `slot`) VALUES
(10, 'A'),
(11, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btdesktopsiteactivity`
--

CREATE TABLE `btdesktopsiteactivity` (
  `bID` int(10) UNSIGNED NOT NULL,
  `types` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btdesktopsiteactivity`
--

INSERT INTO `btdesktopsiteactivity` (`bID`, `types`) VALUES
(5, '[\"form_submissions\",\"survey_results\",\"signups\",\"conversation_messages\",\"workflow\"]');

-- --------------------------------------------------------

--
-- Table structure for table `btdocumentlibrary`
--

CREATE TABLE `btdocumentlibrary` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `addFilesToSetID` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bteventlist`
--

CREATE TABLE `bteventlist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalToRetrieve` smallint(5) UNSIGNED NOT NULL DEFAULT 10,
  `totalPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT 10,
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `filterByPageTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `eventListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkToPage` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btexpressentrydetail`
--

CREATE TABLE `btexpressentrydetail` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exSpecificEntryID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `entryMode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btexpressentrylist`
--

CREATE TABLE `btexpressentrylist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailPage` int(10) UNSIGNED NOT NULL DEFAULT 0,
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
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btexpressform`
--

CREATE TABLE `btexpressform` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `addFilesToFolder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btexternalform`
--

CREATE TABLE `btexternalform` (
  `bID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btfaq`
--

CREATE TABLE `btfaq` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btfaqentries`
--

CREATE TABLE `btfaqentries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btfeature`
--

CREATE TABLE `btfeature` (
  `bID` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btform`
--

CREATE TABLE `btform` (
  `bID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT 0,
  `surveyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT 0,
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT 1,
  `redirectCID` int(11) DEFAULT 0,
  `addFilesToSet` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btformanswers`
--

CREATE TABLE `btformanswers` (
  `aID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED DEFAULT 0,
  `msqID` int(10) UNSIGNED DEFAULT 0,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btformanswerset`
--

CREATE TABLE `btformanswerset` (
  `asID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `uID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btformquestions`
--

CREATE TABLE `btformquestions` (
  `qID` int(10) UNSIGNED NOT NULL,
  `msqID` int(10) UNSIGNED DEFAULT 0,
  `bID` int(10) UNSIGNED DEFAULT 0,
  `questionSetId` int(10) UNSIGNED DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT 1000,
  `width` int(10) UNSIGNED DEFAULT 50,
  `height` int(10) UNSIGNED DEFAULT 3,
  `defaultDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btgooglemap`
--

CREATE TABLE `btgooglemap` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btimageslider`
--

CREATE TABLE `btimageslider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT 0,
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `pause` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btimagesliderentries`
--

CREATE TABLE `btimagesliderentries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT 0,
  `fID` int(10) UNSIGNED DEFAULT 0,
  `linkURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT 0,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btlatestthreeposts`
--

CREATE TABLE `btlatestthreeposts` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btlatestthreeposts`
--

INSERT INTO `btlatestthreeposts` (`bID`, `blockTitle`) VALUES
(42, 'Recent blog posts');

-- --------------------------------------------------------

--
-- Table structure for table `btnavigation`
--

CREATE TABLE `btnavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT 0,
  `displaySubPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btnavigation`
--

INSERT INTO `btnavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(50, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btnextprevious`
--

CREATE TABLE `btnextprevious` (
  `bID` int(10) UNSIGNED NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT 1,
  `orderBy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btpageattributedisplay`
--

CREATE TABLE `btpageattributedisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) UNSIGNED DEFAULT NULL,
  `thumbnailWidth` int(10) UNSIGNED DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btpagelist`
--

CREATE TABLE `btpagelist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `num` smallint(5) UNSIGNED NOT NULL,
  `orderBy` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cThis` tinyint(1) NOT NULL DEFAULT 0,
  `cThisParent` tinyint(1) NOT NULL DEFAULT 0,
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT 0,
  `buttonLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT 0,
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT 0,
  `filterDateOption` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `filterDateStart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `includeName` tinyint(1) NOT NULL DEFAULT 1,
  `includeDescription` tinyint(1) NOT NULL DEFAULT 1,
  `includeDate` tinyint(1) NOT NULL DEFAULT 0,
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT 0,
  `paginate` tinyint(1) NOT NULL DEFAULT 0,
  `displayAliases` tinyint(1) NOT NULL DEFAULT 1,
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT 0,
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT 0,
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfID` int(11) DEFAULT 0,
  `truncateSummaries` int(11) DEFAULT 0,
  `displayFeaturedOnly` tinyint(1) DEFAULT 0,
  `noResultsMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT 0,
  `truncateChars` int(11) DEFAULT 128
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btpagetitle`
--

CREATE TABLE `btpagetitle` (
  `bID` int(10) UNSIGNED NOT NULL,
  `useCustomTitle` int(10) UNSIGNED DEFAULT 0,
  `useFilterTitle` int(10) UNSIGNED DEFAULT 0,
  `useFilterTopic` int(10) UNSIGNED DEFAULT 0,
  `useFilterTag` int(10) UNSIGNED DEFAULT 0,
  `useFilterDate` int(10) UNSIGNED DEFAULT 0,
  `topicTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btrssdisplay`
--

CREATE TABLE `btrssdisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) UNSIGNED DEFAULT 5,
  `showSummary` tinyint(1) NOT NULL DEFAULT 1,
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btrssdisplay`
--

INSERT INTO `btrssdisplay` (`bID`, `title`, `url`, `dateFormat`, `itemsToDisplay`, `showSummary`, `launchInNewWindow`) VALUES
(7, 'Tutorials', 'http://documentation.concrete5.org/rss/tutorials', '', 1, 1, 1),
(13, 'News from concrete5.org', 'http://www.concrete5.org/rss/blog', '', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btsearch`
--

CREATE TABLE `btsearch` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postTo_cID` int(10) UNSIGNED DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btsharethispage`
--

CREATE TABLE `btsharethispage` (
  `btShareThisPageID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT 0,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btsociallinks`
--

CREATE TABLE `btsociallinks` (
  `btSocialLinkID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT 0,
  `slID` int(10) UNSIGNED DEFAULT 0,
  `displayOrder` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btsurvey`
--

CREATE TABLE `btsurvey` (
  `bID` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btsurveyoptions`
--

CREATE TABLE `btsurveyoptions` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btsurveyresults`
--

CREATE TABLE `btsurveyresults` (
  `resultID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED DEFAULT 0,
  `uID` int(10) UNSIGNED DEFAULT 0,
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btswitchlanguage`
--

CREATE TABLE `btswitchlanguage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bttags`
--

CREATE TABLE `bttags` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bttestimonial`
--

CREATE TABLE `bttestimonial` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bttextblock`
--

CREATE TABLE `bttextblock` (
  `bID` int(10) UNSIGNED NOT NULL,
  `textContent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blockPadding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bttextblock`
--

INSERT INTO `bttextblock` (`bID`, `textContent`, `blockPadding`) VALUES
(37, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n', '50px'),
(41, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos?</p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `bttopiclist`
--

CREATE TABLE `bttopiclist` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btvideo`
--

CREATE TABLE `btvideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `webmfID` int(10) UNSIGNED DEFAULT 0,
  `oggfID` int(10) UNSIGNED DEFAULT 0,
  `posterfID` int(10) UNSIGNED DEFAULT 0,
  `mp4fID` int(10) UNSIGNED DEFAULT 0,
  `videoSize` int(10) UNSIGNED DEFAULT 0,
  `width` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btyoutube`
--

CREATE TABLE `btyoutube` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `controls` int(10) UNSIGNED DEFAULT NULL,
  `iv_load_policy` int(10) UNSIGNED DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT 0,
  `modestbranding` tinyint(1) NOT NULL DEFAULT 0,
  `rel` tinyint(1) NOT NULL DEFAULT 0,
  `showinfo` tinyint(1) NOT NULL DEFAULT 0,
  `showCaptions` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventattributekeys`
--

CREATE TABLE `calendareventattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventoccurrences`
--

CREATE TABLE `calendareventoccurrences` (
  `occurrenceID` int(10) UNSIGNED NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventrepetitions`
--

CREATE TABLE `calendareventrepetitions` (
  `repetitionID` int(10) UNSIGNED NOT NULL,
  `repetitionObject` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendarevents`
--

CREATE TABLE `calendarevents` (
  `eventID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventsearchindexattributes`
--

CREATE TABLE `calendareventsearchindexattributes` (
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventversionattributevalues`
--

CREATE TABLE `calendareventversionattributevalues` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventversionoccurrences`
--

CREATE TABLE `calendareventversionoccurrences` (
  `versionOccurrenceID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `occurrenceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventversionrepetitions`
--

CREATE TABLE `calendareventversionrepetitions` (
  `versionRepetitionID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventversions`
--

CREATE TABLE `calendareventversions` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `evDateAdded` datetime NOT NULL,
  `evActivateDateTime` datetime DEFAULT NULL,
  `evIsApproved` tinyint(1) NOT NULL,
  `evDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evName` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evRelatedPageRelationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendareventworkflowprogress`
--

CREATE TABLE `calendareventworkflowprogress` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `eventID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendarpermissionassignments`
--

CREATE TABLE `calendarpermissionassignments` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendarrelatedevents`
--

CREATE TABLE `calendarrelatedevents` (
  `relatedEventID` int(10) UNSIGNED NOT NULL,
  `relationID` int(10) UNSIGNED NOT NULL,
  `relationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `caID` int(10) UNSIGNED NOT NULL,
  `caName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caOverridePermissions` tinyint(1) NOT NULL DEFAULT 0,
  `eventPageAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableMoreDetails` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventPageParentID` int(10) UNSIGNED DEFAULT 0,
  `eventPageTypeID` int(10) UNSIGNED DEFAULT 0,
  `eventPageAssociatedID` int(10) UNSIGNED DEFAULT 0,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collectionattributekeys`
--

CREATE TABLE `collectionattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionattributekeys`
--

INSERT INTO `collectionattributekeys` (`akID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(20);

-- --------------------------------------------------------

--
-- Table structure for table `collectionattributevalues`
--

CREATE TABLE `collectionattributevalues` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionattributevalues`
--

INSERT INTO `collectionattributevalues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 6, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 7, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(16, 1, 7, 16),
(17, 1, 3, 17),
(17, 1, 7, 18),
(19, 1, 3, 19),
(20, 1, 3, 20),
(22, 1, 3, 21),
(25, 1, 3, 22),
(26, 1, 3, 23),
(27, 1, 7, 24),
(27, 1, 12, 25),
(28, 1, 3, 26),
(29, 1, 3, 27),
(30, 1, 3, 28),
(32, 1, 3, 29),
(33, 1, 3, 30),
(33, 1, 7, 31),
(35, 1, 7, 32),
(36, 1, 7, 33),
(37, 1, 7, 34),
(38, 1, 7, 35),
(39, 1, 7, 36),
(40, 1, 7, 37),
(42, 1, 7, 38),
(43, 1, 3, 39),
(44, 1, 3, 40),
(45, 1, 3, 41),
(48, 1, 7, 42),
(48, 1, 12, 43),
(50, 1, 7, 44),
(50, 1, 12, 45),
(53, 1, 6, 46),
(55, 1, 3, 47),
(57, 1, 7, 48),
(57, 1, 12, 49),
(57, 1, 3, 50),
(58, 1, 3, 51),
(59, 1, 3, 52),
(60, 1, 3, 53),
(61, 1, 3, 54),
(62, 1, 3, 55),
(62, 1, 7, 56),
(63, 1, 3, 57),
(64, 1, 3, 58),
(65, 1, 3, 59),
(67, 1, 3, 60),
(68, 1, 3, 61),
(69, 1, 3, 62),
(70, 1, 3, 63),
(71, 1, 3, 64),
(72, 1, 3, 65),
(73, 1, 3, 66),
(73, 1, 7, 67),
(74, 1, 3, 68),
(75, 1, 3, 69),
(75, 1, 7, 70),
(75, 1, 12, 71),
(76, 1, 3, 72),
(79, 1, 7, 73),
(79, 1, 12, 74),
(80, 1, 7, 75),
(80, 1, 12, 76),
(81, 1, 7, 77),
(81, 1, 12, 78),
(82, 1, 7, 79),
(82, 1, 12, 80),
(83, 1, 7, 81),
(83, 1, 12, 82),
(85, 1, 3, 83),
(91, 1, 3, 84),
(92, 1, 3, 85),
(93, 1, 3, 86),
(94, 1, 3, 87),
(95, 1, 3, 88),
(97, 1, 3, 89),
(98, 1, 3, 90),
(99, 1, 3, 91),
(100, 1, 7, 92),
(100, 1, 3, 93),
(101, 1, 3, 94),
(102, 1, 3, 95),
(103, 1, 3, 96),
(105, 1, 3, 97),
(106, 1, 3, 98),
(107, 1, 3, 99),
(108, 1, 3, 100),
(110, 1, 3, 101),
(111, 1, 3, 102),
(115, 1, 3, 103),
(116, 1, 7, 104),
(117, 1, 3, 105),
(118, 1, 3, 106),
(119, 1, 3, 107),
(120, 1, 3, 108),
(122, 1, 3, 109),
(123, 1, 3, 110),
(124, 1, 3, 111),
(125, 1, 3, 112),
(126, 1, 3, 113),
(129, 1, 3, 114),
(130, 1, 3, 115),
(131, 1, 3, 116),
(132, 1, 3, 117),
(133, 1, 3, 118),
(134, 1, 3, 119),
(135, 1, 3, 120),
(141, 1, 3, 121),
(142, 1, 3, 122),
(143, 1, 3, 123),
(144, 1, 3, 124),
(146, 1, 3, 125),
(147, 1, 3, 126),
(148, 1, 3, 127),
(149, 1, 3, 128),
(151, 1, 12, 129),
(152, 1, 3, 130),
(153, 1, 3, 131),
(154, 1, 3, 132),
(155, 1, 3, 133),
(156, 1, 3, 134),
(157, 1, 3, 135),
(158, 1, 3, 136),
(160, 1, 3, 137),
(162, 1, 3, 138),
(163, 1, 7, 139),
(163, 1, 12, 140),
(164, 1, 4, 141),
(164, 1, 5, 142),
(164, 1, 7, 143),
(166, 1, 6, 144),
(168, 1, 6, 145),
(171, 1, 6, 146),
(177, 1, 6, 147),
(178, 1, 4, 148),
(178, 1, 5, 149),
(178, 1, 7, 150),
(185, 7, 20, 159),
(191, 7, 20, 159),
(192, 7, 20, 159),
(193, 7, 20, 159),
(185, 8, 20, 160),
(191, 8, 20, 160),
(192, 8, 20, 160),
(193, 8, 20, 160),
(191, 9, 20, 162),
(191, 10, 20, 162),
(192, 9, 20, 163),
(192, 10, 20, 163),
(193, 9, 20, 165),
(193, 10, 20, 166);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2019-12-22 11:32:16', '2019-12-22 15:33:02', NULL),
(2, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'dashboard'),
(3, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'sitemap'),
(4, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'full'),
(5, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'explore'),
(6, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'search'),
(7, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'files'),
(8, '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'search'),
(9, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'attributes'),
(10, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'sets'),
(11, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'add_set'),
(12, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'users'),
(13, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'search'),
(14, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'groups'),
(15, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'attributes'),
(16, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'add'),
(17, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'add_group'),
(18, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'bulkupdate'),
(19, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'group_sets'),
(20, '2019-12-22 11:34:30', '2019-12-22 11:34:31', 'points'),
(21, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'assign'),
(22, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'actions'),
(23, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'express'),
(24, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'entries'),
(25, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'reports'),
(26, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'forms'),
(27, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'legacy'),
(28, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'surveys'),
(29, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'logs'),
(30, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'page_changes'),
(31, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'pages'),
(32, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'themes'),
(33, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'inspect'),
(34, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'types'),
(35, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'organize'),
(36, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'add'),
(37, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'form'),
(38, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'output'),
(39, '2019-12-22 11:34:31', '2019-12-22 11:34:32', 'attributes'),
(40, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'permissions'),
(41, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'templates'),
(42, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'add'),
(43, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'attributes'),
(44, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'single'),
(45, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'feeds'),
(46, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'calendar'),
(47, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'events'),
(48, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'event_list'),
(49, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'add'),
(50, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'permissions'),
(51, '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'attributes'),
(52, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'conversations'),
(53, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'messages'),
(54, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'blocks'),
(55, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'stacks'),
(56, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'permissions'),
(57, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'list'),
(58, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'types'),
(59, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'extend'),
(60, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'install'),
(61, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'update'),
(62, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'connect'),
(63, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'themes'),
(64, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'addons'),
(65, '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'system'),
(66, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'basics'),
(67, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'name'),
(68, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'accessibility'),
(69, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'social'),
(70, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'icons'),
(71, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'editor'),
(72, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'multilingual'),
(73, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'update'),
(74, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'timezone'),
(75, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'attributes'),
(76, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'reset_edit_mode'),
(77, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'express'),
(78, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'entities'),
(79, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'attributes'),
(80, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'associations'),
(81, '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'forms'),
(82, '2019-12-22 11:34:34', '2019-12-22 11:34:35', 'customize_search'),
(83, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'order_entries'),
(84, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'entries'),
(85, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'multilingual'),
(86, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'setup'),
(87, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'copy'),
(88, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'page_report'),
(89, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'translate_interface'),
(90, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'seo'),
(91, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'urls'),
(92, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'bulk'),
(93, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'codes'),
(94, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'excluded'),
(95, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'searchindex'),
(96, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'files'),
(97, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'filetypes'),
(98, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'permissions'),
(99, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'thumbnails'),
(100, '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'options'),
(101, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'image_uploading'),
(102, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'storage'),
(103, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'export_options'),
(104, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'optimization'),
(105, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'cache'),
(106, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'clearcache'),
(107, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'jobs'),
(108, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'query_log'),
(109, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'permissions'),
(110, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'site'),
(111, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'tasks'),
(112, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'users'),
(113, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'advanced'),
(114, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'workflows'),
(115, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'blacklist'),
(116, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'range'),
(117, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'captcha'),
(118, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'antispam'),
(119, '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'maintenance'),
(120, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'trusted_proxies'),
(121, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'registration'),
(122, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'open'),
(123, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'postlogin'),
(124, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'profiles'),
(125, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'authentication'),
(126, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'global_password_reset'),
(127, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'notification'),
(128, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'deactivation'),
(129, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'automated_logout'),
(130, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'password_requirements'),
(131, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'mail'),
(132, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'method'),
(133, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'test'),
(134, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'importers'),
(135, '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'addresses'),
(136, '2019-12-22 11:34:37', '2019-12-22 11:34:38', 'calendar'),
(137, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'settings'),
(138, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'colors'),
(139, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'permissions'),
(140, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'import'),
(141, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'conversations'),
(142, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'settings'),
(143, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'points'),
(144, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'bannedwords'),
(145, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'permissions'),
(146, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'attributes'),
(147, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'types'),
(148, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'sets'),
(149, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'topics'),
(150, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'add'),
(151, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'environment'),
(152, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'info'),
(153, '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'debug'),
(154, '2019-12-22 11:34:38', '2019-12-22 11:34:39', 'logging'),
(155, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'proxy'),
(156, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'entities'),
(157, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'database_charset'),
(158, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'geolocation'),
(159, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'update'),
(160, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'update'),
(161, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'api'),
(162, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'settings'),
(163, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'integrations'),
(164, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'welcome'),
(165, '2019-12-22 11:34:39', '2019-12-22 11:34:40', 'me'),
(166, '2019-12-22 11:34:48', '2019-12-22 11:34:48', '!stacks'),
(167, '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'page_not_found'),
(168, '2019-12-22 11:34:48', '2019-12-22 11:34:48', '!trash'),
(169, '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'login'),
(170, '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'register'),
(171, '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'account'),
(172, '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'edit_profile'),
(173, '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'avatar'),
(174, '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'messages'),
(175, '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'page_forbidden'),
(176, '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'download_file'),
(177, '2019-12-22 11:34:49', '2019-12-22 11:34:49', '!drafts'),
(178, '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'desktop'),
(179, '2019-12-22 11:34:58', '2019-12-22 11:34:58', NULL),
(185, '2019-12-22 12:04:34', '2019-12-22 13:39:41', ''),
(186, '2019-12-22 12:05:10', '2019-12-22 12:05:10', NULL),
(187, '2019-12-22 12:11:25', '2019-12-22 12:11:25', 'block_builder'),
(188, '2019-12-22 12:36:11', '2019-12-22 12:45:05', ''),
(189, '2019-12-22 13:21:09', '2019-12-22 13:21:09', NULL),
(191, '2019-12-22 13:41:33', '2019-12-22 13:43:12', NULL),
(192, '2019-12-22 13:43:26', '2019-12-22 13:48:02', NULL),
(193, '2019-12-22 15:16:53', '2019-12-22 15:22:39', NULL),
(194, '2019-12-22 15:29:52', '2019-12-22 15:33:02', 'header-area'),
(195, '2019-12-22 15:31:32', '2019-12-22 15:33:02', 'footer-area');

-- --------------------------------------------------------

--
-- Table structure for table `collectionsearchindexattributes`
--

CREATE TABLE `collectionsearchindexattributes` (
  `cID` int(10) UNSIGNED NOT NULL,
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
  `ak_category_selection` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionsearchindexattributes`
--

INSERT INTO `collectionsearchindexattributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_desktop_priority`, `ak_is_desktop`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_category_selection`) VALUES
(2, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0, NULL),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(10, NULL, NULL, 'files, category, categories', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(11, NULL, NULL, 'new file set', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(15, NULL, NULL, 'user attributes, user data, gather data, registration data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(16, NULL, NULL, 'new user, create', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(17, NULL, NULL, 'new user group, new group, group, create', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(19, NULL, NULL, 'group set', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(20, NULL, NULL, 'community, points, karma', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(22, NULL, NULL, 'action, community actions', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(25, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(26, NULL, NULL, 'forms, questions, response, data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(27, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(28, NULL, NULL, 'questions, quiz, response', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(29, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(30, NULL, NULL, 'changes, csv, report', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(32, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(33, NULL, NULL, 'page types', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(35, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(36, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(37, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(38, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(39, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(40, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(42, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(43, NULL, NULL, 'page attributes, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(44, NULL, NULL, 'single, page, custom, application', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(45, NULL, NULL, 'atom, rss, feed, syndication', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(48, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(50, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(53, NULL, NULL, NULL, '0.0000', 0, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0, NULL),
(55, NULL, NULL, 'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(57, NULL, NULL, 'edit stacks, view stacks, all stacks', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(58, NULL, NULL, 'block, refresh, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(59, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(60, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(61, NULL, NULL, 'update, upgrade', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(62, NULL, NULL, 'concrete5.org, my account, marketplace', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(63, NULL, NULL, 'buy theme, new theme, marketplace, template', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(64, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(65, NULL, NULL, 'dashboard, configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(67, NULL, NULL, 'website name, title', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(68, NULL, NULL, 'accessibility, easy mode', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(69, NULL, NULL, 'sharing, facebook, twitter', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(70, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(71, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(72, NULL, NULL, 'translate, translation, internationalization, multilingual', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(73, NULL, NULL, 'languages, update, gettext, translation, translate', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(74, NULL, NULL, 'timezone, profile, locale', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(75, NULL, NULL, 'site attributes', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(76, NULL, NULL, 'checkin, check-in, check, force', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(79, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(80, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(81, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(82, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(83, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(85, NULL, NULL, 'multilingual, localization, internationalization, i18n', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(91, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(92, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(93, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(94, NULL, NULL, 'pretty, slug', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(95, NULL, NULL, 'configure search, site search, search option', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(97, NULL, NULL, 'security, files, media, extension, manager, upload', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(98, NULL, NULL, 'file options, file manager, upload, modify', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(99, NULL, NULL, 'images, picture, responsive, retina', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(100, NULL, NULL, 'thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(101, NULL, NULL, 'uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(102, NULL, NULL, 'security, alternate storage, hide files', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(103, NULL, NULL, 'files, export, csv, bom, encoding', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(105, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(106, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(107, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(108, NULL, NULL, 'queries, database, mysql', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(110, NULL, NULL, 'editors, hide site, offline, private, public, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(111, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(115, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(116, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(117, NULL, NULL, 'security, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(118, NULL, NULL, 'antispam, block spam, security', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(119, NULL, NULL, 'lock site, under construction, hide, hidden', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(120, NULL, NULL, 'trusted, proxy, proxies, ip, header, cloudflare', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(122, NULL, NULL, 'signup, new user, community, public registration, public, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(123, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(124, NULL, NULL, 'member profile, member page, community, forums, social, avatar', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(125, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(126, NULL, NULL, 'global, password, reset, change password, force, sign out', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(129, NULL, NULL, 'login, logout, user, agent, ip, change, security, session, invalidation, invalid', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(130, NULL, NULL, 'password, requirements, code, key, login, registration, security, nist', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(131, NULL, NULL, 'smtp, mail settings', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(132, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(133, NULL, NULL, 'test smtp, test mail', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(134, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(135, NULL, NULL, 'mail settings, mail configuration, email, sender', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(141, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(142, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(143, NULL, NULL, 'conversations ratings, ratings, community, community points', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(144, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(146, NULL, NULL, 'attribute configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(147, NULL, NULL, 'attributes, types', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(148, NULL, NULL, 'attributes, sets', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(149, NULL, NULL, 'topics, tags, taxonomy', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(151, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 1, 0, NULL),
(152, NULL, NULL, 'overrides, system info, debug, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(153, NULL, NULL, 'errors, exceptions, develop, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(154, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(155, NULL, NULL, 'network, proxy server', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(156, NULL, NULL, 'database, entities, doctrine, orm', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(157, NULL, NULL, 'database, character set, charset, collation, utf8', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(158, NULL, NULL, 'geolocation, ip, address, country, nation, place, locate', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(160, NULL, NULL, 'upgrade, new version, update', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(162, NULL, NULL, 'API, programming, public, app', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(163, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL),
(164, NULL, NULL, NULL, '2.0000', 1, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL),
(166, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0, NULL),
(168, NULL, NULL, NULL, '0.0000', 0, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0, NULL),
(171, NULL, NULL, NULL, '0.0000', 0, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0, NULL),
(177, NULL, NULL, NULL, '0.0000', 0, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0, NULL),
(178, NULL, NULL, NULL, '1.0000', 1, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL),
(185, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, '\nAnimals\nPlants\n'),
(191, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, '\nAnimals\n'),
(192, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, '\nCars\n'),
(193, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, '\nPlants\n');

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionareastyles`
--

CREATE TABLE `collectionversionareastyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblocks`
--

CREATE TABLE `collectionversionblocks` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbRelationID` int(10) UNSIGNED DEFAULT 0,
  `cbDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isOriginal` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT 0,
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT 0,
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT 0,
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionversionblocks`
--

INSERT INTO `collectionversionblocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbRelationID`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1, 2, 23, 'Default page content', 23, 0, 1, 0, 0, 0, 0, 0),
(1, 3, 32, 'Default page content', 28, 0, 1, 0, 0, 0, 0, 0),
(1, 4, 32, 'Default page content', 28, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 42, 'Default page content', 34, 1, 1, 0, 0, 0, 0, 0),
(1, 5, 32, 'Default page content', 28, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 42, 'Default page content', 34, 1, 0, 0, 0, 0, 0, 0),
(1, 6, 32, 'Default page content', 28, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 42, 'Default page content', 34, 1, 0, 0, 0, 0, 0, 0),
(164, 1, 1, 'Main', 1, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 2, 'Main', 2, 1, 1, 0, 0, 0, 0, 0),
(164, 1, 3, 'Main : 1', 3, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 4, 'Main : 2', 4, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 5, 'Main : 3', 5, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 6, 'Main', 6, 2, 1, 0, 0, 0, 0, 0),
(164, 1, 7, 'Main : 4', 7, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 8, 'Main : 5', 8, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 9, 'Main', 9, 3, 1, 0, 0, 0, 0, 0),
(164, 1, 10, 'Main : 6', 10, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 11, 'Main : 7', 11, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 12, 'Main : 8', 12, 0, 1, 0, 0, 0, 0, 0),
(164, 1, 13, 'Main', 13, 4, 1, 0, 0, 0, 0, 0),
(165, 1, 14, 'Main', 14, 0, 1, 0, 0, 0, 0, 0),
(165, 1, 15, 'Main : 9', 15, 0, 1, 0, 0, 0, 0, 0),
(165, 1, 16, 'Main', 16, 1, 1, 0, 0, 0, 0, 0),
(165, 1, 17, 'Main : 10', 17, 0, 1, 0, 0, 0, 0, 0),
(178, 1, 18, 'Main', 18, 0, 1, 0, 0, 0, 0, 0),
(178, 1, 19, 'Main : 11', 19, 0, 1, 0, 0, 0, 0, 0),
(178, 1, 20, 'Main', 20, 1, 1, 0, 0, 0, 0, 0),
(178, 1, 21, 'Main : 12', 21, 0, 1, 0, 0, 0, 0, 0),
(179, 1, 22, 'Main', 22, 0, 1, 0, 0, 0, 0, 0),
(185, 1, 27, 'Main', 24, 0, 1, 0, 0, 0, 0, 0),
(185, 2, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 2, 28, 'Full width header area', 25, 0, 1, 0, 0, 0, 0, 0),
(185, 2, 29, 'Left side content area', 26, 0, 1, 0, 0, 0, 0, 0),
(185, 2, 30, 'Widget area', 27, 0, 1, 0, 0, 0, 0, 0),
(185, 3, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 3, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(185, 3, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(185, 3, 39, 'Full width header area', 32, 0, 1, 0, 0, 0, 0, 0),
(185, 4, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 4, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(185, 4, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(185, 4, 41, 'Left side content area', 33, 0, 1, 0, 0, 0, 0, 0),
(185, 5, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 5, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(185, 5, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(185, 5, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(185, 6, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 6, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(185, 6, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(185, 6, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(185, 7, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 7, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(185, 7, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(185, 7, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(185, 8, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(185, 8, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(185, 8, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(185, 8, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(188, 1, 35, 'Main', 29, 0, 1, 0, 0, 0, 0, 0),
(188, 2, 35, 'Main', 29, 0, 0, 0, 0, 0, 0, 0),
(188, 2, 36, 'Default page content', 30, 0, 1, 0, 0, 0, 0, 0),
(188, 3, 35, 'Main', 29, 0, 0, 0, 0, 0, 0, 0),
(188, 3, 36, 'Default page content', 30, 0, 0, 0, 0, 0, 0, 0),
(188, 3, 37, 'Default page content', 31, 1, 1, 0, 0, 0, 0, 0),
(191, 1, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 2, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 2, 28, 'Full width header area', 25, 0, 0, 0, 0, 0, 0, 0),
(191, 2, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(191, 2, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 3, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 3, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(191, 3, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 3, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 4, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 4, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 4, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 4, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 5, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 5, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 5, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 5, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 6, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 6, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 6, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 6, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 7, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 7, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 7, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 7, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 8, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 8, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 8, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 8, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 9, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 9, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 9, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(191, 9, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 10, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(191, 10, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(191, 10, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(191, 10, 43, 'Full width header area', 32, 0, 1, 0, 0, 0, 0, 0),
(192, 1, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 2, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 2, 28, 'Full width header area', 25, 0, 0, 0, 0, 0, 0, 0),
(192, 2, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(192, 2, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 3, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 3, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(192, 3, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 3, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 4, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 4, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 4, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 4, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 5, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 5, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 5, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 5, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 6, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 6, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 6, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 6, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 7, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 7, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 7, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 7, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 8, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 8, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 8, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 8, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 9, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 9, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(192, 9, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 9, 44, 'Full width header area', 32, 0, 1, 0, 0, 0, 0, 0),
(192, 10, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(192, 10, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(192, 10, 44, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(192, 10, 46, 'Widget area', 35, 0, 1, 0, 0, 0, 0, 0),
(193, 1, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 2, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 2, 28, 'Full width header area', 25, 0, 0, 0, 0, 0, 0, 0),
(193, 2, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(193, 2, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 3, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 3, 29, 'Left side content area', 26, 0, 0, 0, 0, 0, 0, 0),
(193, 3, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 3, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(193, 4, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 4, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 4, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(193, 4, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 5, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 5, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 5, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(193, 5, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 6, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 6, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 6, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(193, 6, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 7, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 7, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 7, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(193, 7, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 8, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 8, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 8, 39, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(193, 8, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 9, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 9, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 9, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 9, 47, 'Full width header area', 32, 0, 1, 0, 0, 0, 0, 0),
(193, 10, 27, 'Main', 24, 0, 0, 0, 0, 0, 0, 0),
(193, 10, 30, 'Widget area', 27, 0, 0, 0, 0, 0, 0, 0),
(193, 10, 41, 'Left side content area', 33, 0, 0, 0, 0, 0, 0, 0),
(193, 10, 47, 'Full width header area', 32, 0, 0, 0, 0, 0, 0, 0),
(194, 2, 48, 'Main', 36, 0, 1, 0, 0, 0, 0, 0),
(194, 3, 48, 'Main', 36, 0, 0, 0, 0, 0, 0, 0),
(194, 3, 50, 'Main', 38, 1, 1, 0, 0, 0, 0, 0),
(194, 4, 50, 'Main', 38, 1, 0, 0, 0, 0, 0, 0),
(195, 2, 49, 'Main', 37, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblockscachesettings`
--

CREATE TABLE `collectionversionblockscachesettings` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT 0,
  `btCacheBlockOutputLifetime` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblocksoutputcache`
--

CREATE TABLE `collectionversionblocksoutputcache` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btCachedBlockOutputExpires` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblockstyles`
--

CREATE TABLE `collectionversionblockstyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionversionblockstyles`
--

INSERT INTO `collectionversionblockstyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(164, 1, 13, 'Main', 1);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionfeatureassignments`
--

CREATE TABLE `collectionversionfeatureassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `faID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionrelatededits`
--

CREATE TABLE `collectionversionrelatededits` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cRelationID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvRelationID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversions`
--

CREATE TABLE `collectionversions` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cvName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT 0,
  `cvIsNew` tinyint(1) NOT NULL DEFAULT 0,
  `cvAuthorUID` int(10) UNSIGNED DEFAULT NULL,
  `cvApproverUID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  `cvPublishEndDate` datetime DEFAULT NULL,
  `cvDateApproved` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionversions`
--

INSERT INTO `collectionversions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`, `cvPublishDate`, `cvPublishEndDate`, `cvDateApproved`) VALUES
(1, 1, 'Home', '', NULL, '2019-12-22 11:32:16', '2019-12-22 11:32:16', 'Initial Version', 0, 0, 1, NULL, 2, 4, NULL, NULL, NULL, NULL),
(1, 2, 'Home', '', NULL, '2019-12-22 11:32:16', '2019-12-22 12:02:16', 'Version 2', 0, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 12:02:21'),
(1, 3, 'Home', '', NULL, '2019-12-22 11:32:16', '2019-12-22 12:31:41', 'Version 3', 0, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 12:32:56'),
(1, 4, 'Home', '', NULL, '2019-12-22 11:32:16', '2019-12-22 13:28:16', 'Version 4', 0, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 13:40:39'),
(1, 5, 'Home', '', NULL, '2019-12-22 11:32:16', '2019-12-22 15:30:17', 'Version 5', 0, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 15:30:24'),
(1, 6, 'Home', '', NULL, '2019-12-22 11:32:16', '2019-12-22 15:32:02', 'Version 6', 1, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 15:33:02'),
(2, 1, 'Dashboard', 'dashboard', '', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(5, 1, 'Flat View', 'explore', '', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(6, 1, 'Page Search', 'search', '', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(8, 1, 'File Manager', 'search', '', '2019-12-22 11:34:29', '2019-12-22 11:34:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(9, 1, 'Attributes', 'attributes', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(10, 1, 'File Sets', 'sets', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(13, 1, 'Search Users', 'search', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(14, 1, 'User Groups', 'groups', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(15, 1, 'Attributes', 'attributes', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(16, 1, 'Add User', 'add', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(17, 1, 'Add Group', 'add_group', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(19, 1, 'Group Sets', 'group_sets', '', '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(20, 1, 'Community Points', 'points', NULL, '2019-12-22 11:34:30', '2019-12-22 11:34:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(21, 1, 'Assign Points', 'assign', NULL, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(22, 1, 'Actions', 'actions', NULL, '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(23, 1, 'Express', 'express', 'Express Data Objects', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(24, 1, 'View Entries', 'entries', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(25, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(26, 1, 'Form Results', 'forms', 'Get submission data.', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(27, 1, 'Form Results', 'legacy', 'Get submission data.', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(28, 1, 'Surveys', 'surveys', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(29, 1, 'Logs', 'logs', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(30, 1, 'Page Changes', 'page_changes', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(31, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(32, 1, 'Themes', 'themes', 'Reskin your site.', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(33, 1, 'Inspect', 'inspect', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(34, 1, 'Page Types', 'types', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(35, 1, 'Organize Page Type Order', 'organize', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(36, 1, 'Add Page Type', 'add', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(37, 1, 'Compose Form', 'form', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(38, 1, 'Defaults and Output', 'output', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(39, 1, 'Page Type Attributes', 'attributes', '', '2019-12-22 11:34:31', '2019-12-22 11:34:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(40, 1, 'Page Type Permissions', 'permissions', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(41, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(42, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(43, 1, 'Attributes', 'attributes', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(44, 1, 'Single Pages', 'single', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(45, 1, 'RSS Feeds', 'feeds', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(46, 1, 'Calendar & Events', 'calendar', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(47, 1, 'View Calendar', 'events', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(48, 1, 'Event List', 'event_list', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(49, 1, 'Add Calendar', 'add', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(50, 1, 'Permissions', 'permissions', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(51, 1, 'Attributes', 'attributes', '', '2019-12-22 11:34:32', '2019-12-22 11:34:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(52, 1, 'Conversations', 'conversations', '', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(53, 1, 'Messages', 'messages', '', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(54, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(55, 1, 'Stacks & Global Areas', 'stacks', 'Share content across your site.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(56, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(57, 1, 'Stack List', 'list', '', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(58, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(59, 1, 'Extend concrete5', 'extend', '', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(60, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(61, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(62, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(63, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(64, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(65, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2019-12-22 11:34:33', '2019-12-22 11:34:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(66, 1, 'Basics', 'basics', 'Basic information about your website.', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(67, 1, 'Name & Attributes', 'name', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(68, 1, 'Accessibility', 'accessibility', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(69, 1, 'Social Links', 'social', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(70, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(71, 1, 'Rich Text Editor', 'editor', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(72, 1, 'Languages', 'multilingual', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(73, 1, 'Update Languages', 'update', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(74, 1, 'Time Zone', 'timezone', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(75, 1, 'Custom Attributes', 'attributes', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(76, 1, 'Reset Edit Mode', 'reset_edit_mode', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(77, 1, 'Express', 'express', 'Express', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(78, 1, 'Data Objects', 'entities', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(79, 1, 'Attributes', 'attributes', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(80, 1, 'Associations', 'associations', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(81, 1, 'Forms', 'forms', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(82, 1, 'Customize Search', 'customize_search', '', '2019-12-22 11:34:34', '2019-12-22 11:34:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(83, 1, 'Update Entry Display Order', 'order_entries', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(84, 1, 'Custom Entry Locations', 'entries', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(85, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(86, 1, 'Multilingual Setup', 'setup', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(87, 1, 'Copy Languages', 'copy', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(88, 1, 'Page Report', 'page_report', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(89, 1, 'Translate Site Interface', 'translate_interface', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(90, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(91, 1, 'URLs and Redirection', 'urls', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(92, 1, 'Bulk SEO Updater', 'bulk', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(93, 1, 'Tracking Codes', 'codes', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(94, 1, 'Excluded URL Word List', 'excluded', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(95, 1, 'Search Index', 'searchindex', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(96, 1, 'Files', 'files', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(97, 1, 'Allowed File Types', 'filetypes', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(98, 1, 'File Manager Permissions', 'permissions', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(99, 1, 'Thumbnails', 'thumbnails', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(100, 1, 'Thumbnail Options', 'options', '', '2019-12-22 11:34:35', '2019-12-22 11:34:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(101, 1, 'Image Options', 'image_uploading', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(102, 1, 'File Storage Locations', 'storage', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(103, 1, 'Export Options', 'export_options', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(104, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(105, 1, 'Cache & Speed Settings', 'cache', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(106, 1, 'Clear Cache', 'clearcache', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(107, 1, 'Automated Jobs', 'jobs', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(108, 1, 'Database Query Log', 'query_log', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(109, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(110, 1, 'Site Access', 'site', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(111, 1, 'Task Permissions', 'tasks', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(112, 1, 'User Permissions', 'users', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(113, 1, 'Advanced Permissions', 'advanced', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(114, 1, 'Workflows', 'workflows', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(115, 1, 'IP Blacklist', 'blacklist', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(116, 1, 'IP Range', 'range', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(117, 1, 'Captcha Setup', 'captcha', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(118, 1, 'Spam Control', 'antispam', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(119, 1, 'Maintenance Mode', 'maintenance', '', '2019-12-22 11:34:36', '2019-12-22 11:34:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(120, 1, 'Trusted Proxies', 'trusted_proxies', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(121, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(122, 1, 'Account Options', 'open', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(123, 1, 'Login Destination', 'postlogin', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(124, 1, 'Public Profiles', 'profiles', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(125, 1, 'Authentication Types', 'authentication', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(126, 1, 'Global Password Reset', 'global_password_reset', 'Signs out all users, resets all passwords and forces users to choose a new one', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(127, 1, 'Notification Settings', 'notification', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(128, 1, 'User Deactivation Settings', 'deactivation', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(129, 1, 'Automated Logout', 'automated_logout', 'Automate when users are logged out, or do it manually', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(130, 1, 'Password Requirements', 'password_requirements', 'Set password rule and regulations.', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(131, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(132, 1, 'SMTP Method', 'method', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(133, 1, 'Test Mail Settings', 'test', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(134, 1, 'Email Importers', 'importers', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(135, 1, 'System Email Addresses', 'addresses', '', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(136, 1, 'Calendar', 'calendar', 'Manage your calendar settings', '2019-12-22 11:34:37', '2019-12-22 11:34:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(137, 1, 'General Settings', 'settings', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(138, 1, 'Color Settings', 'colors', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(139, 1, 'Permissions', 'permissions', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(140, 1, 'Import Calendar Data', 'import', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(141, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(142, 1, 'Settings', 'settings', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(143, 1, 'Community Points', 'points', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(144, 1, 'Banned Words', 'bannedwords', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(145, 1, 'Conversation Permissions', 'permissions', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(146, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(147, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(148, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(149, 1, 'Topics', 'topics', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(150, 1, 'Add Topic Tree', 'add', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(151, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(152, 1, 'Environment Information', 'info', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(153, 1, 'Debug Settings', 'debug', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(154, 1, 'Logging Settings', 'logging', '', '2019-12-22 11:34:38', '2019-12-22 11:34:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(155, 1, 'Proxy Server', 'proxy', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(156, 1, 'Database Entities', 'entities', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(157, 1, 'Database Character Set', 'database_charset', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(158, 1, 'Geolocation', 'geolocation', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(159, 1, 'Update concrete5', 'update', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(160, 1, 'Apply Update', 'update', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(161, 1, 'API', 'api', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(162, 1, 'API Settings', 'settings', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(163, 1, 'API Integrations', 'integrations', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(164, 1, 'Welcome', 'welcome', '', '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(165, 1, 'Waiting for Me', 'me', NULL, '2019-12-22 11:34:39', '2019-12-22 11:34:39', 'Initial Version', 1, 0, 1, NULL, 2, 2, NULL, NULL, NULL, NULL),
(166, 1, 'Stacks', '!stacks', '', '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(167, 1, 'Page Not Found', 'page_not_found', '', '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(168, 1, 'Trash', '!trash', '', '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(169, 1, 'Login', 'login', '', '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(170, 1, 'Register', 'register', '', '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(171, 1, 'My Account', 'account', '', '2019-12-22 11:34:48', '2019-12-22 11:34:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(172, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(173, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(174, 1, 'Private Messages', 'messages', 'Inbox for site-specific messages.', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(175, 1, 'Page Forbidden', 'page_forbidden', '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(176, 1, 'Download File', 'download_file', '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(177, 1, 'Drafts', '!drafts', '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(178, 1, 'Welcome Back', 'desktop', '', '2019-12-22 11:34:49', '2019-12-22 11:34:49', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(179, 1, '', NULL, NULL, '2019-12-22 11:34:58', '2019-12-22 11:34:58', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL, NULL, NULL, NULL),
(185, 1, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 12:04:34', 'Initial Version', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 12:05:19'),
(185, 2, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 12:06:28', 'Version 2', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 12:07:09'),
(185, 3, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:09:23', 'Version 3', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:10:22'),
(185, 4, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:11:46', 'Version 4', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:12:33'),
(185, 5, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:17:22', 'New Version 5', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:17:22'),
(185, 6, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:19:31', 'New Version 6', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:19:54'),
(185, 7, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:21:06', 'Version 7', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:21:15'),
(185, 8, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:39:41', 'New Version 8', 1, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:39:41'),
(186, 1, '', NULL, NULL, '2019-12-22 12:05:10', '2019-12-22 12:05:10', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL, NULL, NULL, NULL),
(187, 1, 'Block Builder', 'block-builder', NULL, '2019-12-22 12:11:25', '2019-12-22 12:11:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(188, 1, 'About', 'about', '', '2019-12-22 12:36:11', '2019-12-22 12:36:11', 'Initial Version', 0, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 12:36:34'),
(188, 2, 'About', 'about', '', '2019-12-22 12:36:11', '2019-12-22 12:37:10', 'Version 2', 0, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 12:37:16'),
(188, 3, 'About', 'about', '', '2019-12-22 12:36:11', '2019-12-22 12:44:56', 'Version 3', 1, 0, 1, 1, 2, 4, NULL, NULL, NULL, '2019-12-22 12:45:05'),
(189, 1, '', NULL, NULL, '2019-12-22 13:21:09', '2019-12-22 13:21:09', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL, NULL, NULL, NULL),
(191, 1, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:41:34', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 2, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:41:35', 'Version 2', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 3, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:41:36', 'Version 3', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 4, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:41:37', 'Version 4', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 5, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:41:38', 'New Version 5', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 6, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:41:39', 'New Version 6', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 7, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:41:40', 'Version 7', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 8, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:41:41', 'New Version 8', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(191, 9, 'My bird Alberto', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:42:01', 'New Version 9', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:42:01'),
(191, 10, 'My bird Alberto', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:42:51', 'Version 10', 1, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:42:56'),
(192, 1, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:43:27', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 2, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:43:28', 'Version 2', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 3, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:43:29', 'Version 3', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 4, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:43:30', 'Version 4', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 5, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 13:43:31', 'New Version 5', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 6, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:43:32', 'New Version 6', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 7, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:43:33', 'Version 7', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 8, 'My dog leslie 2', 'blog-1-2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:43:34', 'New Version 8', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(192, 9, 'My pretty yellow car', 'blog-1-2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:44:01', 'New Version 9', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:44:15'),
(192, 10, 'My pretty yellow car', 'blog-1-2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 13:47:34', 'Version 10', 1, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 13:48:02'),
(193, 1, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 15:16:54', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 2, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 15:16:55', 'Version 2', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 3, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 15:16:56', 'Version 3', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 4, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 15:16:57', 'Version 4', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 5, 'Blog 1', 'blog-1', 'Lorem ipsum', '2019-12-22 12:04:34', '2019-12-22 15:16:58', 'New Version 5', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 6, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 15:16:59', 'New Version 6', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 7, 'My dog leslie', 'blog-1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 15:17:00', 'Version 7', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 8, 'My dog leslie 2', 'blog-1-3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 15:17:01', 'New Version 8', 0, 0, 1, NULL, 2, 5, NULL, NULL, NULL, NULL),
(193, 9, 'My cactus', 'blog-1-3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\nAtque maxime libero recusandae quas excepturi facilis cumque\ntenetur modi similique. Exercitationem quasi iusto optio atque\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\nsit amet, consectetur adipisicing elit. Sequi dolores qui\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\ndoloribus asperiores odit molestias nemo consectetur\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 15:17:07', 'Version 9', 0, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 15:17:31'),
(193, 10, 'My cactus', 'blog-1-3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '2019-12-22 12:04:34', '2019-12-22 15:22:39', 'New Version 10', 1, 0, 1, 1, 2, 5, NULL, NULL, NULL, '2019-12-22 15:22:39'),
(194, 1, 'Header area', 'header-area', NULL, '2019-12-22 15:29:52', '2019-12-22 15:29:52', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL, NULL, NULL, NULL),
(194, 2, 'Header area', 'header-area', NULL, '2019-12-22 15:29:52', '2019-12-22 15:30:16', 'New Version 2', 0, 0, 1, 1, 2, 0, NULL, NULL, NULL, '2019-12-22 15:30:24'),
(194, 3, 'Header area', 'header-area', NULL, '2019-12-22 15:29:52', '2019-12-22 15:32:49', 'New Version 3', 0, 0, 1, 1, 2, 0, NULL, NULL, NULL, '2019-12-22 15:33:02'),
(194, 4, 'Header area', 'header-area', NULL, '2019-12-22 15:29:52', '2019-12-22 15:32:58', 'New Version 4', 1, 0, 1, 1, 2, 0, NULL, NULL, NULL, '2019-12-22 15:33:02'),
(195, 1, 'Footer area', 'footer-area', NULL, '2019-12-22 15:31:32', '2019-12-22 15:31:32', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL, NULL, NULL, NULL),
(195, 2, 'Footer area', 'footer-area', NULL, '2019-12-22 15:31:32', '2019-12-22 15:32:02', 'New Version 2', 1, 0, 1, 1, 2, 0, NULL, NULL, NULL, '2019-12-22 15:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionthemecustomstyles`
--

CREATE TABLE `collectionversionthemecustomstyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `scvlID` int(10) UNSIGNED DEFAULT 0,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `configNamespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'app', 'privacy_policy_accepted', '1'),
('', 'concrete', 'security.token.encryption', '27cf6c800a1b91710f391fe22ad6d8a928f19b097189e038f1fca0ab571efb41'),
('', 'concrete', 'security.token.jobs', '162051d8b4b6da84a899e9a21e6510dc7ec0f07871c305740f0fde4aae75171c'),
('', 'concrete', 'security.token.validation', '7d4add668effe4b2fc265c9942caa4d781928044988076d81405130093ebd350');

-- --------------------------------------------------------

--
-- Table structure for table `configstore`
--

CREATE TABLE `configstore` (
  `cfKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `cfValue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configstore`
--

INSERT INTO `configstore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('MAIN_HELP_LAST_VIEWED', '2019-12-22 10:35:17', '1577010917', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `conversationdiscussions`
--

CREATE TABLE `conversationdiscussions` (
  `cnvDiscussionID` int(10) UNSIGNED NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationeditors`
--

CREATE TABLE `conversationeditors` (
  `cnvEditorID` int(10) UNSIGNED NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversationeditors`
--

INSERT INTO `conversationeditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 1, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'rich_text', 'Rich Text', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `conversationfeaturedetailassignments`
--

CREATE TABLE `conversationfeaturedetailassignments` (
  `faID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationflaggedmessages`
--

CREATE TABLE `conversationflaggedmessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationflaggedmessagetypes`
--

CREATE TABLE `conversationflaggedmessagetypes` (
  `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversationflaggedmessagetypes`
--

INSERT INTO `conversationflaggedmessagetypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Table structure for table `conversationmessageattachments`
--

CREATE TABLE `conversationmessageattachments` (
  `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationmessagenotifications`
--

CREATE TABLE `conversationmessagenotifications` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationmessageratings`
--

CREATE TABLE `conversationmessageratings` (
  `cnvMessageRatingID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(10) UNSIGNED DEFAULT NULL,
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvMessageRatingIP` tinyblob DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationmessages`
--

CREATE TABLE `conversationmessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvMessageReview` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvEditorID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvMessageAuthorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob DEFAULT NULL,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvMessageParentID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageBody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT 0,
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationpermissionaddmessageaccesslist`
--

CREATE TABLE `conversationpermissionaddmessageaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationpermissionassignments`
--

CREATE TABLE `conversationpermissionassignments` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversationpermissionassignments`
--

INSERT INTO `conversationpermissionassignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 67, 103),
(0, 68, 104),
(0, 69, 108),
(0, 70, 106),
(0, 71, 105),
(0, 72, 107),
(0, 73, 109),
(0, 74, 110);

-- --------------------------------------------------------

--
-- Table structure for table `conversationratingtypes`
--

CREATE TABLE `conversationratingtypes` (
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversationratingtypes`
--

INSERT INTO `conversationratingtypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `cnvID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT 0,
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) UNSIGNED DEFAULT 0,
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT 1,
  `cnvMessagesTotal` int(10) UNSIGNED DEFAULT 0,
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT 0,
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `cnvMaxFilesGuest` int(11) DEFAULT 0,
  `cnvMaxFilesRegistered` int(11) DEFAULT 0,
  `cnvMaxFileSizeGuest` int(11) DEFAULT 0,
  `cnvMaxFileSizeRegistered` int(11) DEFAULT 0,
  `cnvFileExtensions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `cnvEnableSubscription` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversationsubscriptions`
--

CREATE TABLE `conversationsubscriptions` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversationsubscriptions`
--

INSERT INTO `conversationsubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0, 1, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `downloadstatistics`
--

CREATE TABLE `downloadstatistics` (
  `dsID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL,
  `rcID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressattributekeys`
--

CREATE TABLE `expressattributekeys` (
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressentities`
--

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
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressentityassociationentries`
--

CREATE TABLE `expressentityassociationentries` (
  `id` int(11) NOT NULL,
  `association_id` int(11) DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exEntryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressentityassociations`
--

CREATE TABLE `expressentityassociations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `target_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressentityentries`
--

CREATE TABLE `expressentityentries` (
  `exEntryID` int(11) NOT NULL,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryDateModified` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressentityentryassociations`
--

CREATE TABLE `expressentityentryassociations` (
  `id` int(11) NOT NULL,
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressentityentryattributevalues`
--

CREATE TABLE `expressentityentryattributevalues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressformfieldsetassociationcontrols`
--

CREATE TABLE `expressformfieldsetassociationcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `association_entity_label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_selector_mode` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `enable_entry_reordering` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressformfieldsetattributekeycontrols`
--

CREATE TABLE `expressformfieldsetattributekeycontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressformfieldsetauthorcontrols`
--

CREATE TABLE `expressformfieldsetauthorcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressformfieldsetcontrols`
--

CREATE TABLE `expressformfieldsetcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressformfieldsets`
--

CREATE TABLE `expressformfieldsets` (
  `id` int(11) NOT NULL,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressformfieldsettextcontrols`
--

CREATE TABLE `expressformfieldsettextcontrols` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expressforms`
--

CREATE TABLE `expressforms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failedloginattempts`
--

CREATE TABLE `failedloginattempts` (
  `lcirID` int(10) UNSIGNED NOT NULL COMMENT 'Record identifier',
  `flaIp` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP address of the failed login attempt',
  `flaTimestamp` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Timestamp of the failed login attempt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records failed login attempts';

-- --------------------------------------------------------

--
-- Table structure for table `featureassignments`
--

CREATE TABLE `featureassignments` (
  `faID` int(10) UNSIGNED NOT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL,
  `fcID` int(10) UNSIGNED DEFAULT NULL,
  `fdObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featurecategories`
--

CREATE TABLE `featurecategories` (
  `fcID` int(10) UNSIGNED NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featurecategories`
--

INSERT INTO `featurecategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1, 'collection_version', 0),
(2, 'gathering_item', 0);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `feID` int(10) UNSIGNED NOT NULL,
  `feHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT 1,
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1, 'title', 1, 0, 0),
(2, 'link', 1, 0, 0),
(3, 'author', 1, 0, 0),
(4, 'date_time', 1, 0, 0),
(5, 'image', 500, 1, 0),
(6, 'conversation', 10, 1, 0),
(7, 'description', 1, 0, 0),
(8, 'featured', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fileattributekeys`
--

CREATE TABLE `fileattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fileattributekeys`
--

INSERT INTO `fileattributekeys` (`akID`) VALUES
(16),
(17),
(19);

-- --------------------------------------------------------

--
-- Table structure for table `fileattributevalues`
--

CREATE TABLE `fileattributevalues` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fileattributevalues`
--

INSERT INTO `fileattributevalues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 16, 151),
(1, 1, 17, 152),
(2, 1, 16, 153),
(2, 1, 17, 154);

-- --------------------------------------------------------

--
-- Table structure for table `fileimagethumbnailpaths`
--

CREATE TABLE `fileimagethumbnailpaths` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `fileVersionID` int(10) UNSIGNED NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageLocationID` int(10) UNSIGNED NOT NULL,
  `thumbnailFormat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fileimagethumbnailpaths`
--

INSERT INTO `fileimagethumbnailpaths` (`fileID`, `fileVersionID`, `thumbnailTypeHandle`, `storageLocationID`, `thumbnailFormat`, `path`, `isBuilt`, `lockID`, `lockExpires`) VALUES
(1, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/6015/7701/4337/sample.jpg', 1, NULL, NULL),
(1, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/6015/7701/4337/sample.jpg', 1, NULL, NULL),
(1, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/6015/7701/4337/sample.jpg', 1, NULL, NULL),
(2, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/3815/7701/6591/plants.jpg', 1, NULL, NULL),
(2, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/3815/7701/6591/plants.jpg', 1, NULL, NULL),
(2, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/3815/7701/6591/plants.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fileimagethumbnailtypefilesets`
--

CREATE TABLE `fileimagethumbnailtypefilesets` (
  `ftfsFileSetID` int(10) UNSIGNED NOT NULL,
  `ftfsThumbnailType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fileimagethumbnailtypes`
--

CREATE TABLE `fileimagethumbnailtypes` (
  `ftTypeID` int(11) NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftUpscalingEnabled` tinyint(1) NOT NULL,
  `ftLimitedToFileSets` tinyint(1) NOT NULL,
  `ftKeepAnimations` tinyint(1) NOT NULL,
  `ftSaveAreaBackgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fileimagethumbnailtypes`
--

INSERT INTO `fileimagethumbnailtypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`, `ftTypeSizingMode`, `ftUpscalingEnabled`, `ftLimitedToFileSets`, `ftKeepAnimations`, `ftSaveAreaBackgroundColor`) VALUES
(1, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1, 'exact', 1, 0, 0, ''),
(2, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, 400, 1, 'exact', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionassignments`
--

CREATE TABLE `filepermissionassignments` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionfiletypeaccesslist`
--

CREATE TABLE `filepermissionfiletypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionfiletypeaccesslistcustom`
--

CREATE TABLE `filepermissionfiletypeaccesslistcustom` (
  `extension` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionfiletypes`
--

CREATE TABLE `filepermissionfiletypes` (
  `extension` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) UNSIGNED NOT NULL,
  `folderTreeNodeID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fID`, `fDateAdded`, `fPassword`, `fOverrideSetPermissions`, `ocID`, `folderTreeNodeID`, `uID`, `fslID`) VALUES
(1, '2019-12-22 12:32:17', NULL, 0, 0, 7, 1, 1),
(2, '2019-12-22 13:09:51', NULL, 0, 0, 7, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `filesearchindexattributes`
--

CREATE TABLE `filesearchindexattributes` (
  `fID` int(10) UNSIGNED NOT NULL,
  `ak_width` decimal(14,4) DEFAULT 0.0000,
  `ak_height` decimal(14,4) DEFAULT 0.0000,
  `ak_duration` decimal(14,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filesearchindexattributes`
--

INSERT INTO `filesearchindexattributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '1000.0000', '1250.0000', '0.0000'),
(2, '975.0000', '1300.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `filesetfiles`
--

CREATE TABLE `filesetfiles` (
  `fsfID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `fsDisplayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesets`
--

CREATE TABLE `filesets` (
  `fsID` int(10) UNSIGNED NOT NULL,
  `fsName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesetsavedsearches`
--

CREATE TABLE `filesetsavedsearches` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fsSearchRequest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsResultColumns` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filestoragelocations`
--

CREATE TABLE `filestoragelocations` (
  `fslName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) UNSIGNED NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filestoragelocations`
--

INSERT INTO `filestoragelocations` (`fslName`, `fslConfiguration`, `fslID`, `fslIsDefault`) VALUES
('Default', 'O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `filestoragelocationtypes`
--

CREATE TABLE `filestoragelocationtypes` (
  `fslTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filestoragelocationtypes`
--

INSERT INTO `filestoragelocationtypes` (`fslTypeHandle`, `fslTypeName`, `fslTypeID`, `pkgID`) VALUES
('default', 'Default', 1, 0),
('local', 'Local', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fileusagerecord`
--

CREATE TABLE `fileusagerecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fileversionlog`
--

CREATE TABLE `fileversionlog` (
  `fvlID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fvUpdateTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fvUpdateTypeAttributeID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fileversions`
--

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
  `fID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fileversions`
--

INSERT INTO `fileversions` (`fvID`, `fvFilename`, `fvPrefix`, `fvDateAdded`, `fvActivateDateTime`, `fvIsApproved`, `fvAuthorUID`, `fvApproverUID`, `fvSize`, `fvTitle`, `fvDescription`, `fvExtension`, `fvTags`, `fvType`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fID`) VALUES
(1, 'sample.jpeg', '601577014337', '2019-12-22 12:32:17', '2019-12-22 12:32:17', 1, 1, 1, 80538, 'sample.jpeg', '', 'jpeg', '', 1, 1, 1, 1),
(1, 'plants.jpeg', '381577016591', '2019-12-22 13:09:51', '2019-12-22 13:09:51', 1, 1, 1, 188005, 'plants.jpeg', '', 'jpeg', '', 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `formsubmissionnotifications`
--

CREATE TABLE `formsubmissionnotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gapage`
--

CREATE TABLE `gapage` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatheringconfigureddatasources`
--

CREATE TABLE `gatheringconfigureddatasources` (
  `gcsID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatheringdatasources`
--

CREATE TABLE `gatheringdatasources` (
  `gasID` int(10) UNSIGNED NOT NULL,
  `gasName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gasDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gatheringdatasources`
--

INSERT INTO `gatheringdatasources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1, 'Site Page', 'page', 0, 0),
(2, 'RSS Feed', 'rss_feed', 0, 1),
(3, 'Flickr Feed', 'flickr_feed', 0, 2),
(4, 'Twitter', 'twitter', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gatheringitemfeatureassignments`
--

CREATE TABLE `gatheringitemfeatureassignments` (
  `gafaID` int(10) UNSIGNED NOT NULL,
  `gaiID` int(10) UNSIGNED DEFAULT NULL,
  `faID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatheringitems`
--

CREATE TABLE `gatheringitems` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaiSlotWidth` int(10) UNSIGNED DEFAULT 1,
  `gaiSlotHeight` int(10) UNSIGNED DEFAULT 1,
  `gaiKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gaiBatchTimestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gaiIsDeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatheringitemselectedtemplates`
--

CREATE TABLE `gatheringitemselectedtemplates` (
  `gaiID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gatID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gatTypeID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatheringitemtemplatefeatures`
--

CREATE TABLE `gatheringitemtemplatefeatures` (
  `gfeID` int(10) UNSIGNED NOT NULL,
  `gatID` int(10) UNSIGNED DEFAULT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gatheringitemtemplatefeatures`
--

INSERT INTO `gatheringitemtemplatefeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 3, 1),
(16, 4, 1),
(19, 5, 1),
(23, 7, 1),
(29, 11, 1),
(33, 12, 1),
(37, 13, 1),
(42, 14, 1),
(47, 15, 1),
(53, 17, 1),
(56, 18, 1),
(63, 21, 1),
(64, 22, 1),
(3, 1, 2),
(9, 2, 2),
(12, 3, 2),
(15, 4, 2),
(18, 5, 2),
(21, 6, 2),
(25, 8, 2),
(27, 9, 2),
(41, 13, 3),
(46, 14, 3),
(51, 16, 3),
(55, 17, 3),
(62, 20, 3),
(66, 22, 3),
(2, 1, 4),
(8, 2, 4),
(14, 4, 4),
(17, 5, 4),
(31, 11, 4),
(35, 12, 4),
(39, 13, 4),
(44, 14, 4),
(61, 20, 4),
(5, 1, 5),
(22, 6, 5),
(24, 8, 5),
(26, 9, 5),
(28, 10, 5),
(32, 11, 5),
(36, 12, 5),
(40, 13, 5),
(45, 14, 5),
(49, 15, 5),
(50, 16, 5),
(59, 19, 5),
(65, 22, 5),
(20, 5, 6),
(1, 1, 7),
(7, 2, 7),
(11, 3, 7),
(30, 11, 7),
(34, 12, 7),
(38, 13, 7),
(43, 14, 7),
(48, 15, 7),
(52, 16, 7),
(54, 17, 7),
(57, 18, 7),
(58, 19, 7),
(60, 20, 7),
(6, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `gatheringitemtemplates`
--

CREATE TABLE `gatheringitemtemplates` (
  `gatID` int(10) UNSIGNED NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `gatFixedSlotWidth` int(10) UNSIGNED DEFAULT 0,
  `gatFixedSlotHeight` int(10) UNSIGNED DEFAULT 0,
  `gatForceDefault` int(10) UNSIGNED DEFAULT 0,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `gatTypeID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gatheringitemtemplates`
--

INSERT INTO `gatheringitemtemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gatheringitemtemplatetypes`
--

CREATE TABLE `gatheringitemtemplatetypes` (
  `gatTypeID` int(10) UNSIGNED NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gatheringitemtemplatetypes`
--

INSERT INTO `gatheringitemtemplatetypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1, 'tile', 0),
(2, 'detail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gatheringpermissionassignments`
--

CREATE TABLE `gatheringpermissionassignments` (
  `gaID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatherings`
--

CREATE TABLE `gatherings` (
  `gaID` int(10) UNSIGNED NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `geolocators`
--

CREATE TABLE `geolocators` (
  `glID` int(10) UNSIGNED NOT NULL COMMENT 'Geolocator ID',
  `glHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator handle',
  `glName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator name',
  `glDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator description',
  `glConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator configuration options(DC2Type:json_array)',
  `glActive` tinyint(1) NOT NULL COMMENT 'Is this Geolocator the active one?',
  `glPackage` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all the installed Geolocator services';

--
-- Dumping data for table `geolocators`
--

INSERT INTO `geolocators` (`glID`, `glHandle`, `glName`, `glDescription`, `glConfiguration`, `glActive`, `glPackage`) VALUES
(1, 'geoplugin', 'geoPlugin', '', '{\"url\":\"http:\\/\\/www.geoplugin.net\\/json.gp?ip=[[IP]]\"}', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `gID` int(10) UNSIGNED NOT NULL,
  `gName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `gUserExpirationMethod` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gUserExpirationAction` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT 0,
  `gBadgeFID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gBadgeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT 0,
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT 0,
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT 0,
  `gPath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);

-- --------------------------------------------------------

--
-- Table structure for table `groupsetgroups`
--

CREATE TABLE `groupsetgroups` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groupsets`
--

CREATE TABLE `groupsets` (
  `gsID` int(10) UNSIGNED NOT NULL,
  `gsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jID` int(10) UNSIGNED NOT NULL,
  `jName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jLastStatusText` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT 0,
  `jStatus` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT 0,
  `isScheduled` smallint(6) NOT NULL DEFAULT 0,
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0),
(8, 'Update Statistics Trackers', 'Scan the sitemap for file usage and stack usage to update statistics trackers', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'update_statistics', 0, 0, 'days', 0),
(9, 'Fill thumbnail database table', 'Re-populate the thumbnail path database table.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'fill_thumbnails_table', 0, 0, 'days', 0),
(10, 'Deactivate Users', 'Deactivates users who haven\'t logged in recently, if automatic user deactivation is active.', '2019-12-22 11:34:28', NULL, 0, NULL, 0, 'ENABLED', 'deactivate_users', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobsetjobs`
--

CREATE TABLE `jobsetjobs` (
  `jsID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jRunOrder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobsetjobs`
--

INSERT INTO `jobsetjobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 9, 0),
(1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobsets`
--

CREATE TABLE `jobsets` (
  `jsID` int(10) UNSIGNED NOT NULL,
  `jsName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT 0,
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobsets`
--

INSERT INTO `jobsets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobslog`
--

CREATE TABLE `jobslog` (
  `jlID` int(10) UNSIGNED NOT NULL,
  `jID` int(10) UNSIGNED NOT NULL,
  `jlMessage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `jlError` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legacyattributekeys`
--

CREATE TABLE `legacyattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logincontrolipranges`
--

CREATE TABLE `logincontrolipranges` (
  `lcirID` int(10) UNSIGNED NOT NULL COMMENT 'Record identifier',
  `lcirIpFrom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Start of the range',
  `lcirIpTo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'End of the range',
  `lcirType` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of the record',
  `lcirExpires` datetime DEFAULT NULL COMMENT 'Record end-of-life timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='IP ranges used to control login attempts';

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logID` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1, 'operations', 1577010910, 'Clearing cache with CacheClearer::flush().', 1, 250),
(2, 'exceptions', 1577010919, 'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\vendor\\tedivm\\stash\\src\\Stash\\Driver\\FileSystem.php:326 unlink(D:/KEA - Webdev/webdev-live/ugly_blog/application/files/cache/overrides\\1952a01898073d1e\\561b9b4f2e42cbd7\\38a865804f8fdcb6\\57cd99682e939275\\fc0977b51d605a7a\\f511e1606b3917cf.php): No such file or directory (2)\n', 1, 600),
(3, 'operations', 1577013125, 'Clearing cache with CacheClearer::flush().', 1, 250),
(4, 'site_organization', 1577013133, 'Page \"Footer Contact\" at path \"/!stacks/footer-contact\" deleted', 1, 250),
(5, 'site_organization', 1577013133, 'Page \"Footer Legal\" at path \"/!stacks/footer-legal\" deleted', 1, 250),
(6, 'site_organization', 1577013134, 'Page \"Footer Navigation\" at path \"/!stacks/footer-navigation\" deleted', 1, 250),
(7, 'site_organization', 1577013134, 'Page \"Header Navigation\" at path \"/!stacks/header-navigation\" deleted', 1, 250),
(8, 'site_organization', 1577013134, 'Page \"Header Site Title\" at path \"/!stacks/header-site-title\" deleted', 1, 250),
(9, 'exceptions', 1577017698, 'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:46 filterNyCollectionTypeHandle method does not exist for the Concrete\\Core\\Page\\PageList class (0)\n', 1, 600),
(10, 'exceptions', 1577017702, 'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:46 filterNyCollectionTypeHandle method does not exist for the Concrete\\Core\\Page\\PageList class (0)\n', 1, 600),
(11, 'exceptions', 1577018317, 'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\application\\blocks\\latest_three_posts\\view.php:10 Allowed memory size of 536870912 bytes exhausted (tried to allocate 264257536 bytes) (1)\n', 1, 600),
(12, 'site_organization', 1577018476, 'Page \"\" at path \"/!drafts/190\" deleted', 1, 250),
(13, 'exceptions', 1577022416, 'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:17 Unable to find attribute select_attribute (0)\n', 1, 600),
(14, 'exceptions', 1577022627, 'Exception Occurred: D:\\KEA - Webdev\\webdev-live\\ugly_blog\\concrete\\src\\Search\\ItemList\\Database\\AttributedItemList.php:17 Unable to find attribute select_attribute (0)\n', 1, 600);

-- --------------------------------------------------------

--
-- Table structure for table `mailimporters`
--

CREATE TABLE `mailimporters` (
  `miID` int(10) UNSIGNED NOT NULL,
  `miHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT 0,
  `miEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mailimporters`
--

INSERT INTO `mailimporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `mailvalidationhashes`
--

CREATE TABLE `mailvalidationhashes` (
  `mvhID` int(10) UNSIGNED NOT NULL,
  `miID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multilingualpagerelations`
--

CREATE TABLE `multilingualpagerelations` (
  `mpLocale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multilingualpagerelations`
--

INSERT INTO `multilingualpagerelations` (`mpLocale`, `mpLanguage`, `mpRelationID`, `cID`) VALUES
('en_US', 'en', 1, 191),
('en_US', 'en', 2, 192),
('en_US', 'en', 3, 193);

-- --------------------------------------------------------

--
-- Table structure for table `multilingualtranslations`
--

CREATE TABLE `multilingualtranslations` (
  `mtID` int(10) UNSIGNED NOT NULL,
  `mtSectionID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `msgid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msgstr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msgstrPlurals` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notificationalerts`
--

CREATE TABLE `notificationalerts` (
  `naID` int(10) UNSIGNED NOT NULL,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notificationpermissionsubscriptionlist`
--

CREATE TABLE `notificationpermissionsubscriptionlist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notificationpermissionsubscriptionlistcustom`
--

CREATE TABLE `notificationpermissionsubscriptionlistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `nID` int(10) UNSIGNED NOT NULL,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2accesstoken`
--

CREATE TABLE `oauth2accesstoken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED DEFAULT NULL,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2authcode`
--

CREATE TABLE `oauth2authcode` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2client`
--

CREATE TABLE `oauth2client` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirectUri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientSecret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consentType` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2refreshtoken`
--

CREATE TABLE `oauth2refreshtoken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `accessToken` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2scope`
--

CREATE TABLE `oauth2scope` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth2scope`
--

INSERT INTO `oauth2scope` (`identifier`, `description`) VALUES
('account:read', 'Read information about the remotely authenticated user.'),
('files:read', 'Read detailed information about uploaded files.'),
('openid', 'Remotely authenticate into concrete5.'),
('site:trees:read', 'Read information about system site trees.'),
('system:info:read', 'Read detailed information about the system.');

-- --------------------------------------------------------

--
-- Table structure for table `oauthusermap`
--

CREATE TABLE `oauthusermap` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `pkgID` int(10) UNSIGNED NOT NULL,
  `pkgHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pkgID`, `pkgHandle`, `pkgVersion`, `pkgIsInstalled`, `pkgAvailableVersion`, `pkgDescription`, `pkgDateInstalled`, `pkgName`) VALUES
(1, 'block_builder', '1.2.1', 1, NULL, 'Build your custom c5 blocks (with optional set of repeatable entries).', '2019-12-22 12:11:15', 'Block Builder');

-- --------------------------------------------------------

--
-- Table structure for table `pagefeeds`
--

CREATE TABLE `pagefeeds` (
  `checkPagePermissions` tinyint(1) NOT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL,
  `iconFID` int(10) UNSIGNED NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfID` int(10) UNSIGNED NOT NULL,
  `cParentID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagepaths`
--

CREATE TABLE `pagepaths` (
  `cPath` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagepaths`
--

INSERT INTO `pagepaths` (`cPath`, `ppID`, `cID`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
('/dashboard', 1, 2, 1, 1),
('/dashboard/sitemap', 2, 3, 1, 1),
('/dashboard/sitemap/full', 3, 4, 1, 1),
('/dashboard/sitemap/explore', 4, 5, 1, 1),
('/dashboard/sitemap/search', 5, 6, 1, 1),
('/dashboard/files', 6, 7, 1, 1),
('/dashboard/files/search', 7, 8, 1, 1),
('/dashboard/files/attributes', 8, 9, 1, 1),
('/dashboard/files/sets', 9, 10, 1, 1),
('/dashboard/files/add_set', 10, 11, 1, 1),
('/dashboard/users', 11, 12, 1, 1),
('/dashboard/users/search', 12, 13, 1, 1),
('/dashboard/users/groups', 13, 14, 1, 1),
('/dashboard/users/attributes', 14, 15, 1, 1),
('/dashboard/users/add', 15, 16, 1, 1),
('/dashboard/users/add_group', 16, 17, 1, 1),
('/dashboard/users/groups/bulkupdate', 17, 18, 1, 1),
('/dashboard/users/group_sets', 18, 19, 1, 1),
('/dashboard/users/points', 19, 20, 1, 1),
('/dashboard/users/points/assign', 20, 21, 1, 1),
('/dashboard/users/points/actions', 21, 22, 1, 1),
('/dashboard/express', 22, 23, 1, 1),
('/dashboard/express/entries', 23, 24, 1, 1),
('/dashboard/reports', 24, 25, 1, 1),
('/dashboard/reports/forms', 25, 26, 1, 1),
('/dashboard/reports/forms/legacy', 26, 27, 1, 1),
('/dashboard/reports/surveys', 27, 28, 1, 1),
('/dashboard/reports/logs', 28, 29, 1, 1),
('/dashboard/reports/page_changes', 29, 30, 1, 1),
('/dashboard/pages', 30, 31, 1, 1),
('/dashboard/pages/themes', 31, 32, 1, 1),
('/dashboard/pages/themes/inspect', 32, 33, 1, 1),
('/dashboard/pages/types', 33, 34, 1, 1),
('/dashboard/pages/types/organize', 34, 35, 1, 1),
('/dashboard/pages/types/add', 35, 36, 1, 1),
('/dashboard/pages/types/form', 36, 37, 1, 1),
('/dashboard/pages/types/output', 37, 38, 1, 1),
('/dashboard/pages/types/attributes', 38, 39, 1, 1),
('/dashboard/pages/types/permissions', 39, 40, 1, 1),
('/dashboard/pages/templates', 40, 41, 1, 1),
('/dashboard/pages/templates/add', 41, 42, 1, 1),
('/dashboard/pages/attributes', 42, 43, 1, 1),
('/dashboard/pages/single', 43, 44, 1, 1),
('/dashboard/pages/feeds', 44, 45, 1, 1),
('/dashboard/calendar', 45, 46, 1, 1),
('/dashboard/calendar/events', 46, 47, 1, 1),
('/dashboard/calendar/event_list', 47, 48, 1, 1),
('/dashboard/calendar/add', 48, 49, 1, 1),
('/dashboard/calendar/permissions', 49, 50, 1, 1),
('/dashboard/calendar/attributes', 50, 51, 1, 1),
('/dashboard/conversations', 51, 52, 1, 1),
('/dashboard/conversations/messages', 52, 53, 1, 1),
('/dashboard/blocks', 53, 54, 1, 1),
('/dashboard/blocks/stacks', 54, 55, 1, 1),
('/dashboard/blocks/permissions', 55, 56, 1, 1),
('/dashboard/blocks/stacks/list', 56, 57, 1, 1),
('/dashboard/blocks/types', 57, 58, 1, 1),
('/dashboard/extend', 58, 59, 1, 1),
('/dashboard/extend/install', 59, 60, 1, 1),
('/dashboard/extend/update', 60, 61, 1, 1),
('/dashboard/extend/connect', 61, 62, 1, 1),
('/dashboard/extend/themes', 62, 63, 1, 1),
('/dashboard/extend/addons', 63, 64, 1, 1),
('/dashboard/system', 64, 65, 1, 1),
('/dashboard/system/basics', 65, 66, 1, 1),
('/dashboard/system/basics/name', 66, 67, 1, 1),
('/dashboard/system/basics/accessibility', 67, 68, 1, 1),
('/dashboard/system/basics/social', 68, 69, 1, 1),
('/dashboard/system/basics/icons', 69, 70, 1, 1),
('/dashboard/system/basics/editor', 70, 71, 1, 1),
('/dashboard/system/basics/multilingual', 71, 72, 1, 1),
('/dashboard/system/basics/multilingual/update', 72, 73, 1, 1),
('/dashboard/system/basics/timezone', 73, 74, 1, 1),
('/dashboard/system/basics/attributes', 74, 75, 1, 1),
('/dashboard/system/basics/reset_edit_mode', 75, 76, 1, 1),
('/dashboard/system/express', 76, 77, 1, 1),
('/dashboard/system/express/entities', 77, 78, 1, 1),
('/dashboard/system/express/entities/attributes', 78, 79, 1, 1),
('/dashboard/system/express/entities/associations', 79, 80, 1, 1),
('/dashboard/system/express/entities/forms', 80, 81, 1, 1),
('/dashboard/system/express/entities/customize_search', 81, 82, 1, 1),
('/dashboard/system/express/entities/order_entries', 82, 83, 1, 1),
('/dashboard/system/express/entries', 83, 84, 1, 1),
('/dashboard/system/multilingual', 84, 85, 1, 1),
('/dashboard/system/multilingual/setup', 85, 86, 1, 1),
('/dashboard/system/multilingual/copy', 86, 87, 1, 1),
('/dashboard/system/multilingual/page_report', 87, 88, 1, 1),
('/dashboard/system/multilingual/translate_interface', 88, 89, 1, 1),
('/dashboard/system/seo', 89, 90, 1, 1),
('/dashboard/system/seo/urls', 90, 91, 1, 1),
('/dashboard/system/seo/bulk', 91, 92, 1, 1),
('/dashboard/system/seo/codes', 92, 93, 1, 1),
('/dashboard/system/seo/excluded', 93, 94, 1, 1),
('/dashboard/system/seo/searchindex', 94, 95, 1, 1),
('/dashboard/system/files', 95, 96, 1, 1),
('/dashboard/system/files/filetypes', 96, 97, 1, 1),
('/dashboard/system/files/permissions', 97, 98, 1, 1),
('/dashboard/system/files/thumbnails', 98, 99, 1, 1),
('/dashboard/system/files/thumbnails/options', 99, 100, 1, 1),
('/dashboard/system/files/image_uploading', 100, 101, 1, 1),
('/dashboard/system/files/storage', 101, 102, 1, 1),
('/dashboard/system/files/export_options', 102, 103, 1, 1),
('/dashboard/system/optimization', 103, 104, 1, 1),
('/dashboard/system/optimization/cache', 104, 105, 1, 1),
('/dashboard/system/optimization/clearcache', 105, 106, 1, 1),
('/dashboard/system/optimization/jobs', 106, 107, 1, 1),
('/dashboard/system/optimization/query_log', 107, 108, 1, 1),
('/dashboard/system/permissions', 108, 109, 1, 1),
('/dashboard/system/permissions/site', 109, 110, 1, 1),
('/dashboard/system/permissions/tasks', 110, 111, 1, 1),
('/dashboard/system/permissions/users', 111, 112, 1, 1),
('/dashboard/system/permissions/advanced', 112, 113, 1, 1),
('/dashboard/system/permissions/workflows', 113, 114, 1, 1),
('/dashboard/system/permissions/blacklist', 114, 115, 1, 1),
('/dashboard/system/permissions/blacklist/range', 115, 116, 1, 1),
('/dashboard/system/permissions/captcha', 116, 117, 1, 1),
('/dashboard/system/permissions/antispam', 117, 118, 1, 1),
('/dashboard/system/permissions/maintenance', 118, 119, 1, 1),
('/dashboard/system/permissions/trusted_proxies', 119, 120, 1, 1),
('/dashboard/system/registration', 120, 121, 1, 1),
('/dashboard/system/registration/open', 121, 122, 1, 1),
('/dashboard/system/registration/postlogin', 122, 123, 1, 1),
('/dashboard/system/registration/profiles', 123, 124, 1, 1),
('/dashboard/system/registration/authentication', 124, 125, 1, 1),
('/dashboard/system/registration/global_password_reset', 125, 126, 1, 1),
('/dashboard/system/registration/notification', 126, 127, 1, 1),
('/dashboard/system/registration/deactivation', 127, 128, 1, 1),
('/dashboard/system/registration/automated_logout', 128, 129, 1, 1),
('/dashboard/system/registration/password_requirements', 129, 130, 1, 1),
('/dashboard/system/mail', 130, 131, 1, 1),
('/dashboard/system/mail/method', 131, 132, 1, 1),
('/dashboard/system/mail/method/test', 132, 133, 1, 1),
('/dashboard/system/mail/importers', 133, 134, 1, 1),
('/dashboard/system/mail/addresses', 134, 135, 1, 1),
('/dashboard/system/calendar', 135, 136, 1, 1),
('/dashboard/system/calendar/settings', 136, 137, 1, 1),
('/dashboard/system/calendar/colors', 137, 138, 1, 1),
('/dashboard/system/calendar/permissions', 138, 139, 1, 1),
('/dashboard/system/calendar/import', 139, 140, 1, 1),
('/dashboard/system/conversations', 140, 141, 1, 1),
('/dashboard/system/conversations/settings', 141, 142, 1, 1),
('/dashboard/system/conversations/points', 142, 143, 1, 1),
('/dashboard/system/conversations/bannedwords', 143, 144, 1, 1),
('/dashboard/system/conversations/permissions', 144, 145, 1, 1),
('/dashboard/system/attributes', 145, 146, 1, 1),
('/dashboard/system/attributes/types', 146, 147, 1, 1),
('/dashboard/system/attributes/sets', 147, 148, 1, 1),
('/dashboard/system/attributes/topics', 148, 149, 1, 1),
('/dashboard/system/attributes/topics/add', 149, 150, 1, 1),
('/dashboard/system/environment', 150, 151, 1, 1),
('/dashboard/system/environment/info', 151, 152, 1, 1),
('/dashboard/system/environment/debug', 152, 153, 1, 1),
('/dashboard/system/environment/logging', 153, 154, 1, 1),
('/dashboard/system/environment/proxy', 154, 155, 1, 1),
('/dashboard/system/environment/entities', 155, 156, 1, 1),
('/dashboard/system/environment/database_charset', 156, 157, 1, 1),
('/dashboard/system/environment/geolocation', 157, 158, 1, 1),
('/dashboard/system/update', 158, 159, 1, 1),
('/dashboard/system/update/update', 159, 160, 1, 1),
('/dashboard/system/api', 160, 161, 1, 1),
('/dashboard/system/api/settings', 161, 162, 1, 1),
('/dashboard/system/api/integrations', 162, 163, 1, 1),
('/dashboard/welcome', 163, 164, 1, 1),
('/dashboard/welcome/me', 164, 165, 1, 1),
('/!stacks', 165, 166, 1, 1),
('/page_not_found', 166, 167, 1, 1),
('/!trash', 167, 168, 1, 1),
('/login', 168, 169, 1, 1),
('/register', 169, 170, 1, 1),
('/account', 170, 171, 1, 1),
('/account/edit_profile', 171, 172, 1, 1),
('/account/avatar', 172, 173, 1, 1),
('/account/messages', 173, 174, 1, 1),
('/page_forbidden', 174, 175, 1, 1),
('/download_file', 175, 176, 1, 1),
('/!drafts', 176, 177, 1, 1),
('/account/welcome', 177, 178, 1, 0),
('/blog-1', 183, 185, 1, 1),
('/dashboard/blocks/block_builder', 184, 187, 1, 1),
('/about', 185, 188, 1, 1),
('/blog-1-1', 187, 191, 1, 1),
('/blog-1-2', 188, 192, 1, 1),
('/blog-1-3', 189, 193, 1, 1),
('/!stacks/header-area', 190, 194, 1, 1),
('/!stacks/footer-area', 191, 195, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionassignments`
--

CREATE TABLE `pagepermissionassignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagepermissionassignments`
--

INSERT INTO `pagepermissionassignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 80),
(1, 2, 81),
(1, 3, 82),
(1, 4, 83),
(1, 5, 84),
(1, 6, 85),
(1, 7, 86),
(1, 8, 88),
(1, 9, 89),
(1, 10, 90),
(1, 11, 91),
(1, 12, 92),
(1, 13, 93),
(1, 14, 94),
(1, 15, 95),
(1, 16, 96),
(1, 17, 97),
(1, 18, 87),
(2, 1, 61),
(167, 1, 60),
(169, 1, 57),
(170, 1, 58),
(175, 1, 59),
(177, 1, 62),
(177, 2, 63),
(177, 3, 64),
(177, 4, 65),
(177, 5, 66),
(177, 6, 67),
(177, 7, 68),
(177, 8, 70),
(177, 9, 71),
(177, 10, 72),
(177, 11, 73),
(177, 12, 74),
(177, 13, 75),
(177, 14, 76),
(177, 15, 77),
(177, 16, 78),
(177, 17, 79),
(177, 18, 69);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpagetypeaccesslist`
--

CREATE TABLE `pagepermissionpagetypeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpagetypeaccesslistcustom`
--

CREATE TABLE `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpropertyaccesslist`
--

CREATE TABLE `pagepermissionpropertyaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` tinyint(1) DEFAULT 0,
  `publicDateTime` tinyint(1) DEFAULT 0,
  `uID` tinyint(1) DEFAULT 0,
  `description` tinyint(1) DEFAULT 0,
  `paths` tinyint(1) DEFAULT 0,
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpropertyattributeaccesslistcustom`
--

CREATE TABLE `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `akID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionthemeaccesslist`
--

CREATE TABLE `pagepermissionthemeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionthemeaccesslistcustom`
--

CREATE TABLE `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `siteTreeID` int(10) UNSIGNED DEFAULT 0,
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT 0,
  `cCheckedOutUID` int(10) UNSIGNED DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT 1,
  `cInheritPermissionsFromCID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cPointerExternalLink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT 0,
  `cIsActive` tinyint(1) NOT NULL DEFAULT 1,
  `cChildren` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cDraftTargetParentPageID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cIsDraft` tinyint(1) NOT NULL DEFAULT 0,
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT -1,
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`cID`, `siteTreeID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cIsDraft`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 16, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 12, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 3, 2, 0, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 1, 1, 12, 0, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, 0, -1, '0', 0, 1),
(21, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 20, 0, 0, 0, -1, '0', 0, 1),
(22, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 20, 0, 0, 0, -1, '0', 0, 1),
(23, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/express/view.php', 0, NULL, 0, 1, 1, 4, 2, 0, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/express/entries.php', 0, NULL, 0, 1, 0, 0, 23, 0, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 5, 2, 0, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 1, 0, 25, 0, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms/legacy.php', 0, NULL, 0, 1, 0, 0, 26, 0, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 25, 0, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 25, 0, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/page_changes.php', 0, NULL, 0, 1, 0, 3, 25, 0, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 6, 6, 2, 0, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 31, 0, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 32, 0, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 31, 0, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 34, 0, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 34, 0, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 34, 0, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 34, 0, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 34, 0, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 34, 0, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 31, 0, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 41, 0, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 31, 0, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 31, 0, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 31, 0, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/view.php', 0, NULL, 0, 1, 5, 7, 2, 0, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/events.php', 0, NULL, 0, 1, 0, 0, 46, 0, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/event_list.php', 0, NULL, 0, 1, 0, 1, 46, 0, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/add.php', 0, NULL, 0, 1, 0, 2, 46, 0, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/permissions.php', 0, NULL, 0, 1, 0, 3, 46, 0, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/calendar/attributes.php', 0, NULL, 0, 1, 0, 4, 46, 0, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 8, 2, 0, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 52, 0, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 4, 9, 2, 0, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 54, 0, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 54, 0, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 55, 0, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 54, 0, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 10, 2, 0, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 59, 0, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 59, 0, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 59, 0, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 59, 0, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 59, 0, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 15, 11, 2, 0, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 9, 0, 65, 0, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 66, 0, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 66, 0, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 66, 0, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 66, 0, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 66, 0, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 1, 5, 66, 0, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/update.php', 0, NULL, 0, 1, 0, 0, 72, 0, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 66, 0, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/attributes.php', 0, NULL, 0, 1, 0, 7, 66, 0, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/reset_edit_mode.php', 0, NULL, 0, 1, 0, 8, 66, 0, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/view.php', 0, NULL, 0, 1, 2, 1, 65, 0, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities.php', 0, NULL, 0, 1, 5, 0, 77, 0, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/attributes.php', 0, NULL, 0, 1, 0, 0, 78, 0, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/associations.php', 0, NULL, 0, 1, 0, 1, 78, 0, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/forms.php', 0, NULL, 0, 1, 0, 2, 78, 0, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/customize_search.php', 0, NULL, 0, 1, 0, 3, 78, 0, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entities/order_entries.php', 0, NULL, 0, 1, 0, 4, 78, 0, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/express/entries.php', 0, NULL, 0, 1, 0, 1, 77, 0, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 4, 2, 65, 0, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 85, 0, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/copy.php', 0, NULL, 0, 1, 0, 1, 85, 0, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 2, 85, 0, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 3, 85, 0, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 3, 65, 0, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 90, 0, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 90, 0, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 90, 0, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 90, 0, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 90, 0, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 6, 4, 65, 0, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 0, 96, 0, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 1, 96, 0, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 1, 2, 96, 0, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails/options.php', 0, NULL, 0, 1, 0, 0, 99, 0, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/image_uploading.php', 0, NULL, 0, 1, 0, 3, 96, 0, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 4, 96, 0, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/export_options.php', 0, NULL, 0, 1, 0, 5, 96, 0, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 4, 5, 65, 0, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 104, 0, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 104, 0, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 104, 0, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '', 0, NULL, 0, 1, 0, 3, 104, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 6, 65, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 109, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 109, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 109, 0, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 109, 0, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/workflows.php', 0, NULL, 0, 1, 0, 4, 109, 0, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 1, 5, 109, 0, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist/range.php', 0, NULL, 0, 1, 0, 0, 115, 0, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 6, 109, 0, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 7, 109, 0, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 8, 109, 0, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/trusted_proxies.php', 0, NULL, 0, 1, 0, 9, 109, 0, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 9, 7, 65, 0, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 0, 121, 0, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 1, 121, 0, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 2, 121, 0, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 121, 0, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/global_password_reset.php', 0, NULL, 0, 1, 0, 4, 121, 0, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/notification.php', 0, NULL, 0, 1, 0, 5, 121, 0, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/deactivation.php', 0, NULL, 0, 1, 0, 6, 121, 0, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/automated_logout.php', 0, NULL, 0, 1, 0, 7, 121, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/password_requirements.php', 0, NULL, 0, 1, 0, 8, 121, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 3, 8, 65, 0, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 131, 0, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 132, 0, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 131, 0, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/addresses.php', 0, NULL, 0, 1, 0, 2, 131, 0, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/view.php', 0, NULL, 0, 1, 4, 9, 65, 0, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/settings.php', 0, NULL, 0, 1, 0, 0, 136, 0, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/colors.php', 0, NULL, 0, 1, 0, 1, 136, 0, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/permissions.php', 0, NULL, 0, 1, 0, 2, 136, 0, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/calendar/import.php', 0, NULL, 0, 1, 0, 3, 136, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 10, 65, 0, 0, 0, -1, '0', 0, 1),
(142, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 141, 0, 0, 0, -1, '0', 0, 1),
(143, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 141, 0, 0, 0, -1, '0', 0, 1),
(144, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 141, 0, 0, 0, -1, '0', 0, 1),
(145, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 141, 0, 0, 0, -1, '0', 0, 1),
(146, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 11, 65, 0, 0, 0, -1, '0', 0, 1),
(147, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 0, 146, 0, 0, 0, -1, '0', 0, 1),
(148, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 1, 146, 0, 0, 0, -1, '0', 0, 1),
(149, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 146, 0, 0, 0, -1, '0', 0, 1),
(150, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 149, 0, 0, 0, -1, '0', 0, 1),
(151, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 7, 12, 65, 0, 0, 0, -1, '0', 0, 1),
(152, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 151, 0, 0, 0, -1, '0', 0, 1),
(153, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 151, 0, 0, 0, -1, '0', 0, 1),
(154, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 151, 0, 0, 0, -1, '0', 0, 1),
(155, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 151, 0, 0, 0, -1, '0', 0, 1),
(156, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 151, 0, 0, 0, -1, '0', 0, 1),
(157, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/database_charset.php', 0, NULL, 0, 1, 0, 5, 151, 0, 0, 0, -1, '0', 0, 1),
(158, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/geolocation.php', 0, NULL, 0, 1, 0, 6, 151, 0, 0, 0, -1, '0', 0, 1),
(159, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/update/view.php', 0, NULL, 0, 1, 1, 13, 65, 0, 0, 0, -1, '0', 0, 1),
(160, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/update/update.php', 0, NULL, 0, 1, 0, 0, 159, 0, 0, 0, -1, '0', 0, 1),
(161, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/api/view.php', 0, NULL, 0, 1, 2, 14, 65, 0, 0, 0, -1, '0', 0, 1),
(162, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/api/settings.php', 0, NULL, 0, 1, 0, 0, 161, 0, 0, 0, -1, '0', 0, 1),
(163, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/api/integrations.php', 0, NULL, 0, 1, 0, 1, 161, 0, 0, 0, -1, '0', 0, 1),
(164, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/welcome.php', 0, NULL, 0, 1, 1, 0, 2, 0, 0, 0, -1, '0', 0, 1),
(165, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 164, 0, 0, 0, -1, '0', 0, 1),
(166, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 2, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(167, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 167, 'OVERRIDE', '/page_not_found.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(168, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(169, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 169, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(170, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 170, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(171, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(172, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 171, 0, 0, 0, -1, '0', 0, 1),
(173, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 171, 0, 0, 0, -1, '0', 0, 1),
(174, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages.php', 0, NULL, 0, 1, 0, 2, 171, 0, 0, 0, -1, '0', 0, 1),
(175, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 175, 'OVERRIDE', '/page_forbidden.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(176, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(177, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 177, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(178, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/desktop.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(179, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 179, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(185, 1, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 1, 0, 1, 0, -1, '0', 0, 0),
(186, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 186, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(187, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/block_builder.php', 0, NULL, 0, 1, 0, 3, 54, 1, 0, 0, -1, '0', 0, 1),
(188, 1, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 1, 0, 1, 0, -1, '0', 0, 0),
(189, 1, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 189, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(191, 1, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 1, 0, 0, 0, -1, '0', 0, 0),
(192, 1, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 1, 0, 0, 0, -1, '0', 0, 0),
(193, 1, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 1, 0, 0, 0, -1, '0', 0, 0),
(194, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 166, 0, 0, 0, -1, '0', 0, 1),
(195, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 166, 0, 0, 0, -1, '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesearchindex`
--

CREATE TABLE `pagesearchindex` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesearchindex`
--

INSERT INTO `pagesearchindex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(165, '', 'Waiting for Me', NULL, '/dashboard/welcome/me', '2019-12-22 11:34:39', '2019-12-22 11:34:47', NULL, 0),
(1, 'An ugly looking blog  Recent blog posts ', 'Home', NULL, NULL, '2019-12-22 11:32:16', '2019-12-22 15:33:06', NULL, 0),
(185, '\r\n	Widget 1\r\n	Widget 2\r\n	Widget 3\r\n\r\n My dog leslie 150px  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  ', 'My dog leslie', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '/blog-1', '2019-12-22 12:04:34', '2019-12-22 13:39:45', NULL, 0),
(188, 'About 150px  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n 50px ', 'About', '', '/about', '2019-12-22 12:36:11', '2019-12-22 12:45:08', NULL, 0),
(191, '\r\n	Widget 1\r\n	Widget 2\r\n	Widget 3\r\n\r\n  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  My bird alberto 150px ', 'My bird Alberto', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '/blog-1/blog-1', '2019-12-22 12:04:34', '2019-12-22 13:42:59', NULL, 0),
(192, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  My pretty yellow car 150px ', 'My pretty yellow car', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '/blog-1-2', '2019-12-22 12:04:34', '2019-12-22 13:48:07', NULL, 0),
(193, '\r\n	Widget 1\r\n	Widget 2\r\n	Widget 3\r\n\r\n  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n\r\n Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque maxime libero recusandae quas excepturi facilis cumque tenetur modi similique. Exercitationem quasi iusto optio atque harum ea, amet voluptatum voluptates vero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi dolores qui sapiente corrupti vitae, accusantium, fuga sunt aliquid doloribus asperiores odit molestias nemo consectetur laboriosam neque unde velit numquam eos? \r\n  My cactus 150px ', 'My cactus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\nAtque maxime libero recusandae quas excepturi facilis cumque\r\ntenetur modi similique. Exercitationem quasi iusto optio atque\r\nharum ea, amet voluptatum voluptates vero. Lorem ipsum dolor\r\nsit amet, consectetur adipisicing elit. Sequi dolores qui\r\nsapiente corrupti vitae, accusantium, fuga sunt aliquid\r\ndoloribus asperiores odit molestias nemo consectetur\r\naboriosam neque unde velit numquam eos?', '/blog-1-3', '2019-12-22 12:04:34', '2019-12-22 15:22:45', NULL, 0),
(194, '', 'Header area', NULL, '/!stacks/header-area', '2019-12-22 15:29:52', '2019-12-22 15:33:02', NULL, 0),
(195, ' Copyright 2019 - Ugly blog \r\n ', 'Footer area', NULL, '/!stacks/footer-area', '2019-12-22 15:31:32', '2019-12-22 15:33:02', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagetemplates`
--

CREATE TABLE `pagetemplates` (
  `pTemplateID` int(11) NOT NULL,
  `pTemplateHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetemplates`
--

INSERT INTO `pagetemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'desktop', '', 'Desktop', 1, 0),
(3, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(4, 'full', 'full.png', 'Full', 0, 0),
(5, 'single', 'full.png', 'Single', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagethemecustomstyles`
--

CREATE TABLE `pagethemecustomstyles` (
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `scvlID` int(10) UNSIGNED DEFAULT 0,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagethemes`
--

CREATE TABLE `pagethemes` (
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagethemes`
--

INSERT INTO `pagethemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'ugly-blog', 'Ugly blog theme', 'The custom theme for the ugly blog', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypecomposercontroltypes`
--

CREATE TABLE `pagetypecomposercontroltypes` (
  `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypecomposercontroltypes`
--

INSERT INTO `pagetypecomposercontroltypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Property', 0),
(2, 'collection_attribute', 'Custom Attribute', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypecomposerformlayoutsetcontrols`
--

CREATE TABLE `pagetypecomposerformlayoutsetcontrols` (
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL,
  `ptComposerFormLayoutSetID` int(10) UNSIGNED DEFAULT 0,
  `ptComposerControlTypeID` int(10) UNSIGNED DEFAULT 0,
  `ptComposerControlObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) UNSIGNED DEFAULT 0,
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypecomposerformlayoutsetcontrols`
--

INSERT INTO `pagetypecomposerformlayoutsetcontrols` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 1, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 2, NULL, NULL, NULL, 0),
(4, 1, 1, 'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"list-alt\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 3, NULL, NULL, NULL, 0),
(5, 1, 1, 'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 4, NULL, NULL, NULL, 0),
(6, 2, 3, 'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":15:{s:7:\"\0*\0btID\";i:1;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:1;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:43:\"/ugly_blog/concrete/blocks/content/icon.png\";s:33:\"\0*\0ptComposerControlIconFormatter\";N;s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 0, 'Body', NULL, NULL, 0),
(7, 3, 1, 'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":12:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 0, NULL, NULL, NULL, 1),
(8, 3, 1, 'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:4:\"font\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 1, NULL, NULL, NULL, 0),
(9, 3, 1, 'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:9:\"file-text\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 2, NULL, NULL, NULL, 0),
(10, 3, 1, 'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":12:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";N;s:33:\"\0*\0ptComposerControlIconFormatter\";O:48:\"Concrete\\Core\\Attribute\\FontAwesomeIconFormatter\":1:{s:7:\"\0*\0icon\";s:8:\"download\";}s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}', 3, NULL, NULL, NULL, 0),
(11, 3, 2, 'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":1:{s:7:\"\0*\0akID\";i:20;}', 4, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypecomposerformlayoutsets`
--

CREATE TABLE `pagetypecomposerformlayoutsets` (
  `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED DEFAULT 0,
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDisplayOrder` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypecomposerformlayoutsets`
--

INSERT INTO `pagetypecomposerformlayoutsets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1, 5, 'Basics', '', 0),
(2, 5, 'Content', '', 1),
(3, 6, 'Blog page', 'Basic blog page information', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypecomposeroutputblocks`
--

CREATE TABLE `pagetypecomposeroutputblocks` (
  `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) UNSIGNED DEFAULT 0,
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypecomposeroutputblocks`
--

INSERT INTO `pagetypecomposeroutputblocks` (`ptComposerOutputBlockID`, `cID`, `cvID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(4, 185, 1, 'Main', 0, 6, 27),
(7, 188, 1, 'Main', 0, 6, 35),
(8, 191, 1, 'Main', 0, 6, 27),
(9, 192, 1, 'Main', 0, 6, 27),
(10, 193, 1, 'Main', 0, 6, 27);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypecomposeroutputcontrols`
--

CREATE TABLE `pagetypecomposeroutputcontrols` (
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL,
  `pTemplateID` int(10) UNSIGNED DEFAULT 0,
  `ptID` int(10) UNSIGNED DEFAULT 0,
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypecomposeroutputcontrols`
--

INSERT INTO `pagetypecomposeroutputcontrols` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(1, 4, 5, 6),
(2, 5, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypepagetemplatedefaultpages`
--

CREATE TABLE `pagetypepagetemplatedefaultpages` (
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypepagetemplatedefaultpages`
--

INSERT INTO `pagetypepagetemplatedefaultpages` (`pTemplateID`, `ptID`, `cID`) VALUES
(4, 5, 179),
(5, 5, 186),
(5, 6, 189);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypepagetemplates`
--

CREATE TABLE `pagetypepagetemplates` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagetypepermissionassignments`
--

CREATE TABLE `pagetypepermissionassignments` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypepermissionassignments`
--

INSERT INTO `pagetypepermissionassignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 60, 17),
(1, 61, 17),
(1, 62, 17),
(1, 63, 17),
(1, 64, 40),
(2, 60, 17),
(2, 61, 17),
(2, 62, 17),
(2, 63, 17),
(2, 64, 41),
(3, 60, 17),
(3, 61, 17),
(3, 62, 17),
(3, 63, 17),
(3, 64, 42),
(4, 60, 17),
(4, 61, 17),
(4, 62, 17),
(4, 63, 17),
(4, 64, 43),
(5, 60, 17),
(5, 61, 17),
(5, 62, 17),
(5, 63, 17),
(5, 64, 45),
(6, 60, 17),
(6, 61, 17),
(6, 62, 17),
(6, 63, 17),
(6, 64, 112);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypepublishtargettypes`
--

CREATE TABLE `pagetypepublishtargettypes` (
  `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypepublishtargettypes`
--

INSERT INTO `pagetypepublishtargettypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypes`
--

CREATE TABLE `pagetypes` (
  `ptID` int(10) UNSIGNED NOT NULL,
  `ptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) UNSIGNED DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) UNSIGNED DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT 0,
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT 1,
  `ptDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ptPublishTargetObject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagetypes`
--

INSERT INTO `pagetypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`, `siteTypeID`) VALUES
(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(2, 'Stack Category', 'core_stack_category', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(3, 'Desktop', 'core_desktop', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(4, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}', 1),
(5, 'Page', 'page', 3, 4, 'A', 0, 1, 0, 0, 0, 'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":6:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}', 1),
(6, 'Blog page', 'blog_page', 1, 5, 'A', 0, 1, 1, 0, 0, 'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pageworkflowprogress`
--

CREATE TABLE `pageworkflowprogress` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccess`
--

CREATE TABLE `permissionaccess` (
  `paID` int(10) UNSIGNED NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccess`
--

INSERT INTO `permissionaccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentities`
--

CREATE TABLE `permissionaccessentities` (
  `peID` int(10) UNSIGNED NOT NULL,
  `petID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccessentities`
--

INSERT INTO `permissionaccessentities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(6, 1),
(7, 2),
(3, 5),
(4, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitygroups`
--

CREATE TABLE `permissionaccessentitygroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccessentitygroups`
--

INSERT INTO `permissionaccessentitygroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitygroupsets`
--

CREATE TABLE `permissionaccessentitygroupsets` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitytypecategories`
--

CREATE TABLE `permissionaccessentitytypecategories` (
  `petID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkCategoryID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccessentitytypecategories`
--

INSERT INTO `permissionaccessentitytypecategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(3, 1),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 24),
(3, 25),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25),
(5, 1),
(5, 15),
(6, 5),
(6, 6),
(7, 21),
(7, 22);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitytypes`
--

CREATE TABLE `permissionaccessentitytypes` (
  `petID` int(10) UNSIGNED NOT NULL,
  `petHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccessentitytypes`
--

INSERT INTO `permissionaccessentitytypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentityusers`
--

CREATE TABLE `permissionaccessentityusers` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccessentityusers`
--

INSERT INTO `permissionaccessentityusers` (`peID`, `uID`) VALUES
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccesslist`
--

CREATE TABLE `permissionaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pdID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `accessType` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionaccesslist`
--

INSERT INTO `permissionaccesslist` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 2, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 2, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(36, 2, 0, 10),
(37, 1, 0, 10),
(37, 2, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 3, 0, 10),
(41, 3, 0, 10),
(42, 3, 0, 10),
(43, 3, 0, 10),
(44, 1, 0, 10),
(45, 3, 0, 10),
(46, 2, 0, 10),
(47, 1, 0, 10),
(47, 2, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 2, 0, 10),
(58, 2, 0, 10),
(59, 2, 0, 10),
(60, 2, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10),
(69, 1, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 1, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(78, 1, 0, 10),
(79, 1, 0, 10),
(80, 2, 0, 10),
(81, 1, 0, 10),
(82, 1, 0, 10),
(83, 1, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 1, 0, 10),
(87, 1, 0, 10),
(88, 1, 0, 10),
(89, 1, 0, 10),
(90, 1, 0, 10),
(91, 1, 0, 10),
(92, 1, 0, 10),
(93, 1, 0, 10),
(94, 1, 0, 10),
(95, 1, 0, 10),
(96, 1, 0, 10),
(97, 1, 0, 10),
(98, 1, 0, 10),
(99, 1, 0, 10),
(100, 1, 0, 10),
(101, 1, 0, 10),
(102, 1, 0, 10),
(103, 2, 0, 10),
(104, 2, 0, 10),
(105, 1, 0, 10),
(105, 5, 0, 10),
(106, 1, 0, 10),
(106, 5, 0, 10),
(107, 1, 0, 10),
(107, 6, 0, 10),
(108, 1, 0, 10),
(109, 1, 0, 10),
(110, 1, 0, 10),
(111, 1, 0, 10),
(111, 7, 0, 10),
(112, 3, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessworkflows`
--

CREATE TABLE `permissionaccessworkflows` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissionassignments`
--

CREATE TABLE `permissionassignments` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionassignments`
--

INSERT INTO `permissionassignments` (`paID`, `pkID`) VALUES
(1, 19),
(2, 20),
(3, 75),
(4, 76),
(5, 77),
(6, 79),
(7, 80),
(8, 81),
(9, 83),
(10, 84),
(11, 85),
(12, 86),
(13, 87),
(14, 88),
(15, 89),
(16, 90),
(17, 110),
(18, 112),
(19, 113),
(20, 114),
(21, 115),
(22, 116),
(23, 117),
(24, 118),
(25, 119),
(26, 120),
(27, 121),
(28, 122),
(29, 123),
(30, 124),
(31, 125),
(38, 126),
(39, 127),
(111, 82);

-- --------------------------------------------------------

--
-- Table structure for table `permissiondurationobjects`
--

CREATE TABLE `permissiondurationobjects` (
  `pdID` int(10) UNSIGNED NOT NULL,
  `pdObject` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissionkeycategories`
--

CREATE TABLE `permissionkeycategories` (
  `pkCategoryID` int(10) UNSIGNED NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionkeycategories`
--

INSERT INTO `permissionkeycategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_folder', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'notification', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL),
(15, 'page_type', NULL),
(16, 'gathering', NULL),
(17, 'group_tree_node', NULL),
(18, 'express_tree_node', NULL),
(19, 'category_tree_node', NULL),
(20, 'topic_tree_node', NULL),
(21, 'conversation', NULL),
(22, 'conversation_message', NULL),
(23, 'multilingual_section', NULL),
(24, 'calendar_admin', NULL),
(25, 'calendar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissionkeys`
--

CREATE TABLE `permissionkeys` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT 0,
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `pkDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissionkeys`
--

INSERT INTO `permissionkeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site\'s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area\'s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block\'s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_folder_file', 'View Files', 0, 0, 'View files within folder in the site.', 5, 0),
(40, 'search_file_folder', 'Search File Folder', 0, 0, 'See this file folder in the file manager', 5, 0),
(41, 'edit_file_folder', 'Edit File Folder', 0, 0, 'Edit a file folder.', 5, 0),
(42, 'edit_file_folder_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 5, 0),
(43, 'edit_file_folder_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in folder.', 5, 0),
(44, 'copy_file_folder_files', 'Copy File', 0, 0, 'Can copy files in file folder.', 5, 0),
(45, 'edit_file_folder_permissions', 'Edit File Access', 0, 0, 'Can edit access to file folder.', 5, 0),
(46, 'delete_file_folder', 'Delete File Set', 0, 0, 'Can delete file folder.', 5, 0),
(47, 'delete_file_folder_files', 'Delete File', 0, 0, 'Can delete files in folder.', 5, 0),
(48, 'add_file', 'Add File', 0, 1, 'Can add files to folder.', 5, 0),
(49, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(50, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(51, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 6, 0),
(52, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(53, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(54, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(55, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(56, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(57, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(58, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(59, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(60, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 15, 0),
(61, 'edit_page_type', 'Edit Page Type', 0, 0, '', 15, 0),
(62, 'delete_page_type', 'Delete Page Type', 0, 0, '', 15, 0),
(63, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 15, 0),
(64, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 15, 0),
(65, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 20, 0),
(66, 'view_category_tree_node', 'View Category Tree Node', 0, 0, '', 19, 0),
(67, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 21, 0),
(68, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 21, 0),
(69, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 21, 0),
(70, 'delete_conversation_message', 'Delete Message', 0, 0, '', 21, 0),
(71, 'edit_conversation_message', 'Edit Message', 0, 0, '', 21, 0),
(72, 'rate_conversation_message', 'Rate Message', 0, 0, '', 21, 0),
(73, 'flag_conversation_message', 'Flag Message', 0, 0, '', 21, 0),
(74, 'approve_conversation_message', 'Approve Message', 0, 0, '', 21, 0),
(75, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(76, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(77, 'activate_user', 'Activate/Deactivate User', 1, 0, NULL, 4, 0),
(78, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(79, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(80, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(81, 'delete_user', 'Delete User', 1, 0, NULL, 4, 0),
(82, 'notify_in_notification_center', 'Notify in Notification Center', 0, 1, 'Controls who receives updates in the notification center.', 11, 0),
(83, 'add_calendar', 'Add Calendar', 0, 0, '', 24, 0),
(84, 'view_calendars', 'View Calendars', 0, 0, '', 24, 0),
(85, 'edit_calendars', 'Edit Calendars', 0, 0, '', 24, 0),
(86, 'edit_calendars_permissions', 'Edit Permissions', 0, 0, '', 24, 0),
(87, 'add_calendar_events', 'Add Calendar Events', 0, 0, '', 24, 0),
(88, 'approve_calendar_events', 'Approve Calendar Events', 1, 0, '', 24, 0),
(89, 'delete_calendars', 'Delete Calendars', 0, 0, '', 24, 0),
(90, 'access_calendar_rss_feeds', 'Access RSS Feeds', 0, 0, '', 24, 0),
(91, 'view_calendar', 'View Calendar', 0, 0, '', 25, 0),
(92, 'view_calendar_in_edit_interface', 'View in Edit Interface', 0, 0, '', 25, 0),
(93, 'edit_calendar_permissions', 'Edit Permissions', 0, 0, '', 25, 0),
(94, 'edit_calendar', 'Edit Calendar', 0, 0, '', 25, 0),
(95, 'add_calendar_event', 'Add Calendar Event', 0, 0, '', 25, 0),
(96, 'approve_calendar_event', 'Approve Calendar Event', 1, 0, '', 25, 0),
(97, 'edit_calendar_event_more_details_location', 'Modify More Details Location', 0, 0, '', 25, 0),
(98, 'edit_calendar_events', 'Edit Calendar Events', 0, 0, '', 25, 0),
(99, 'access_calendar_rss_feed', 'Access RSS Feed', 0, 0, '', 25, 0),
(100, 'delete_calendar', 'Delete Calendar', 0, 0, '', 25, 0),
(101, 'view_express_entries', 'View Entries', 0, 0, NULL, 18, 0),
(102, 'add_express_entries', 'Add Entry', 0, 0, NULL, 18, 0),
(103, 'edit_express_entries', 'Edit Entry', 0, 0, NULL, 18, 0),
(104, 'delete_express_entries', 'Delete Entry', 0, 0, NULL, 18, 0),
(105, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 17, 0),
(106, 'edit_group', 'Edit Group', 0, 0, NULL, 17, 0),
(107, 'assign_group', 'Assign Group', 0, 0, NULL, 17, 0),
(108, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 17, 0),
(109, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 17, 0),
(110, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(111, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(112, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(113, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(114, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(115, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(116, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(117, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(118, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(119, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
(120, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(121, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(122, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(123, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(124, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(125, 'edit_topic_tree', 'Edit Topic Tree', 0, 0, NULL, 10, 0),
(126, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(127, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilecontents`
--

CREATE TABLE `pilecontents` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `pID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `itemType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piles`
--

CREATE TABLE `piles` (
  `pID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privatemessagenotifications`
--

CREATE TABLE `privatemessagenotifications` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queuemessages`
--

CREATE TABLE `queuemessages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queuepageduplicationrelations`
--

CREATE TABLE `queuepageduplicationrelations` (
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `originalCID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `savedexpresssearchqueries`
--

CREATE TABLE `savedexpresssearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `savedfilesearchqueries`
--

CREATE TABLE `savedfilesearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `savedpagesearchqueries`
--

CREATE TABLE `savedpagesearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `savedusersearchqueries`
--

CREATE TABLE `savedusersearchqueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sessionID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionValue` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sessionTime` int(10) UNSIGNED NOT NULL,
  `sessionLifeTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siblingpagerelations`
--

CREATE TABLE `siblingpagerelations` (
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siteattributekeys`
--

CREATE TABLE `siteattributekeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siteattributevalues`
--

CREATE TABLE `siteattributevalues` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitelocales`
--

CREATE TABLE `sitelocales` (
  `siteLocaleID` int(10) UNSIGNED NOT NULL,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitelocales`
--

INSERT INTO `sitelocales` (`siteLocaleID`, `msIsDefault`, `msLanguage`, `msCountry`, `msNumPlurals`, `msPluralRule`, `msPluralCases`, `siteID`, `siteTreeID`) VALUES
(1, 1, 'en', 'US', 2, 'n != 1', 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`siteID`, `pThemeID`, `siteIsDefault`, `siteHandle`, `siteTypeID`) VALUES
(1, 2, 1, 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sitesearchindexattributes`
--

CREATE TABLE `sitesearchindexattributes` (
  `siteID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitetrees`
--

CREATE TABLE `sitetrees` (
  `siteTreeID` int(10) UNSIGNED NOT NULL,
  `siteHomePageID` int(10) UNSIGNED NOT NULL,
  `treeType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitetrees`
--

INSERT INTO `sitetrees` (`siteTreeID`, `siteHomePageID`, `treeType`) VALUES
(1, 1, 'sitetree');

-- --------------------------------------------------------

--
-- Table structure for table `sitetreetrees`
--

CREATE TABLE `sitetreetrees` (
  `siteLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitetreetrees`
--

INSERT INTO `sitetreetrees` (`siteLocaleID`, `siteTreeID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sitetypes`
--

CREATE TABLE `sitetypes` (
  `siteTypeID` int(10) UNSIGNED NOT NULL,
  `siteTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitetypes`
--

INSERT INTO `sitetypes` (`siteTypeID`, `siteTypeHandle`, `siteTypeName`, `siteTypeThemeID`, `siteTypeHomePageTemplateID`, `pkgID`) VALUES
(1, 'default', 'Default Site Type', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `ssHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stacks`
--

CREATE TABLE `stacks` (
  `stID` int(10) UNSIGNED NOT NULL,
  `stName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stType` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stMultilingualSection` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stacks`
--

INSERT INTO `stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
(6, 'Header area', 20, 194, 0),
(7, 'Footer area', 20, 195, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stackusagerecord`
--

CREATE TABLE `stackusagerecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stylecustomizercustomcssrecords`
--

CREATE TABLE `stylecustomizercustomcssrecords` (
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stylecustomizerinlinestylepresets`
--

CREATE TABLE `stylecustomizerinlinestylepresets` (
  `pssPresetID` int(10) UNSIGNED NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stylecustomizerinlinestylesets`
--

CREATE TABLE `stylecustomizerinlinestylesets` (
  `issID` int(11) NOT NULL,
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
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stylecustomizerinlinestylesets`
--

INSERT INTO `stylecustomizerinlinestylesets` (`issID`, `customClass`, `customID`, `customElementAttribute`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderColor`, `borderStyle`, `borderWidth`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`) VALUES
(1, 'concrete5-org-stories', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stylecustomizervaluelists`
--

CREATE TABLE `stylecustomizervaluelists` (
  `scvlID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stylecustomizervalues`
--

CREATE TABLE `stylecustomizervalues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemantispamlibraries`
--

CREATE TABLE `systemantispamlibraries` (
  `saslHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemcaptchalibraries`
--

CREATE TABLE `systemcaptchalibraries` (
  `sclHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systemcaptchalibraries`
--

INSERT INTO `systemcaptchalibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('recaptchaV3', 'reCAPTCHA v3', 0, 0),
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `systemcontenteditorsnippets`
--

CREATE TABLE `systemcontenteditorsnippets` (
  `scsHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systemcontenteditorsnippets`
--

INSERT INTO `systemcontenteditorsnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `systemdatabasemigrations`
--

CREATE TABLE `systemdatabasemigrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systemdatabasemigrations`
--

INSERT INTO `systemdatabasemigrations` (`version`) VALUES
('20140919000000'),
('20140930000000'),
('20141017000000'),
('20141024000000'),
('20141113000000'),
('20141219000000'),
('20150109000000'),
('20150504000000'),
('20150515000000'),
('20150610000000'),
('20150612000000'),
('20150615000000'),
('20150616000000'),
('20150619000000'),
('20150622000000'),
('20150623000000'),
('20150713000000'),
('20150731000000'),
('20151221000000'),
('20160107000000'),
('20160213000000'),
('20160314000000'),
('20160412000000'),
('20160615000000'),
('20160725000000'),
('20161109000000'),
('20161203000000'),
('20161208000000'),
('20161216000000'),
('20161216100000'),
('20170118000000'),
('20170123000000'),
('20170201000000'),
('20170202000000'),
('20170227063249'),
('20170313000000'),
('20170316000000'),
('20170404000000'),
('20170406000000'),
('20170407000001'),
('20170412000000'),
('20170418000000'),
('20170420000000'),
('20170421000000'),
('20170424000000'),
('20170505000000'),
('20170512000000'),
('20170519000000'),
('20170608000000'),
('20170608100000'),
('20170609000000'),
('20170609100000'),
('20170610000000'),
('20170611000000'),
('20170613000000'),
('20170614000000'),
('20170626000000'),
('20170711151953'),
('20170731021618'),
('20170802000000'),
('20170804000000'),
('20170810000000'),
('20170818000000'),
('20170824000000'),
('20170905000000'),
('20170915000000'),
('20170926000000'),
('20171012000000'),
('20171025000000'),
('20171109000000'),
('20171109065758'),
('20171110032423'),
('20171121000000'),
('20171129190607'),
('20171218000000'),
('20171221194440'),
('20180119000000'),
('20180122213656'),
('20180122220813'),
('20180123000000'),
('20180126000000'),
('20180130000000'),
('20180212000000'),
('20180213000000'),
('20180227035239'),
('20180308043255'),
('20180328215345'),
('20180329183749'),
('20180330080830'),
('20180403143200'),
('20180518153531'),
('20180524000000'),
('20180531000000'),
('20180604000000'),
('20180609000000'),
('20180615000000'),
('20180617000000'),
('20180621222449'),
('20180622192332'),
('20180627000000'),
('20180709175202'),
('20180710203437'),
('20180716000000'),
('20180717000000'),
('20180813220933'),
('20180816210727'),
('20180820205800'),
('20180831213421'),
('20180904165911'),
('20180907091500'),
('20180910000000'),
('20180912113737'),
('20180920000000'),
('20180926000000'),
('20180926070200'),
('20180926070300'),
('20181006212300'),
('20181006212400'),
('20181019010145'),
('20181029223809'),
('20181105102800'),
('20181112211702'),
('20181116072400'),
('20181211000000'),
('20181211100000'),
('20181212000000'),
('20181212221911'),
('20181222183445'),
('20190106000000'),
('20190110194848'),
('20190110231015'),
('20190111181236'),
('20190112000000'),
('20190129000000'),
('20190225000000'),
('20190225184524'),
('20190301133300'),
('20190516204806'),
('20190520171430'),
('20190625177700'),
('20190625177710'),
('20190717090600'),
('20190817000000'),
('20190822160700'),
('20190826000000'),
('20190925072210');

-- --------------------------------------------------------

--
-- Table structure for table `systemdatabasequerylog`
--

CREATE TABLE `systemdatabasequerylog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `executionMS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topictrees`
--

CREATE TABLE `topictrees` (
  `treeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topicTreeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treefilenodes`
--

CREATE TABLE `treefilenodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treefilenodes`
--

INSERT INTO `treefilenodes` (`treeNodeID`, `fID`) VALUES
(8, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `treegroupnodes`
--

CREATE TABLE `treegroupnodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treegroupnodes`
--

INSERT INTO `treegroupnodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `treenodepermissionassignments`
--

CREATE TABLE `treenodepermissionassignments` (
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treenodepermissionassignments`
--

INSERT INTO `treenodepermissionassignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(1, 105, 98),
(1, 106, 99),
(1, 107, 100),
(1, 108, 101),
(1, 109, 102),
(5, 101, 37),
(5, 102, 33),
(5, 103, 34),
(5, 104, 35),
(6, 101, 32),
(6, 102, 36),
(6, 103, 34),
(6, 104, 35),
(7, 39, 47),
(7, 40, 48),
(7, 41, 49),
(7, 42, 50),
(7, 43, 51),
(7, 44, 52),
(7, 45, 53),
(7, 46, 55),
(7, 47, 54),
(7, 48, 56),
(7, 66, 44);

-- --------------------------------------------------------

--
-- Table structure for table `treenodes`
--

CREATE TABLE `treenodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeID` int(10) UNSIGNED DEFAULT 0,
  `treeID` int(10) UNSIGNED DEFAULT 0,
  `treeNodeParentID` int(10) UNSIGNED DEFAULT 0,
  `treeNodeDisplayOrder` int(10) UNSIGNED DEFAULT 0,
  `treeNodeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT 0,
  `inheritPermissionsFromTreeNodeID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treenodes`
--

INSERT INTO `treenodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeName`, `dateModified`, `dateCreated`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 1, 1, 0, 0, '', '2019-12-22 11:32:12', '2019-12-22 11:32:12', 1, 1),
(2, 1, 1, 1, 0, '', '2019-12-22 11:32:12', '2019-12-22 11:32:12', 0, 1),
(3, 1, 1, 1, 1, '', '2019-12-22 11:32:12', '2019-12-22 11:32:12', 0, 1),
(4, 1, 1, 1, 2, '', '2019-12-22 11:32:12', '2019-12-22 11:32:12', 0, 1),
(5, 3, 2, 0, 0, '', '2019-12-22 11:32:16', '2019-12-22 11:32:15', 1, 5),
(6, 3, 2, 5, 0, 'Forms', '2019-12-22 11:32:16', '2019-12-22 11:32:16', 1, 6),
(7, 7, 3, 0, 0, '', '2019-12-22 13:09:51', '2019-12-22 11:34:52', 1, 7),
(8, 6, 3, 7, 0, '', '2019-12-22 12:32:17', '2019-12-22 12:32:17', 0, 7),
(9, 6, 3, 7, 1, '', '2019-12-22 13:09:51', '2019-12-22 13:09:51', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `treenodetypes`
--

CREATE TABLE `treenodetypes` (
  `treeNodeTypeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treenodetypes`
--

INSERT INTO `treenodetypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'category', 0),
(3, 'express_entry_category', 0),
(4, 'express_entry_results', 0),
(5, 'topic', 0),
(6, 'file', 0),
(7, 'file_folder', 0),
(8, 'search_preset', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trees`
--

CREATE TABLE `trees` (
  `treeID` int(10) UNSIGNED NOT NULL,
  `treeTypeID` int(10) UNSIGNED DEFAULT 0,
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trees`
--

INSERT INTO `trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2019-12-22 11:32:12', 1),
(2, 2, '2019-12-22 11:32:15', 5),
(3, 4, '2019-12-22 11:34:52', 7);

-- --------------------------------------------------------

--
-- Table structure for table `treesearchquerynodes`
--

CREATE TABLE `treesearchquerynodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `savedSearchID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treetypes`
--

CREATE TABLE `treetypes` (
  `treeTypeID` int(10) UNSIGNED NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treetypes`
--

INSERT INTO `treetypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'express_entry_results', 0),
(3, 'topic', 0),
(4, 'file_manager', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usedstringlog`
--

CREATE TABLE `usedstringlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `usedString` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userattributekeys`
--

CREATE TABLE `userattributekeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userattributekeys`
--

INSERT INTO `userattributekeys` (`uakProfileDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `uakMemberListDisplay`, `akID`) VALUES
(0, 1, 0, 1, 0, 0, 14),
(0, 1, 0, 1, 0, 0, 15),
(0, 0, 0, 0, 0, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `userattributevalues`
--

CREATE TABLE `userattributevalues` (
  `uID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdeactivatednotifications`
--

CREATE TABLE `userdeactivatednotifications` (
  `userID` int(10) UNSIGNED NOT NULL,
  `actorID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userloginattempts`
--

CREATE TABLE `userloginattempts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `userId` int(10) UNSIGNED NOT NULL,
  `utcDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissioneditpropertyaccesslist`
--

CREATE TABLE `userpermissioneditpropertyaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uName` tinyint(1) DEFAULT 0,
  `uEmail` tinyint(1) DEFAULT 0,
  `uPassword` tinyint(1) DEFAULT 0,
  `uAvatar` tinyint(1) DEFAULT 0,
  `uTimezone` tinyint(1) DEFAULT 0,
  `uDefaultLanguage` tinyint(1) DEFAULT 0,
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissioneditpropertyattributeaccesslistcustom`
--

CREATE TABLE `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `akID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionviewattributeaccesslist`
--

CREATE TABLE `userpermissionviewattributeaccesslist` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionviewattributeaccesslistcustom`
--

CREATE TABLE `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `akID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpointactions`
--

CREATE TABLE `userpointactions` (
  `upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT 0,
  `upaIsActive` tinyint(1) NOT NULL DEFAULT 1,
  `gBadgeID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userpointactions`
--

INSERT INTO `userpointactions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userpointhistory`
--

CREATE TABLE `userpointhistory` (
  `upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT 0,
  `upaID` int(11) DEFAULT 0,
  `upPoints` int(11) DEFAULT 0,
  `object` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userprivatemessages`
--

CREATE TABLE `userprivatemessages` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uToID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userprivatemessagesto`
--

CREATE TABLE `userprivatemessagesto` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT 0,
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT 0,
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uID` int(10) UNSIGNED NOT NULL,
  `uName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT -1,
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uLastLogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uPreviousLogin` int(10) UNSIGNED DEFAULT 0,
  `uNumLogins` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uLastAuthTypeID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uLastIP` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uTimezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsFullRecord`, `uIsValidated`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uLastIP`, `uTimezone`, `uDefaultLanguage`, `uIsPasswordReset`) VALUES
(1, 'admin', 'info@example.com', '$2a$12$/piw9lhQQzVZlyB6b956QOqWk97v/zat32FBe/V/BnbKjY3xFpm7i', 1, 1, 1, '2019-12-22 11:32:12', '2019-12-22 11:32:12', 0, 1577027241, 1577010732, 0, 1, 0, '00000000000000000000000000000001', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usersearchindexattributes`
--

CREATE TABLE `usersearchindexattributes` (
  `uID` int(10) UNSIGNED NOT NULL,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT 0,
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usersignupnotifications`
--

CREATE TABLE `usersignupnotifications` (
  `usID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usersignups`
--

CREATE TABLE `usersignups` (
  `usID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uservalidationhashes`
--

CREATE TABLE `uservalidationhashes` (
  `uvhID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userworkflowprogress`
--

CREATE TABLE `userworkflowprogress` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogress`
--

CREATE TABLE `workflowprogress` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `wpCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wpApproved` tinyint(1) NOT NULL DEFAULT 0,
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT 0,
  `wrID` int(11) NOT NULL DEFAULT 0,
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogresscategories`
--

CREATE TABLE `workflowprogresscategories` (
  `wpCategoryID` int(10) UNSIGNED NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflowprogresscategories`
--

INSERT INTO `workflowprogresscategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL),
(4, 'calendar_event', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogresshistory`
--

CREATE TABLE `workflowprogresshistory` (
  `wphID` int(10) UNSIGNED NOT NULL,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `object` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflowprogresshistory`
--

INSERT INTO `workflowprogresshistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2019-12-22 11:02:21', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"2\";}'),
(2, 2, '2019-12-22 11:05:19', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"1\";}'),
(3, 3, '2019-12-22 11:07:09', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"2\";}'),
(4, 4, '2019-12-22 11:32:56', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"3\";}'),
(5, 5, '2019-12-22 11:36:34', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"1\";}'),
(6, 6, '2019-12-22 11:37:16', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"2\";}'),
(7, 7, '2019-12-22 11:45:05', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"3\";}'),
(8, 8, '2019-12-22 12:10:22', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"3\";}'),
(9, 9, '2019-12-22 12:12:33', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"4\";}'),
(10, 10, '2019-12-22 12:17:22', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"5\";}'),
(11, 11, '2019-12-22 12:19:54', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"6\";}'),
(12, 12, '2019-12-22 12:21:15', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"7\";}'),
(13, 13, '2019-12-22 12:39:41', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"8\";}'),
(14, 14, '2019-12-22 12:40:39', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"4\";}'),
(15, 15, '2019-12-22 12:42:01', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:1:\"9\";}'),
(16, 16, '2019-12-22 12:42:56', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:2:\"10\";}'),
(17, 17, '2019-12-22 12:43:12', 'O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";i:1;s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:16;s:3:\"cID\";i:191;s:15:\"saveOldPagePath\";b:0;}'),
(18, 18, '2019-12-22 12:44:15', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:1:\"9\";}'),
(19, 19, '2019-12-22 12:48:02', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:2:\"10\";}'),
(20, 20, '2019-12-22 14:17:31', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:1:\"9\";}'),
(21, 21, '2019-12-22 14:22:39', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:2:\"10\";}'),
(22, 22, '2019-12-22 14:30:24', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"5\";}'),
(23, 23, '2019-12-22 14:33:02', 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"6\";}');

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogressnotifications`
--

CREATE TABLE `workflowprogressnotifications` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workflowrequestobjects`
--

CREATE TABLE `workflowrequestobjects` (
  `wrID` int(10) UNSIGNED NOT NULL,
  `wrObject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflowrequestobjects`
--

INSERT INTO `workflowrequestobjects` (`wrID`, `wrObject`) VALUES
(1, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"2\";}'),
(2, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"1\";}'),
(3, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"2\";}'),
(4, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"4\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"3\";}'),
(5, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"5\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"1\";}'),
(6, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"6\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"2\";}'),
(7, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"7\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:188;s:4:\"cvID\";s:1:\"3\";}'),
(8, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"8\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"3\";}'),
(9, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:1:\"9\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"4\";}'),
(10, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"10\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"5\";}'),
(11, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"11\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"6\";}'),
(12, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"12\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"7\";}'),
(13, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"13\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:185;s:4:\"cvID\";s:1:\"8\";}'),
(14, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"14\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"4\";}'),
(15, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"15\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:1:\"9\";}'),
(16, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"16\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:191;s:4:\"cvID\";s:2:\"10\";}'),
(17, 'O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";i:1;s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"17\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:16;s:3:\"cID\";i:191;s:15:\"saveOldPagePath\";b:0;}'),
(18, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"18\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:1:\"9\";}'),
(19, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"19\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:192;s:4:\"cvID\";s:2:\"10\";}'),
(20, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"20\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:1:\"9\";}'),
(21, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"21\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:193;s:4:\"cvID\";s:2:\"10\";}'),
(22, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"22\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"5\";}'),
(23, 'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":11:{s:14:\"\0*\0wrStatusNum\";i:30;s:62:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled\";b:0;s:64:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate\";N;s:67:\"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate\";N;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:7:\"\0*\0wrID\";s:2:\"23\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";i:14;s:3:\"cID\";i:1;s:4:\"cvID\";s:1:\"6\";}');

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE `workflows` (
  `wfID` int(10) UNSIGNED NOT NULL,
  `wfName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wftID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workflowtypes`
--

CREATE TABLE `workflowtypes` (
  `wftID` int(10) UNSIGNED NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workflowtypes`
--

INSERT INTO `workflowtypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arealayoutcolumns`
--
ALTER TABLE `arealayoutcolumns`
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexes for table `arealayoutcustomcolumns`
--
ALTER TABLE `arealayoutcustomcolumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `arealayoutpresets`
--
ALTER TABLE `arealayoutpresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indexes for table `arealayouts`
--
ALTER TABLE `arealayouts`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `arealayoutsusingpresets`
--
ALTER TABLE `arealayoutsusingpresets`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `arealayoutthemegridcolumns`
--
ALTER TABLE `arealayoutthemegridcolumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `areapermissionassignments`
--
ALTER TABLE `areapermissionassignments`
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `areapermissionblocktypeaccesslist`
--
ALTER TABLE `areapermissionblocktypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `areapermissionblocktypeaccesslistcustom`
--
ALTER TABLE `areapermissionblocktypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Indexes for table `ataddress`
--
ALTER TABLE `ataddress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `ataddresssettings`
--
ALTER TABLE `ataddresssettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atboolean`
--
ALTER TABLE `atboolean`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atbooleansettings`
--
ALTER TABLE `atbooleansettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atdatetime`
--
ALTER TABLE `atdatetime`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atdatetimesettings`
--
ALTER TABLE `atdatetimesettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atdefault`
--
ALTER TABLE `atdefault`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atemptysettings`
--
ALTER TABLE `atemptysettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atexpress`
--
ALTER TABLE `atexpress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atexpressselectedentries`
--
ALTER TABLE `atexpressselectedentries`
  ADD PRIMARY KEY (`avID`,`exEntryID`),
  ADD KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  ADD KEY `IDX_C9D404BB6DCB6296` (`exEntryID`);

--
-- Indexes for table `atexpresssettings`
--
ALTER TABLE `atexpresssettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`);

--
-- Indexes for table `atfile`
--
ALTER TABLE `atfile`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_73D17D61E3111F45` (`fID`);

--
-- Indexes for table `atfilesettings`
--
ALTER TABLE `atfilesettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atnumber`
--
ALTER TABLE `atnumber`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atselect`
--
ALTER TABLE `atselect`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atselectedsociallinks`
--
ALTER TABLE `atselectedsociallinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `IDX_10743709A2A82A5D` (`avID`);

--
-- Indexes for table `atselectedtopics`
--
ALTER TABLE `atselectedtopics`
  ADD PRIMARY KEY (`avTreeTopicNodeID`),
  ADD KEY `IDX_E42A7D5BA2A82A5D` (`avID`);

--
-- Indexes for table `atselectoptionlists`
--
ALTER TABLE `atselectoptionlists`
  ADD PRIMARY KEY (`avSelectOptionListID`);

--
-- Indexes for table `atselectoptions`
--
ALTER TABLE `atselectoptions`
  ADD PRIMARY KEY (`avSelectOptionID`),
  ADD KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atselectoptionsselected`
--
ALTER TABLE `atselectoptionsselected`
  ADD PRIMARY KEY (`avID`,`avSelectOptionID`),
  ADD KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  ADD KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`);

--
-- Indexes for table `atselectsettings`
--
ALTER TABLE `atselectsettings`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atsociallinks`
--
ALTER TABLE `atsociallinks`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `attextareasettings`
--
ALTER TABLE `attextareasettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `attextsettings`
--
ALTER TABLE `attextsettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `attopic`
--
ALTER TABLE `attopic`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `attopicsettings`
--
ALTER TABLE `attopicsettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `attributekeycategories`
--
ALTER TABLE `attributekeycategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  ADD KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`);

--
-- Indexes for table `attributekeys`
--
ALTER TABLE `attributekeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_DCA32C62A12CFE33` (`atID`),
  ADD KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `attributesetkeys`
--
ALTER TABLE `attributesetkeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `IDX_222F72D8B6561A7E` (`akID`),
  ADD KEY `IDX_222F72D8A463E8B6` (`asID`);

--
-- Indexes for table `attributesets`
--
ALTER TABLE `attributesets`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  ADD KEY `asHandle` (`asHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `attributetypecategories`
--
ALTER TABLE `attributetypecategories`
  ADD PRIMARY KEY (`akCategoryID`,`atID`),
  ADD KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  ADD KEY `IDX_49A9CABEA12CFE33` (`atID`);

--
-- Indexes for table `attributetypes`
--
ALTER TABLE `attributetypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  ADD KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexes for table `attributevalues`
--
ALTER TABLE `attributevalues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_DCCE7864B6561A7E` (`akID`);

--
-- Indexes for table `authenticationtypes`
--
ALTER TABLE `authenticationtypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `authtypeconcretecookiemap`
--
ALTER TABLE `authtypeconcretecookiemap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `bannedwords`
--
ALTER TABLE `bannedwords`
  ADD PRIMARY KEY (`bwID`);

--
-- Indexes for table `basicworkflowpermissionassignments`
--
ALTER TABLE `basicworkflowpermissionassignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `basicworkflowprogressdata`
--
ALTER TABLE `basicworkflowprogressdata`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexes for table `blockfeatureassignments`
--
ALTER TABLE `blockfeatureassignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  ADD KEY `faID` (`faID`,`cID`,`cvID`),
  ADD KEY `bID` (`bID`);

--
-- Indexes for table `blockpermissionassignments`
--
ALTER TABLE `blockpermissionassignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `blocktypepermissionblocktypeaccesslist`
--
ALTER TABLE `blocktypepermissionblocktypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `blocktypepermissionblocktypeaccesslistcustom`
--
ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `blocktypes`
--
ALTER TABLE `blocktypes`
  ADD PRIMARY KEY (`btID`);

--
-- Indexes for table `blocktypesetblocktypes`
--
ALTER TABLE `blocktypesetblocktypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexes for table `blocktypesets`
--
ALTER TABLE `blocktypesets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `btbigheroimg`
--
ALTER TABLE `btbigheroimg`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btblogpostwidget`
--
ALTER TABLE `btblogpostwidget`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btcalendar`
--
ALTER TABLE `btcalendar`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btcalendarevent`
--
ALTER TABLE `btcalendarevent`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btcontentfile`
--
ALTER TABLE `btcontentfile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btcontentimage`
--
ALTER TABLE `btcontentimage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btcontentlocal`
--
ALTER TABLE `btcontentlocal`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btcorearealayout`
--
ALTER TABLE `btcorearealayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexes for table `btcoreconversation`
--
ALTER TABLE `btcoreconversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `btcorepagetypecomposercontroloutput`
--
ALTER TABLE `btcorepagetypecomposercontroloutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexes for table `btcorescrapbookdisplay`
--
ALTER TABLE `btcorescrapbookdisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexes for table `btcorestackdisplay`
--
ALTER TABLE `btcorestackdisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

--
-- Indexes for table `btdatenavigation`
--
ALTER TABLE `btdatenavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btdesktopdraftlist`
--
ALTER TABLE `btdesktopdraftlist`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btdesktopnewsflowlatest`
--
ALTER TABLE `btdesktopnewsflowlatest`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btdesktopsiteactivity`
--
ALTER TABLE `btdesktopsiteactivity`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btdocumentlibrary`
--
ALTER TABLE `btdocumentlibrary`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `bteventlist`
--
ALTER TABLE `bteventlist`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btexpressentrydetail`
--
ALTER TABLE `btexpressentrydetail`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btexpressentrylist`
--
ALTER TABLE `btexpressentrylist`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btexpressform`
--
ALTER TABLE `btexpressform`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btexternalform`
--
ALTER TABLE `btexternalform`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btfaq`
--
ALTER TABLE `btfaq`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btfaqentries`
--
ALTER TABLE `btfaqentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexes for table `btfeature`
--
ALTER TABLE `btfeature`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btform`
--
ALTER TABLE `btform`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexes for table `btformanswers`
--
ALTER TABLE `btformanswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Indexes for table `btformanswerset`
--
ALTER TABLE `btformanswerset`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btformquestions`
--
ALTER TABLE `btformquestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indexes for table `btgooglemap`
--
ALTER TABLE `btgooglemap`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btimageslider`
--
ALTER TABLE `btimageslider`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btimagesliderentries`
--
ALTER TABLE `btimagesliderentries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btlatestthreeposts`
--
ALTER TABLE `btlatestthreeposts`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btnavigation`
--
ALTER TABLE `btnavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btnextprevious`
--
ALTER TABLE `btnextprevious`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btpageattributedisplay`
--
ALTER TABLE `btpageattributedisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btpagelist`
--
ALTER TABLE `btpagelist`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `btpagetitle`
--
ALTER TABLE `btpagetitle`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btrssdisplay`
--
ALTER TABLE `btrssdisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btsearch`
--
ALTER TABLE `btsearch`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btsharethispage`
--
ALTER TABLE `btsharethispage`
  ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indexes for table `btsociallinks`
--
ALTER TABLE `btsociallinks`
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Indexes for table `btsurvey`
--
ALTER TABLE `btsurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btsurveyoptions`
--
ALTER TABLE `btsurveyoptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexes for table `btsurveyresults`
--
ALTER TABLE `btsurveyresults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btswitchlanguage`
--
ALTER TABLE `btswitchlanguage`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `bttags`
--
ALTER TABLE `bttags`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `bttestimonial`
--
ALTER TABLE `bttestimonial`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `bttextblock`
--
ALTER TABLE `bttextblock`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `bttopiclist`
--
ALTER TABLE `bttopiclist`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btvideo`
--
ALTER TABLE `btvideo`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btyoutube`
--
ALTER TABLE `btyoutube`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `calendareventattributekeys`
--
ALTER TABLE `calendareventattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `calendareventoccurrences`
--
ALTER TABLE `calendareventoccurrences`
  ADD PRIMARY KEY (`occurrenceID`),
  ADD KEY `IDX_7DD686EC31391E00` (`repetitionID`),
  ADD KEY `eventdates` (`occurrenceID`,`startTime`,`endTime`);

--
-- Indexes for table `calendareventrepetitions`
--
ALTER TABLE `calendareventrepetitions`
  ADD PRIMARY KEY (`repetitionID`);

--
-- Indexes for table `calendarevents`
--
ALTER TABLE `calendarevents`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `IDX_7F23C55611C85723` (`caID`);

--
-- Indexes for table `calendareventsearchindexattributes`
--
ALTER TABLE `calendareventsearchindexattributes`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `calendareventversionattributevalues`
--
ALTER TABLE `calendareventversionattributevalues`
  ADD PRIMARY KEY (`eventVersionID`,`akID`),
  ADD KEY `IDX_8C835B05403F5D6` (`eventVersionID`),
  ADD KEY `IDX_8C835B05B6561A7E` (`akID`),
  ADD KEY `IDX_8C835B05A2A82A5D` (`avID`);

--
-- Indexes for table `calendareventversionoccurrences`
--
ALTER TABLE `calendareventversionoccurrences`
  ADD PRIMARY KEY (`versionOccurrenceID`),
  ADD KEY `IDX_60310489403F5D6` (`eventVersionID`),
  ADD KEY `IDX_60310489B4FDDC0F` (`occurrenceID`);

--
-- Indexes for table `calendareventversionrepetitions`
--
ALTER TABLE `calendareventversionrepetitions`
  ADD PRIMARY KEY (`versionRepetitionID`),
  ADD KEY `IDX_C1C3D3DB403F5D6` (`eventVersionID`),
  ADD KEY `IDX_C1C3D3DB31391E00` (`repetitionID`);

--
-- Indexes for table `calendareventversions`
--
ALTER TABLE `calendareventversions`
  ADD PRIMARY KEY (`eventVersionID`),
  ADD KEY `IDX_8E26027410409BA4` (`eventID`),
  ADD KEY `IDX_8E260274FD71026C` (`uID`);

--
-- Indexes for table `calendareventworkflowprogress`
--
ALTER TABLE `calendareventworkflowprogress`
  ADD PRIMARY KEY (`eventID`,`wpID`),
  ADD KEY `IDX_C5EAACF910409BA4` (`eventID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `calendarpermissionassignments`
--
ALTER TABLE `calendarpermissionassignments`
  ADD PRIMARY KEY (`caID`,`pkID`,`paID`),
  ADD KEY `IDX_5AD546AA11C85723` (`caID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `calendarrelatedevents`
--
ALTER TABLE `calendarrelatedevents`
  ADD PRIMARY KEY (`relatedEventID`),
  ADD KEY `IDX_310130E910409BA4` (`eventID`);

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`caID`),
  ADD KEY `IDX_62E00AC521D8435` (`siteID`);

--
-- Indexes for table `collectionattributekeys`
--
ALTER TABLE `collectionattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `collectionattributevalues`
--
ALTER TABLE `collectionattributevalues`
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `IDX_BB9995FCB6561A7E` (`akID`),
  ADD KEY `IDX_BB9995FCA2A82A5D` (`avID`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexes for table `collectionsearchindexattributes`
--
ALTER TABLE `collectionsearchindexattributes`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `collectionversionareastyles`
--
ALTER TABLE `collectionversionareastyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `collectionversionblocks`
--
ALTER TABLE `collectionversionblocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `cbRelationID` (`cbRelationID`);

--
-- Indexes for table `collectionversionblockscachesettings`
--
ALTER TABLE `collectionversionblockscachesettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `collectionversionblocksoutputcache`
--
ALTER TABLE `collectionversionblocksoutputcache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `collectionversionblockstyles`
--
ALTER TABLE `collectionversionblockstyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `collectionversionfeatureassignments`
--
ALTER TABLE `collectionversionfeatureassignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexes for table `collectionversionrelatededits`
--
ALTER TABLE `collectionversionrelatededits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexes for table `collectionversions`
--
ALTER TABLE `collectionversions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `collectionversionthemecustomstyles`
--
ALTER TABLE `collectionversionthemecustomstyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Indexes for table `configstore`
--
ALTER TABLE `configstore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexes for table `conversationdiscussions`
--
ALTER TABLE `conversationdiscussions`
  ADD PRIMARY KEY (`cnvDiscussionID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `conversationeditors`
--
ALTER TABLE `conversationeditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexes for table `conversationfeaturedetailassignments`
--
ALTER TABLE `conversationfeaturedetailassignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `conversationflaggedmessages`
--
ALTER TABLE `conversationflaggedmessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexes for table `conversationflaggedmessagetypes`
--
ALTER TABLE `conversationflaggedmessagetypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexes for table `conversationmessageattachments`
--
ALTER TABLE `conversationmessageattachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `conversationmessagenotifications`
--
ALTER TABLE `conversationmessagenotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `conversationmessageratings`
--
ALTER TABLE `conversationmessageratings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `conversationmessages`
--
ALTER TABLE `conversationmessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `conversationpermissionaddmessageaccesslist`
--
ALTER TABLE `conversationpermissionaddmessageaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `conversationpermissionassignments`
--
ALTER TABLE `conversationpermissionassignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `conversationratingtypes`
--
ALTER TABLE `conversationratingtypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexes for table `conversationsubscriptions`
--
ALTER TABLE `conversationsubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `downloadstatistics`
--
ALTER TABLE `downloadstatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `expressattributekeys`
--
ALTER TABLE `expressattributekeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_8C881F181257D5D` (`entity_id`);

--
-- Indexes for table `expressentities`
--
ALTER TABLE `expressentities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  ADD UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  ADD KEY `IDX_BC772AA6CE45CBB0` (`pkgID`);

--
-- Indexes for table `expressentityassociationentries`
--
ALTER TABLE `expressentityassociationentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9C2BB76C6DCB6296` (`exEntryID`),
  ADD KEY `IDX_9C2BB76CEFB9C8A5` (`association_id`);

--
-- Indexes for table `expressentityassociations`
--
ALTER TABLE `expressentityassociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  ADD KEY `IDX_98A0F796B5910F71` (`target_entity_id`);

--
-- Indexes for table `expressentityentries`
--
ALTER TABLE `expressentityentries`
  ADD PRIMARY KEY (`exEntryID`),
  ADD KEY `IDX_B8AE3531FD71026C` (`uID`),
  ADD KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`);

--
-- Indexes for table `expressentityentryassociations`
--
ALTER TABLE `expressentityentryassociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  ADD KEY `IDX_25B3A082EFB9C8A5` (`association_id`);

--
-- Indexes for table `expressentityentryattributevalues`
--
ALTER TABLE `expressentityentryattributevalues`
  ADD PRIMARY KEY (`exEntryID`,`akID`),
  ADD KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  ADD KEY `IDX_6DB64154B6561A7E` (`akID`),
  ADD KEY `IDX_6DB64154A2A82A5D` (`avID`);

--
-- Indexes for table `expressformfieldsetassociationcontrols`
--
ALTER TABLE `expressformfieldsetassociationcontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`);

--
-- Indexes for table `expressformfieldsetattributekeycontrols`
--
ALTER TABLE `expressformfieldsetattributekeycontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8481F9D1B6561A7E` (`akID`);

--
-- Indexes for table `expressformfieldsetauthorcontrols`
--
ALTER TABLE `expressformfieldsetauthorcontrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expressformfieldsetcontrols`
--
ALTER TABLE `expressformfieldsetcontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E42868A43ABF811A` (`field_set_id`);

--
-- Indexes for table `expressformfieldsets`
--
ALTER TABLE `expressformfieldsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A33BBBEC5FF69B7D` (`form_id`);

--
-- Indexes for table `expressformfieldsettextcontrols`
--
ALTER TABLE `expressformfieldsettextcontrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expressforms`
--
ALTER TABLE `expressforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D09031A81257D5D` (`entity_id`);

--
-- Indexes for table `failedloginattempts`
--
ALTER TABLE `failedloginattempts`
  ADD PRIMARY KEY (`lcirID`);

--
-- Indexes for table `featureassignments`
--
ALTER TABLE `featureassignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `feID` (`feID`),
  ADD KEY `fcID` (`fcID`);

--
-- Indexes for table `featurecategories`
--
ALTER TABLE `featurecategories`
  ADD PRIMARY KEY (`fcID`),
  ADD UNIQUE KEY `fcHandle` (`fcHandle`),
  ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`feID`),
  ADD UNIQUE KEY `feHandle` (`feHandle`),
  ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indexes for table `fileattributekeys`
--
ALTER TABLE `fileattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `fileattributevalues`
--
ALTER TABLE `fileattributevalues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  ADD KEY `IDX_BBECEAA4A2A82A5D` (`avID`);

--
-- Indexes for table `fileimagethumbnailpaths`
--
ALTER TABLE `fileimagethumbnailpaths`
  ADD PRIMARY KEY (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`,`thumbnailFormat`),
  ADD KEY `thumbnailPathIsBuilt` (`isBuilt`);

--
-- Indexes for table `fileimagethumbnailtypefilesets`
--
ALTER TABLE `fileimagethumbnailtypefilesets`
  ADD PRIMARY KEY (`ftfsThumbnailType`,`ftfsFileSetID`),
  ADD KEY `IDX_BD75F88D480660E5` (`ftfsThumbnailType`);

--
-- Indexes for table `fileimagethumbnailtypes`
--
ALTER TABLE `fileimagethumbnailtypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexes for table `filepermissionassignments`
--
ALTER TABLE `filepermissionassignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `filepermissionfiletypeaccesslist`
--
ALTER TABLE `filepermissionfiletypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `filepermissionfiletypeaccesslistcustom`
--
ALTER TABLE `filepermissionfiletypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `filepermissionfiletypes`
--
ALTER TABLE `filepermissionfiletypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`fID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexes for table `filesearchindexattributes`
--
ALTER TABLE `filesearchindexattributes`
  ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `filesetfiles`
--
ALTER TABLE `filesetfiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Indexes for table `filesets`
--
ALTER TABLE `filesets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

--
-- Indexes for table `filesetsavedsearches`
--
ALTER TABLE `filesetsavedsearches`
  ADD PRIMARY KEY (`fsID`);

--
-- Indexes for table `filestoragelocations`
--
ALTER TABLE `filestoragelocations`
  ADD PRIMARY KEY (`fslID`);

--
-- Indexes for table `filestoragelocationtypes`
--
ALTER TABLE `filestoragelocationtypes`
  ADD PRIMARY KEY (`fslTypeID`);

--
-- Indexes for table `fileusagerecord`
--
ALTER TABLE `fileusagerecord`
  ADD PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `fileversionlog`
--
ALTER TABLE `fileversionlog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexes for table `fileversions`
--
ALTER TABLE `fileversions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `IDX_D7B5A13AE3111F45` (`fID`),
  ADD KEY `fvFilename` (`fvFilename`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`);

--
-- Indexes for table `formsubmissionnotifications`
--
ALTER TABLE `formsubmissionnotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_E7B6BE406DCB6296` (`exEntryID`);

--
-- Indexes for table `gapage`
--
ALTER TABLE `gapage`
  ADD PRIMARY KEY (`gaiID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `gatheringconfigureddatasources`
--
ALTER TABLE `gatheringconfigureddatasources`
  ADD PRIMARY KEY (`gcsID`),
  ADD KEY `gaID` (`gaID`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `gatheringdatasources`
--
ALTER TABLE `gatheringdatasources`
  ADD PRIMARY KEY (`gasID`),
  ADD UNIQUE KEY `gasHandle` (`gasHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `gatheringitemfeatureassignments`
--
ALTER TABLE `gatheringitemfeatureassignments`
  ADD PRIMARY KEY (`gafaID`),
  ADD KEY `gaiID` (`gaiID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexes for table `gatheringitems`
--
ALTER TABLE `gatheringitems`
  ADD PRIMARY KEY (`gaiID`),
  ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `gatheringitemselectedtemplates`
--
ALTER TABLE `gatheringitemselectedtemplates`
  ADD PRIMARY KEY (`gaiID`,`gatID`),
  ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `gatID` (`gatID`);

--
-- Indexes for table `gatheringitemtemplatefeatures`
--
ALTER TABLE `gatheringitemtemplatefeatures`
  ADD PRIMARY KEY (`gfeID`),
  ADD KEY `gatID` (`gatID`),
  ADD KEY `feID` (`feID`,`gatID`);

--
-- Indexes for table `gatheringitemtemplates`
--
ALTER TABLE `gatheringitemtemplates`
  ADD PRIMARY KEY (`gatID`),
  ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `gatheringitemtemplatetypes`
--
ALTER TABLE `gatheringitemtemplatetypes`
  ADD PRIMARY KEY (`gatTypeID`),
  ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `gatheringpermissionassignments`
--
ALTER TABLE `gatheringpermissionassignments`
  ADD PRIMARY KEY (`gaID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `gatherings`
--
ALTER TABLE `gatherings`
  ADD PRIMARY KEY (`gaID`),
  ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indexes for table `geolocators`
--
ALTER TABLE `geolocators`
  ADD PRIMARY KEY (`glID`),
  ADD UNIQUE KEY `UNIQ_83BB1614D4F4D416` (`glHandle`),
  ADD KEY `IDX_83BB1614D5F6CC40` (`glPackage`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Indexes for table `groupsetgroups`
--
ALTER TABLE `groupsetgroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `groupsets`
--
ALTER TABLE `groupsets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexes for table `jobsetjobs`
--
ALTER TABLE `jobsetjobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `jobsets`
--
ALTER TABLE `jobsets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Indexes for table `jobslog`
--
ALTER TABLE `jobslog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `legacyattributekeys`
--
ALTER TABLE `legacyattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `logincontrolipranges`
--
ALTER TABLE `logincontrolipranges`
  ADD PRIMARY KEY (`lcirID`),
  ADD KEY `IX_LoginControlIpRanges_Search` (`lcirIpFrom`,`lcirIpTo`,`lcirExpires`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `mailimporters`
--
ALTER TABLE `mailimporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexes for table `mailvalidationhashes`
--
ALTER TABLE `mailvalidationhashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

--
-- Indexes for table `multilingualpagerelations`
--
ALTER TABLE `multilingualpagerelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `multilingualtranslations`
--
ALTER TABLE `multilingualtranslations`
  ADD PRIMARY KEY (`mtID`);

--
-- Indexes for table `notificationalerts`
--
ALTER TABLE `notificationalerts`
  ADD PRIMARY KEY (`naID`),
  ADD KEY `IDX_E11C7408FD71026C` (`uID`),
  ADD KEY `IDX_E11C7408ED024EFD` (`nID`);

--
-- Indexes for table `notificationpermissionsubscriptionlist`
--
ALTER TABLE `notificationpermissionsubscriptionlist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `notificationpermissionsubscriptionlistcustom`
--
ALTER TABLE `notificationpermissionsubscriptionlistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  ADD KEY `peID` (`peID`),
  ADD KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `oauth2accesstoken`
--
ALTER TABLE `oauth2accesstoken`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_60D69F3FC7440455` (`client`);

--
-- Indexes for table `oauth2authcode`
--
ALTER TABLE `oauth2authcode`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_29D07B5C7440455` (`client`);

--
-- Indexes for table `oauth2client`
--
ALTER TABLE `oauth2client`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `client_idx` (`clientKey`,`clientSecret`);

--
-- Indexes for table `oauth2refreshtoken`
--
ALTER TABLE `oauth2refreshtoken`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `UNIQ_A205CB8350A9822` (`accessToken`);

--
-- Indexes for table `oauth2scope`
--
ALTER TABLE `oauth2scope`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `oauthusermap`
--
ALTER TABLE `oauthusermap`
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`);

--
-- Indexes for table `pagefeeds`
--
ALTER TABLE `pagefeeds`
  ADD PRIMARY KEY (`pfID`);

--
-- Indexes for table `pagepaths`
--
ALTER TABLE `pagepaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `ppIsCanonical` (`ppIsCanonical`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `pagepermissionassignments`
--
ALTER TABLE `pagepermissionassignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `pagepermissionpagetypeaccesslist`
--
ALTER TABLE `pagepermissionpagetypeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `pagepermissionpagetypeaccesslistcustom`
--
ALTER TABLE `pagepermissionpagetypeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `pagepermissionpropertyaccesslist`
--
ALTER TABLE `pagepermissionpropertyaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `pagepermissionpropertyattributeaccesslistcustom`
--
ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `pagepermissionthemeaccesslist`
--
ALTER TABLE `pagepermissionthemeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `pagepermissionthemeaccesslistcustom`
--
ALTER TABLE `pagepermissionthemeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `siteTreeID` (`siteTreeID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indexes for table `pagesearchindex`
--
ALTER TABLE `pagesearchindex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `pagesearchindex` ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexes for table `pagetemplates`
--
ALTER TABLE `pagetemplates`
  ADD PRIMARY KEY (`pTemplateID`);

--
-- Indexes for table `pagethemecustomstyles`
--
ALTER TABLE `pagethemecustomstyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `pagethemes`
--
ALTER TABLE `pagethemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `pagetypecomposercontroltypes`
--
ALTER TABLE `pagetypecomposercontroltypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `pagetypecomposerformlayoutsetcontrols`
--
ALTER TABLE `pagetypecomposerformlayoutsetcontrols`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexes for table `pagetypecomposerformlayoutsets`
--
ALTER TABLE `pagetypecomposerformlayoutsets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `pagetypecomposeroutputblocks`
--
ALTER TABLE `pagetypecomposeroutputblocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `pagetypecomposeroutputcontrols`
--
ALTER TABLE `pagetypecomposeroutputcontrols`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `pagetypepagetemplatedefaultpages`
--
ALTER TABLE `pagetypepagetemplatedefaultpages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `pagetypepagetemplates`
--
ALTER TABLE `pagetypepagetemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `pagetypepermissionassignments`
--
ALTER TABLE `pagetypepermissionassignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `pagetypepublishtargettypes`
--
ALTER TABLE `pagetypepublishtargettypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `pagetypes`
--
ALTER TABLE `pagetypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `siteTypeID` (`siteTypeID`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexes for table `pageworkflowprogress`
--
ALTER TABLE `pageworkflowprogress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `permissionaccess`
--
ALTER TABLE `permissionaccess`
  ADD PRIMARY KEY (`paID`);

--
-- Indexes for table `permissionaccessentities`
--
ALTER TABLE `permissionaccessentities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Indexes for table `permissionaccessentitygroups`
--
ALTER TABLE `permissionaccessentitygroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `permissionaccessentitygroupsets`
--
ALTER TABLE `permissionaccessentitygroupsets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `permissionaccessentitytypecategories`
--
ALTER TABLE `permissionaccessentitytypecategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexes for table `permissionaccessentitytypes`
--
ALTER TABLE `permissionaccessentitytypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `permissionaccessentityusers`
--
ALTER TABLE `permissionaccessentityusers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `permissionaccesslist`
--
ALTER TABLE `permissionaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexes for table `permissionaccessworkflows`
--
ALTER TABLE `permissionaccessworkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Indexes for table `permissionassignments`
--
ALTER TABLE `permissionassignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `permissiondurationobjects`
--
ALTER TABLE `permissiondurationobjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `permissionkeycategories`
--
ALTER TABLE `permissionkeycategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `permissionkeys`
--
ALTER TABLE `permissionkeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `pilecontents`
--
ALTER TABLE `pilecontents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexes for table `piles`
--
ALTER TABLE `piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Indexes for table `privatemessagenotifications`
--
ALTER TABLE `privatemessagenotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `queuemessages`
--
ALTER TABLE `queuemessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Indexes for table `queuepageduplicationrelations`
--
ALTER TABLE `queuepageduplicationrelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Indexes for table `savedexpresssearchqueries`
--
ALTER TABLE `savedexpresssearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savedfilesearchqueries`
--
ALTER TABLE `savedfilesearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savedpagesearchqueries`
--
ALTER TABLE `savedpagesearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savedusersearchqueries`
--
ALTER TABLE `savedusersearchqueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `siblingpagerelations`
--
ALTER TABLE `siblingpagerelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `siteattributekeys`
--
ALTER TABLE `siteattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `siteattributevalues`
--
ALTER TABLE `siteattributevalues`
  ADD PRIMARY KEY (`siteID`,`akID`),
  ADD KEY `IDX_67658AF7521D8435` (`siteID`),
  ADD KEY `IDX_67658AF7B6561A7E` (`akID`),
  ADD KEY `IDX_67658AF7A2A82A5D` (`avID`);

--
-- Indexes for table `sitelocales`
--
ALTER TABLE `sitelocales`
  ADD PRIMARY KEY (`siteLocaleID`),
  ADD UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  ADD KEY `IDX_2527AB2C521D8435` (`siteID`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`siteID`),
  ADD UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  ADD KEY `IDX_7DC18567E9548DF7` (`siteTypeID`);

--
-- Indexes for table `sitesearchindexattributes`
--
ALTER TABLE `sitesearchindexattributes`
  ADD PRIMARY KEY (`siteID`);

--
-- Indexes for table `sitetrees`
--
ALTER TABLE `sitetrees`
  ADD PRIMARY KEY (`siteTreeID`);

--
-- Indexes for table `sitetreetrees`
--
ALTER TABLE `sitetreetrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`);

--
-- Indexes for table `sitetypes`
--
ALTER TABLE `sitetypes`
  ADD PRIMARY KEY (`siteTypeID`),
  ADD UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  ADD UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  ADD KEY `IDX_7CBFE975CE45CBB0` (`pkgID`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`slID`),
  ADD KEY `IDX_84EBA2B4521D8435` (`siteID`);

--
-- Indexes for table `stacks`
--
ALTER TABLE `stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `stackusagerecord`
--
ALTER TABLE `stackusagerecord`
  ADD PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `stylecustomizercustomcssrecords`
--
ALTER TABLE `stylecustomizercustomcssrecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexes for table `stylecustomizerinlinestylepresets`
--
ALTER TABLE `stylecustomizerinlinestylepresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `stylecustomizerinlinestylesets`
--
ALTER TABLE `stylecustomizerinlinestylesets`
  ADD PRIMARY KEY (`issID`);

--
-- Indexes for table `stylecustomizervaluelists`
--
ALTER TABLE `stylecustomizervaluelists`
  ADD PRIMARY KEY (`scvlID`);

--
-- Indexes for table `stylecustomizervalues`
--
ALTER TABLE `stylecustomizervalues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Indexes for table `systemantispamlibraries`
--
ALTER TABLE `systemantispamlibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `systemcaptchalibraries`
--
ALTER TABLE `systemcaptchalibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `systemcontenteditorsnippets`
--
ALTER TABLE `systemcontenteditorsnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `systemdatabasemigrations`
--
ALTER TABLE `systemdatabasemigrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `systemdatabasequerylog`
--
ALTER TABLE `systemdatabasequerylog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `topictrees`
--
ALTER TABLE `topictrees`
  ADD PRIMARY KEY (`treeID`);

--
-- Indexes for table `treefilenodes`
--
ALTER TABLE `treefilenodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `treegroupnodes`
--
ALTER TABLE `treegroupnodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `treenodepermissionassignments`
--
ALTER TABLE `treenodepermissionassignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `treenodes`
--
ALTER TABLE `treenodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexes for table `treenodetypes`
--
ALTER TABLE `treenodetypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `trees`
--
ALTER TABLE `trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexes for table `treesearchquerynodes`
--
ALTER TABLE `treesearchquerynodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `savedSearchID` (`savedSearchID`);

--
-- Indexes for table `treetypes`
--
ALTER TABLE `treetypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `usedstringlog`
--
ALTER TABLE `usedstringlog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4E83837CF5E609AF` (`usedString`);

--
-- Indexes for table `userattributekeys`
--
ALTER TABLE `userattributekeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `userattributevalues`
--
ALTER TABLE `userattributevalues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `IDX_4DB68CA6FD71026C` (`uID`),
  ADD KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  ADD KEY `IDX_4DB68CA6A2A82A5D` (`avID`);

--
-- Indexes for table `userdeactivatednotifications`
--
ALTER TABLE `userdeactivatednotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `userloginattempts`
--
ALTER TABLE `userloginattempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpermissioneditpropertyaccesslist`
--
ALTER TABLE `userpermissioneditpropertyaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `userpermissioneditpropertyattributeaccesslistcustom`
--
ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `userpermissionviewattributeaccesslist`
--
ALTER TABLE `userpermissionviewattributeaccesslist`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `userpermissionviewattributeaccesslistcustom`
--
ALTER TABLE `userpermissionviewattributeaccesslistcustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `userpointactions`
--
ALTER TABLE `userpointactions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexes for table `userpointhistory`
--
ALTER TABLE `userpointhistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Indexes for table `userprivatemessages`
--
ALTER TABLE `userprivatemessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexes for table `userprivatemessagesto`
--
ALTER TABLE `userprivatemessagesto`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Indexes for table `usersearchindexattributes`
--
ALTER TABLE `usersearchindexattributes`
  ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `usersignupnotifications`
--
ALTER TABLE `usersignupnotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_7FB1DF5B7B18287E` (`usID`);

--
-- Indexes for table `usersignups`
--
ALTER TABLE `usersignups`
  ADD PRIMARY KEY (`usID`),
  ADD UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  ADD KEY `IDX_FEB5D909D3564642` (`createdBy`);

--
-- Indexes for table `uservalidationhashes`
--
ALTER TABLE `uservalidationhashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexes for table `userworkflowprogress`
--
ALTER TABLE `userworkflowprogress`
  ADD PRIMARY KEY (`uID`,`wpID`);

--
-- Indexes for table `workflowprogress`
--
ALTER TABLE `workflowprogress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexes for table `workflowprogresscategories`
--
ALTER TABLE `workflowprogresscategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `workflowprogresshistory`
--
ALTER TABLE `workflowprogresshistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexes for table `workflowprogressnotifications`
--
ALTER TABLE `workflowprogressnotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `workflowrequestobjects`
--
ALTER TABLE `workflowrequestobjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Indexes for table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `workflowtypes`
--
ALTER TABLE `workflowtypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arealayoutcolumns`
--
ALTER TABLE `arealayoutcolumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `arealayoutcustomcolumns`
--
ALTER TABLE `arealayoutcustomcolumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arealayoutpresets`
--
ALTER TABLE `arealayoutpresets`
  MODIFY `arLayoutPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arealayouts`
--
ALTER TABLE `arealayouts`
  MODIFY `arLayoutID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `arealayoutthemegridcolumns`
--
ALTER TABLE `arealayoutthemegridcolumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `arID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `atselectedsociallinks`
--
ALTER TABLE `atselectedsociallinks`
  MODIFY `avsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atselectedtopics`
--
ALTER TABLE `atselectedtopics`
  MODIFY `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atselectoptionlists`
--
ALTER TABLE `atselectoptionlists`
  MODIFY `avSelectOptionListID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `atselectoptions`
--
ALTER TABLE `atselectoptions`
  MODIFY `avSelectOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attributekeycategories`
--
ALTER TABLE `attributekeycategories`
  MODIFY `akCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributekeys`
--
ALTER TABLE `attributekeys`
  MODIFY `akID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attributesets`
--
ALTER TABLE `attributesets`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributetypes`
--
ALTER TABLE `attributetypes`
  MODIFY `atID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `attributevalues`
--
ALTER TABLE `attributevalues`
  MODIFY `avID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `authenticationtypes`
--
ALTER TABLE `authenticationtypes`
  MODIFY `authTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `authtypeconcretecookiemap`
--
ALTER TABLE `authtypeconcretecookiemap`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bannedwords`
--
ALTER TABLE `bannedwords`
  MODIFY `bwID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `blocktypes`
--
ALTER TABLE `blocktypes`
  MODIFY `btID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `blocktypesets`
--
ALTER TABLE `blocktypesets`
  MODIFY `btsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `btfaqentries`
--
ALTER TABLE `btfaqentries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btformanswers`
--
ALTER TABLE `btformanswers`
  MODIFY `aID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btformanswerset`
--
ALTER TABLE `btformanswerset`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btformquestions`
--
ALTER TABLE `btformquestions`
  MODIFY `qID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btimagesliderentries`
--
ALTER TABLE `btimagesliderentries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btsharethispage`
--
ALTER TABLE `btsharethispage`
  MODIFY `btShareThisPageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btsociallinks`
--
ALTER TABLE `btsociallinks`
  MODIFY `btSocialLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btsurveyoptions`
--
ALTER TABLE `btsurveyoptions`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `btsurveyresults`
--
ALTER TABLE `btsurveyresults`
  MODIFY `resultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendareventoccurrences`
--
ALTER TABLE `calendareventoccurrences`
  MODIFY `occurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendareventrepetitions`
--
ALTER TABLE `calendareventrepetitions`
  MODIFY `repetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendarevents`
--
ALTER TABLE `calendarevents`
  MODIFY `eventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendareventversionoccurrences`
--
ALTER TABLE `calendareventversionoccurrences`
  MODIFY `versionOccurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendareventversionrepetitions`
--
ALTER TABLE `calendareventversionrepetitions`
  MODIFY `versionRepetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendareventversions`
--
ALTER TABLE `calendareventversions`
  MODIFY `eventVersionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendarrelatedevents`
--
ALTER TABLE `calendarrelatedevents`
  MODIFY `relatedEventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `caID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `conversationdiscussions`
--
ALTER TABLE `conversationdiscussions`
  MODIFY `cnvDiscussionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversationeditors`
--
ALTER TABLE `conversationeditors`
  MODIFY `cnvEditorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversationflaggedmessagetypes`
--
ALTER TABLE `conversationflaggedmessagetypes`
  MODIFY `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conversationmessageattachments`
--
ALTER TABLE `conversationmessageattachments`
  MODIFY `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversationmessageratings`
--
ALTER TABLE `conversationmessageratings`
  MODIFY `cnvMessageRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversationmessages`
--
ALTER TABLE `conversationmessages`
  MODIFY `cnvMessageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversationratingtypes`
--
ALTER TABLE `conversationratingtypes`
  MODIFY `cnvRatingTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `cnvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloadstatistics`
--
ALTER TABLE `downloadstatistics`
  MODIFY `dsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expressentityassociationentries`
--
ALTER TABLE `expressentityassociationentries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expressentityentries`
--
ALTER TABLE `expressentityentries`
  MODIFY `exEntryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expressentityentryassociations`
--
ALTER TABLE `expressentityentryassociations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expressformfieldsets`
--
ALTER TABLE `expressformfieldsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failedloginattempts`
--
ALTER TABLE `failedloginattempts`
  MODIFY `lcirID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record identifier';

--
-- AUTO_INCREMENT for table `featureassignments`
--
ALTER TABLE `featureassignments`
  MODIFY `faID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featurecategories`
--
ALTER TABLE `featurecategories`
  MODIFY `fcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `feID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fileimagethumbnailtypes`
--
ALTER TABLE `fileimagethumbnailtypes`
  MODIFY `ftTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `fID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filesetfiles`
--
ALTER TABLE `filesetfiles`
  MODIFY `fsfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filesets`
--
ALTER TABLE `filesets`
  MODIFY `fsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filestoragelocations`
--
ALTER TABLE `filestoragelocations`
  MODIFY `fslID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `filestoragelocationtypes`
--
ALTER TABLE `filestoragelocationtypes`
  MODIFY `fslTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fileversionlog`
--
ALTER TABLE `fileversionlog`
  MODIFY `fvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatheringconfigureddatasources`
--
ALTER TABLE `gatheringconfigureddatasources`
  MODIFY `gcsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatheringdatasources`
--
ALTER TABLE `gatheringdatasources`
  MODIFY `gasID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gatheringitemfeatureassignments`
--
ALTER TABLE `gatheringitemfeatureassignments`
  MODIFY `gafaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatheringitems`
--
ALTER TABLE `gatheringitems`
  MODIFY `gaiID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatheringitemtemplatefeatures`
--
ALTER TABLE `gatheringitemtemplatefeatures`
  MODIFY `gfeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `gatheringitemtemplates`
--
ALTER TABLE `gatheringitemtemplates`
  MODIFY `gatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gatheringitemtemplatetypes`
--
ALTER TABLE `gatheringitemtemplatetypes`
  MODIFY `gatTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gatherings`
--
ALTER TABLE `gatherings`
  MODIFY `gaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `geolocators`
--
ALTER TABLE `geolocators`
  MODIFY `glID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Geolocator ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `gID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groupsets`
--
ALTER TABLE `groupsets`
  MODIFY `gsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobsets`
--
ALTER TABLE `jobsets`
  MODIFY `jsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobslog`
--
ALTER TABLE `jobslog`
  MODIFY `jlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logincontrolipranges`
--
ALTER TABLE `logincontrolipranges`
  MODIFY `lcirID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record identifier';

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mailimporters`
--
ALTER TABLE `mailimporters`
  MODIFY `miID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mailvalidationhashes`
--
ALTER TABLE `mailvalidationhashes`
  MODIFY `mvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multilingualtranslations`
--
ALTER TABLE `multilingualtranslations`
  MODIFY `mtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notificationalerts`
--
ALTER TABLE `notificationalerts`
  MODIFY `naID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `nID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `pkgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pagefeeds`
--
ALTER TABLE `pagefeeds`
  MODIFY `pfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagepaths`
--
ALTER TABLE `pagepaths`
  MODIFY `ppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `pagetemplates`
--
ALTER TABLE `pagetemplates`
  MODIFY `pTemplateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pagethemes`
--
ALTER TABLE `pagethemes`
  MODIFY `pThemeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pagetypecomposercontroltypes`
--
ALTER TABLE `pagetypecomposercontroltypes`
  MODIFY `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagetypecomposerformlayoutsetcontrols`
--
ALTER TABLE `pagetypecomposerformlayoutsetcontrols`
  MODIFY `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pagetypecomposerformlayoutsets`
--
ALTER TABLE `pagetypecomposerformlayoutsets`
  MODIFY `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagetypecomposeroutputblocks`
--
ALTER TABLE `pagetypecomposeroutputblocks`
  MODIFY `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pagetypecomposeroutputcontrols`
--
ALTER TABLE `pagetypecomposeroutputcontrols`
  MODIFY `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pagetypepublishtargettypes`
--
ALTER TABLE `pagetypepublishtargettypes`
  MODIFY `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagetypes`
--
ALTER TABLE `pagetypes`
  MODIFY `ptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissionaccess`
--
ALTER TABLE `permissionaccess`
  MODIFY `paID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `permissionaccessentities`
--
ALTER TABLE `permissionaccessentities`
  MODIFY `peID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissionaccessentitygroups`
--
ALTER TABLE `permissionaccessentitygroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissionaccessentitytypes`
--
ALTER TABLE `permissionaccessentitytypes`
  MODIFY `petID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissiondurationobjects`
--
ALTER TABLE `permissiondurationobjects`
  MODIFY `pdID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissionkeycategories`
--
ALTER TABLE `permissionkeycategories`
  MODIFY `pkCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissionkeys`
--
ALTER TABLE `permissionkeys`
  MODIFY `pkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `pilecontents`
--
ALTER TABLE `pilecontents`
  MODIFY `pcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piles`
--
ALTER TABLE `piles`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queuemessages`
--
ALTER TABLE `queuemessages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savedexpresssearchqueries`
--
ALTER TABLE `savedexpresssearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savedfilesearchqueries`
--
ALTER TABLE `savedfilesearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savedpagesearchqueries`
--
ALTER TABLE `savedpagesearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savedusersearchqueries`
--
ALTER TABLE `savedusersearchqueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitelocales`
--
ALTER TABLE `sitelocales`
  MODIFY `siteLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `siteID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitetrees`
--
ALTER TABLE `sitetrees`
  MODIFY `siteTreeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sitetypes`
--
ALTER TABLE `sitetypes`
  MODIFY `siteTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `slID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stacks`
--
ALTER TABLE `stacks`
  MODIFY `stID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stylecustomizercustomcssrecords`
--
ALTER TABLE `stylecustomizercustomcssrecords`
  MODIFY `sccRecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stylecustomizerinlinestylepresets`
--
ALTER TABLE `stylecustomizerinlinestylepresets`
  MODIFY `pssPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stylecustomizerinlinestylesets`
--
ALTER TABLE `stylecustomizerinlinestylesets`
  MODIFY `issID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stylecustomizervaluelists`
--
ALTER TABLE `stylecustomizervaluelists`
  MODIFY `scvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stylecustomizervalues`
--
ALTER TABLE `stylecustomizervalues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemdatabasequerylog`
--
ALTER TABLE `systemdatabasequerylog`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treefilenodes`
--
ALTER TABLE `treefilenodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `treegroupnodes`
--
ALTER TABLE `treegroupnodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treenodes`
--
ALTER TABLE `treenodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `treenodetypes`
--
ALTER TABLE `treenodetypes`
  MODIFY `treeNodeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trees`
--
ALTER TABLE `trees`
  MODIFY `treeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `treesearchquerynodes`
--
ALTER TABLE `treesearchquerynodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treetypes`
--
ALTER TABLE `treetypes`
  MODIFY `treeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usedstringlog`
--
ALTER TABLE `usedstringlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpointactions`
--
ALTER TABLE `userpointactions`
  MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userpointhistory`
--
ALTER TABLE `userpointhistory`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprivatemessages`
--
ALTER TABLE `userprivatemessages`
  MODIFY `msgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usersignups`
--
ALTER TABLE `usersignups`
  MODIFY `usID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uservalidationhashes`
--
ALTER TABLE `uservalidationhashes`
  MODIFY `uvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflowprogress`
--
ALTER TABLE `workflowprogress`
  MODIFY `wpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `workflowprogresscategories`
--
ALTER TABLE `workflowprogresscategories`
  MODIFY `wpCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workflowprogresshistory`
--
ALTER TABLE `workflowprogresshistory`
  MODIFY `wphID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `workflowrequestobjects`
--
ALTER TABLE `workflowrequestobjects`
  MODIFY `wrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `wfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflowtypes`
--
ALTER TABLE `workflowtypes`
  MODIFY `wftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arealayoutsusingpresets`
--
ALTER TABLE `arealayoutsusingpresets`
  ADD CONSTRAINT `FK_7A9049A1385521EA` FOREIGN KEY (`arLayoutID`) REFERENCES `arealayouts` (`arLayoutID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ataddress`
--
ALTER TABLE `ataddress`
  ADD CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `ataddresssettings`
--
ALTER TABLE `ataddresssettings`
  ADD CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `atboolean`
--
ALTER TABLE `atboolean`
  ADD CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atbooleansettings`
--
ALTER TABLE `atbooleansettings`
  ADD CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `atdatetime`
--
ALTER TABLE `atdatetime`
  ADD CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atdatetimesettings`
--
ALTER TABLE `atdatetimesettings`
  ADD CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `atdefault`
--
ALTER TABLE `atdefault`
  ADD CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atemptysettings`
--
ALTER TABLE `atemptysettings`
  ADD CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `atexpress`
--
ALTER TABLE `atexpress`
  ADD CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atexpressselectedentries`
--
ALTER TABLE `atexpressselectedentries`
  ADD CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atexpress` (`avID`);

--
-- Constraints for table `atexpresssettings`
--
ALTER TABLE `atexpresssettings`
  ADD CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `expressentities` (`id`);

--
-- Constraints for table `atfile`
--
ALTER TABLE `atfile`
  ADD CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`) ON DELETE CASCADE;

--
-- Constraints for table `atfilesettings`
--
ALTER TABLE `atfilesettings`
  ADD CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `atnumber`
--
ALTER TABLE `atnumber`
  ADD CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atselect`
--
ALTER TABLE `atselect`
  ADD CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atselectedsociallinks`
--
ALTER TABLE `atselectedsociallinks`
  ADD CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atsociallinks` (`avID`);

--
-- Constraints for table `atselectedtopics`
--
ALTER TABLE `atselectedtopics`
  ADD CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attopic` (`avID`);

--
-- Constraints for table `atselectoptions`
--
ALTER TABLE `atselectoptions`
  ADD CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atselectoptionlists` (`avSelectOptionListID`);

--
-- Constraints for table `atselectoptionsselected`
--
ALTER TABLE `atselectoptionsselected`
  ADD CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atselect` (`avID`),
  ADD CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atselectoptions` (`avSelectOptionID`);

--
-- Constraints for table `atselectsettings`
--
ALTER TABLE `atselectsettings`
  ADD CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atselectoptionlists` (`avSelectOptionListID`);

--
-- Constraints for table `atsociallinks`
--
ALTER TABLE `atsociallinks`
  ADD CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `attextareasettings`
--
ALTER TABLE `attextareasettings`
  ADD CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `attextsettings`
--
ALTER TABLE `attextsettings`
  ADD CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `attopic`
--
ALTER TABLE `attopic`
  ADD CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `attopicsettings`
--
ALTER TABLE `attopicsettings`
  ADD CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `attributekeycategories`
--
ALTER TABLE `attributekeycategories`
  ADD CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Constraints for table `attributekeys`
--
ALTER TABLE `attributekeys`
  ADD CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `attributetypes` (`atID`),
  ADD CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Constraints for table `attributesetkeys`
--
ALTER TABLE `attributesetkeys`
  ADD CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `attributesets` (`asID`),
  ADD CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `attributesets`
--
ALTER TABLE `attributesets`
  ADD CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Constraints for table `attributetypecategories`
--
ALTER TABLE `attributetypecategories`
  ADD CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `attributetypes` (`atID`),
  ADD CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `attributekeycategories` (`akCategoryID`);

--
-- Constraints for table `attributetypes`
--
ALTER TABLE `attributetypes`
  ADD CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Constraints for table `attributevalues`
--
ALTER TABLE `attributevalues`
  ADD CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `calendareventattributekeys`
--
ALTER TABLE `calendareventattributekeys`
  ADD CONSTRAINT `FK_27F477CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `calendareventoccurrences`
--
ALTER TABLE `calendareventoccurrences`
  ADD CONSTRAINT `FK_7DD686EC31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `calendareventrepetitions` (`repetitionID`);

--
-- Constraints for table `calendarevents`
--
ALTER TABLE `calendarevents`
  ADD CONSTRAINT `FK_7F23C55611C85723` FOREIGN KEY (`caID`) REFERENCES `calendars` (`caID`);

--
-- Constraints for table `calendareventversionattributevalues`
--
ALTER TABLE `calendareventversionattributevalues`
  ADD CONSTRAINT `FK_8C835B05403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `calendareventversions` (`eventVersionID`),
  ADD CONSTRAINT `FK_8C835B05A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_8C835B05B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `calendareventversionoccurrences`
--
ALTER TABLE `calendareventversionoccurrences`
  ADD CONSTRAINT `FK_60310489403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `calendareventversions` (`eventVersionID`),
  ADD CONSTRAINT `FK_60310489B4FDDC0F` FOREIGN KEY (`occurrenceID`) REFERENCES `calendareventoccurrences` (`occurrenceID`);

--
-- Constraints for table `calendareventversionrepetitions`
--
ALTER TABLE `calendareventversionrepetitions`
  ADD CONSTRAINT `FK_C1C3D3DB31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `calendareventrepetitions` (`repetitionID`),
  ADD CONSTRAINT `FK_C1C3D3DB403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `calendareventversions` (`eventVersionID`);

--
-- Constraints for table `calendareventversions`
--
ALTER TABLE `calendareventversions`
  ADD CONSTRAINT `FK_8E26027410409BA4` FOREIGN KEY (`eventID`) REFERENCES `calendarevents` (`eventID`),
  ADD CONSTRAINT `FK_8E260274FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Constraints for table `calendareventworkflowprogress`
--
ALTER TABLE `calendareventworkflowprogress`
  ADD CONSTRAINT `FK_C5EAACF910409BA4` FOREIGN KEY (`eventID`) REFERENCES `calendarevents` (`eventID`);

--
-- Constraints for table `calendarpermissionassignments`
--
ALTER TABLE `calendarpermissionassignments`
  ADD CONSTRAINT `FK_5AD546AA11C85723` FOREIGN KEY (`caID`) REFERENCES `calendars` (`caID`);

--
-- Constraints for table `calendarrelatedevents`
--
ALTER TABLE `calendarrelatedevents`
  ADD CONSTRAINT `FK_310130E910409BA4` FOREIGN KEY (`eventID`) REFERENCES `calendarevents` (`eventID`);

--
-- Constraints for table `calendars`
--
ALTER TABLE `calendars`
  ADD CONSTRAINT `FK_62E00AC521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`);

--
-- Constraints for table `collectionattributekeys`
--
ALTER TABLE `collectionattributekeys`
  ADD CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `collectionattributevalues`
--
ALTER TABLE `collectionattributevalues`
  ADD CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `collectionsearchindexattributes`
--
ALTER TABLE `collectionsearchindexattributes`
  ADD CONSTRAINT `FK_FD84E56FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `collections` (`cID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `conversationmessagenotifications`
--
ALTER TABLE `conversationmessagenotifications`
  ADD CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `expressattributekeys`
--
ALTER TABLE `expressattributekeys`
  ADD CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `expressentities` (`id`),
  ADD CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `expressentities`
--
ALTER TABLE `expressentities`
  ADD CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `expressforms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `expressforms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Constraints for table `expressentityassociationentries`
--
ALTER TABLE `expressentityassociationentries`
  ADD CONSTRAINT `FK_9C2BB76C6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_9C2BB76CEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityentryassociations` (`id`);

--
-- Constraints for table `expressentityassociations`
--
ALTER TABLE `expressentityassociations`
  ADD CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `expressentities` (`id`),
  ADD CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `expressentities` (`id`);

--
-- Constraints for table `expressentityentries`
--
ALTER TABLE `expressentityentries`
  ADD CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `expressentities` (`id`),
  ADD CONSTRAINT `FK_B8AE3531FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Constraints for table `expressentityentryassociations`
--
ALTER TABLE `expressentityentryassociations`
  ADD CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityassociations` (`id`);

--
-- Constraints for table `expressentityentryattributevalues`
--
ALTER TABLE `expressentityentryattributevalues`
  ADD CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`),
  ADD CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `expressformfieldsetassociationcontrols`
--
ALTER TABLE `expressformfieldsetassociationcontrols`
  ADD CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `expressentityassociations` (`id`);

--
-- Constraints for table `expressformfieldsetattributekeycontrols`
--
ALTER TABLE `expressformfieldsetattributekeycontrols`
  ADD CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expressformfieldsetauthorcontrols`
--
ALTER TABLE `expressformfieldsetauthorcontrols`
  ADD CONSTRAINT `FK_CF378786BF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expressformfieldsetcontrols`
--
ALTER TABLE `expressformfieldsetcontrols`
  ADD CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `expressformfieldsets` (`id`);

--
-- Constraints for table `expressformfieldsets`
--
ALTER TABLE `expressformfieldsets`
  ADD CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `expressforms` (`id`);

--
-- Constraints for table `expressformfieldsettextcontrols`
--
ALTER TABLE `expressformfieldsettextcontrols`
  ADD CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `expressformfieldsetcontrols` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expressforms`
--
ALTER TABLE `expressforms`
  ADD CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `expressentities` (`id`);

--
-- Constraints for table `fileattributekeys`
--
ALTER TABLE `fileattributekeys`
  ADD CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `fileattributevalues`
--
ALTER TABLE `fileattributevalues`
  ADD CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `fileimagethumbnailtypefilesets`
--
ALTER TABLE `fileimagethumbnailtypefilesets`
  ADD CONSTRAINT `FK_BD75F88D480660E5` FOREIGN KEY (`ftfsThumbnailType`) REFERENCES `fileimagethumbnailtypes` (`ftTypeID`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `filestoragelocations` (`fslID`),
  ADD CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `filesearchindexattributes`
--
ALTER TABLE `filesearchindexattributes`
  ADD CONSTRAINT `FK_3A3A4845E3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fileversions`
--
ALTER TABLE `fileversions`
  ADD CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `files` (`fID`);

--
-- Constraints for table `formsubmissionnotifications`
--
ALTER TABLE `formsubmissionnotifications`
  ADD CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `expressentityentries` (`exEntryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `geolocators`
--
ALTER TABLE `geolocators`
  ADD CONSTRAINT `FK_83BB1614D5F6CC40` FOREIGN KEY (`glPackage`) REFERENCES `packages` (`pkgID`) ON DELETE CASCADE;

--
-- Constraints for table `legacyattributekeys`
--
ALTER TABLE `legacyattributekeys`
  ADD CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `notificationalerts`
--
ALTER TABLE `notificationalerts`
  ADD CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`),
  ADD CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Constraints for table `oauth2accesstoken`
--
ALTER TABLE `oauth2accesstoken`
  ADD CONSTRAINT `FK_60D69F3FC7440455` FOREIGN KEY (`client`) REFERENCES `oauth2client` (`identifier`);

--
-- Constraints for table `oauth2authcode`
--
ALTER TABLE `oauth2authcode`
  ADD CONSTRAINT `FK_29D07B5C7440455` FOREIGN KEY (`client`) REFERENCES `oauth2client` (`identifier`);

--
-- Constraints for table `oauth2refreshtoken`
--
ALTER TABLE `oauth2refreshtoken`
  ADD CONSTRAINT `FK_A205CB8350A9822` FOREIGN KEY (`accessToken`) REFERENCES `oauth2accesstoken` (`identifier`);

--
-- Constraints for table `privatemessagenotifications`
--
ALTER TABLE `privatemessagenotifications`
  ADD CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `queuemessages`
--
ALTER TABLE `queuemessages`
  ADD CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siteattributekeys`
--
ALTER TABLE `siteattributekeys`
  ADD CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `siteattributevalues`
--
ALTER TABLE `siteattributevalues`
  ADD CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`),
  ADD CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`);

--
-- Constraints for table `sitelocales`
--
ALTER TABLE `sitelocales`
  ADD CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`),
  ADD CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `sitetreetrees` (`siteTreeID`);

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `sitetypes` (`siteTypeID`);

--
-- Constraints for table `sitesearchindexattributes`
--
ALTER TABLE `sitesearchindexattributes`
  ADD CONSTRAINT `FK_3DD070B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sitetreetrees`
--
ALTER TABLE `sitetreetrees`
  ADD CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `sitelocales` (`siteLocaleID`),
  ADD CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `sitetrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Constraints for table `sitetypes`
--
ALTER TABLE `sitetypes`
  ADD CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `packages` (`pkgID`);

--
-- Constraints for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `sites` (`siteID`);

--
-- Constraints for table `userattributekeys`
--
ALTER TABLE `userattributekeys`
  ADD CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `userattributevalues`
--
ALTER TABLE `userattributevalues`
  ADD CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `attributevalues` (`avID`),
  ADD CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `attributekeys` (`akID`),
  ADD CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Constraints for table `userdeactivatednotifications`
--
ALTER TABLE `userdeactivatednotifications`
  ADD CONSTRAINT `FK_ED5A1F9FED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `usersearchindexattributes`
--
ALTER TABLE `usersearchindexattributes`
  ADD CONSTRAINT `FK_74798B07FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usersignupnotifications`
--
ALTER TABLE `usersignupnotifications`
  ADD CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `usersignups` (`usID`),
  ADD CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `usersignups`
--
ALTER TABLE `usersignups`
  ADD CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `users` (`uID`),
  ADD CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `users` (`uID`);

--
-- Constraints for table `workflowprogressnotifications`
--
ALTER TABLE `workflowprogressnotifications`
  ADD CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `notifications` (`nID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
