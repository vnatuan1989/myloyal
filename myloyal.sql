-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2015 at 08:14 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myloyal`
--

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_account_payment_type`
--

CREATE TABLE IF NOT EXISTS `bxnaz_account_payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_assets`
--

CREATE TABLE IF NOT EXISTS `bxnaz_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=279 ;

--
-- Dumping data for table `bxnaz_assets`
--

INSERT INTO `bxnaz_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 299, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 58, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.options":[],"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 59, 60, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 61, 62, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 63, 64, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 65, 66, 1, 'com_login', 'com_login', '{}'),
(13, 1, 67, 68, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 69, 70, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 71, 72, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 73, 74, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 75, 76, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 77, 260, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 261, 264, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 265, 266, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 267, 268, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 269, 270, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 271, 272, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 273, 276, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 277, 278, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 262, 263, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 274, 275, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 279, 280, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 281, 282, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 283, 284, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 285, 286, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 287, 288, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 289, 290, 1, 'com_postinstall', 'com_postinstall', '{}'),
(40, 18, 78, 79, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 80, 81, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 82, 83, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 84, 85, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 86, 87, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 88, 89, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 90, 91, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 92, 93, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 94, 95, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 96, 97, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 98, 99, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 100, 101, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 8, 22, 25, 2, 'com_content.category.8', 'Theme Features', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(56, 8, 26, 39, 2, 'com_content.category.9', 'Sample Pages', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(57, 8, 40, 57, 2, 'com_content.category.10', 'Joomla Blog', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 55, 23, 24, 3, 'com_content.article.3', 'Block Variations', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(61, 56, 27, 28, 3, 'com_content.article.4', 'About Us', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(62, 56, 29, 30, 3, 'com_content.article.5', 'Our Team', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(64, 56, 31, 32, 3, 'com_content.article.7', 'Pricing', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(66, 56, 33, 34, 3, 'com_content.article.9', 'Clients', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(67, 56, 35, 36, 3, 'com_content.article.10', 'Frequently Asked Questions', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(68, 56, 37, 38, 3, 'com_content.article.11', 'Offline Page', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(69, 57, 41, 42, 3, 'com_content.article.12', 'Dramatically visualize customer directed convergence without revolutionary ROI', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(70, 57, 43, 44, 3, 'com_content.article.13', 'Dramatically maintain clicks-and-mortar solutions without functional solutions', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(71, 57, 45, 46, 3, 'com_content.article.14', 'Dynamically innovate resource-leveling customer service for state of the art customer service', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(72, 57, 47, 48, 3, 'com_content.article.15', 'Holisticly predominate extensible testing procedures for reliable supply chains', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(73, 57, 49, 50, 3, 'com_content.article.16', 'Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(74, 57, 51, 52, 3, 'com_content.article.17', 'Interactively coordinate proactive e-commerce via process-centric outside the box thinking', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(75, 57, 53, 54, 3, 'com_content.article.18', 'Seamlessly empower fully researched growth strategies and interoperable internal or organic sources', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(76, 57, 55, 56, 3, 'com_content.article.19', 'Completely iterate covalent strategic theme areas via accurate e-markets', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(77, 7, 16, 17, 2, 'com_contact.category.11', 'RocketTheme', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(80, 18, 102, 103, 2, 'com_modules.module.89', 'Gantry 5 - Next Generation Theme Framework', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(85, 18, 104, 105, 2, 'com_modules.module.94', 'Typography Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(86, 18, 106, 107, 2, 'com_modules.module.95', 'Buttons Typography', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(87, 18, 108, 109, 2, 'com_modules.module.96', 'Standard Typography', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(88, 18, 110, 111, 2, 'com_modules.module.97', 'Block Variations', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(89, 18, 112, 113, 2, 'com_modules.module.98', 'Additional Effects - Classes', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(91, 18, 114, 115, 2, 'com_modules.module.100', 'About Us - Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(92, 18, 116, 117, 2, 'com_modules.module.101', 'Missions - Values - Solutions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(93, 18, 118, 119, 2, 'com_modules.module.102', 'Sophisticated - Responsive - Powerful', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(94, 18, 120, 121, 2, 'com_modules.module.103', 'We Always Try to Create a Difference', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(95, 18, 122, 123, 2, 'com_modules.module.104', 'About Salient', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(97, 18, 124, 125, 2, 'com_modules.module.106', 'Sample Sitemap', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(106, 18, 126, 127, 2, 'com_modules.module.115', 'Awesome Plans - Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(107, 18, 128, 129, 2, 'com_modules.module.116', 'Pricing Table', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(109, 18, 130, 131, 2, 'com_modules.module.118', 'No Hidden Fees', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(110, 18, 132, 133, 2, 'com_modules.module.119', 'Portfolio - Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(113, 18, 134, 135, 2, 'com_modules.module.122', '100% Satisfaction Guaranteed', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(118, 18, 136, 137, 2, 'com_modules.module.127', 'Email - Phone - Chat', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(121, 18, 138, 139, 2, 'com_modules.module.130', 'Gantry 5 Guides', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(122, 18, 140, 141, 2, 'com_modules.module.131', 'Login', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(123, 18, 142, 143, 2, 'com_modules.module.132', 'Who''s Online', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(124, 18, 144, 145, 2, 'com_modules.module.133', 'Our Blog - Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(125, 18, 146, 147, 2, 'com_modules.module.134', 'Share Some Ideas', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(126, 18, 148, 149, 2, 'com_modules.module.135', 'Contact - Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(127, 18, 150, 151, 2, 'com_modules.module.136', 'Contact Details', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(128, 18, 152, 153, 2, 'com_modules.module.137', 'Got Billing and Payments Questions?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(129, 18, 154, 155, 2, 'com_modules.module.138', 'Offline - Header', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(130, 18, 156, 157, 2, 'com_modules.module.139', 'To Make Your Joomla! Website Offline', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(132, 1, 291, 292, 1, 'com_roksprocket', 'RokSprocket', '{}'),
(133, 18, 158, 159, 2, 'com_modules.module.141', 'RokSprocket Module', ''),
(147, 18, 160, 161, 2, 'com_modules.module.154', 'RokAjaxSearch', ''),
(150, 1, 293, 294, 1, 'com_gantry5', 'com_gantry5', '{}'),
(175, 18, 162, 163, 2, 'com_modules.module.181', 'Features Overview - Template Features Grid', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(176, 18, 164, 165, 2, 'com_modules.module.182', 'Features Overview Gantry 5', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(177, 18, 166, 167, 2, 'com_modules.module.183', 'Template Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(178, 18, 168, 169, 2, 'com_modules.module.184', 'System Requirements', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(179, 18, 170, 171, 2, 'com_modules.module.185', 'Gantry 5 Core Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(194, 18, 172, 173, 2, 'com_modules.module.200', 'Block Variations Effects & Classes', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(199, 18, 174, 175, 2, 'com_modules.module.205', 'Common Queries and Questions', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(200, 18, 176, 177, 2, 'com_modules.module.206', 'Salient Premium Project', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(202, 18, 178, 179, 2, 'com_modules.module.208', 'Upcoming Projects', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(203, 18, 180, 181, 2, 'com_modules.module.209', 'Magazine Promo Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(204, 18, 182, 183, 2, 'com_modules.module.210', 'Logo Promo Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(205, 18, 184, 185, 2, 'com_modules.module.211', 'Brochure Promo Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(206, 18, 186, 187, 2, 'com_modules.module.212', 'Photos Promo Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(207, 18, 188, 189, 2, 'com_modules.module.213', 'Illustrations Promo Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(208, 18, 190, 191, 2, 'com_modules.module.214', 'Decorations Promo Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(209, 18, 192, 193, 2, 'com_modules.module.215', 'Pricing Grid', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(211, 18, 194, 195, 2, 'com_modules.module.217', 'Contact Details', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(214, 18, 196, 197, 2, 'com_modules.module.220', 'Search Our Site', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(215, 18, 198, 199, 2, 'com_modules.module.221', 'Newsletter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(219, 18, 200, 201, 2, 'com_modules.module.225', 'FP Showcase Logo Selection', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(222, 18, 202, 203, 2, 'com_modules.module.228', 'Capabilities', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(229, 18, 204, 205, 2, 'com_modules.module.235', 'Footer Logo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(230, 18, 206, 207, 2, 'com_modules.module.236', 'ToTop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(231, 18, 208, 209, 2, 'com_modules.module.237', 'Copyright Social Icons', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(244, 18, 210, 211, 2, 'com_modules.module.250', 'Off Canvas', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(249, 18, 212, 213, 2, 'com_modules.module.255', 'SlideRight', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(252, 18, 214, 215, 2, 'com_modules.module.258', 'Block Variations (Spacer)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(253, 18, 216, 217, 2, 'com_modules.module.259', 'Typography (Spacer)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(256, 18, 218, 219, 2, 'com_modules.module.262', 'Testimonial', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(257, 18, 220, 221, 2, 'com_modules.module.263', 'Extensive Documentation', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(258, 18, 222, 223, 2, 'com_modules.module.264', 'YAML-Driven / Twig Templating', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(259, 18, 224, 225, 2, 'com_modules.module.265', 'Open Positions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(260, 18, 226, 227, 2, 'com_modules.module.266', 'Mobile Responsive', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(261, 18, 228, 229, 2, 'com_modules.module.267', 'Contemporary Interface', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(262, 18, 230, 231, 2, 'com_modules.module.268', 'An excellent design', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(263, 18, 232, 233, 2, 'com_modules.module.269', 'A next-generation', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(264, 18, 234, 235, 2, 'com_modules.module.270', '+1(555)666.777.8888', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(265, 18, 236, 237, 2, 'com_modules.module.271', 'Address', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(266, 18, 238, 239, 2, 'com_modules.module.272', 'Hours', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(267, 18, 240, 241, 2, 'com_modules.module.273', 'Contact Map', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(268, 18, 242, 243, 2, 'com_modules.module.274', '100+ Templates', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(269, 18, 244, 245, 2, 'com_modules.module.275', '36 Projects', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(270, 18, 246, 247, 2, 'com_modules.module.276', 'SlideCenter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(271, 18, 248, 249, 2, 'com_modules.module.277', '5 Team Members', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(272, 18, 250, 251, 2, 'com_modules.module.278', '7 Sample Pages', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(273, 18, 252, 253, 2, 'com_modules.module.279', 'Social', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(274, 18, 254, 255, 2, 'com_modules.module.280', 'Off Canvas Toggle', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(275, 18, 256, 257, 2, 'com_modules.module.281', 'Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(276, 18, 258, 259, 2, 'com_modules.module.282', 'Logo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(277, 1, 295, 296, 1, 'com_business', 'COM_BUSINESS', '{}'),
(278, 1, 297, 298, 1, 'com_helloworld', 'COM_HELLOWORLD', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_associations`
--

CREATE TABLE IF NOT EXISTS `bxnaz_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_banners`
--

CREATE TABLE IF NOT EXISTS `bxnaz_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bxnaz_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bxnaz_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_business`
--

CREATE TABLE IF NOT EXISTS `bxnaz_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `businessName` varchar(255) DEFAULT NULL,
  `businessEmail` text,
  `shortName` text,
  `type` tinyint(4) DEFAULT NULL,
  `icon` text,
  `address` text,
  `city` text,
  `state` text,
  `country` text,
  `latitude` text,
  `longitude` text,
  `phone` text,
  `website` text,
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  `timeExpired` datetime DEFAULT NULL,
  `typeOfPayment` tinyint(4) DEFAULT NULL,
  `numMonthPayment` int(11) DEFAULT NULL,
  `transactionPayment` text,
  `cvrNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bxnaz_business`
--

INSERT INTO `bxnaz_business` (`id`, `userId`, `businessName`, `businessEmail`, `shortName`, `type`, `icon`, `address`, `city`, `state`, `country`, `latitude`, `longitude`, `phone`, `website`, `createdAt`, `updatedAt`, `timeExpired`, `typeOfPayment`, `numMonthPayment`, `transactionPayment`, `cvrNumber`) VALUES
(1, 431, 'Business 5', 'business1@aaa.com', 'B1', 1, 'images/business/coffee.png', 'Test address 1', 'HCM 1', NULL, NULL, '10.78', '106.672', '123456789', 'business1.com', '1445212800', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 432, 'Business 10', 'business2@aaa.com', 'B2', 2, 'images/business/fitness.png', 'Test address 2', 'HCM 2', NULL, NULL, '10.7719', '106.698', '123456789', 'business2.com', '1445212800', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 436, '1', NULL, NULL, NULL, NULL, '111, Ultimo Road, Ultimo, New South Wales, Úc', NULL, NULL, NULL, '-33.881381', '151.20113200000003', '1', NULL, '1446028540', '1446028540', NULL, NULL, NULL, NULL, '1'),
(5, 437, '1', NULL, NULL, NULL, NULL, '111, Ultimo Road, Ultimo, New South Wales, Úc', NULL, NULL, NULL, '-33.881381', '151.20113200000003', '1', NULL, '1446028682', '1446028682', NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_categories`
--

CREATE TABLE IF NOT EXISTS `bxnaz_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bxnaz_categories`
--

INSERT INTO `bxnaz_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 427, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 427, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 427, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 427, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 427, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 427, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 55, 1, 11, 12, 1, 'features', 'com_content', 'Theme Features', 'features', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 427, '2015-05-28 14:18:58', 548, '2015-05-28 14:19:26', 0, '*', 1),
(9, 56, 1, 13, 14, 1, 'sample-pages', 'com_content', 'Sample Pages', 'sample-pages', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 427, '2015-05-28 14:19:17', 0, '2015-05-28 14:19:17', 0, '*', 1),
(10, 57, 1, 15, 16, 1, 'joomla-blog', 'com_content', 'Joomla Blog', 'joomla-blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 427, '2015-05-28 14:19:39', 0, '2015-05-28 14:19:39', 0, '*', 1),
(11, 77, 1, 17, 18, 1, 'rockettheme', 'com_contact', 'RocketTheme', 'rockettheme', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 427, '2015-06-01 09:36:27', 0, '2015-06-01 09:36:27', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_checkin`
--

CREATE TABLE IF NOT EXISTS `bxnaz_checkin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bxnaz_checkin`
--

INSERT INTO `bxnaz_checkin` (`id`, `customerId`, `businessId`, `createdAt`, `updatedAt`) VALUES
(1, 430, 1, '1445795087', NULL),
(2, 430, 1, '1445795138', NULL),
(3, 431, 1, '1445795149', NULL),
(4, 431, 1, '1445795156', NULL),
(5, 430, 1, '1445795572', NULL),
(6, 430, 2, '1445795086', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_contact_details`
--

CREATE TABLE IF NOT EXISTS `bxnaz_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bxnaz_contact_details`
--

INSERT INTO `bxnaz_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Salient', 'salient', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 548, 11, 1, '', '', '', '', '', '*', '2015-06-01 09:37:08', 427, '', '2015-06-29 11:51:00', 81, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 109);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_content`
--

CREATE TABLE IF NOT EXISTS `bxnaz_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `bxnaz_content`
--

INSERT INTO `bxnaz_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(3, 60, 'Block Variations', 'block-variations', '<div class="g-grid">\r\n  <div class="g-block box1 size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box 1</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box2 size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box 2</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box3 size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box 3</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n  <div class="g-block box4 size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box 4</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box-grey size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Grey</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box-darkgrey size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Dark Grey</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n  <div class="g-block box-pink size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Pink</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box-red size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Red</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box-purple size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Purple</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n  <div class="g-block box-orange size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Orange</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box-blue size-33-3">\r\n    <div class="g-content">\r\n      <h3>Box Blue</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block size-33-3">\r\n    <div class="g-content">\r\n      <h3>No Variation</h3>\r\n\r\n      <p>Lorem <strong>ipsum dolor</strong> sit amet, <a href="">consecetur</a> adipiscing elit <em>donec sit</em> amet nibh.</p><a class="button" href="">Read More</a>\r\n    </div>\r\n  </div>\r\n</div>', '', 1, 8, '2015-05-28 14:23:15', 427, '', '2015-07-28 15:25:05', 848, 0, '0000-00-00 00:00:00', '2015-05-28 14:23:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 166, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 61, 'About Us', 'about-us', '<div class="g-grid">\r\n  <div class="g-block flush center size-100">\r\n    <div class="g-content">\r\n      <div class="g-layercontent g-layercontent-small">\r\n        <h2 class="g-layercontent-title">\r\n          Why You Should Join Us\r\n        </h2>\r\n        <div class="g-layercontent-subtitle">\r\n          Choose the theme that suits your needs. 100% satisfaction guaranteed.\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div class="g-grid">\r\n  <div class="g-block flush size-100">\r\n    <div class="g-content">\r\n      <div class="g-grid center">\r\n        <div class="g-block nopaddingall">\r\n          <div class="g-content">\r\n            <img alt="image" src="images/rocketlauncher/pages/about-us/img-01.jpg">\r\n            <h2 class="g-title">\r\n              Introduction\r\n            </h2>\r\n          </div>\r\n        </div>\r\n        <div class="g-block nopaddingall">\r\n          <div class="g-content">\r\n            <img alt="image" src="images/rocketlauncher/pages/about-us/img-02.jpg">\r\n            <h2 class="g-title">\r\n              Mission\r\n            </h2>\r\n          </div>\r\n        </div>\r\n        <div class="g-block nopaddingall">\r\n          <div class="g-content">\r\n            <img alt="image" src="images/rocketlauncher/pages/about-us/img-03.jpg">\r\n            <h2 class="g-title">\r\n              Business\r\n            </h2>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '', 1, 9, '2015-05-28 14:25:00', 427, '', '2015-06-01 14:41:20', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:25:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 7, '', '', 1, 210, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 62, 'Our Team', 'our-team', '<h3><em>"Completely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service." - Robert Smith</em></h3>', '', 1, 9, '2015-05-28 14:25:24', 427, '', '2015-06-01 15:05:23', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:25:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 6, '', '', 1, 61, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 64, 'Pricing', 'pricing', '<div class="g-block  size-100">\r\n  <div class="g-content nomarginbottom nopaddingbottom">\r\n    <h2 class="g-title">\r\n      Try it Out for 10 Days Free\r\n    </h2>\r\n    <ul class="nomarginbottom">\r\n      <li>All plans come with awesome support by email and phone. There is no hidden fee!\r\n      </li>\r\n      <li>Free <strong>10 days trial</strong> on all plans. No credit card needed! Need a bigger plan? <a href="http://www.rockettheme.com/joomla/templates/salient">View Professional Plan</a>.\r\n      </li>\r\n    </ul>\r\n  </div>\r\n</div>', '', 1, 9, '2015-05-28 14:25:46', 427, '', '2015-07-28 13:42:01', 848, 0, '0000-00-00 00:00:00', '2015-05-28 14:25:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 4, '', '', 1, 136, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 66, 'Clients', 'clients', '<p class="center">Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas.<span class="visible-desktop"> Dramatically maintain clicks-and-mortar solutions without functional solutions. Completely synergize resource sucking relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. </p>', '', 1, 9, '2015-05-28 14:26:02', 427, '', '2015-06-01 16:11:13', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:26:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 2, '', '', 1, 57, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 67, 'Frequently Asked Questions', 'frequently-asked-questions', '{loadposition faq-body}', '', 1, 9, '2015-05-28 14:26:43', 427, '', '2015-06-29 19:54:22', 81, 0, '0000-00-00 00:00:00', '2015-05-28 14:26:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 74, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 68, 'Offline Page', 'offline-page', '<h2 class="g-title">How to Take Your Joomla! Website Temporarily Offline</h2>\r\n\r\n<p>There may be occasions when you will make your Joomla! website completely unavailable to visitors for a short time. There is a simple switch in the Administrator back-end that enables you to take your website offline very quickly. It can be returned to service at a later time just as easily.</p>\r\n\r\n<p><img src="images/rocketlauncher/pages/offline/img-01.jpg" alt="image"></p>', '', 1, 9, '2015-05-28 14:27:40', 427, '', '2015-06-01 16:54:07', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:27:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 101, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 69, 'Dramatically visualize customer directed convergence without revolutionary ROI', 'dramatically-visualize-customer-directed-convergence-without-revolutionary-roi', '<p><img src="images/rocketlauncher/pages/blog/img-01.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:08:51', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 7, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 70, 'Dramatically maintain clicks-and-mortar solutions without functional solutions', 'dramatically-maintain-clicks-and-mortar-solutions-without-functional-solutions', '<p><img src="images/rocketlauncher/pages/blog/img-02.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:05', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 71, 'Dynamically innovate resource-leveling customer service for state of the art customer service', 'dynamically-innovate-resource-leveling-customer-service-for-state-of-the-art-customer-service', '<p><img src="images/rocketlauncher/pages/blog/img-03.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:11', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 72, 'Holisticly predominate extensible testing procedures for reliable supply chains', 'holisticly-predominate-extensible-testing-procedures-for-reliable-supply-chains', '<p><img src="images/rocketlauncher/pages/blog/img-04.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:16', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 73, 'Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing', 'seamlessly-visualize-quality-intellectual-capital-without-superior-collaboration-and-idea-sharing', '<p><img src="images/rocketlauncher/pages/blog/img-02.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:23', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 74, 'Interactively coordinate proactive e-commerce via process-centric outside the box thinking', 'interactively-coordinate-proactive-e-commerce-via-process-centric-outside-the-box-thinking', '<p><img src="images/rocketlauncher/pages/blog/img-04.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:28', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 75, 'Seamlessly empower fully researched growth strategies and interoperable internal or organic sources', 'seamlessly-empower-fully-researched-growth-strategies-and-interoperable-internal-or-organic-sources', '<p><img src="images/rocketlauncher/pages/blog/img-01.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:33', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 76, 'Completely iterate covalent strategic theme areas via accurate e-markets', 'completely-iterate-covalent-strategic-theme-areas-via-accurate-e-markets', '<p><img src="images/rocketlauncher/pages/blog/img-03.jpg" alt="Sample Blog"></p>\r\n<p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI. Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions.</p>\r\n<a class="button" href="#">Read More</a>', '', 1, 10, '2015-05-28 14:31:42', 427, '', '2015-06-08 15:09:39', 548, 0, '0000-00-00 00:00:00', '2015-05-28 14:31:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `bxnaz_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bxnaz_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_content_rating`
--

CREATE TABLE IF NOT EXISTS `bxnaz_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_content_types`
--

CREATE TABLE IF NOT EXISTS `bxnaz_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `bxnaz_content_types`
--

INSERT INTO `bxnaz_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bxnaz_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_extensions`
--

CREATE TABLE IF NOT EXISTS `bxnaz_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10088 ;

--
-- Dumping data for table `bxnaz_extensions`
--

INSERT INTO `bxnaz_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,yaml,twig","font_formats":"woff,ttf,otf,eot,svg","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"f8aa1ff13e3c15aa82e9ad1a318f730c"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.3","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bxnaz_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.2","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.2","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'System - RokCommon', 'plugin', 'rokcommon', 'system', 0, 1, 1, 0, '{"name":"System - RokCommon","type":"plugin","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.0","description":"RokCommon System Plugin","group":"","filename":"rokcommon"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'RokSprocket', 'component', 'com_roksprocket', '', 1, 1, 0, 0, '{"name":"RokSprocket","type":"component","creationDate":"September 03, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.1.9","description":"Parent for all PHP based projects","group":"","filename":"roksprocket"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'RokSprocket Module', 'module', 'mod_roksprocket', '', 0, 1, 1, 0, '{"name":"RokSprocket Module","type":"module","creationDate":"September 03, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.1.9","description":"RokSprocket makes it easy to display content in a dynamic, visual layout.","group":"","filename":"mod_roksprocket"}', '{"run_content_plugins":"onmodule"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'System - RokSprocket', 'plugin', 'roksprocket', 'system', 0, 1, 1, 0, '{"name":"System - RokSprocket","type":"plugin","creationDate":"September 03, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.1.9","description":"RokSprocket System Plugin","group":"","filename":"roksprocket"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10015, 'Content - RokInjectModule', 'plugin', 'rokinjectmodule', 'content', 0, 1, 1, 0, '{"name":"Content - RokInjectModule","type":"plugin","creationDate":"August 20, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.7","description":"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]","group":"","filename":"rokinjectmodule"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10029, 'System - RokBooster', 'plugin', 'rokbooster', 'system', 0, 0, 1, 0, '{"name":"System - RokBooster","type":"plugin","creationDate":"August 11, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"1.1.15","description":"\\n        \\n        <div class=\\"booster-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\" class=\\"img-padding\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won''t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    ","group":"","filename":"rokbooster"}', '{"cache_time":"10080","compress_css":"compress","style_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_css":"0","imported_css":"0","compress_js":"combine","script_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_js":"1","max_data_uri_image_size":"21612","convert_css_images":"0","convert_page_images":"0","max_data_uri_font_size":"21612","convert_css_fonts":"0","ignored_pages":"","ignored_files":"\\/media\\/editors\\/tinymce\\/jscripts\\/tiny_mce\\/tiny_mce.js","scan_method":"joomla","use_background_processing":"1","disable_for_ie":"2","cache_file_permissions":"0644","data_storage":"default","debugloglevel":"63"}', '', '', 0, '0000-00-00 00:00:00', 100, 0),
(10031, 'Editor - RokPad', 'plugin', 'rokpad', 'editors', 0, 1, 1, 0, '{"name":"Editor - RokPad","type":"plugin","creationDate":"February 23, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.1.9","description":"\\n        <div class=\\"rokpad-description\\">\\n        <img src=\\"..\\/plugins\\/editors\\/rokpad\\/assets\\/admin\\/images\\/rokpad.jpg\\" class=\\"img-padding\\" \\/><h1>RokPad<\\/h1>\\n        <h2>The Power of Desktop Text Editor in a Joomla!<\\/h2>\\n        <p>Ever wished you could use a powerful desktop text editor such as Textmate, SublimeText, or UltraEdit directly on a Joomla! web site?  Now with RokPad we provide many features and capabilities that traditionally would only be found in a powerful desktop editor.  RokPad provides advanced functions such as an Ajax saving action, syntax highlighting, configurable themes, multiple cursors and selections, shortcut keys, multiple language support, and many other incredible features.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n\\t\\t\\t<li>Code Highlighter built on the great ACE Editor<\\/li>\\n\\t        <li>Support for CSS, HTML, JavaScript, JSON, LESS, Markdown, PHP, SQL, Plain Text, Textile, XML and more...<\\/li>\\n\\t        <li>Ajax save and Automatic Save options. You''ll never loose your content again, nor wait until the page has finished reloading after a save!<\\/li>\\n\\t        <li>Save, Undo, Redo, Goto line, Advanced Search and Search &amp; Replace, Full Screen. Settings like Themes, Font Size, Code Folding, Wrap Mode, Invisible Characters, Print Margin, Highlight of selected word<\\/li>\\n\\t        <li>26 Themes to choose from<\\/li>\\n\\t        <li>Resizable Editor by dragging the Statusbar<\\/li>\\n\\t        <li>Keyboard shortcuts<\\/li>\\n\\t        <li>Brackets match<\\/li>\\n\\t        <li>Multiple cursors and selections<\\/li>\\n\\t        <li>Vertical Selection<\\/li>\\n\\t        <li>Ability to insert at multiple locations xtd-buttons shortcodes, all at once.<\\/li>\\n\\t        <li>Shortcodes and Universal Tag Insertion<\\/li>\\n\\t        <li>Drag &amp; Drop of text from external applications such as other Browser Tabs\\/windows or Native Applications (Supported on Firefox, Chrome, IE10 and Safari)<\\/li>\\n\\t        <li>Import local files by Drag &amp; Drop directly from your desktop! (Supported on Firefox, Chrome, IE10 and Safari 6+)<\\/li>\\n\\t        <li>And much more!<\\/li>\\n        <\\/ul>\\n        <\\/div>\\n        ","group":"","filename":"rokpad"}', '{"autosave-enabled":"0","autosave-time":"5","theme":"fluidvision","font-size":"12px","fold-style":"markbeginend","use-wrap-mode":"free","selection-style":"1","highlight-active-line":"1","highlight-selected-word":"1","show-invisibles":"0","show-gutter":"1","show-print-margin":"1","fade-fold-widgets":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10033, 'RokAjaxSearch', 'module', 'mod_rokajaxsearch', '', 0, 1, 1, 0, '{"name":"RokAjaxSearch","type":"module","creationDate":"February 23, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.0.4","description":"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the\\n        proper one.\\n    ","group":"","filename":"mod_rokajaxsearch"}', '{"search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"1","theme":"blue","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'System - RokBox', 'plugin', 'rokbox', 'system', 0, 1, 1, 0, '{"name":"System - RokBox","type":"plugin","creationDate":"June 19, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.0.11","description":"\\n        <div class=\\"rokbox-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\" class=\\"img-padding\\" \\/><h1>RokBox2<\\/h1>\\n        <p>RokBox2 is a fully responsive modal pop-up plug-in for Joomla.  It displays <strong>images<\\/strong>, <strong>videos<\\/strong>, <strong>embedded widgets<\\/strong>, <strong>Ajax content<\\/strong> and <strong>Joomla modules<\\/strong>.<\\/p>\\n\\n        <p>RokBox2 contains a <strong>Content plug-in<\\/strong> and <strong>Button Editor plug-in<\\/strong>. The <strong>Content plug-in<\\/strong> can auto-generate thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can easily adapt to any device. The <strong>Button Editor plug-in<\\/strong> allows for easy creation of RokBox2 style snippets with just a few clicks.<\\/p>\\n        <p>RokBox2 also provides backward compatibility for RokBox1 style <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>HTML5 and CSS3<\\/li>\\n            <li>Fully Responsive<\\/li>\\n            <li>Auto thumbnails generator<\\/li>\\n            <li>Captions supporting HTML syntax<\\/li>\\n            <li>Ajax Content listener<\\/li>\\n            <li>Multiple media types supported:\\n                <ul class=\\"features\\">\\n                    <li>Images: base64 encoded, jpg, gif, png, bmp, webp<\\/li>\\n                    <li>HTML5 Video and Audio<\\/li>\\n                    <li>TwitPic<\\/li>\\n                    <li>Instagram<\\/li>\\n                    <li>YouTube<\\/li>\\n                    <li>Vimeo<\\/li>\\n                    <li>Telly (ex TwitVid)<\\/li>\\n                    <li>Metacafe<\\/li>\\n                    <li>Dailymotion<\\/li>\\n                    <li>Spotify<\\/li>\\n                    <li>Google Maps<\\/li>\\n                <\\/ul>\\n            <\\/li>\\n            <li>Fit\\/Unfit Screen: If an image is too big it gets shrunk to fit the view-port but you can always click the Fit Screen icon to expand it and scroll.<\\/li>\\n            <li>Albums to group related images<\\/li>\\n            <li>Key Bindings for easy navigation: <code>&larr;<\\/code> (Previous), <code>&rarr;<\\/code> (Next), <code>f<\\/code> Fitscreen\\/Unfitscreen, <code>esc<\\/code> Close<\\/li>\\n        <\\/ul>\\n\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> RokBox2 consists of 3 plug-ins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plug-in manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        ","group":"","filename":"rokbox"}', '{"backwards_compat":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10036, 'Content - RokBox', 'plugin', 'rokbox', 'content', 0, 1, 1, 0, '{"name":"Content - RokBox","type":"plugin","creationDate":"June 19, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.0.11","description":"\\n        <div class=\\"rokbox-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\" class=\\"img-padding\\" \\/><h1>RokBox2<\\/h1>\\n        <p>Auto generates thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can be easily adapted to any device. RokBox2 Content plugins also provides backward compatibility for the old discontinued RokBox1 that allowed writing snippets through the <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> RokBox2 comes with 3 plugins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plugin manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        ","group":"","filename":"rokbox"}', '{"backwards_compat":"0","thumb_width":"150","thumb_height":"100","thumb_quality":"90"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10037, 'Button - RokBox', 'plugin', 'rokbox', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - RokBox","type":"plugin","creationDate":"June 19, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"2.0.11","description":"This is an Editor Button to allow injection of RokBox snippets into your Content","group":"","filename":"rokbox"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10042, 'plg_system_gantry5', 'plugin', 'gantry5', 'system', 0, 1, 1, 1, '{"name":"plg_system_gantry5","type":"plugin","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"PLG_SYSTEM_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{"production":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'plg_quickicon_gantry5', 'plugin', 'gantry5', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_gantry5","type":"plugin","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"PLG_QUICKICON_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'plg_gantry5_preset', 'plugin', 'preset', 'gantry5', 0, 1, 1, 1, '{"name":"plg_gantry5_preset","type":"plugin","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"PLG_GANTRY5_PRESET_DESCRIPTION","group":"","filename":"preset"}', '{"preset":"presets","reset":"reset-settings"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'mod_gantry5_particle', 'module', 'mod_gantry5_particle', '', 0, 1, 0, 1, '{"name":"mod_gantry5_particle","type":"module","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"MOD_GANTRY5_PARTICLE_DESCRIPTION","group":"","filename":"mod_gantry5_particle"}', '{"cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'gantry5_nucleus', 'file', 'gantry5_nucleus', '', 0, 1, 0, 1, '{"name":"gantry5_nucleus","type":"file","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"GANTRY5_NUCLEUS_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'com_gantry5', 'component', 'com_gantry5', '', 1, 1, 0, 1, '{"name":"com_gantry5","type":"component","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"COM_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'pkg_gantry5', 'package', 'pkg_gantry5', '', 0, 1, 1, 0, '{"name":"pkg_gantry5","type":"package","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"PKG_GANTRY5_DESCRIPTION","group":"","filename":"pkg_gantry5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 'rt_salient', 'template', 'rt_salient', '', 0, 1, 1, 0, '{"name":"rt_salient","type":"template","creationDate":"September 11, 2015","author":"RocketTheme, LLC","copyright":"(C) 2007 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0.2","description":"TPL_RT_SALIENT_DESC","group":"","filename":"templateDetails"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 'Gantry 5 Framework', 'library', 'gantry5', '', 0, 1, 1, 1, '{"name":"Gantry 5 Framework","type":"library","creationDate":"August 31, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http://www.rockettheme.com","version":"5.1.2","description":"LIB_GANTRY5_DESCRIPTION","group":"","filename":"gantry5"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10082, 'RokCommon', 'library', 'lib_rokcommon', '', 0, 1, 1, 0, '{"name":"RokCommon","type":"library","creationDate":"March 4, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.0","description":"RokCommon Shared Library","group":"","filename":"lib_rokcommon"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10083, 'com_api', 'component', 'com_api', '', 0, 1, 1, 1, '{"name":"com_api","type":"component","creationDate":"Sep 2015","author":"T.Trung","copyright":"T.Trung.\\t","authorEmail":"nttrung211@gmail.com","authorUrl":"www.joomla.org","version":"1.0.0","description":"Api","group":"","filename":"api"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10084, 'COM_BUSINESS', 'component', 'com_business', '', 1, 1, 0, 0, '{"name":"COM_BUSINESS","type":"component","creationDate":"10 2014","author":"Tuan Vo","copyright":"","authorEmail":"tuan@mywebcreations.dk","authorUrl":"","version":"0.0.1","description":"","group":"","filename":"business"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10085, 'COM_HELLOWORLD', 'component', 'com_helloworld', '', 1, 1, 0, 0, '{"name":"COM_HELLOWORLD","type":"component","creationDate":"January 2014","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.0.10","description":"COM_HELLOWORLD_DESCRIPTION","group":"","filename":"helloworld"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10086, 'da-DK', 'language', 'da-DK', '', 0, 1, 1, 0, '{"name":"Danish (da-DK)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"www.danskjoomla.dk","version":"3.4.4.1","description":"da-DK site language","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10087, 'da-DK', 'language', 'da-DK', '', 1, 1, 1, 0, '{"name":"Danish (da-DK)","type":"language","creationDate":"2012-09-21","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"dansk@danskjoomla.dk","authorUrl":"www.danskjoomla.dk","version":"3.4.4.1","description":"da-DK administrator language","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bxnaz_finder_taxonomy`
--

INSERT INTO `bxnaz_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bxnaz_finder_terms_common`
--

INSERT INTO `bxnaz_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_finder_types`
--

CREATE TABLE IF NOT EXISTS `bxnaz_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_helloworld`
--

CREATE TABLE IF NOT EXISTS `bxnaz_helloworld` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `greeting` varchar(25) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bxnaz_helloworld`
--

INSERT INTO `bxnaz_helloworld` (`id`, `greeting`, `published`) VALUES
(1, 'Hello World!', 0),
(2, 'test', 0),
(3, 'abc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_languages`
--

CREATE TABLE IF NOT EXISTS `bxnaz_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bxnaz_languages`
--

INSERT INTO `bxnaz_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_log_payment`
--

CREATE TABLE IF NOT EXISTS `bxnaz_log_payment` (
  `id` int(11) NOT NULL,
  `businessId` int(11) DEFAULT NULL,
  `paymentMoney` float DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_log_point`
--

CREATE TABLE IF NOT EXISTS `bxnaz_log_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `promotionId` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1 : increase point ; 2 : decrease point',
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bxnaz_log_point`
--

INSERT INTO `bxnaz_log_point` (`id`, `content`, `point`, `customerId`, `businessId`, `promotionId`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'test content', 50, 430, 1, NULL, 1, '1445967305', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_log_stamp`
--

CREATE TABLE IF NOT EXISTS `bxnaz_log_stamp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `promotionId` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1 : increase stamp ; 2 : decreases stamp',
  `numStamp` int(11) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bxnaz_log_stamp`
--

INSERT INTO `bxnaz_log_stamp` (`id`, `businessId`, `customerId`, `promotionId`, `type`, `numStamp`, `createdAt`, `updatedAt`) VALUES
(1, 2, 430, 3, 1, 1, '1445967473', NULL),
(2, 2, 430, 3, 1, 1, '1445967479', NULL),
(3, 2, 430, 4, 1, 1, '1445967480', NULL),
(4, 2, 430, 4, 1, 1, '1445967481', NULL),
(5, 2, 430, 4, 1, 1, '1445967482', NULL),
(6, 2, 430, 4, 1, 1, '1445967483', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_menu`
--

CREATE TABLE IF NOT EXISTS `bxnaz_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `bxnaz_menu`
--

INSERT INTO `bxnaz_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 89, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10048, 427, '2015-10-09 02:30:25', 0, 1, '', 24, '{"particle":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(104, 'mainmenu', 'Features', 'features', '', 'features', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1,"menu-anchor_title":"","menu-anchor_css":""}', 43, 54, 0, '*', 0),
(105, 'mainmenu', 'Overview', 'overview', '', 'features/overview', 'index.php?option=com_gantry5&view=custom', 'component', 1, 104, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 28, '{"particle":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(106, 'mainmenu', 'Typography', 'typography', '', 'features/typography', 'index.php?option=com_gantry5&view=custom', 'component', 1, 104, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 26, '{"particle":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(107, 'mainmenu', 'Block Variations', 'block-variations', '', 'features/block-variations', 'index.php?option=com_content&view=article&id=3', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(108, 'mainmenu', 'Documentation', '2015-05-29-15-29-38', '', 'features/2015-05-29-15-29-38', 'http://www.rockettheme.com/docs/joomla/templates/salient', 'url', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 50, 51, 0, '*', 0),
(109, 'mainmenu', 'Forum Support', '2015-05-29-15-30-21', '', 'features/2015-05-29-15-30-21', 'http://www.rockettheme.com/forum/joomla-template-salient', 'url', 1, 104, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 52, 53, 0, '*', 0),
(110, 'mainmenu', 'Pages', 'pages', '', 'pages', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1,"menu-anchor_title":"","menu-anchor_css":""}', 55, 72, 0, '*', 0),
(111, 'mainmenu', 'About Us', 'about-us', '', 'pages/about-us', 'index.php?option=com_content&view=article&id=4', 'component', 1, 110, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 28, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 56, 57, 0, '*', 0),
(114, 'mainmenu', 'Pricing', 'pricing', '', 'pages/pricing', 'index.php?option=com_content&view=article&id=7', 'component', 1, 110, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 28, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 59, 0, '*', 0),
(115, 'mainmenu', 'Portfolio', 'portfolio', '', 'pages/portfolio', 'index.php?option=com_gantry5&view=custom', 'component', 1, 110, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 28, '{"particle":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 60, 61, 0, '*', 0),
(118, 'mainmenu', 'Blog', 'blog', '', 'pages/blog', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 110, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(119, 'mainmenu', 'Contact', 'contact', '', 'pages/contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 110, 2, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 28, '{"presentation_style":"plain","show_contact_category":"hide","show_contact_list":"0","show_tags":"","show_name":"0","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(120, 'mainmenu', 'Error', 'error', '', 'pages/error', 'index.php?option=com_gantry5&view=error', 'component', 1, 110, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"particle":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(121, 'mainmenu', 'Coming Soon', 'coming-soon', '', 'pages/coming-soon', 'index.php?option=com_gantry5&view=custom', 'component', 1, 110, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 27, '{"particle":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(122, 'mainmenu', 'Offline', 'offline', '', 'pages/offline', 'index.php?option=com_content&view=article&id=11', 'component', 1, 110, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 70, 71, 0, '*', 0),
(123, 'mainmenu', 'Styles', 'styles', '', 'styles', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1,"menu-anchor_title":"","menu-anchor_css":""}', 73, 74, 0, '*', 0),
(124, 'mainmenu', 'Download', 'registration', '', 'registration', 'index.php?option=com_users&view=registration', 'component', 0, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(146, 'salient-theme', 'Home', 'salient', '', 'salient', 'index.php?option=com_gantry5&view=custom', 'component', 1, 1, 1, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{}', 77, 78, 0, '*', 0),
(147, 'main', 'COM_GANTRY5', 'com-gantry5', '', 'com-gantry5', 'index.php?option=com_gantry5', 'component', 0, 1, 1, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 81, 82, 0, '', 1),
(148, 'mainmenu', 'Registration', 'register', '', 'register', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(149, 'main', 'COM_business_MENU', 'com-business-menu', '', 'com-business-menu', 'index.php?option=com_business', 'component', 0, 1, 1, 10084, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_business/images/tux-16x16.png', 0, '', 85, 86, 0, '', 1),
(150, 'main', 'COM_HELLOWORLD_MENU', 'com-helloworld-menu', '', 'com-helloworld-menu', 'index.php?option=com_helloworld', 'component', 0, 1, 1, 10085, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_helloworld/images/tux-16x16.png', 0, '', 87, 88, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_menu_types`
--

CREATE TABLE IF NOT EXISTS `bxnaz_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bxnaz_menu_types`
--

INSERT INTO `bxnaz_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(4, 'salient-theme', 'Salient Theme', 'Sample menu for Salient theme.');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_messages`
--

CREATE TABLE IF NOT EXISTS `bxnaz_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bxnaz_messages`
--

INSERT INTO `bxnaz_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(1, 0, 0, 0, '2015-10-28 10:38:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: 1@fbasf.com'),
(2, 0, 0, 0, '2015-10-28 10:38:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: 1@fbasf.com'),
(3, 0, 0, 0, '2015-10-28 10:38:03', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: 1@fbasf.com');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bxnaz_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_modules`
--

CREATE TABLE IF NOT EXISTS `bxnaz_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=283 ;

--
-- Dumping data for table `bxnaz_modules`
--

INSERT INTO `bxnaz_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(89, 80, 'Gantry 5 - Next Generation Theme Framework', '', '<div class="g-layercontent">\r\n    <h1 class="g-layercontent-title g-uppercase">Gantry 5</h1>\r\n    <h3 class="g-layercontent-title g-uppercase">Next Generation Theme Framework</h3>\r\n    <h5 class="g-layercontent-subtitle nomarginall">Customize themes quickly and efficiently, whilst providing flexibility and ease-of-use for end-users</h5>\r\n\r\n    <a href="#" class="button button-xlarge"><i class="fa fa-fw fa-university"></i> Discover</a>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 85, 'Typography Header', '', '<div class="g-layercontent">\r\n    <h1 class="g-layercontent-title">Typography</h1>\r\n    <h5 class="g-layercontent-subtitle nomarginall">A selection of custom <strong>Particles</strong> available with Salient</h5>\r\n\r\n    <a href="http://docs.gantry.org/gantry5/particles" class="button button-4 button-xlarge"><i class="fa fa-fw fa-text-height"></i> Learn More</a>\r\n</div>', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 86, 'Buttons Typography', '', '<h3>Buttons: 1-4</h3>\r\n<p>\r\n<a href="#" class="button">Default Button</a>\r\n<a href="#" class="button button-2">Button 2</a>\r\n<a href="#" class="button button-3">Button 3</a>\r\n<a href="#" class="button button-4">Button 4</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button&quot;&gt;Default Button&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-2&quot;&gt;Button 2&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-3&quot;&gt;Button 3&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-4&quot;&gt;Button 4&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Color</h3>\r\n<p>\r\n<a href="#" class="button button-grey">Button Grey</a>\r\n<a href="#" class="button button-pink">Button Pink</a>\r\n<a href="#" class="button button-red">Button Red</a>\r\n<a href="#" class="button button-purple">Button Purple</a>\r\n<a href="#" class="button button-orange">Button Orange</a>\r\n<a href="#" class="button button-blue">Button Blue</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button button-grey&quot;&gt;Button Grey&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-pink&quot;&gt;Button Pink&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-red&quot;&gt;Button Red&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-purple&quot;&gt;Button Purple&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-orange&quot;&gt;Button Orange&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-blue&quot;&gt;Button Blue&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Color Compounded with Buttons 2-4</h3>\r\n<p>\r\n<a href="#" class="button button-2 button-grey">Button Grey</a>\r\n<a href="#" class="button button-3 button-pink">Button Pink</a>\r\n<a href="#" class="button button-4 button-red">Button Red</a>\r\n<a href="#" class="button button-2 button-purple">Button Purple</a>\r\n<a href="#" class="button button-3 button-orange">Button Orange</a>\r\n<a href="#" class="button button-4 button-blue">Button Blue</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button button-2 button-grey&quot;&gt;Button Grey&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-3 button-pink&quot;&gt;Button Pink&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-4 button-red&quot;&gt;Button Red&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-2 button-purple&quot;&gt;Button Purple&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-3 button-orange&quot;&gt;Button Orange&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-4 button-blue&quot;&gt;Button Blue&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Square</h3>\r\n<p>\r\n<a href="#" class="button button-square">Default Button</a>\r\n<a href="#" class="button button-square button-3">Button 3</a>\r\n<a href="#" class="button button-square button-2 button-grey">Button Grey</a>\r\n<a href="#" class="button button-square button-3 button-pink">Button Pink</a>\r\n<a href="#" class="button button-square button-2 button-red">Button Red</a>\r\n<a href="#" class="button button-square button-3 button-purple">Button Purple</a>\r\n<a href="#" class="button button-square button-2 button-orange">Button Orange</a>\r\n<a href="#" class="button button-square button-3 button-blue">Button Blue</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button button-square&quot;&gt;Default Button&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-square button-3&quot;&gt;Button 3&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-square button-2 button-grey&quot;&gt;Button Grey&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-square button-3 button-pink&quot;&gt;Button Pink&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Icons</h3>\r\n<p>\r\n<a href="#" class="button"><i class="fa fa-fw fa-download"></i> Default Button</a>\r\n<a href="#" class="button button-2"><i class="fa fa-fw fa-cloud"></i> Button 2</a>\r\n<a href="#" class="button button-3"><i class="fa fa-fw fa-star"></i> Button 3</a>\r\n<a href="#" class="button button-4"><i class="fa fa-fw fa-car"></i> Button 4</a>\r\n<a href="#" class="button button-grey"><i class="fa fa-fw fa-tag"></i> Button Grey</a>\r\n<a href="#" class="button button-pink"><i class="fa fa-fw fa-university"></i> Button Pink</a>\r\n<a href="#" class="button button-red"><i class="fa fa-fw fa-edit"></i> Button Red</a>\r\n<a href="#" class="button button-purple"><i class="fa fa-fw fa-lock"></i> Button Purple</a>\r\n<a href="#" class="button button-orange"><i class="fa fa-fw fa-clock-o"></i> Button Orange</a>\r\n<a href="#" class="button button-blue"><i class="fa fa-fw fa-arrows"></i> Button Blue</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button&quot;&gt;&lt;i class=&quot;fa fa-fw fa-download&quot;&gt;&lt;/i&gt; Default Button&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-2&quot;&gt;&lt;i class=&quot;fa fa-fw fa-cloud&quot;&gt;&lt;/i&gt; Button 2&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-3&quot;&gt;&lt;i class=&quot;fa fa-fw fa-star&quot;&gt;&lt;/i&gt; Button 3&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-4&quot;&gt;&lt;i class=&quot;fa fa-fw fa-car&quot;&gt;&lt;/i&gt; Button 4&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-grey&quot;&gt;&lt;i class=&quot;fa fa-fw fa-tag&quot;&gt;&lt;/i&gt; Button Grey&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-pink&quot;&gt;&lt;i class=&quot;fa fa-fw fa-university&quot;&gt;&lt;/i&gt; Button Pink&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-red&quot;&gt;&lt;i class=&quot;fa fa-fw fa-edit&quot;&gt;&lt;/i&gt; Button Red&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-purple&quot;&gt;&lt;i class=&quot;fa fa-fw fa-lock&quot;&gt;&lt;/i&gt; Button Purple&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-orange&quot;&gt;&lt;i class=&quot;fa fa-fw fa-clock-o&quot;&gt;&lt;/i&gt; Button Orange&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-blue&quot;&gt;&lt;i class=&quot;fa fa-fw fa-arrows&quot;&gt;&lt;/i&gt; Button Blue&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Icons Only</h3>\r\n<p>\r\n<a href="#" class="button"><i class="fa fa-fw fa-download"></i></a>\r\n<a href="#" class="button button-2"><i class="fa fa-fw fa-cloud"></i></a>\r\n<a href="#" class="button button-3"><i class="fa fa-fw fa-star"></i></a>\r\n<a href="#" class="button button-4"><i class="fa fa-fw fa-car"></i></a>\r\n<a href="#" class="button button-grey"><i class="fa fa-fw fa-tag"></i></a>\r\n<a href="#" class="button button-pink"><i class="fa fa-fw fa-university"></i></a>\r\n<a href="#" class="button button-red"><i class="fa fa-fw fa-edit"></i></a>\r\n<a href="#" class="button button-purple"><i class="fa fa-fw fa-lock"></i></a>\r\n<a href="#" class="button button-orange"><i class="fa fa-fw fa-clock-o"></i></a>\r\n<a href="#" class="button button-blue"><i class="fa fa-fw fa-arrows"></i></a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button&quot;&gt;&lt;i class=&quot;fa fa-fw fa-download&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-2&quot;&gt;&lt;i class=&quot;fa fa-fw fa-cloud&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-3&quot;&gt;&lt;i class=&quot;fa fa-fw fa-star&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-4&quot;&gt;&lt;i class=&quot;fa fa-fw fa-car&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-grey&quot;&gt;&lt;i class=&quot;fa fa-fw fa-tag&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-pink&quot;&gt;&lt;i class=&quot;fa fa-fw fa-university&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-red&quot;&gt;&lt;i class=&quot;fa fa-fw fa-edit&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-purple&quot;&gt;&lt;i class=&quot;fa fa-fw fa-lock&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-orange&quot;&gt;&lt;i class=&quot;fa fa-fw fa-clock-o&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-blue&quot;&gt;&lt;i class=&quot;fa fa-fw fa-arrows&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Sizes</h3>\r\n<p>\r\n<a href="#" class="button button-xlarge button-grey">Button XLarge</a>\r\n<a href="#" class="button button-large button-pink">Button Large</a>\r\n<a href="#" class="button button-medium button-red">Button Medium</a>\r\n<a href="#" class="button button-small button-purple">Button Small</a>\r\n<a href="#" class="button button-xsmall button-orange">Button XSmall</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button button-xlarge button-grey&quot;&gt;Button XLarge&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-large button-pink&quot;&gt;Button Large&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-medium button-red&quot;&gt;Button Medium&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-small button-purple&quot;&gt;Button Small&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-xsmall button-orange&quot;&gt;Button XSmall&lt;/a&gt;\r\n</pre>\r\n<h3>Buttons: Block</h3>\r\n<p>\r\n<a href="#" class="button button-block">Default Button</a>\r\n<a href="#" class="button button-block button-2">Button 2</a>\r\n<a href="#" class="button button-block button-3">Button 3</a>\r\n<a href="#" class="button button-block button-4">Button 4</a>\r\n<a href="#" class="button button-block button-grey">Button Grey</a>\r\n</p>\r\n<pre class="prettyprint">\r\n&lt;a href=&quot;#&quot; class=&quot;button button-block&quot;&gt;Default Button&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-block button-2&quot;&gt;Button 2&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-block button-3&quot;&gt;Button 3&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-block button-4&quot;&gt;Button 4&lt;/a&gt;\r\n&lt;a href=&quot;#&quot; class=&quot;button button-block button-grey&quot;&gt;Button Grey&lt;/a&gt;\r\n</pre>', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 87, 'Standard Typography', '', '<div class="g-grid">\r\n    <div class="g-block">\r\n        <div class="g-content">\r\n            <h2>Headings</h2>\r\n            <p>All HTML headings, <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code> are available.</p>\r\n            <div>\r\n                <h1>h1. Heading 1</h1>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Vivamus non arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n                <h2>h2. Heading 2</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Vivamus non arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n                <h3>h3. Heading 3</h3>\r\n        <p class="visible-large">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Vivamus non arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n                <h4>h4. Heading 4</h4>\r\n                <h5>h5. Heading 5</h5>\r\n                <h6>h6. Heading 6</h6>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div class="g-block">\r\n        <div class="g-content">\r\n            <h2>Emphasis</h2>\r\n            <h4><code>&lt;em&gt;</code></h4>\r\n            <p>For emphasizing a snippet of text with <em>stress</em></p>\r\n            <p>The following snippet of text is <em>rendered as italicized text</em>.</p>\r\n<pre class="prettyprint">&lt;em&gt;rendered as italicized text&lt;/em&gt;</pre>\r\n            <h4><code>&lt;strong&gt;</code></h4>\r\n            <p>For emphasizing a snippet of text with <strong>important</strong></p>\r\n            <p>The following snippet of text is <strong>rendered as bold text</strong>.</p>\r\n<pre class="prettyprint">&lt;strong&gt;rendered as bold text&lt;/strong&gt;</pre>\r\n            <h4><code>&lt;small&gt;</code></h4>\r\n            <p>For de-emphasizing inline or blocks of text, <small>use the small tag.</small></p>\r\n            <p><small>This line of text is meant to be treated as fine print.</small></p>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n    <div class="g-block">\r\n        <div class="g-content nomargintop nopaddingtop">\r\n            <h2 class="nomargintop">Notice Styles</h3>\r\n            <p class="alert alert-success">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n<pre class="prettyprint">&lt;p class="alert alert-success"&gt;&hellip;&lt;/p&gt;</pre>\r\n            <p class="alert alert-info">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n<pre class="prettyprint">&lt;p class="alert alert-info"&gt;&hellip;&lt;/p&gt;</pre>\r\n            <p class="alert alert-warning">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n            <pre class="prettyprint">&lt;p class="alert alert-warning"&gt;&hellip;&lt;/p&gt;</pre>\r\n            <p class="alert alert-error">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n<pre class="prettyprint">&lt;p class="alert alert-error"&gt;&hellip;&lt;/p&gt;</pre>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n    <div class="g-block">\r\n        <div class="g-content nomargintop nopaddingtop">\r\n            <h2 class="nomargintop">Blockquotes</h2>\r\n            <p>For quoting blocks of content from another source within your document.</p>\r\n            <h3>Default blockquote</h3>\r\n            <p>Wrap <code>&lt;blockquote&gt;</code> around any <abbr title="HyperText Markup Language">HTML</abbr> as the quote. For straight quotes we recommend a <code>&lt;p&gt;</code>.</p>\r\n            <blockquote>\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n            </blockquote>\r\n<pre class="prettyprint">&lt;blockquote&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;/blockquote&gt;</pre>\r\n\r\n            <h3>Blockquote options</h3>\r\n            <span>Style and content changes for simple variations on a standard blockquote.</span><br/>\r\n\r\n            <h4>Naming a source</h4>\r\n            <p>Add <code>&lt;small&gt;</code> tag for identifying the source. Wrap the name of the source work in <code>&lt;cite&gt;</code>.</p>\r\n                <blockquote>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n                    <small>Someone famous in <cite title="Source Title">Source Title</cite></small>\r\n                </blockquote>\r\n<pre class="prettyprint">&lt;blockquote&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&lt;/p&gt;\r\n&lt;small&gt;Someone famous &lt;cite title="Source Title"&gt;Source Title&lt;/cite&gt;&lt;/small&gt;\r\n&lt;/blockquote&gt;</pre>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n    <div class="g-block">\r\n        <div class="g-content nomargintop nopaddingtop">\r\n            <h2 class="nomargintop">Code</h2>\r\n            <h4>Inline</h2>\r\n            <p>Wrap inline snippets of code with <code>&lt;code&gt;</code>.</p>\r\n            For example, <code>&lt;section&gt;</code> should be wrapped as inline.\r\n<pre class="prettyprint">For example, &lt;code&gt;&lt;section&gt;&lt;/code&gt; should be wrapped as inline.</pre>\r\n            <p><strong>Note:</strong> Be sure to keep code within <code>&lt;pre&gt;</code> tags as close to the left as possible; it will render all tabs.</p>\r\n        </div>\r\n    </div>\r\n    <div class="g-block">\r\n        <div class="g-content nomargintop nopaddingtop">\r\n            <h2 class="nomargintop">&nbsp;</h2>\r\n            <h4>Basic block</h2>\r\n                <p>Use <code>&lt;pre&gt;</code> for multiple lines of code. Be sure to escape any angle brackets in the code for proper rendering.</p>\r\n<pre class="prettyprint">&lt;p&gt;Sample text here&hellip;&lt;/p&gt;</pre>\r\n<pre class="prettyprint">&lt;pre&gt;\r\n&amp;lt;p&amp;gt;Sample text here&hellip;&amp;lt;/p&amp;gt;\r\n&lt;/pre&gt;</pre>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class="g-grid">\r\n    <div class="g-block">\r\n        <div class="g-content nomargintop nopaddingtop">\r\n            <h2 class="nomargintop">Tables</h2>\r\n            <table>\r\n                <thead><tr>\r\n                    <th>#</th>\r\n                    <th>First Name</th>\r\n                    <th>Last Name</th>\r\n                    <th>Username</th>\r\n                </tr></thead>\r\n                <tbody>\r\n                <tr>\r\n                    <td>1</td>\r\n                    <td>Mark</td>\r\n                    <td>Otto</td>\r\n                    <td>@mdo</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>2</td>\r\n                    <td>Jacob</td>\r\n                    <td>Thornton</td>\r\n                    <td>@fat</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>3</td>\r\n                    <td>Larry</td>\r\n                    <td>the Bird</td>\r\n                    <td>@twitter</td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n<pre class="prettyprint">&lt;table class="table"&gt;\r\n&hellip;\r\n&lt;/table&gt;</pre>\r\n        </div>\r\n    </div>\r\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 88, 'Block Variations', '', '<div class="g-layercontent">\r\n    <h1 class="g-layercontent-title">Block Variations</h1>\r\n    <h5 class="g-layercontent-subtitle nomarginall">Individualize your block content with many available variations</h5>\r\n\r\n    <a href="http://docs.gantry.org/gantry5/configure/layout-manager#blocks" class="button button-4 button-xlarge"><i class="fa fa-fw fa-columns"></i> Learn More</a>\r\n</div>', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 89, 'Additional Effects - Classes', '', '<div class="g-layercontent">\r\n	<h2 class="g-layercontent-title">Additional Effects &amp; Classes</h2>\r\n	<div class="g-layercontent-subtitle">A collection of additional variations for structural and subtle stylistic adjustments.<br />Effects and classes should be applied to the block within the Layout Manager, rather than in the module parameters, to ensure the desired effect is achieved.</div>\r\n</div>', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 91, 'About Us - Header', '', '<div class="g-layercontent g-layercontent-small">\r\n	<h2 class="g-layercontent-title">About Us</h2>\r\n	<div class="g-layercontent-subtitle">Who We Are</div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 92, 'Missions - Values - Solutions', '', '<div class="g-grid">\r\n  <div class="g-block box-blue center size-33-3">\r\n    <div class="g-content">\r\n      <h2 class="g-title">Our Mission</h2>\r\n\r\n      <p>Objectively innovate empowered manufactured products whereas parallel platforms. Holistically predominate extensible testing procedures for reliable supply chains.</p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box1 center size-33-3">\r\n    <div class="g-content">\r\n      <h2 class="g-title">Our Values</h2>\r\n\r\n      <p>Objectively innovate empowered manufactured products whereas parallel platforms. Holistically predominate extensible testing procedures for reliable supply chains.</p>\r\n    </div>\r\n  </div>\r\n\r\n  <div class="g-block box-orange center size-33-3">\r\n    <div class="g-content">\r\n      <h2 class="g-title">Our Solution</h2>\r\n\r\n      <p>Objectively innovate empowered manufactured products whereas parallel platforms. Holistically predominate extensible testing procedures for reliable supply chains.</p>\r\n    </div>\r\n  </div>\r\n</div>', 1, 'above-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 93, 'Sophisticated - Responsive - Powerful', '', '<div class="g-grid">\r\n  <div class="g-block box-grey size-33-3">\r\n    <div class="g-content ">\r\n      <h2 class="g-title"><span class="fa fa-dashboard fa-fw fa-2x"></span> Sophisticated</h2>\r\n      <p>Dynamically procrastinate B2C users after installed base benefits.</p>\r\n    </div>\r\n  </div>\r\n  <div class="g-block box-grey size-33-3">\r\n    <div class="g-content ">\r\n      <h2 class="g-title"><span class="fa fa-arrows-alt fa-fw fa-2x"></span> Responsive</h2>\r\n      <p>Dynamically procrastinate B2C users after installed base benefits.</p>\r\n    </div>\r\n  </div>\r\n  <div class="g-block box-grey size-33-3">\r\n    <div class="g-content ">\r\n      <h2 class="g-title"><span class="fa fa-sliders fa-fw fa-2x"></span> Powerful</h2>\r\n      <p>Dynamically procrastinate B2C users after installed base benefits.</p>\r\n    </div>\r\n  </div>\r\n</div>', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 94, 'We Always Try to Create a Difference', '', '<div class="g-layercontent">\n	<h2 class="g-layercontent-title">We Always Try to Create a Difference</h2>\n	<div class="g-layercontent-subtitle">Versatile and Flexible Features Powered by the Gantry Framework.</div>\n	<a href="http://www.rockettheme.com/joomla/templates/salient" class="button">Download Salient</a>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 95, 'About Salient', '', 'Salient is available for purchase or part of a club membership from RocketTheme, inclusive of the RocketLauncher, template, addons and sources.', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 97, 'Sample Sitemap', '', '<div class="g-grid g-sample-sitemap">\r\n	<div class="g-block">\r\n		<ul class="nomarginall noliststyle">\r\n			<li><a href="index.php">Home</a></li>\r\n			<li><a href="index.php?option=com_gantry5&amp;view=custom&amp;Itemid=105">Features</a></li>\r\n			<li><a href="index.php?option=com_gantry5&amp;view=custom&amp;Itemid=106">Typography</a></li>\r\n			<li><a href="index.php?option=com_gantry5&amp;view=custom&amp;Itemid=106">Particles</a></li>\r\n			<li><a href="index.php?option=com_content&amp;view=article&amp;id=3&amp;Itemid=107">Variations</a></li>\r\n		</ul>\r\n	</div>\r\n	<div class="g-block">\r\n		<ul class="nomarginall noliststyle">\r\n			<li><a href="index.php?option=com_gantry5&amp;view=custom&amp;Itemid=106">Buttons</a></li>\r\n			<li><a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=111">Pages</a></li>\r\n			<li><a href="http://www.rockettheme.com/docs/joomla/templates/salient">Guide</a></li>\r\n			<li><a href="http://www.rockettheme.com/forum/joomla-template-salient">Support</a></li>\r\n			<li><a href="http://www.rockettheme.com/joomla/templates/salient">Download</a></li>\r\n		</ul>		\r\n	</div>	\r\n</div>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 106, 'Awesome Plans - Header', '', '<div class="g-layercontent g-layercontent-small">\r\n	<h2 class="g-layercontent-title">Awesome Plans</h2>\r\n	<div class="g-layercontent-subtitle">Choose the Plan that Suits Your Needs</div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 107, 'Pricing Table', '', '<div class="g-grid">\r\n  <div class="g-block size-33-3">\r\n    <div class="g-content">\r\n      <ul class="g-pricingtable">\r\n        <li class="g-pricingtable-title">Basic\r\n        </li>\r\n        <li class="g-pricingtable-price">$28\r\n        </li>\r\n        <li class="g-pricingtable-desc">Globally incubate standards compliant channels\r\n        </li>\r\n        <li class="g-pricingtable-item">5GB Storage\r\n        </li>\r\n        <li class="g-pricingtable-item">10 Users\r\n        </li>\r\n        <li class="g-pricingtable-item">20 Emails\r\n        </li>\r\n        <li class="g-pricingtable-item">Online Store\r\n        </li>\r\n        <li class="g-pricingtable-item">Custom Domain\r\n        </li>\r\n        <li class="g-pricingtable-item">Unlimited Departments\r\n        </li>\r\n        <li class="g-pricingtable-cta">\r\n          <a class="button button-3" href="http://www.rockettheme.com/joomla/templates/salient">Sign Up</a>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <div class="g-block size-33-3">\r\n    <div class="g-content">\r\n      <ul class="g-pricingtable">\r\n        <li class="g-pricingtable-title">Standard\r\n        </li>\r\n        <li class="g-pricingtable-price">$58\r\n        </li>\r\n        <li class="g-pricingtable-desc">Globally incubate standards compliant channels\r\n        </li>\r\n        <li class="g-pricingtable-item">5GB Storage\r\n        </li>\r\n        <li class="g-pricingtable-item">10 Users\r\n        </li>\r\n        <li class="g-pricingtable-item">20 Emails\r\n        </li>\r\n        <li class="g-pricingtable-item">Online Store\r\n        </li>\r\n        <li class="g-pricingtable-item">Custom Domain\r\n        </li>\r\n        <li class="g-pricingtable-item">Unlimited Departments\r\n        </li>\r\n        <li class="g-pricingtable-cta">\r\n          <a class="button button-3" href="http://www.rockettheme.com/joomla/templates/salient">Sign Up</a>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n  <div class="g-block size-33-3">\r\n    <div class="g-content">\r\n      <ul class="g-pricingtable">\r\n        <li class="g-pricingtable-title">Pro\r\n        </li>\r\n        <li class="g-pricingtable-price">$88\r\n        </li>\r\n        <li class="g-pricingtable-desc">Globally incubate standards compliant channels\r\n        </li>\r\n        <li class="g-pricingtable-item">5GB Storage\r\n        </li>\r\n        <li class="g-pricingtable-item">10 Users\r\n        </li>\r\n        <li class="g-pricingtable-item">20 Emails\r\n        </li>\r\n        <li class="g-pricingtable-item">Online Store\r\n        </li>\r\n        <li class="g-pricingtable-item">Custom Domain\r\n        </li>\r\n        <li class="g-pricingtable-item">Unlimited Departments\r\n        </li>\r\n        <li class="g-pricingtable-cta">\r\n          <a class="button button-3" href="http://www.rockettheme.com/joomla/templates/salient">Sign Up</a>\r\n        </li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>', 1, 'above-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 109, 'No Hidden Fees', '', '<div class="g-layercontent">\n	<h2 class="g-layercontent-title">No Hidden Fees</h2>\n	<div class="g-layercontent-subtitle">No Credit Card Required and No Long-Term Contracts</div>\n	<a href="http://www.rockettheme.com/joomla/templates/salient" class="button">Sign Up</a>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 110, 'Portfolio - Header', '', '<div class="g-layercontent g-layercontent-small">\r\n	<h2 class="g-layercontent-title">Portfolio</h2>\r\n	<div class="g-layercontent-subtitle">What We Have Already Done</div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 113, '100% Satisfaction Guaranteed', '', '<div class="g-layercontent g-layercontent-small">\n	<h2 class="g-layercontent-title">100% Satisfaction Guaranteed</h2>\n	<div class="g-layercontent-subtitle">Will You be the Next to Join Our Happy Clients?</div>\n	<a href="http://www.rockettheme.com/joomla/templates/salient" class="button">Join Now</a>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 118, 'Email - Phone - Chat', '', '<div class="g-grid">\r\n  <div class="g-block box-blue center  size-33-3">\r\n    <div class="g-content ">\r\n      <span class="fa fa-envelope fa-3x"></span>\r\n      <h2 class="g-title">Email</h2>\r\n      <p>Collaboratively administrate empowered markets via available great networks.</p>\r\n      <a class="button button-4" href="">Send Email</a>\r\n    </div>\r\n  </div>\r\n  <div class="g-block box-orange center  size-33-3">\r\n    <div class="g-content ">\r\n      <span class="fa fa-phone fa-3x"></span>\r\n      <h2 class="g-title">Phone</h2>\r\n      <p>Collaboratively administrate empowered markets via available great networks.</p>\r\n      <a class="button button-4" href="">Talk Now</a>\r\n    </div>\r\n  </div>\r\n  <div class="g-block box-grey center  size-33-3">\r\n    <div class="g-content ">\r\n      <span class="fa fa-comments fa-3x"></span>\r\n      <h2 class="g-title">Chat</h2>\r\n      <p>Collaboratively administrate empowered markets via available great networks.</p>\r\n      <a class="button button-4" href="">Ask Us</a>\r\n    </div>\r\n  </div>\r\n</div>', 1, 'above-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(130, 121, 'Gantry 5 Guides', '', '<ul>\r\n  <li><a href="http://docs.gantry.org/gantry5/basics/installation">Installation</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/configure/gantry-admin">Gantry Admin Configuration</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/configure/styles">Template Styles</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/configure/settings">Template Settings Panel</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/configure/layout-manager">Layout Manager</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/configure/menu-editor">Menu Editor</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/configure/assignments">Assignments</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/particles/particles">Gantry Particles</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/particles/mobile-menu">Mobile Menu</a></li>\r\n  <li><a href="http://docs.gantry.org/gantry5/advanced">Advanced Customizaton</a></li>\r\n</ul>', 2, 'aside', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(131, 122, 'Login', '', '', 2, 'aside', 427, '2015-10-12 07:56:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"box3","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(132, 123, 'Who''s Online', '', '', 5, 'aside', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(133, 124, 'Our Blog - Header', '', '<div class="g-layercontent g-layercontent-small">\r\n	<h2 class="g-layercontent-title">Our Blog</h2>\r\n	<div class="g-layercontent-subtitle">Read the Latest News</div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(134, 125, 'Share Some Ideas', '', '<div class="g-layercontent">\n	<h2 class="g-layercontent-title">Share Some Ideas</h2>\n	<div class="g-layercontent-subtitle">Do You Have a Tip or an Idea for a Story? Tell Us About It.</div>\n	<a href="http://www.rockettheme.com/joomla/templates/salient" class="button">Submit Article</a>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(135, 126, 'Contact - Header', '', '<div class="g-layercontent g-layercontent-small">\r\n	<h2 class="g-layercontent-title">Contact Us</h2>\r\n	<div class="g-layercontent-subtitle">Keep in Touch with Us</div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(136, 127, 'Contact Details', '', '<p><img src="images/rocketlauncher/pages/contact/img-01.jpg" alt="image"></p>\n<p><strong>Salient</strong> is only available as part of the Club Subscription. Please use the RocketLauncher to install an equivalent of the demo onto your site.</p>', 3, 'aside', 427, '2015-10-12 07:56:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(137, 128, 'Got Billing and Payments Questions?', '', '<div class="g-layercontent">\n	<h2 class="g-layercontent-title">Got Billing and Payments Questions?</h2>\n	<div class="g-layercontent-subtitle">Email Us for Questions Involving Payments, Billing, and Membership.</div>\n	<a href="http://www.rockettheme.com/joomla/templates/salient" class="button">Send Email</a>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 129, 'Offline - Header', '', '<div class="g-layercontent g-layercontent-small">\r\n	<h2 class="g-layercontent-title">Offline Page</h2>\r\n	<div class="g-layercontent-subtitle">Sample Maintenance Mode Page</div>\r\n</div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"flush center","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(139, 130, 'To Make Your Joomla! Website Offline', '', '<p>To make your Joomla! website unavailable to visitors, replacing it with a simple message, do this:</p>\r\n\r\n<ol>\r\n  <li> Log in to the Administrator back-end.</li>\r\n  <li> Click on the <strong>Global Configuration</strong> button in the main Control Panel or <strong>System &rarr; Global Configuration</strong> in Joomla 3.x.</li>\r\n  <li> There are so many configuration options that they need to be divided into separate groups or tabs.  The <strong>Site</strong> tab, it should be the default first view displayed, if not click on the tab.</li>\r\n  <li> Find where it says <strong>Site Offline</strong> and click the <strong>Yes</strong> button in Joomla 3.x.</li>\r\n  <li><strong>Optional:</strong> Change the <strong>Offline Message</strong> to give your visitors some explanation about why your website is unavailable.</li>\r\n  <li> Click the <strong>Save</strong> toolbar button to implement the new settings:\r\n    <ul>\r\n      <li> The <strong>Save</strong> toolbar button will save your changes and but leave you in Global Configuration.</li>\r\n      <li> The <strong>Save and Close</strong> button will save your changes and return you to the Administrator Control Panel.</li>\r\n    </ul>\r\n  </li>\r\n  <li>You should see a message confirming the settings have been changed.</li>\r\n</ol>', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(181, 175, 'Features Overview - Template Features Grid', '', '', 1, 'above-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"noborder spaced\\",\\"title\\":\\"\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-2cols\\",\\"infolists\\":[{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-04.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"large\\",\\"desc\\":\\"A Dropdown Menu system, with inline icons, multiple columns and much more.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Dropdown Menu\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-05.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"large\\",\\"desc\\":\\"Unlimited positions, with drag and drop add, delete, move and resize capabilities.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Positions\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-06.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"large\\",\\"desc\\":\\"Enhance positions and particles with stylistic and structural block variations.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Variations\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-07.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"large\\",\\"desc\\":\\"Choose from a selection of ten preset styles, easily customizable from the admin.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Presets\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-08.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"large\\",\\"desc\\":\\"Responsive layout that adapts to the viewing device, such as laptop, tablet or mobile.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Responsive\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-09.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"large\\",\\"desc\\":\\"Enhance default and custom content with rich typography and FontAwesome icons.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Typography\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `bxnaz_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(182, 176, 'Features Overview Gantry 5', '', '', 1, 'mainbar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"noborder spaced\\",\\"title\\":\\"\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-1cols\\",\\"infolists\\":[{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-01.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"large\\",\\"imagestyle\\":\\"browser\\",\\"desc\\":\\"<p><small>Gantry 5 features an advanced and user friendly Menu Editor, which augments the core menu with a rich, drag and drop enhanced interface<span class=\\\\\\"hidden-tablet\\\\\\">, to easily change the menu''s frontend appearance, such as columns<\\\\\\/span>.<\\\\\\/small><\\\\\\/p>\\\\n<p class=\\\\\\"visible-large\\\\\\"><small>The Menu Editor panel takes what your CMS'' built-in Menu Manager has and enables you to override it. Changes you make in this panel do not in any way affect the way the CMS handles Menu items.<\\\\\\/small><\\\\\\/p>\\",\\"tag\\":\\"Drag & Drop\\",\\"subtag\\":\\"Menu Editor\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"fa fa-fw fa-list\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Gantry 5\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-02.jpg\\",\\"imageloc\\":\\"right\\",\\"textstyle\\":\\"large\\",\\"imagestyle\\":\\"browser\\",\\"desc\\":\\"<p><small>Gantry 5''s layout manager also benefits from a drag and drop interface, providing an easy mechanism for adding,<span class=\\\\\\"hidden-tablet\\\\\\"> removing, configuring,<\\\\\\/span> moving and resizing positions and particles.<\\\\\\/small><\\\\\\/p>\\\\n<p class=\\\\\\"visible-large\\\\\\"><small>Due to the way layouts are now created and managed in Gantry 5, there are no restrictions to the number of positions you can have, and are now truly unlimited.<\\\\\\/small><\\\\\\/p>\\",\\"tag\\":\\"Drag & Drop\\",\\"subtag\\":\\"Layout Manager\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"fa fa-fw fa-columns\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Gantry 5\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/features\\\\\\/overview\\\\\\/img-03.jpg\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"large\\",\\"imagestyle\\":\\"browser\\",\\"desc\\":\\"<p><small>Style customization is a very simple process with Gantry 5. All available, pre-built presets are displayed in the Styles tab<span class=\\\\\\"hidden-tablet\\\\\\"> for you to preview, individually customize and apply<\\\\\\/span>.<\\\\\\/small><\\\\\\/p>\\\\n<p class=\\\\\\"visible-large\\\\\\"><small>Each preset has an assortment of individual style options, such as text and background colors for the various sections, allowing for swift and easy color scheme changes.<\\\\\\/small><\\\\\\/p>\\",\\"tag\\":\\"Styles Settings\\",\\"subtag\\":\\"& Presets\\",\\"label\\":\\"Learn More\\",\\"link\\":\\"#\\",\\"icon\\":\\"fa fa-fw fa-adjust\\",\\"readmoreclass\\":\\"button-4\\",\\"title\\":\\"Gantry 5\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(183, 177, 'Template Features', '', '', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"Template Features\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-3cols\\",\\"infolists\\":[{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"A responsive layout automatically adapts to the device such as mobile\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Responsive Layout\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Choose from a diverse assortment of six configurable preset style variations\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"6 Preset Styles\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Choose from a selection of block variations, effects and utility classes\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"10 Block Classes\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Integrated typography by platform default elements and custom content\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Custom Typography\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"The drag and drop layout allows for an unlimited number of positions\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Unlimited Positions\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"A set of custom particles and layouts to allow for easy complex content creation\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Custom Particles\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"A powerful dropdown menu with inline icons, multiple columns and other features\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Dropdown Menu\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Integrated styled support for the various RokSprocket layouts and themes\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"RokSprocket Styling\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Template specific support for social menu icons, such as Facebook and Twitter\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Social Icons\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(184, 178, 'System Requirements', '', '', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"System Requirements\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-3cols\\",\\"infolists\\":[{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Google Chrome 41+, Firefox 36+, Safari 8+, Opera 28+, IE10+ (9 at limited capacity)\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Browsers\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"PHP 5.4+ with Curl, OpenSSL Libraries and Multibyte String Support\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Server Requirements\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Joomla 3.4+\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Platforms\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(185, 179, 'Gantry 5 Core Features', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"Gantry 5 Core Features\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-3cols\\",\\"infolists\\":[{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Particles are simple user interface blocks that hook seamlessly into Gantry 5\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Powerful Particles System\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Configure and structure your menu hierarchy with our new Menu editor\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Visual Menu Editor\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Easy-to-use drag-n-drop layout manager makes layouts a breeze to create\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Layout Manager\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Made a mistake in the layout manager? No problem, you can easily undo it\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Unlimited Undo\\\\\\/Redo\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Icon Picker, Image Picker, Font Picker, Collections, and much, much more!\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Sophisticated Built-in Fields\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Dynamic compilation of multiple CSS preprocessors is supported in Gantry 5\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"SCSS LESS Support\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Easily add Gantry 5 particles to a location-configurable off-canvas panel\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Off-Canvas Panel\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Gantry 5 uses the super-powerful Twig templating system to build your themes\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Twig-based Templating\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Easily configure Gantry 5 with simple-to-use YAML syntax\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"YAML-based Configuration\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(200, 194, 'Block Variations Effects & Classes', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-3cols\\",\\"infolists\\":[{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Add low opacity to a block\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Disabled\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Center the block content\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Center\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Apply background to the whole block\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Outer Box\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Remove outer margin\\/padding\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Flush\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Align block content to the left\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Align Left\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Align block content to the right\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Align Right\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Remove outer margin\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"No Margin\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Remove outer padding\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"No Padding\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Add squared corners to a blockAdd squared corners to a block\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Square\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Add rounded corners to a block\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Rounded\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Add a shadow effect to a block\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Shadow 1\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Add a different shadow to a block\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Shadow 2\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(205, 199, 'Common Queries and Questions', '', '', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"Common Queries and Questions\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-2cols\\",\\"infolists\\":[{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"1. What prices are your services?\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"2. What is your refund policy?\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"3. What payment methods do you accept?\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"4. What delivery options do you offer?\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"5. What support options are available?\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing.\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"6. What additional services are available?\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(206, 200, 'Salient Premium Project', '', '', 1, 'above-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"contentlist\\",\\"title\\":\\"Content List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-01.jpg\\",\\"imagetag\\":\\"On Going\\",\\"headline\\":\\"Salient Premium Project\\",\\"subtitle\\":\\"Website Redesign and Publishing\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.\\",\\"readmore\\":\\"Check Project\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"cols\\":\\"g-listgrid-3cols\\",\\"listgriditems\\":[{\\"icon\\":\\"fa fa-user fa-fw\\",\\"text\\":\\"Mr. Great Client\\",\\"link\\":\\"\\",\\"title\\":\\"Mr. Great Client\\"},{\\"icon\\":\\"fa fa-check-square-o fa-fw\\",\\"text\\":\\"Graphic\\",\\"link\\":\\"\\",\\"title\\":\\"Graphic\\"},{\\"icon\\":\\"fa fa-calendar fa-fw\\",\\"text\\":\\"01\\\\\\/01\\\\\\/2086\\",\\"link\\":\\"\\",\\"title\\":\\"01\\\\\\/01\\\\\\/2086\\"},{\\"icon\\":\\"fa fa-check-square-o fa-fw\\",\\"text\\":\\"HTML\\\\\\/CSS\\",\\"link\\":\\"\\",\\"title\\":\\"HTML\\\\\\/CSS\\"},{\\"icon\\":\\"fa fa-tag fa-fw\\",\\"text\\":\\"design, cover, logo\\",\\"link\\":\\"\\",\\"title\\":\\"design, cover, logo\\"},{\\"icon\\":\\"fa fa-check-square-o fa-fw\\",\\"text\\":\\"Gantry\\",\\"link\\":\\"\\",\\"title\\":\\"Gantry\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(208, 202, 'Upcoming Projects', '', '', 0, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"infolist\\",\\"title\\":\\"Info List\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"Upcoming Projects\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-3cols\\",\\"infolists\\":[{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"404 Pages\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Banners\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Forms\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Badges\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Sliders\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Newsletter\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Stickers\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Dropdown\\"},{\\"image\\":\\"\\",\\"imageloc\\":\\"left\\",\\"textstyle\\":\\"compact\\",\\"imagestyle\\":\\"compact\\",\\"desc\\":\\"Collaboratively administrate empowered markets via plug-and-play networks\\",\\"tag\\":\\"\\",\\"subtag\\":\\"\\",\\"label\\":\\"\\",\\"link\\":\\"#\\",\\"icon\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"title\\":\\"Interfaces\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(209, 203, 'Magazine Promo Image', '', '', 1, 'mainbar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promoimage\\",\\"title\\":\\"Promo Image\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"center\\",\\"title\\":\\"Magazine\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-03.jpg\\",\\"promoimagetitle\\":\\"Magazine\\",\\"desc\\":\\"Short project description here\\",\\"iconbutton\\":\\"fa fa-file-text-o\\",\\"promoimageicons\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(210, 204, 'Logo Promo Image', '', '', 1, 'mainbar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promoimage\\",\\"title\\":\\"Promo Image\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"center\\",\\"title\\":\\"Logo\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-04.jpg\\",\\"promoimagetitle\\":\\"Logo\\",\\"desc\\":\\"Short project description here\\",\\"iconbutton\\":\\"fa fa-file-text-o\\",\\"promoimageicons\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(211, 205, 'Brochure Promo Image', '', '', 1, 'mainbar-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promoimage\\",\\"title\\":\\"Promo Image\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"center\\",\\"title\\":\\"Brochure\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-05.jpg\\",\\"promoimagetitle\\":\\"Brochure\\",\\"desc\\":\\"Short project description here\\",\\"iconbutton\\":\\"fa fa-file-text-o\\",\\"promoimageicons\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(212, 206, 'Photos Promo Image', '', '', 1, 'mainbar-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promoimage\\",\\"title\\":\\"Promo Image\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"center\\",\\"title\\":\\"Photos\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-08.jpg\\",\\"promoimagetitle\\":\\"Photos\\",\\"desc\\":\\"Short project description here\\",\\"iconbutton\\":\\"fa fa-file-text-o\\",\\"promoimageicons\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(213, 207, 'Illustrations Promo Image', '', '', 1, 'mainbar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promoimage\\",\\"title\\":\\"Promo Image\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"center\\",\\"title\\":\\"Illustrations\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-07.jpg\\",\\"promoimagetitle\\":\\"Illustrations\\",\\"desc\\":\\"Short project description here\\",\\"iconbutton\\":\\"fa fa-file-text-o\\",\\"promoimageicons\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(214, 208, 'Decorations Promo Image', '', '', 1, 'mainbar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promoimage\\",\\"title\\":\\"Promo Image\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"center\\",\\"title\\":\\"Decorations\\",\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/portfolio\\\\\\/img-06.jpg\\",\\"promoimagetitle\\":\\"Decorations\\",\\"desc\\":\\"Short project description here\\",\\"iconbutton\\":\\"fa fa-file-text-o\\",\\"promoimageicons\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(215, 209, 'Pricing Grid', '', '', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"imagegrid\\",\\"title\\":\\"Image Grid\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"desc\\":\\"\\",\\"cols\\":\\"g-imagegrid-4cols\\",\\"album\\":\\"clients\\",\\"imagegriditems\\":[{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-01.jpg\\",\\"caption\\":\\"Image 1\\",\\"title\\":\\"Image 1\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-02.jpg\\",\\"caption\\":\\"Image 2\\",\\"title\\":\\"Image 2\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-03.jpg\\",\\"caption\\":\\"Image 3\\",\\"title\\":\\"Image 3\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-04.jpg\\",\\"caption\\":\\"Image 4\\",\\"title\\":\\"Image 4\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-05.jpg\\",\\"caption\\":\\"Image 5\\",\\"title\\":\\"Image 5\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-06.jpg\\",\\"caption\\":\\"Image 6\\",\\"title\\":\\"Image 6\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-07.jpg\\",\\"caption\\":\\"Image 7\\",\\"title\\":\\"Image 7\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-08.jpg\\",\\"caption\\":\\"Image 8\\",\\"title\\":\\"Image 8\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-09.jpg\\",\\"caption\\":\\"Image 9\\",\\"title\\":\\"Image 9\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-10.jpg\\",\\"caption\\":\\"Image 10\\",\\"title\\":\\"Image 10\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-11.jpg\\",\\"caption\\":\\"Image 11\\",\\"title\\":\\"Image 11\\"},{\\"image\\":\\"images\\\\\\/rocketlauncher\\\\\\/pages\\\\\\/pricing\\\\\\/img-12.jpg\\",\\"caption\\":\\"Image 12\\",\\"title\\":\\"Image 12\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(217, 211, 'Contact Details', '', '', 4, 'aside', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"contact\\",\\"title\\":\\"Contact\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"Contact Details\\",\\"contactitems\\":[{\\"icon\\":\\"fa fa-phone fa-fw\\",\\"text\\":\\"+1(555)-555-555\\",\\"label\\":\\"Call Us\\"},{\\"icon\\":\\"fa fa-map-marker fa-fw\\",\\"text\\":\\"555 RocketTheme Blvd, CO\\",\\"label\\":\\"Office\\"},{\\"icon\\":\\"fa fa-envelope fa-fw\\",\\"text\\":\\"hello@no-reply.com\\",\\"label\\":\\"Say Hi\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(220, 214, 'Search Our Site', '', '', 1, 'aside', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokajaxsearch', 1, 1, '{"search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"0","theme":"blue","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(221, 215, 'Newsletter', '', '', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"newsletter\\",\\"title\\":\\"Newsletter\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"Newsletter\\",\\"headtext\\":\\"Subscribe to our newsletter and stay updated on the latest developments and special offers!\\",\\"inputboxtext\\":\\"Email Address\\",\\"buttontext\\":\\"Join\\",\\"uri\\":\\"rocketthemeblog\\",\\"buttonclass\\":\\"button-4\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(225, 219, 'FP Showcase Logo Selection', '', '', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"blockcontent\\",\\"title\\":\\"Block Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"image\\":\\"\\",\\"headline\\":\\"\\",\\"description\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"subcontents\\":[{\\"name\\":\\"\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/showcase\\\\\\/img-01.png\\",\\"subtitle\\":\\"\\",\\"description\\":\\"\\",\\"class\\":\\"\\",\\"title\\":\\"Milka\\"},{\\"name\\":\\"\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/showcase\\\\\\/img-02.png\\",\\"subtitle\\":\\"\\",\\"description\\":\\"\\",\\"class\\":\\"\\",\\"title\\":\\"Lego\\"},{\\"name\\":\\"\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/showcase\\\\\\/img-03.png\\",\\"subtitle\\":\\"\\",\\"description\\":\\"\\",\\"class\\":\\"\\",\\"title\\":\\"Adobe\\"},{\\"name\\":\\"\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/showcase\\\\\\/img-04.png\\",\\"subtitle\\":\\"\\",\\"description\\":\\"\\",\\"class\\":\\"\\",\\"title\\":\\"Dell\\"},{\\"name\\":\\"\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/showcase\\\\\\/img-05.png\\",\\"subtitle\\":\\"\\",\\"description\\":\\"\\",\\"class\\":\\"\\",\\"title\\":\\"Puma\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(228, 222, 'Capabilities', '', '', 1, 'mainbar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 1, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"blockcontent\\",\\"title\\":\\"Block Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"image\\":\\"\\",\\"headline\\":\\"\\",\\"description\\":\\"\\",\\"link\\":\\"\\",\\"linktext\\":\\"\\",\\"subcontents\\":[{\\"name\\":\\"Styling\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/mainbar\\/img-01.png\\",\\"subtitle\\":\\"<a href=\\\\\\"#\\\\\\">01.<\\/a>\\",\\"description\\":\\"The Styles settings allows for customizing the stylistic elements of the template, such as links, font or background colors.\\",\\"class\\":\\"\\",\\"title\\":\\"Styling\\"},{\\"name\\":\\"Particles\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/mainbar\\/img-02.png\\",\\"subtitle\\":\\"<a href=\\\\\\"#\\\\\\">02.<\\/a>\\",\\"description\\":\\"Particles operate as customizable blocks that form the flesh of the frontend, from placeholders to self contained content and functions.\\",\\"class\\":\\"\\",\\"title\\":\\"Particles\\"},{\\"name\\":\\"Layout\\",\\"icon\\":\\"\\",\\"img\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/mainbar\\/img-03.png\\",\\"subtitle\\":\\"<a href=\\\\\\"#\\\\\\">03.<\\/a>\\",\\"description\\":\\"The Layout manager provides drag-and-drop functionality with power to move, resize, and configure content in seconds.\\",\\"class\\":\\"\\",\\"title\\":\\"Layout\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(235, 229, 'Footer Logo', '', '', 1, 'copyright-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"logo\\",\\"title\\":\\"Logo\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"url\\":\\"\\",\\"rel\\":\\"home\\",\\"image\\":\\"gantry-media:\\/\\/logo\\/logo-footer.png\\",\\"alt\\":\\"Salient\\",\\"text\\":\\"\\",\\"class\\":\\"g-footer-logo\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(236, 230, 'ToTop', '', '', 1, 'copyright-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"totop\\",\\"title\\":\\"To Top\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"css\\":{\\"class\\":\\"totop\\"},\\"content\\":\\"<span class=\\\\\\"fa fa-2x fa-angle-up\\\\\\"><\\\\\\/span>\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(237, 231, 'Copyright Social Icons', '', '', 1, 'copyright-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"social\\",\\"title\\":\\"Social\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"css\\":{\\"class\\":\\"social\\"},\\"title\\":\\"\\",\\"target\\":\\"_blank\\",\\"items\\":[{\\"icon\\":\\"fa fa-twitter fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/twitter.com\\\\\\/rockettheme\\",\\"name\\":\\"Twitter\\"},{\\"icon\\":\\"fa fa-facebook fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/www.facebook.com\\\\\\/rockettheme\\",\\"name\\":\\"Facebook\\"},{\\"icon\\":\\"fa fa-google fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"https:\\\\\\/\\\\\\/plus.google.com\\\\\\/+rockettheme\\\\\\/about\\",\\"name\\":\\"Google\\"},{\\"icon\\":\\"fa fa-rss fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/www.rockettheme.com\\\\\\/product-updates?rss\\",\\"name\\":\\"RSS\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(250, 244, 'Off Canvas', '', '<div class="g-offcanvas-toggle" data-offcanvas-toggle="">\r\n  <i class="fa fa-fw fa-remove"></i>\r\n</div>\r\n\r\n<h4 class="g-subpromo nomarginbottom"><a href="#">Creativity</a></h4>\r\n<h4 class="g-subpromo nomarginbottom"><a href="#">Innovation</a></h4>\r\n<h4 class="g-subpromo nomarginbottom"><a href="#">Originality</a></h4>\r\n<h4 class="g-subpromo nomarginbottom"><a href="#">Imagination</a></h4>\r\n\r\n<div class="largemarginall largepaddingall">&nbsp;</div>\r\n\r\n<hr />\r\n\r\n<h2 class="g-promo">Salient</h2>\r\n\r\n<p>Salient is an admirable, clean design with a fresh approach for the ever-changing Web. Integrated with Gantry 5, it is infinitely customizable, incredibly powerful, and remarkably simple.</p>\r\n\r\n<a href="http://www.rockettheme.com/joomla/templates/salient" class="button button-3"><i class="fa fa-fw fa-cloud-download"></i> Download</a>', 1, 'offcanvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(255, 249, 'SlideRight', '', '<img src="images/rocketlauncher/home/slideshow/img-04.png" alt="Salient" />', 1, 'slideshow-c-above', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"g-animatedblock hidden-phone","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(258, 252, 'Block Variations (Spacer)', '', '&nbsp;', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(259, 253, 'Typography (Spacer)', '', '&nbsp;', 0, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(262, 256, 'Testimonial', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 1, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"testimonial\\",\\"title\\":\\"Testimonial\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"intro\\":\\"\\",\\"cols\\":\\"g-1cols\\",\\"testimonials\\":[{\\"img\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/bottom\\\\\\/img-01.jpg\\",\\"content\\":\\"The Gantry 5 Framework is an ideal platform for users of all levels, whether beginners or web professionals. The administrative interface is both simple to use, intuitive and highly flexible, allowing for swift and extensive changes.\\",\\"author\\":\\"Eddie Lobanovsky\\",\\"company\\":\\"Super Corporation\\",\\"companyurl\\":\\"#\\",\\"title\\":\\"Eddie Lobanovsky\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(263, 257, 'Extensive Documentation', '', '', 1, 'extension-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"promostyle\\":\\"standard\\",\\"promo\\":\\"Extensive Documentation\\",\\"desc\\":\\"<p>Gantry benefits from an extensive, and ever expanding, catalog of online and free documentation covering basic to more advanced topics.<\\/p>\\",\\"readmore\\":\\"Know More\\",\\"readmoreclass\\":\\"\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"block\\",\\"tags\\":[{\\"icon\\":\\"\\",\\"text\\":\\"Manual\\",\\"link\\":\\"#\\",\\"title\\":\\"Manual\\"},{\\"icon\\":\\"\\",\\"text\\":\\"Tutorial\\",\\"link\\":\\"#\\",\\"title\\":\\"Tutorial\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(264, 258, 'YAML-Driven / Twig Templating', '', '', 1, 'extension-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"promostyle\\":\\"standard\\",\\"promo\\":\\"YAML-Driven \\/ Twig Templating\\",\\"desc\\":\\"<p>Gantry is built with several modern web technologies, such as the Twig PHP templating engine and YAML for human readable configuration files.<\\/p>\\",\\"readmore\\":\\"Know More\\",\\"readmoreclass\\":\\"\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"block\\",\\"tags\\":[{\\"icon\\":\\"\\",\\"text\\":\\"Computing\\",\\"link\\":\\"#\\",\\"title\\":\\"Computing\\"},{\\"icon\\":\\"\\",\\"text\\":\\"Programming\\",\\"link\\":\\"#\\",\\"title\\":\\"Programming\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(265, 259, 'Open Positions', '', '', 1, 'expanded-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 1, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"promostyle\\":\\"subpromo\\",\\"promo\\":\\"Gantry 5 features an advanced Menu Editor, which augments the core menu with a rich, drag and drop interface. \\",\\"desc\\":\\"\\",\\"readmore\\":\\"&rarr;\\",\\"readmoreclass\\":\\"button-arrow\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"inline\\",\\"tags\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(266, 260, 'Mobile Responsive', '', '', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"g-overlay\\",\\"title\\":\\"\\",\\"promostyle\\":\\"superpromo\\",\\"promo\\":\\"Mobile <br \\/> Responsive\\",\\"desc\\":\\"<p>Salient is built with a responsive layout, which means it automatically adapts to the viewing device, so it will expand and contract accordingly to the size and resolution of the screen, whether mobile, tablet or desktop.<\\/p>\\",\\"readmore\\":\\"&rarr;\\",\\"readmoreclass\\":\\"button-arrow nopaddingall\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"block\\",\\"tags\\":[{\\"icon\\":\\"\\",\\"text\\":\\"Flexible\\",\\"link\\":\\"#\\",\\"title\\":\\"Flexible\\"},{\\"icon\\":\\"\\",\\"text\\":\\"Resilient\\",\\"link\\":\\"#\\",\\"title\\":\\"Resilient\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `bxnaz_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(267, 261, 'Contemporary Interface', '', '', 1, 'Utility-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"g-overlay\\",\\"title\\":\\"\\",\\"promostyle\\":\\"superpromo\\",\\"promo\\":\\"Contemporary <br \\/> Interface\\",\\"desc\\":\\"<p>Gantry 5''s administrative interface has been completely rebuilt from the ground up to meet the needs of tomorrow''s developer, today. The admin provides multiple options for styles, layout, particles, and more.<\\/p>\\",\\"readmore\\":\\"&rarr;\\",\\"readmoreclass\\":\\"button-arrow nopaddingall\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"block\\",\\"tags\\":[{\\"icon\\":\\"\\",\\"text\\":\\"Intuitive\\",\\"link\\":\\"#\\",\\"title\\":\\"Intuitive\\"},{\\"icon\\":\\"\\",\\"text\\":\\"Powerful\\",\\"link\\":\\"#\\",\\"title\\":\\"Powerful\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(268, 262, 'An excellent design', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"promostyle\\":\\"subpromo\\",\\"promo\\":\\"An excellent design with a fresh approach for the ever-changing Web.\\",\\"desc\\":\\"\\",\\"readmore\\":\\"More\\",\\"readmoreclass\\":\\"button-3\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"aside\\",\\"tags\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(269, 263, 'A next-generation', '', '', 1, 'header-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"promostyle\\":\\"promo\\",\\"promo\\":\\"A next-generation theme built for success.\\",\\"desc\\":\\"\\",\\"readmore\\":\\"&rarr;\\",\\"readmoreclass\\":\\"button-arrow nopaddingall\\",\\"link\\":\\"#\\",\\"linkstyle\\":\\"block\\",\\"tags\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(270, 264, '+1(555)666.777.8888', '', '', 1, 'footside-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"promocontent\\",\\"title\\":\\"Promo Content\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"promostyle\\":\\"subpromo\\",\\"promo\\":\\"+1(555)666.777.8888\\",\\"desc\\":\\"<p>hello@salient-gantry.com<\\/p>\\",\\"readmore\\":\\"\\",\\"readmoreclass\\":\\"\\",\\"link\\":\\"\\",\\"linkstyle\\":\\"block\\",\\"tags\\":[]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(271, 265, 'Address', '', '', 0, 'footside-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 1, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"contact\\",\\"title\\":\\"Contact\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"g-contact-compact\\",\\"title\\":\\"\\",\\"contactitems\\":[{\\"icon\\":\\"\\",\\"text\\":\\"23 Salient Road\\",\\"label\\":\\"23 Salient Road\\"},{\\"icon\\":\\"\\",\\"text\\":\\"<strong>London<\\/strong>, United Kingdom\\",\\"label\\":\\"London, United Kingdom\\"},{\\"icon\\":\\"\\",\\"text\\":\\"PO-LDN 123\\",\\"label\\":\\"PO-LDN 123\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(272, 266, 'Hours', '', '', 1, 'footside-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 1, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"contact\\",\\"title\\":\\"Contact\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"g-contact-compact\\",\\"title\\":\\"\\",\\"contactitems\\":[{\\"icon\\":\\"\\",\\"text\\":\\"Monday - Friday\\",\\"label\\":\\"Monday - Friday\\"},{\\"icon\\":\\"\\",\\"text\\":\\"09:00 - 17:00 (GMT 0)\\",\\"label\\":\\"09:00 - 17:00 (GMT 0)\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(273, 267, 'Contact Map', '', '', 0, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"contact\\",\\"title\\":\\"Contact\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"title\\":\\"\\",\\"contactitems\\":[],\\"mapposition\\":\\"top\\",\\"maps\\":[{\\"img\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/footer\\/img-01.jpg\\",\\"overlay\\":\\"enabled\\",\\"marker\\":\\"enabled\\",\\"icon\\":\\"fa fa-map-marker fa-fw\\",\\"height\\":\\"400px\\",\\"top\\":\\"140px\\",\\"left\\":\\"170px\\",\\"label\\":\\"London\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(274, 268, '100+ Templates', '', '', 0, 'slideshow-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"animatedblock\\",\\"title\\":\\"Animated Block\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"bgclass\\":\\"g-bg-2\\",\\"animationclass\\":\\"g-animatedblock-animation-1\\",\\"title\\":\\"\\",\\"image\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/slideshow\\/img-01.jpg\\",\\"headline\\":\\"100+\\",\\"desc\\":\\"Templates\\",\\"readmore\\":\\"&rarr;\\",\\"link\\":\\"#\\",\\"button\\":\\"\\",\\"buttonclass\\":\\"\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(275, 269, '36 Projects', '', '', 1, 'slideshow-a-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"animatedblock\\",\\"title\\":\\"Animated Block\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"bgclass\\":\\"g-bg-4\\",\\"animationclass\\":\\"g-animatedblock-animation-2\\",\\"title\\":\\"\\",\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/slideshow\\\\\\/img-02.png\\",\\"headline\\":\\"36\\",\\"desc\\":\\"Projects\\",\\"readmore\\":\\"&rarr;\\",\\"link\\":\\"#\\",\\"button\\":\\"Join\\",\\"buttonclass\\":\\"button-4\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(276, 270, 'SlideCenter', '', '', 1, 'slideshow-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"animatedblock\\",\\"title\\":\\"Animated Block\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"bgclass\\":\\"g-bg-1\\",\\"animationclass\\":\\"g-animatedblock-animation-1\\",\\"title\\":\\"\\",\\"image\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/slideshow\\/img-03.jpg\\",\\"headline\\":\\"Fresh\\",\\"desc\\":\\"Simple & Clean\\",\\"readmore\\":\\"&rarr;\\",\\"link\\":\\"#\\",\\"button\\":\\"\\",\\"buttonclass\\":\\"\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(277, 271, '5 Team Members', '', '', 2, 'slideshow-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"animatedblock\\",\\"title\\":\\"Animated Block\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"bgclass\\":\\"g-bg-5\\",\\"animationclass\\":\\"g-animatedblock-animation-3\\",\\"title\\":\\"\\",\\"image\\":\\"gantry-media:\\/\\/rocketlauncher\\/home\\/slideshow\\/img-05.png\\",\\"headline\\":\\"5\\",\\"desc\\":\\"Team Members\\",\\"readmore\\":\\"&rarr;\\",\\"link\\":\\"#\\",\\"button\\":\\"Hire\\",\\"buttonclass\\":\\"button-4\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(278, 272, '7 Sample Pages', '', '', 3, 'slideshow-c-below', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"animatedblock\\",\\"title\\":\\"Animated Block\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"class\\":\\"\\",\\"bgclass\\":\\"g-bg-3\\",\\"animationclass\\":\\"g-animatedblock-animation-1\\",\\"title\\":\\"\\",\\"image\\":\\"gantry-media:\\\\\\/\\\\\\/rocketlauncher\\\\\\/home\\\\\\/slideshow\\\\\\/img-06.jpg\\",\\"headline\\":\\"7\\",\\"desc\\":\\"Sample Pages\\",\\"readmore\\":\\"&rarr;\\",\\"link\\":\\"#\\",\\"button\\":\\"\\",\\"buttonclass\\":\\"\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(279, 273, 'Social', '', '', 1, 'navigation-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"social\\",\\"title\\":\\"Social\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"css\\":{\\"class\\":\\"social-items\\"},\\"title\\":\\"\\",\\"target\\":\\"_blank\\",\\"items\\":[{\\"icon\\":\\"fa fa-twitter fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/twitter.com\\\\\\/rockettheme\\",\\"name\\":\\"Twitter\\"},{\\"icon\\":\\"fa fa-facebook fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/facebook.com\\\\\\/rockettheme\\",\\"name\\":\\"Facebook\\"},{\\"icon\\":\\"fa fa-google fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/plus.google.com\\\\\\/+rockettheme\\",\\"name\\":\\"Google\\"},{\\"icon\\":\\"fa fa-rss fa-fw\\",\\"text\\":\\"\\",\\"link\\":\\"http:\\\\\\/\\\\\\/www.rockettheme.com\\\\\\/product-updates?rss\\",\\"name\\":\\"RSS\\"}]},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(280, 274, 'Off Canvas Toggle', '', '<div class="g-offcanvas-toggle" data-offcanvas-toggle="">\r\n  <i class="fa fa-fw fa-indent"></i>\r\n</div>', 0, 'navigation-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(281, 275, 'Menu', '', '', 0, 'navigation-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"menu\\",\\"title\\":\\"Menu\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"base\\":\\"\\/\\",\\"menu\\":\\"\\",\\"startLevel\\":\\"1\\",\\"endLevel\\":\\"0\\",\\"mobileTarget\\":\\"0\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(282, 276, 'Logo', '', '', 1, 'navigation-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gantry5_particle', 1, 0, '{"particle":"{\\"type\\":\\"particle\\",\\"particle\\":\\"logo\\",\\"title\\":\\"Logo\\",\\"options\\":{\\"particle\\":{\\"enabled\\":\\"1\\",\\"url\\":\\"\\",\\"rel\\":\\"home\\",\\"image\\":\\"gantry-media:\\/\\/logo\\/logo-header.png\\",\\"alt\\":\\"salient\\",\\"text\\":\\"\\",\\"class\\":\\"g-logo\\"},\\"block\\":[]}}","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bxnaz_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bxnaz_modules_menu`
--

INSERT INTO `bxnaz_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(89, 105),
(94, 106),
(95, 106),
(96, 106),
(97, 107),
(98, 107),
(100, 111),
(101, 111),
(102, 111),
(103, 111),
(104, 111),
(104, 114),
(104, 115),
(104, 118),
(104, 119),
(104, 120),
(104, 121),
(106, 111),
(106, 114),
(106, 115),
(106, 118),
(106, 119),
(106, 120),
(115, 114),
(116, 114),
(118, 114),
(119, 115),
(122, 115),
(127, 119),
(130, 118),
(131, 118),
(132, 118),
(133, 118),
(134, 118),
(135, 119),
(136, 119),
(137, 119),
(138, 122),
(139, 122),
(181, 105),
(182, 105),
(183, 105),
(184, 105),
(185, 105),
(200, 107),
(205, 119),
(206, 115),
(208, 115),
(209, 115),
(210, 115),
(211, 115),
(212, 115),
(213, 115),
(214, 115),
(215, 114),
(217, 119),
(220, 118),
(221, 111),
(221, 114),
(221, 115),
(221, 118),
(221, 119),
(221, 120),
(221, 121),
(225, 101),
(228, 101),
(235, 101),
(235, 104),
(235, 105),
(235, 106),
(235, 107),
(235, 108),
(235, 109),
(235, 110),
(235, 111),
(235, 114),
(235, 115),
(235, 118),
(235, 119),
(235, 120),
(235, 121),
(235, 122),
(235, 123),
(235, 124),
(235, 146),
(236, 101),
(236, 104),
(236, 105),
(236, 106),
(236, 107),
(236, 108),
(236, 109),
(236, 110),
(236, 111),
(236, 114),
(236, 115),
(236, 118),
(236, 119),
(236, 120),
(236, 121),
(236, 122),
(236, 123),
(236, 124),
(236, 146),
(237, 101),
(237, 104),
(237, 105),
(237, 106),
(237, 107),
(237, 108),
(237, 109),
(237, 110),
(237, 111),
(237, 114),
(237, 115),
(237, 118),
(237, 119),
(237, 120),
(237, 121),
(237, 122),
(237, 123),
(237, 124),
(237, 146),
(250, -121),
(255, 101),
(258, 107),
(259, 106),
(262, 101),
(263, 101),
(264, 101),
(265, 101),
(266, 101),
(267, 101),
(268, 101),
(269, 101),
(270, 101),
(271, 101),
(272, 101),
(273, 101),
(274, 101),
(275, 101),
(276, 101),
(277, 101),
(278, 101),
(279, 0),
(280, 0),
(281, 0),
(282, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bxnaz_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_overrider`
--

CREATE TABLE IF NOT EXISTS `bxnaz_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_point`
--

CREATE TABLE IF NOT EXISTS `bxnaz_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bxnaz_point`
--

INSERT INTO `bxnaz_point` (`id`, `customerId`, `businessId`, `point`) VALUES
(1, 430, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `bxnaz_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bxnaz_postinstall_messages`
--

INSERT INTO `bxnaz_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_promotion`
--

CREATE TABLE IF NOT EXISTS `bxnaz_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessId` int(11) DEFAULT NULL,
  `title` text,
  `content` text,
  `point` int(11) DEFAULT NULL,
  `stamp` int(11) DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `startDate` varchar(20) DEFAULT NULL,
  `endDate` varchar(20) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1 : point to get free , 2 : numTime to get free',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bxnaz_promotion`
--

INSERT INTO `bxnaz_promotion` (`id`, `businessId`, `title`, `content`, `point`, `stamp`, `icon`, `startDate`, `endDate`, `createdAt`, `updatedAt`, `type`) VALUES
(1, 1, 'Point 1', 'Test point 1 Test point 1 Test point 1', 20, NULL, 'images/business/coffee.png', '1443657600', '1451520000', '1445845460 ', NULL, 1),
(2, 1, 'Point 2', 'Test point 2 Test point 2 Test point 2', 100, NULL, 'images/business/coffee.png', '1443657600', '1451520000', '1445845460 ', NULL, 1),
(3, 2, 'Stamp 2', 'Test stamp 1 Test stamp 1 Test stamp 1 Test stamp 1 ', 0, 8, 'images/business/fitness.png', '1443657600', '1451520000', '1445845460 ', NULL, 2),
(4, 2, 'Stamp 2', 'Test stamp 2 Test stamp 2 Test stamp 2 Test stamp 2 ', NULL, 4, 'images/business/fitness.png', '1443657600', '1451520000', '1445845460 ', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bxnaz_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_rokcommon_configs`
--

CREATE TABLE IF NOT EXISTS `bxnaz_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bxnaz_rokcommon_configs`
--

INSERT INTO `bxnaz_rokcommon_configs` (`id`, `extension`, `type`, `file`, `priority`) VALUES
(3, 'roksprocket', 'container', '/components/com_roksprocket/container.xml', 10),
(4, 'roksprocket', 'library', '/components/com_roksprocket/lib', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_roksprocket_items`
--

CREATE TABLE IF NOT EXISTS `bxnaz_roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1026 ;

--
-- Dumping data for table `bxnaz_roksprocket_items`
--

INSERT INTO `bxnaz_roksprocket_items` (`id`, `module_id`, `provider`, `provider_id`, `order`, `params`) VALUES
(38, '143', 'simple', '2', 1, '{"_article_title":"Simple Item 2","features_item_title":"A versatile and flexible in-built dropdown menu system","features_item_description":"Gantry 5 benefits from a built-in navigation system. Dropdowns can be configured to be multiple columns with dynamic or configurable fixed widths.","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/features-stories\\/img-02.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_2__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(39, '143', 'simple', '3', 2, '{"_article_title":"Simple Item 3","features_item_title":"Built on Gantry 5, a modern and flexible theme framework","features_item_description":"Gantry 5 is a revolutionary template framework, built for the modern web, with features such as responsive designs, drag & drop layout and menu controls.","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/features-stories\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_3__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(40, '142', 'simple', '1', 0, '{"_article_title":"Simple Item 1","features_item_title":"Creative","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/features-slideshow\\/img-01.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_1__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(41, '142', 'simple', '2', 1, '{"_article_title":"Simple Item 2","features_item_title":"Elegant","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/features-slideshow\\/img-02.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_2__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(42, '142', 'simple', '3', 2, '{"_article_title":"Simple Item 3","features_item_title":"Artistic","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/features-slideshow\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_3__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(67, '144', 'simple', '1', 0, '{"_article_title":"Simple Item 1","grids_item_title":"<span class=\\"fa fa-camera fa-fw\\"><\\/span> Positions","grids_item_description":"<span>Unlimited position<span class=\\"visible-tablet\\">s<\\/span><span class=\\"hidden-tablet\\"> possibilities<\\/span><\\/span>","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-01.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_1__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(68, '144', 'simple', '2', 1, '{"_article_title":"Simple Item 2","grids_item_title":"<span class=\\"fa fa-database fa-fw\\"><\\/span> Variations","grids_item_description":"<span>Stylistic<span class=\\"hidden-tablet\\"> block<\\/span> variations<\\/span>","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-02.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_2__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(69, '144', 'simple', '3', 2, '{"_article_title":"Simple Item 3","grids_item_title":"<span class=\\"fa fa-comments fa-fw\\"><\\/span> Presets","grids_item_description":"Light &amp; dark styles","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_3__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(70, '144', 'simple', '4', 3, '{"_article_title":"Simple Item 4","grids_item_title":"<span class=\\"fa fa-heart fa-fw\\"><\\/span> Advanced Menu","grids_item_description":"Visual menu editor","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-04.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_4__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(71, '144', 'simple', '5', 4, '{"_article_title":"Simple Item 5","grids_item_title":"<span class=\\"fa fa-paper-plane fa-fw\\"><\\/span> Particles","grids_item_description":"<span>Range of <span class=\\"hidden-tablet\\">custom <\\/span>particles<\\/span>","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-05.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_5__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(72, '144', 'simple', '6', 5, '{"_article_title":"Simple Item 6","grids_item_title":"<span class=\\"fa fa-rocket fa-fw\\"><\\/span> Gantry 5","grids_item_description":"Modern framework","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-06.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_6__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(73, '144', 'simple', '7', 6, '{"_article_title":"Simple Item 7","grids_item_title":"<span class=\\"fa fa-bus fa-fw\\"><\\/span> Responsive Layout","grids_item_description":"Adaptable Design","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-07.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_7__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(74, '144', 'simple', '8', 7, '{"_article_title":"Simple Item 8","grids_item_title":"<span class=\\"fa fa-bar-chart fa-fw\\"><\\/span> Performance","grids_item_description":"Built for speed","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-1\\/img-08.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_8__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(93, '147', 'simple', '1', 0, '{"_article_title":"Simple Item 1","strips_item_title":"Menu Editor","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"<span class=\\"sprocket-strips-icon\\"><span class=\\"fa fa-fw fa-database\\"><\\/span><\\/span><span class=\\"sprocket-strips-text-sub\\">Visual Interface<\\/span>","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(94, '147', 'simple', '2', 1, '{"_article_title":"Simple Item 2","strips_item_title":"Drag &amp; Drop","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"<span class=\\"sprocket-strips-icon\\"><span class=\\"fa fa-fw fa-coffee\\"><\\/span><\\/span><span class=\\"sprocket-strips-text-sub\\">Layout Manager<\\/span>","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(95, '147', 'simple', '3', 2, '{"_article_title":"Simple Item 3","strips_item_title":"MegaMenu","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"<span class=\\"sprocket-strips-icon\\"><span class=\\"fa fa-fw fa-leaf\\"><\\/span><\\/span><span class=\\"sprocket-strips-text-sub\\">Dropdowns<\\/span>","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(96, '147', 'simple', '4', 3, '{"_article_title":"Simple Item 4","strips_item_title":"FontAwesome","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"<span class=\\"sprocket-strips-icon\\"><span class=\\"fa fa-fw fa-university\\"><\\/span><\\/span><span class=\\"sprocket-strips-text-sub\\">Icon Library<\\/span>","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(97, '147', 'simple', '5', 4, '{"_article_title":"Simple Item 5","strips_item_title":"Responsive","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"<span class=\\"sprocket-strips-icon\\"><span class=\\"fa fa-fw fa-exchange\\"><\\/span><\\/span><span class=\\"sprocket-strips-text-sub\\">Mobile Support<\\/span>","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(98, '147', 'simple', '6', 5, '{"_article_title":"Simple Item 6","strips_item_title":"SCSS Support","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"<span class=\\"sprocket-strips-icon\\"><span class=\\"fa fa-fw fa-life-ring\\"><\\/span><\\/span><span class=\\"sprocket-strips-text-sub\\">Advanced CSS<\\/span>","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(153, '145', 'simple', '1', 0, '{"_article_title":"Simple Item 1","mosaic_item_title":"<span class=\\"sprocket-mosaic-title-number\\"><span>1<\\/span><\\/span><span class=\\"sprocket-mosaic-title-text\\">Particles, a quick and easy way to create complex content<\\/span>","mosaic_item_description":"The Layout Manager supports particles, positions and atoms.","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"content, layout","lists_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(154, '145', 'simple', '2', 1, '{"_article_title":"Simple Item 2","mosaic_item_title":"<span class=\\"sprocket-mosaic-title-number\\"><span>2<\\/span><\\/span><span class=\\"sprocket-mosaic-title-text\\">An intuitive admin interface to configure the template<\\/span>","mosaic_item_description":"A custom, user friendly backend console for the template.","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"setup, efficient","lists_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(155, '145', 'simple', '3', 2, '{"_article_title":"Simple Item 3","mosaic_item_title":"<span class=\\"sprocket-mosaic-title-number\\"><span>3<\\/span><\\/span><span class=\\"sprocket-mosaic-title-text\\">Offcanvas section for adding blocks to the mobile sidemenu<\\/span>","mosaic_item_description":"Configure the Offcanvas section in the Layout Manager.","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"layout, setup","lists_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(156, '145', 'simple', '4', 3, '{"_article_title":"Simple Item 4","mosaic_item_title":"<span class=\\"sprocket-mosaic-title-number\\"><span>4<\\/span><\\/span><span class=\\"sprocket-mosaic-title-text\\">Based on a Responsive Layout with Mobile Support<\\/span>","mosaic_item_description":"A responsive layout adapts automatically to the width of the viewing device.","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"content, layout","lists_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(157, '145', 'simple', '5', 4, '{"_article_title":"Simple Item 5","mosaic_item_title":"<span class=\\"sprocket-mosaic-title-number\\"><span>5<\\/span><\\/span><span class=\\"sprocket-mosaic-title-text\\">A Diverse Collection of Icons via FontAwesome<\\/span>","mosaic_item_description":"Library of 100s of icons, through the popular FontAwesome catalogue.","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"content, efficient","lists_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(158, '145', 'simple', '6', 5, '{"_article_title":"Simple Item 6","mosaic_item_title":"<span class=\\"sprocket-mosaic-title-number\\"><span>6<\\/span><\\/span><span class=\\"sprocket-mosaic-title-text\\">Individualize Block Content with a Series of Variations<\\/span>","mosaic_item_description":"Individualize your block content with the 10 available variations.","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"layout, efficient","lists_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}');
INSERT INTO `bxnaz_roksprocket_items` (`id`, `module_id`, `provider`, `provider_id`, `order`, `params`) VALUES
(159, '146', 'simple', '1', 0, '{"_article_title":"Simple Item 1","grids_item_title":"Style Variations","grids_item_description":"<p>Choose and configure from a range of light and dark style presets<\\/p><ul class=\\"g-horizontalmenu\\"><li><a href=\\"\\/\\"><i class=\\"fa fa-fw fa-circle\\"><\\/i> Dark<\\/a><\\/li><li><a href=\\"\\"><i class=\\"fa fa-fw fa-circle-o\\"><\\/i> Light<\\/a><\\/li><\\/ul>","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-2\\/img-01.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_1__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(160, '146', 'simple', '2', 1, '{"_article_title":"Simple Item 2","grids_item_title":"<span class=\\"g-larger\\">100%<\\/span>","grids_item_description":"Access to the RocketLauncher, theme, extensions and sources for one price","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-2\\/img-04.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_2__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(161, '146', 'simple', '3', 2, '{"_article_title":"Simple Item 3","grids_item_title":"-none-","grids_item_description":"<ul class=\\"g-horizontalmenu\\"><li><a href=\\"\\"><i class=\\"fa fa-fw fa-exchange\\"><\\/i> Responsive<\\/a><\\/li><li><a href=\\"\\"><i class=\\"fa fa-fw fa-facebook\\"><\\/i> Social<\\/a><\\/li><\\/ul>","grids_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/roksprocket\\/grids-main-2\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_3__params_grids_item_image''}","grids_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(689, '157', 'simple', '3', 0, '{"_article_title":"Simple Item 3","features_item_title":"A fully flexible template experience via Gantry 5","features_item_description":"A powerful and versatile modern template framework","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/slideshow\\/img-01.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_3__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(690, '157', 'simple', '2', 1, '{"_article_title":"Simple Item 2","features_item_title":"Built-in dropdown menu system with mobile support","features_item_description":"Options include multiple columns and inline particles\\/positions","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/slideshow\\/img-02.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_2__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(691, '157', 'simple', '1', 2, '{"_article_title":"Simple Item 1","features_item_title":"RokSprocket simplifies complex content setup","features_item_description":"Easy to use interface with many prebuilt themes and layouts","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/slideshow\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_1__params_features_item_image''}","features_item_link":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(756, '159', 'simple', '3', 0, '{"_article_title":"Item 01","headlines_item_image":"-default-","headlines_item_link":"#","headlines_item_description":"Gantry 5''s new layout manager features drag-and-drop functionality.","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(757, '159', 'simple', '2', 1, '{"_article_title":"Item 02","headlines_item_image":"-default-","headlines_item_link":"#","headlines_item_description":"The Particles system makes it easy to create and configure content blocks.","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(758, '159', 'simple', '1', 2, '{"_article_title":"Item 03","headlines_item_image":"-default-","headlines_item_link":"#","headlines_item_description":"Menu Editor allows for inserting Modules and adding icons in seconds.","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(991, '158', 'simple', '7', 0, '{"_article_title":"Item 01","tabs_item_title":"News","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-1}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(992, '158', 'simple', '6', 1, '{"_article_title":"Item 02","tabs_item_title":"Games","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-2}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(993, '158', 'simple', '5', 2, '{"_article_title":"Item 03","tabs_item_title":"Reviews","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-3}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(994, '158', 'simple', '4', 3, '{"_article_title":"Item 04","tabs_item_title":"Releases","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-4}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(995, '158', 'simple', '3', 4, '{"_article_title":"Item 05","tabs_item_title":"Articles","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-5}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(996, '158', 'simple', '2', 5, '{"_article_title":"Item 06","tabs_item_title":"Photos","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-6}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(997, '158', 'simple', '1', 6, '{"_article_title":"Item 07","tabs_item_title":"Videos","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition feature-tabs-7}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(998, '160', 'simple', '3', 0, '{"_article_title":"Simple Item 3","tabs_item_title":"News","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition mainbar-tabs-1}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(999, '160', 'simple', '2', 1, '{"_article_title":"Simple Item 2","tabs_item_title":"Games","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition mainbar-tabs-2}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1000, '160', 'simple', '1', 2, '{"_article_title":"Simple Item 1","tabs_item_title":"Articles","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition mainbar-tabs-3}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1001, '162', 'simple', '3', 0, '{"_article_title":"Simple Item 3","tabs_item_title":"Promoted News","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition mainright-tabs-1}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1002, '162', 'simple', '2', 1, '{"_article_title":"Simple Item 2","tabs_item_title":"Other News","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition mainright-tabs-2}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1003, '162', 'simple', '1', 2, '{"_article_title":"Simple Item 1","tabs_item_title":"Rumors","tabs_item_icon":"-default-","tabs_item_link":"-default-","tabs_item_description":"{loadposition mainright-tabs-3}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1004, '164', 'simple', '4', 0, '{"_article_title":"Item 01","lists_item_title":"YAML-Driven Configuration","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"YAML is a human-readable data serialization, making it easy to create and configure blueprints for back-end configuration options.","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1005, '164', 'simple', '3', 1, '{"_article_title":"Item 02","lists_item_title":"Twig Templating","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"Gantry 5 utilizes Twig - a flexible, fast, and secure template engine for PHP - to make creating powerful, dynamic themes quick and easy.","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1006, '164', 'simple', '2', 2, '{"_article_title":"Item 03","lists_item_title":"Particles System","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"Gantry 5''s Particles system makes it easy to create, configure, and manage content blocks on multiple levels.","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1007, '164', 'simple', '1', 3, '{"_article_title":"Item 04","lists_item_title":"Use SCSS, CSS or LESS","lists_item_image":"-default-","lists_item_link":"-default-","lists_item_description":"The Gantry 5 Framework has built-in support for SCSS and pure CSS, with the ability to support LESS.","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1011, '161', 'simple', '3', 0, '{"_article_title":"Item 01","headlines_item_image":"-default-","headlines_item_link":"-none-","headlines_item_description":"{loadposition mainleft-headlines-1}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}');
INSERT INTO `bxnaz_roksprocket_items` (`id`, `module_id`, `provider`, `provider_id`, `order`, `params`) VALUES
(1012, '161', 'simple', '2', 1, '{"_article_title":"Item 02","headlines_item_image":"-default-","headlines_item_link":"-none-","headlines_item_description":"{loadposition mainleft-headlines-2}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1013, '161', 'simple', '1', 2, '{"_article_title":"Item 03","headlines_item_image":"-default-","headlines_item_link":"-none-","headlines_item_description":"{loadposition mainleft-headlines-3}","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","strips_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","strips_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","strips_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","strips_item_description":"-default-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1014, '165', 'simple', '12', 0, '{"_article_title":"Item 01","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-01.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_12__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-none-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1015, '165', 'simple', '11', 1, '{"_article_title":"Item 02","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-02.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_11__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1016, '165', 'simple', '10', 2, '{"_article_title":"Item 03","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_10__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1017, '165', 'simple', '9', 3, '{"_article_title":"Item 04","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-04.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_9__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1018, '165', 'simple', '8', 4, '{"_article_title":"Item 05","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-05.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_8__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1019, '165', 'simple', '7', 5, '{"_article_title":"Item 06","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-06.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_7__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1020, '165', 'simple', '6', 6, '{"_article_title":"Item 07","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-02.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_6__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1021, '165', 'simple', '5', 7, '{"_article_title":"Item 08","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-04.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_5__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1022, '165', 'simple', '4', 8, '{"_article_title":"Item 09","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-06.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_4__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1023, '165', 'simple', '3', 9, '{"_article_title":"Item 10","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-01.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_3__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","tables_item_title":"-default-","grids_item_title":"-default-","tabs_item_title":"-default-","tables_item_description":"-default-","tabs_item_icon":"-default-","mosaic_item_description":"-default-","grids_item_description":"-default-","quotes_item_description":"-default-","grids_item_image":"-default-","tabs_item_link":"-default-","tables_item_image":"-default-","lists_item_image":"-default-","quotes_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_description":"-default-","quotes_item_author":"-none-","grids_item_link":"-default-","tables_item_class":"-none-","mosaic_item_link":"-default-","lists_item_link":"-default-","sliders_item_title":"-default-","features_item_title":"-default-","mosaic_item_tags":"-article-","tables_item_price":"-none-","quotes_item_subtext":"-none-","sliders_item_description":"-default-","headlines_item_image":"-default-","quotes_item_link":"-default-","features_item_description":"-default-","lists_item_description":"-default-","tables_item_feature_1":"-none-","sliders_item_image":"-default-","features_item_image":"-default-","tables_item_feature_2":"-none-","quotes_item_direction":"-bottomleft-","headlines_item_link":"-default-","sliders_item_link":"-default-","features_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1024, '165', 'simple', '2', 10, '{"_article_title":"Item 11","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-03.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_2__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","tabs_item_title":"-default-","tables_item_title":"-default-","lists_item_title":"-default-","grids_item_title":"-default-","mosaic_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","tabs_item_link":"-default-","grids_item_image":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_image":"-default-","tables_item_image":"-default-","mosaic_item_link":"-default-","quotes_item_author":"-none-","lists_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","tabs_item_description":"-default-","mosaic_item_tags":"-article-","sliders_item_title":"-default-","quotes_item_subtext":"-none-","tables_item_price":"-none-","features_item_title":"-default-","lists_item_description":"-default-","sliders_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","quotes_item_link":"-default-","tables_item_feature_1":"-none-","headlines_item_link":"-default-","quotes_item_direction":"-bottomleft-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","features_item_image":"-default-","features_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}'),
(1025, '165', 'simple', '1', 11, '{"_article_title":"Item 12","strips_item_title":"-none-","strips_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/home\\/bottom\\/img-05.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_simple_1__params_strips_item_image''}","strips_item_link":"#","strips_item_description":"-default-","tabs_item_title":"-default-","tables_item_title":"-default-","lists_item_title":"-default-","grids_item_title":"-default-","mosaic_item_title":"-default-","tables_item_description":"-default-","mosaic_item_description":"-default-","quotes_item_description":"-default-","tabs_item_icon":"-default-","grids_item_description":"-default-","tabs_item_link":"-default-","grids_item_image":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","quotes_item_image":"-default-","tables_item_image":"-default-","mosaic_item_link":"-default-","quotes_item_author":"-none-","lists_item_link":"-default-","grids_item_link":"-default-","tables_item_class":"-none-","tabs_item_description":"-default-","mosaic_item_tags":"-article-","sliders_item_title":"-default-","quotes_item_subtext":"-none-","tables_item_price":"-none-","features_item_title":"-default-","lists_item_description":"-default-","sliders_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","quotes_item_link":"-default-","tables_item_feature_1":"-none-","headlines_item_link":"-default-","quotes_item_direction":"-bottomleft-","sliders_item_image":"-default-","tables_item_feature_2":"-none-","features_item_image":"-default-","features_item_link":"-default-","sliders_item_link":"-default-","tables_item_feature_3":"-none-","headlines_item_description":"-default-","tables_item_feature_4":"-none-","tables_item_link":"-default-","tables_item_link_text":"Buy Now"}');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_schemas`
--

CREATE TABLE IF NOT EXISTS `bxnaz_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bxnaz_schemas`
--

INSERT INTO `bxnaz_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26'),
(10085, '0.0.6');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_session`
--

CREATE TABLE IF NOT EXISTS `bxnaz_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bxnaz_session`
--

INSERT INTO `bxnaz_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('ttfav85tv6gtel9d975sere346', 1, 0, '1446448195', '__default|a:8:{s:15:"session.counter";i:18;s:19:"session.timer.start";i:1446437720;s:18:"session.timer.last";i:1446448192;s:17:"session.timer.now";i:1446448194;s:22:"session.client.browser";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":2:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"en-GB";}s:12:"com_business";O:8:"stdClass":4:{s:4:"edit";O:8:"stdClass":1:{s:9:"promotion";O:8:"stdClass":1:{s:4:"data";N;}}s:10:"promotions";O:8:"stdClass":2:{s:8:"ordercol";N;s:4:"list";a:4:{s:9:"direction";N;s:5:"limit";s:2:"20";s:8:"ordering";N;s:5:"start";d:0;}}s:8:"checkins";O:8:"stdClass":2:{s:8:"ordercol";N;s:4:"list";a:4:{s:9:"direction";N;s:5:"limit";s:2:"20";s:8:"ordering";N;s:5:"start";d:0;}}s:10:"businesses";O:8:"stdClass":2:{s:8:"ordercol";N;s:4:"list";a:4:{s:9:"direction";N;s:5:"limit";s:2:"20";s:8:"ordering";N;s:5:"start";d:0;}}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":32:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"427";s:4:"name";s:12:"Adminstrator";s:8:"username";s:7:"myloyal";s:5:"email";s:22:"tuan@mywebcreations.dk";s:8:"password";s:60:"$2y$10$YANdVzT4LAXSQM84Lirm7umX.KyxFsdA9B9yBe.anm1zN6v9K2vNK";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-10-08 11:11:49";s:13:"lastvisitDate";s:19:"2015-11-02 03:31:19";s:10:"activation";s:1:"0";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:8:"lastName";s:3:"ccc";s:9:"firstName";s:3:"aaa";s:6:"avatar";s:0:"";s:10:"facebookId";s:0:"";}s:13:"session.token";s:32:"db934af2d7b36077bbc2ddd7f25f7a96";}', 427, 'myloyal');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_stamp`
--

CREATE TABLE IF NOT EXISTS `bxnaz_stamp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotionId` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `numStamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bxnaz_stamp`
--

INSERT INTO `bxnaz_stamp` (`id`, `promotionId`, `businessId`, `customerId`, `numStamp`) VALUES
(1, 3, 2, 430, 2),
(2, 4, 2, 430, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_tags`
--

CREATE TABLE IF NOT EXISTS `bxnaz_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bxnaz_tags`
--

INSERT INTO `bxnaz_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 427, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_template_styles`
--

CREATE TABLE IF NOT EXISTS `bxnaz_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `bxnaz_template_styles`
--

INSERT INTO `bxnaz_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(23, 'rt_salient', 0, '1', 'Salient - Default', '{"preset":"default","configuration":"23"}'),
(24, 'rt_salient', 0, '0', 'Salient - Home Positions', '{"preset":"home_positions","configuration":"24"}'),
(26, 'rt_salient', 0, '0', 'Salient - Typography', '{"configuration":"26","preset":"typography"}'),
(27, 'rt_salient', 0, '0', 'Salient - Coming Soon', '{"configuration":"27","preset":"coming_soon"}');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_ucm_base`
--

CREATE TABLE IF NOT EXISTS `bxnaz_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_ucm_content`
--

CREATE TABLE IF NOT EXISTS `bxnaz_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_ucm_history`
--

CREATE TABLE IF NOT EXISTS `bxnaz_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_updates`
--

CREATE TABLE IF NOT EXISTS `bxnaz_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=76 ;

--
-- Dumping data for table `bxnaz_updates`
--

INSERT INTO `bxnaz_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.4.5', '', 'http://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(3, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(4, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(5, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.4.5.2', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(6, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(7, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(8, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(9, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(10, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(11, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(12, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(13, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(14, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(15, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(16, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(17, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(18, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(19, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(20, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(21, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(22, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(23, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(24, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(25, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(26, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(27, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(28, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(29, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(30, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(31, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(32, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(33, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(34, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(35, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(36, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(37, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(38, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(39, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(40, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(41, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(42, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(43, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(44, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(45, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(46, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(47, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(48, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(49, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(50, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(51, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(52, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(53, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(54, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(55, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(56, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(57, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(58, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(59, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(60, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(61, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(62, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(63, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(64, 5, 0, 'RokGallery Extension', '', 'mod_rokgallery', 'module', '', 0, '2.31', '0802', 'http://updates.rockettheme.com/joomla/286/21ffe006', '', ''),
(65, 5, 0, 'RokWeather Module', '', 'mod_rokweather', 'module', '', 0, '2.0.4', '0802', 'http://updates.rockettheme.com/joomla/292/a0cbba72', '', ''),
(66, 5, 0, 'RokStock Module', '', 'mod_rokstock', 'module', '', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/295/87c1121c', '', ''),
(67, 5, 0, 'RokFeatureTable Module', '', 'mod_rokfeaturetable', 'module', '', 0, '1.7', '0802', 'http://updates.rockettheme.com/joomla/296/fb9111b3', '', ''),
(68, 5, 0, 'RokMiniEvents3 Module', '', 'mod_rokminievents3', 'module', '', 0, '3.0.2', '0802', 'http://updates.rockettheme.com/joomla/297/1686051690', '', ''),
(69, 5, 0, 'RokQuickCart Extension', '', 'com_rokquickcart', 'component', '', 1, '2.1.4', '0802', 'http://updates.rockettheme.com/joomla/298/ddfa10eb', '', ''),
(70, 5, 0, 'RokNavMenu Module', '', 'mod_roknavmenu', 'module', '', 0, '2.0.8', '0802', 'http://updates.rockettheme.com/joomla/300/5a9aa468', '', ''),
(71, 5, 0, 'RokCandy Extension', '', 'rokcandy', 'plugin', 'system', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/302/2df8a4e2', '', ''),
(72, 5, 0, 'RokComments Plugin', '', 'rokcomments', 'plugin', 'content', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/303/d1fd7b76', '', ''),
(73, 5, 0, 'RokSocialButtons Plugin', '', 'roksocialbuttons', 'plugin', 'content', 0, '1.5.3', '0802', 'http://updates.rockettheme.com/joomla/381/269989291', '', ''),
(74, 10, 10049, 'pkg_gantry5', 'Gantry Framework', 'pkg_gantry5', 'package', '', 0, '5.2.0', '', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 'http://docs.gantry.org/gantry5', ''),
(75, 11, 0, 'Hydrogen', 'Hydrogen Template', 'g5_hydrogen', 'template', '', 0, '5.2.0', '', 'http://updates.gantry.org/5.0/joomla/tpl_g5_hydrogen.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_update_sites`
--

CREATE TABLE IF NOT EXISTS `bxnaz_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bxnaz_update_sites`
--

INSERT INTO `bxnaz_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1446435084, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1446435084, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1446435082, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1446435082, ''),
(5, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1446435082, ''),
(10, 'Gantry 5', 'extension', 'http://updates.gantry.org/5.0/joomla/pkg_gantry5.xml', 1, 1446435082, ''),
(11, 'Gantry 5', 'collection', 'http://updates.gantry.org/5.0/joomla/list.xml', 1, 1446435082, '');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bxnaz_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `bxnaz_update_sites_extensions`
--

INSERT INTO `bxnaz_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 10013),
(5, 10015),
(5, 10029),
(5, 10031),
(5, 10033),
(5, 10035),
(5, 10082),
(10, 10049),
(11, 10049);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_usergroups`
--

CREATE TABLE IF NOT EXISTS `bxnaz_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bxnaz_usergroups`
--

INSERT INTO `bxnaz_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Customer'),
(3, 2, 9, 14, 'Business'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_users`
--

CREATE TABLE IF NOT EXISTS `bxnaz_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `lastName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `facebookId` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=438 ;

--
-- Dumping data for table `bxnaz_users`
--

INSERT INTO `bxnaz_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `lastName`, `firstName`, `avatar`, `facebookId`) VALUES
(427, 'Adminstrator', 'myloyal', 'tuan@mywebcreations.dk', '$2y$10$YANdVzT4LAXSQM84Lirm7umX.KyxFsdA9B9yBe.anm1zN6v9K2vNK', 0, 1, '2015-10-08 11:11:49', '2015-11-02 04:15:24', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0, 'ccc', 'aaa', '', ''),
(430, 'aaa werwerwe', 'aaa@aaa.com', 'aaa@aaa.com', '$2y$10$CVfg7U3zX9VO8aqRHWRnZu4/ed4GZPNBVf4a0UYnqMUuOJ1CsgMTK', 0, 1, '2015-10-18 23:40:57', '2015-10-18 17:01:14', '', '', '0000-00-00 00:00:00', 0, '', '', 0, 'werwerwe', 'aaa', '1745dc4d3ad132a15cf5dd185d5d604214391204.jpg', ''),
(431, 'abc qweqwe', 'abc@abc.com', 'abc@abc.com', '', 0, 1, '2015-10-20 10:34:46', '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00', 0, '', '', 0, 'qweqwe', 'abc', '', '123456'),
(432, '1 1', '11111111@gmail.coom', '11111111@gmail.coom', '$2y$10$9CMHeZtTzGDtqcQ.THgYx.pGtiqWLMe7mBBb2RN7s3XgFrv9xU1Pi', 1, 0, '2015-10-28 10:22:25', '0000-00-00 00:00:00', 'e54d837c3adaf0fe21a9a46acd4c4585', '{}', '0000-00-00 00:00:00', 0, '', '', 0, '1', '1', '', ''),
(433, '1 1', '111111@fnaa.com', '111111@fnaa.com', '$2y$10$7h5K7tRpKMDKZs.rOe.WauB1yKISdWjtXYuFw/Zs9zS/Lw7lRvMAC', 1, 0, '2015-10-28 10:23:20', '0000-00-00 00:00:00', 'db79bbacaa37e414a69a233b287d5778', '{}', '0000-00-00 00:00:00', 0, '', '', 0, '1', '1', '', ''),
(434, '1 1', '1@gmail.comaa', '1@gmail.comaa', '$2y$10$MYrWdqIQwFUmhcDEeX2fv.e.3SjKhrqwjQ15XOsiyqTQYD.WFH0Lu', 1, 0, '2015-10-28 10:33:14', '0000-00-00 00:00:00', '7b37e8228e34aa38b45e699bf0ca37f0', '{}', '0000-00-00 00:00:00', 0, '', '', 0, '1', '1', '', ''),
(435, '1 1', 'vn@gmail.com', 'vn@gmail.com', '$2y$10$OkpssBMTwfLLL4Yxc2WWkeSBL4.33wbI8iA2JwVSvYHjLp/dJ17Xa', 1, 0, '2015-10-28 10:34:44', '0000-00-00 00:00:00', '2f2057736293953728d8d193da7e5783', '{}', '0000-00-00 00:00:00', 0, '', '', 0, '1', '1', '', ''),
(436, '1 1', '1111@gmail.comm', '1111@gmail.comm', '$2y$10$dMy29lAwqndfwmEn0uK7nuIhrGNsSEcsiJPeePiLumgLxR17mUcci', 1, 0, '2015-10-28 10:35:40', '0000-00-00 00:00:00', '5c27d2ef6e7a268f0ccb126d7be6d9cc', '{}', '0000-00-00 00:00:00', 0, '', '', 0, '1', '1', '', ''),
(437, '1 1', '1@fbasf.com', '1@fbasf.com', '$2y$10$D3xdlH4SD4QDuN3unqHEN.p2M4koEX5tNtLSzeIXIPtLKHtCI/89G', 1, 0, '2015-10-28 10:38:02', '0000-00-00 00:00:00', 'e9f02b803ac1ecbc359d0d114ed2c6e9', '{}', '0000-00-00 00:00:00', 0, '', '', 0, '1', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_user_keys`
--

CREATE TABLE IF NOT EXISTS `bxnaz_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_user_notes`
--

CREATE TABLE IF NOT EXISTS `bxnaz_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bxnaz_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_user_tokens`
--

CREATE TABLE IF NOT EXISTS `bxnaz_user_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `hwId` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bxnaz_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bxnaz_user_usergroup_map`
--

INSERT INTO `bxnaz_user_usergroup_map` (`user_id`, `group_id`) VALUES
(427, 8),
(430, 2),
(431, 2),
(432, 2),
(433, 2),
(434, 2),
(435, 2),
(436, 2),
(437, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bxnaz_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bxnaz_viewlevels`
--

INSERT INTO `bxnaz_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `bxnaz_workingtime`
--

CREATE TABLE IF NOT EXISTS `bxnaz_workingtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessId` int(11) DEFAULT NULL,
  `dateType` tinyint(4) DEFAULT NULL,
  `fromTime` varchar(10) DEFAULT NULL,
  `toTime` varchar(10) DEFAULT NULL,
  `close` tinyint(4) DEFAULT '0' COMMENT '0 : open ; 1 : close',
  `startDate` varchar(20) DEFAULT NULL,
  `endDate` varchar(20) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bxnaz_workingtime`
--

INSERT INTO `bxnaz_workingtime` (`id`, `businessId`, `dateType`, `fromTime`, `toTime`, `close`, `startDate`, `endDate`, `createdAt`, `updatedAt`) VALUES
(1, 1, 2, '9:30', '17', 0, NULL, NULL, '1445920861', NULL),
(2, 1, 3, '9:30', '17', 0, NULL, NULL, '1445920861', NULL),
(3, 1, 4, '9:30', '17', 0, NULL, NULL, '1445920861', NULL),
(4, 1, 5, '9:30', '17', 0, NULL, NULL, '1445920861', NULL),
(5, 1, 6, '9:30', '17', 0, NULL, NULL, '1445920861', NULL),
(6, 1, 7, '9:30', '12', 0, NULL, NULL, '1445920861', NULL),
(7, 1, 8, '', '', 1, NULL, NULL, '1445920861', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
