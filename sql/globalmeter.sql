-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2013 at 06:31 AM
-- Server version: 5.5.31
-- PHP Version: 5.4.17-1~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `globalmeter`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE IF NOT EXISTS `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_index` (`user_id`),
  KEY `assigned_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meter_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `meter_id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'Traffic', 'icon-truck', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(2, 1, 'Economy & Tourism', 'icon-plane', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(3, 1, 'Education', 'icon-book', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(4, 1, 'Finances', 'icon-eur', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(5, 1, 'Health & Care', 'icon-user-md', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(6, 1, 'Social', 'icon-group', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(7, 1, 'Residence & Planning', 'icon-home', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(8, 1, 'Energy', 'icon-bolt', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(9, 1, 'Culture', 'icon-glass', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(10, 1, 'Democracy', 'icon-flag-checkered', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(11, 2, 'Außenpolitik und Verteidigung', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(12, 2, 'Finanzen, Arbeit & Konsumentenschutz', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(13, 2, 'Gesundheit & Pflege', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(14, 2, 'Inneres & Justiz', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(15, 2, 'Land- & Forstwirtschaft, Umwelt und Wasserwirtschaft', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(16, 2, 'Wirtschaft', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(17, 2, 'Soziales', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(18, 2, 'Wohnen & Raumplannung', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(19, 2, 'Bildung', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(20, 2, 'Kunst, Kultur & Sport', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(21, 2, 'Verkehr', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(22, 2, 'Innovation und Technologie', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(23, 2, 'Wissenschaft und Forschung ', '1', '2013-07-24 17:40:45', '2013-07-24 17:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem ipsum dolor sit amet, mutat utinam nonumy ea mel.', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(2, 1, 1, 'Lorem ipsum dolor sit amet, sale ceteros liberavisse duo ex, nam mazim maiestatis dissentiunt no. Iusto nominavi cu sed, has.', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(3, 1, 1, 'Et consul eirmod feugait mel! Te vix iuvaret feugiat repudiandae. Solet dolore lobortis mei te, saepe habemus imperdiet ex vim. Consequat signiferumque per no, ne pri erant vocibus invidunt te.', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(4, 1, 2, 'Lorem ipsum dolor sit amet, mutat utinam nonumy ea mel.', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(5, 1, 2, 'Lorem ipsum dolor sit amet, sale ceteros liberavisse duo ex, nam mazim maiestatis dissentiunt no. Iusto nominavi cu sed, has.', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(6, 1, 3, 'Lorem ipsum dolor sit amet, mutat utinam nonumy ea mel.', '2013-07-24 16:07:58', '2013-07-24 16:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `direction` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `meters`
--

CREATE TABLE IF NOT EXISTS `meters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `period` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `subdomain` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_p_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `meters`
--

INSERT INTO `meters` (`id`, `title`, `description`, `period`, `start_date`, `subdomain`, `facebook_link`, `twitter_link`, `google_p_link`, `logo`, `country`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Salzburg Meter', 'Der Salzburg Meter ist eine Plattform, die politische Versprechen transparent macht.\nSo ist es für jede/n möglich Einblick in die Erfüllung der Ziele der Salzburger Landesregierung zu nehmen. \nEr bietet Dir die Möglichkeit selbst an der Dokumentation und Überprüfung des Fortschritts teil zu haben. ', 1825, '2013-08-31', 'salzburgmeter', NULL, NULL, NULL, 'upload/sb.png', 1, 1, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(2, 'Austro Meter', 'Der Austro Meter ist eine Plattform, die politische Versprechen transparent macht.\nSo ist es für jede/n möglich Einblick in die Erfüllung der Ziele der oesterreichische Bundesregierung zu nehmen. \nEr bietet Dir die Möglichkeit selbst an der Dokumentation und Überprüfung des Fortschritts teil zu haben.  ', 1825, '2013-10-01', 'austrometer', NULL, NULL, NULL, '1', 0, 0, '2013-07-24 17:40:45', '2013-07-24 17:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_02_05_024934_confide_setup_users_table', 1),
('2013_02_05_043505_create_posts_table', 1),
('2013_02_05_044505_create_comments_table', 1),
('2013_02_08_031702_entrust_setup_tables', 1),
('2013_05_21_024934_entrust_permissions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  UNIQUE KEY `permissions_display_name_unique` (`display_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`) VALUES
(1, 'manage_blogs', 'manage blogs'),
(2, 'manage_posts', 'manage posts'),
(3, 'manage_comments', 'manage comments'),
(4, 'manage_users', 'manage users'),
(5, 'manage_roles', 'manage roles'),
(6, 'post_comment', 'post comment');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_role_permission_id_role_id_unique` (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'In mea autem etiam menandri, quot elitr vim ei, eos semper disputationi id? Per facer appetere eu, duo et animal maiestatis. Omnesque invidunt mnesarchum ex mel, vis no case senserit dissentias. Te mei minimum singulis inimicus, ne labores accusam necessitatibus vel, vivendo nominavi ne sed. Posidonium scriptorem consequuntur cum ex? Posse fabulas iudicabit in nec, eos cu electram forensibus, pro ei commodo tractatos reformidans. Qui eu lorem augue alterum, eos in facilis pericula mediocritatem?\n\nEst hinc legimus oporteat in. Sit ei melius delicatissimi. Duo ex qualisque adolescens! Pri cu solum aeque. Aperiri docendi vituperatoribus has ea!\n\nSed ut ludus perfecto sensibus, no mea iisque facilisi. Choro tation melius et mea, ne vis nisl insolens. Vero autem scriptorem cu qui? Errem dolores no nam, mea tritani platonem id! At nec tantas consul, vis mundi petentium elaboraret ex, mel appareat maiestatis at.\n\nSed et eros concludaturque. Mel ne aperiam comprehensam! Ornatus delicatissimi eam ex, sea an quidam tritani placerat? Ad eius iriure consequat eam, mazim temporibus conclusionemque eum ex.\n\nTe amet sumo usu, ne autem impetus scripserit duo, ius ei mutat labore inciderint! Id nulla comprehensam his? Ut eam deleniti argumentum, eam appellantur definitionem ad. Pro et purto partem mucius!\n\nCu liber primis sed, esse evertitur vis ad. Ne graeco maiorum mea! In eos nostro docendi conclusionemque. Ne sit audire blandit tractatos? An nec dicam causae meliore, pro tamquam offendit efficiendi ut.\n\nTe dicta sadipscing nam, denique albucius conclusionemque ne usu, mea eu euripidis philosophia! Qui at vivendo efficiendi! Vim ex delenit blandit oportere, in iriure placerat cum. Te cum meis altera, ius ex quis veri.\n\nMutat propriae eu has, mel ne veri bonorum tincidunt. Per noluisse sensibus honestatis ut, stet singulis ea eam, his dicunt vivendum mediocrem ei. Ei usu mutat efficiantur, eum verear aperiam definitiones an! Simul dicam instructior ius ei. Cu ius facer doming cotidieque! Quot principes eu his, usu vero dicat an.\n\nEx dicta perpetua qui, pericula intellegam scripserit id vel. Id fabulas ornatus necessitatibus mel. Prompta dolorem appetere ea has. Vel ad expetendis instructior!\n\nTe his dolorem adversarium? Pri eu rebum viris, tation molestie id pri. Mel ei stet inermis dissentias. Sed ea dolorum detracto vituperata. Possit oportere similique cu nec, ridens animal quo ex?', 'meta_title1', 'meta_description1', 'meta_keywords1', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(2, 1, 'Vivendo suscipiantur vim te vix', 'vivendo-suscipiantur-vim-te-vix', 'In mea autem etiam menandri, quot elitr vim ei, eos semper disputationi id? Per facer appetere eu, duo et animal maiestatis. Omnesque invidunt mnesarchum ex mel, vis no case senserit dissentias. Te mei minimum singulis inimicus, ne labores accusam necessitatibus vel, vivendo nominavi ne sed. Posidonium scriptorem consequuntur cum ex? Posse fabulas iudicabit in nec, eos cu electram forensibus, pro ei commodo tractatos reformidans. Qui eu lorem augue alterum, eos in facilis pericula mediocritatem?\n\nEst hinc legimus oporteat in. Sit ei melius delicatissimi. Duo ex qualisque adolescens! Pri cu solum aeque. Aperiri docendi vituperatoribus has ea!\n\nSed ut ludus perfecto sensibus, no mea iisque facilisi. Choro tation melius et mea, ne vis nisl insolens. Vero autem scriptorem cu qui? Errem dolores no nam, mea tritani platonem id! At nec tantas consul, vis mundi petentium elaboraret ex, mel appareat maiestatis at.\n\nSed et eros concludaturque. Mel ne aperiam comprehensam! Ornatus delicatissimi eam ex, sea an quidam tritani placerat? Ad eius iriure consequat eam, mazim temporibus conclusionemque eum ex.\n\nTe amet sumo usu, ne autem impetus scripserit duo, ius ei mutat labore inciderint! Id nulla comprehensam his? Ut eam deleniti argumentum, eam appellantur definitionem ad. Pro et purto partem mucius!\n\nCu liber primis sed, esse evertitur vis ad. Ne graeco maiorum mea! In eos nostro docendi conclusionemque. Ne sit audire blandit tractatos? An nec dicam causae meliore, pro tamquam offendit efficiendi ut.\n\nTe dicta sadipscing nam, denique albucius conclusionemque ne usu, mea eu euripidis philosophia! Qui at vivendo efficiendi! Vim ex delenit blandit oportere, in iriure placerat cum. Te cum meis altera, ius ex quis veri.\n\nMutat propriae eu has, mel ne veri bonorum tincidunt. Per noluisse sensibus honestatis ut, stet singulis ea eam, his dicunt vivendum mediocrem ei. Ei usu mutat efficiantur, eum verear aperiam definitiones an! Simul dicam instructior ius ei. Cu ius facer doming cotidieque! Quot principes eu his, usu vero dicat an.\n\nEx dicta perpetua qui, pericula intellegam scripserit id vel. Id fabulas ornatus necessitatibus mel. Prompta dolorem appetere ea has. Vel ad expetendis instructior!\n\nTe his dolorem adversarium? Pri eu rebum viris, tation molestie id pri. Mel ei stet inermis dissentias. Sed ea dolorum detracto vituperata. Possit oportere similique cu nec, ridens animal quo ex?', 'meta_title2', 'meta_description2', 'meta_keywords2', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(3, 1, 'In iisque similique reprimique eum', 'in-iisque-similique-reprimique-eum', 'In mea autem etiam menandri, quot elitr vim ei, eos semper disputationi id? Per facer appetere eu, duo et animal maiestatis. Omnesque invidunt mnesarchum ex mel, vis no case senserit dissentias. Te mei minimum singulis inimicus, ne labores accusam necessitatibus vel, vivendo nominavi ne sed. Posidonium scriptorem consequuntur cum ex? Posse fabulas iudicabit in nec, eos cu electram forensibus, pro ei commodo tractatos reformidans. Qui eu lorem augue alterum, eos in facilis pericula mediocritatem?\n\nEst hinc legimus oporteat in. Sit ei melius delicatissimi. Duo ex qualisque adolescens! Pri cu solum aeque. Aperiri docendi vituperatoribus has ea!\n\nSed ut ludus perfecto sensibus, no mea iisque facilisi. Choro tation melius et mea, ne vis nisl insolens. Vero autem scriptorem cu qui? Errem dolores no nam, mea tritani platonem id! At nec tantas consul, vis mundi petentium elaboraret ex, mel appareat maiestatis at.\n\nSed et eros concludaturque. Mel ne aperiam comprehensam! Ornatus delicatissimi eam ex, sea an quidam tritani placerat? Ad eius iriure consequat eam, mazim temporibus conclusionemque eum ex.\n\nTe amet sumo usu, ne autem impetus scripserit duo, ius ei mutat labore inciderint! Id nulla comprehensam his? Ut eam deleniti argumentum, eam appellantur definitionem ad. Pro et purto partem mucius!\n\nCu liber primis sed, esse evertitur vis ad. Ne graeco maiorum mea! In eos nostro docendi conclusionemque. Ne sit audire blandit tractatos? An nec dicam causae meliore, pro tamquam offendit efficiendi ut.\n\nTe dicta sadipscing nam, denique albucius conclusionemque ne usu, mea eu euripidis philosophia! Qui at vivendo efficiendi! Vim ex delenit blandit oportere, in iriure placerat cum. Te cum meis altera, ius ex quis veri.\n\nMutat propriae eu has, mel ne veri bonorum tincidunt. Per noluisse sensibus honestatis ut, stet singulis ea eam, his dicunt vivendum mediocrem ei. Ei usu mutat efficiantur, eum verear aperiam definitiones an! Simul dicam instructior ius ei. Cu ius facer doming cotidieque! Quot principes eu his, usu vero dicat an.\n\nEx dicta perpetua qui, pericula intellegam scripserit id vel. Id fabulas ornatus necessitatibus mel. Prompta dolorem appetere ea has. Vel ad expetendis instructior!\n\nTe his dolorem adversarium? Pri eu rebum viris, tation molestie id pri. Mel ei stet inermis dissentias. Sed ea dolorum detracto vituperata. Possit oportere similique cu nec, ridens animal quo ex?', 'meta_title3', 'meta_description3', 'meta_keywords3', '2013-07-24 16:07:58', '2013-07-24 16:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `promises`
--

CREATE TABLE IF NOT EXISTS `promises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `current_status` text COLLATE utf8_unicode_ci,
  `current_status_src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `promises`
--

INSERT INTO `promises` (`id`, `category_id`, `name`, `state`, `start_date`, `end_date`, `description`, `current_status`, `current_status_src`, `created_at`, `updated_at`) VALUES
(1, 1, 'Traffic light control system for Saalfelden', 0, NULL, NULL, 'blabla', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(2, 10, 'Establishment of direct democracy in municipal law.', 0, NULL, NULL, 'Verankerung des Modells der Direkten Demokratie Stadtrecht', 'Die Stadt Salzburg könnte zu einem österreichweiten Vorreiter und Vorbild in Sachen Direkte Demokratie werden. Bürgerinitiativen haben ein dreistufiges Modell zur Bürgermitbestimmung mit Initiativrecht, Bürgerbegehren und Bürgerabstimmung (Volksentscheid) ausgearbeitet und Anfang Juli präsentiert. Der Salzburger Bürgermeister Schaden will dieses Modell nun durch den Verfassungsdienst prüfen lassen, um es anschließend in einen Gesetzestext zu gießen und dem Landtag vorzulegen (siehe ORF Salzburg 02.07.2010, Standard 07.07.2010 und Salzburger Fenster 14.07.2010).', 'http://www.mehr-demokratie.at/service/meldungen/272-salzburger-initiative-fuer-mehr-direkte-demokratie.html', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(3, 9, 'Long term funding agreement for cultural institutions..', 0, NULL, NULL, 'Mittelfristige Fördervereinbahrung für Kultureinrichtungen', 'Weiterentwicklung der Kulturförderung zu Ziel- und Wirkungsorientierung, unter anderem durch mittelfristige Förder- und Zielvereinbarungen. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(4, 9, 'Establishment of a folk culture building.', 0, NULL, NULL, 'Errichtung eines Hauses der Volkskultur', 'Die Salzburger Volkskultur ist in Stadt und Land Salzburg bestens vernetzt. Neben der Pflege der Tradition soll sie verstärkt auch für einen internationalen Kulturaustausch und zur Stärkung des kulturellen Miteinanders in der Gesellschaft tätig sein. Wir bekennen uns zur Errichtung eines Hauses der Volkskultur.', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(5, 9, 'Examination of a regional Lungauer cultural center.', 0, NULL, NULL, 'Prüfung eines regionalen Lungauer Kulturzentrums.', 'Prüfen nochmals die Möglichkeit eines regionalen Kulturzentrums im Lungau. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(6, 8, 'Funding for photovoltaiksystems.', 0, NULL, NULL, 'Finanzierung für Photovoltaikanlagen.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(7, 8, 'Consistent licensing creterias for wind turbines.', 0, NULL, NULL, 'Einheitliche Genehmigungskriterien für Windkraftanlagen.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(8, 8, 'Partial cabling of a 380 kV powerline.', 0, NULL, NULL, 'Teilverkabelung einer 380 kV Leitung.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(9, 1, 'Regional trains for Pinzgau.', 0, NULL, NULL, 'S-Bahn in Pinzgau.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(10, 1, 'Public transport for 365 euros per year.', 0, NULL, NULL, 'Öffis-Ticket für 365 euro im Jahr fürs ganze Bundesland - 60 euro für Schüler.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(11, 1, 'Construction of a tunnel in Flachgau.', 0, NULL, NULL, 'Bau des Gitzentunnels im Flachgau.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(12, 7, 'Rearrange of the country residential building fond.', 0, NULL, NULL, 'Neuordnung des Landeswohnbaufonds.', 'Der Landeswohnbaufonds soll auf neue Beine gestellt und die Bereiche Kontrolle, Steuerung und Transparenz sollen besonders berücksichtigt werden. Weiters muss ein Kontrollgremium geschaffen werden, dem insbesondere auch die Rechte der Budgetgenehmigung, Genehmigung des Jahresabschlusses, Kontrolle der Förderquoten und die effektive Kontrolle der Geschäftsführung zukommen. Zudem ist der Landeswohnbaufonds auf eine doppelte Buchführung um zustellen. Die Spekulation mit Geldern des Landeswohnbaufonds soll jedenfalls verboten sein.', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(13, 7, 'Main programmes for subsizized rental flats for metropolitan areas.', 0, NULL, NULL, 'Schwerpunktprogramme für geförderte Mietwohnungen in Ballungszentrum.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(14, 7, 'New regional development law for the building land.', 0, NULL, NULL, 'Neues Raumordnungsgesetz für Baulandmobilisierung.', 'Maßnahmen zur Mobilisierung nicht genutzter Betriebsflächen und Förderung der Entwicklung interkommunaler Betriebsstandorte zum Zwecke von Ansiedlungen und Betriebserweiterungen.', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(15, 7, 'Buildingland dedication if required -> dedication back after 10 years.', 0, NULL, NULL, 'Baulandwidmung nur bei Bedarf - Rückwidmung nach 10 Jahren.', 'Konkret verankerte Maßnahmen wie Vertragsraumordnung, Vorbehaltsflächen und Rückwidmungen liefern das Instrumentarium, um Wohnen in Salzburg wieder leistbar machen.', 'http://www.gruene.at/themen/demokratie-verfassung/salzburger-regierungsuebereinkommen', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(16, 6, 'Growth of the housing benefits for temporary leases.', 0, NULL, NULL, 'Ausweitung der Wohnbeihilfe auf befristete Mietverträge.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(17, 6, 'Funding contracts over several years for women’s shelter.', 0, NULL, NULL, 'Mehrjährige Förderverträge für Frauenhäuser.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(18, 5, 'Obtaining all hospitals. ', 0, NULL, NULL, 'Alle Spitalsstandorte erhalten.', 'Wir wollen eine weitere Aufwertung von Hausärztinnen und Hausärzten als ersten Ansprechpartnerinnen und -partnern, Vertrauenspersonen und „Lotsen“ durch das Gesundheitssystem. Gemeinsam mit den Krankenversicherungsträgern und der Ärztekammer werden wir geeignete Maßnahmen/Anreize setzen, damit Patientinnen und Patienten in der Regel niedergelassene Ärztinnen bzw. Ärzte ihres Vertrauens aufsuchen, bevor Ambulanzen kontaktiert werden. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(19, 5, 'Raising the tax-free wealth to 10.000 € if you are in need for care.', 0, NULL, NULL, 'Anhebung des Schonvermögens bei Pflegebedarf auf 10.000 Euro.', 'Wer Pflege braucht, darf nicht enteignet werden. Daher planen wir die Anhebung des\r\nSchonvermögens auf 10.000 Euro und den Verzicht auf den Pflegeregress zur Befriedigung des dringenden eigenen Wohnbedürfnisses oder jenes naher Angehöriger. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(20, 5, 'Abandonment for the regress of care to secure the own urgent housing needs or close relatives.', 0, NULL, NULL, 'Verzicht auf den Pflegeregress zur Befriedigung des dringenden eigenen Wohnbedarfs oder naher Angehöriger.', 'Altersgerechte Adaptierung von bestehenden Wohnungen sowie Entwicklung und Umsetzung von Maßnahmen zur Vermeidung von Pflegebedürftigkeit; Ausbau von alternativen, seniorengerechten Wohnformen. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(21, 4, 'No new debts starting in 2016.', 0, NULL, NULL, 'Keine Neuverschuldung ab 2016.', 'Das Regierungsprogramm von Schwarz-Grün-Stronach (Prosperia Salzburg berichtete) sieht als zentrale politische Eckpunkte vor, die Landesbudgets bis einschließlich 2016 stufenweise an einen ausgeglichenen Haushalt heranführen. ', 'http://www.prosperia-salzburg.at/haslauer-regierung-verspricht-transparenz-als-leitmotiv-der-politischen-arbeit/ ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(22, 4, 'Debt reduction starting in 2017.', 0, NULL, NULL, 'Schuldenabbau ab 2017.', 'Ab dem Jahr 2017 will Haslauer die Schulden über die Gesamtdauer von 25 Jahren unter dem Motto „verantwortungsvolles, nachhaltiges Wirtschaften“ abbauen. Laut Expertenschätzungen betragen die Haushaltsschulden des Landes Salzburg etwa 2,7 Milliarden Euro. ', 'http://www.prosperia-salzburg.at/haslauer-regierung-verspricht-transparenz-als-leitmotiv-der-politischen-arbeit/', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(23, 4, 'Reduction of all speculative transactions in the next 18 months.', 0, NULL, NULL, '(Abbau aller Spekulationsgeschäfte in den kommenden 18 Monaten.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(24, 4, 'Replacement of cameralistic with double-entry accounting.', 0, NULL, NULL, 'Ablöse der Kameralistik durch die doppelte Buchhaltung.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(25, 4, 'Restructuring of the financial department at the state government. ', 0, NULL, NULL, 'Neustrukturierung der Finanzabteilung in der Landesregierung.', NULL, NULL, '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(26, 3, 'Combined school for 10 to 14 year olds.', 0, NULL, NULL, 'gemeinsame Schule der 10- bis 14- Jährigen.', 'Modellstandort (Schulversuch) für die Gemeinsame Schule der Zehn- bis 14-Jährigen ab dem Schuljahr 2014/15. ', 'http://www.gruene.at/themen/demokratie-verfassung/salzburger-regierungsuebereinkommen', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(27, 3, 'Offer after-school care.', 0, NULL, NULL, 'Schulen mit Ganztagsbetreuung.', 'Ganztagsbetreuung ausbauen: Für viele Familien ist es schwierig, mittags und nachmittags eine Betreuung für ihre Kinder zu organisieren. Das Ziel muss sein: Jedes Kind soll ein warmes Mittagessen bekommen. Durch Kooperationen von Kindergärten, Schulen und verschiedenen Einrichtungen kann das auch flächendeckend erreicht werden. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(28, 3, 'Objektiv selection of school directors without party affinity.', 0, NULL, NULL, 'Objektivierung der Bestellung von Schuldirektor ohne parteipolitische Kriterien.', 'Die Bestellung von Schulleiterinnen bzw. Schulleitern muss objektiviert und völlig neu\r\ngeregelt werden. Parteipolitische Kriterien dürfen dabei keine Rolle spielen. Ebenso ist\r\ndie Anstellung der Lehrer/innen im Bundesschulbereich transparenter zu gestalten und\r\nneu zu regeln.', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(29, 3, 'Pilot project for a vocational school with graduation and professional education for the nursing sector.', 0, NULL, NULL, 'Pilotprojekt für eine berufsbildende höhere Schule für Pflegeberufe mit Matura und Fachausbildung.', 'Novellierung des Salzburger Kinderbetreuungsgesetzes: Wir wollen die Betreuungsangebote für Kinder ausbauen, flexibler gestalten und qualitativ weiter verbessern. Das Gehaltsschema und das Dienstzeitenschema für Pädagoginnen und Pädagogen in Kinderbetreuungseinrichtungen werden in einem partnerschaftlichen Weg mit den Städten und Gemeinden sowie der Interessenvertretung der Pädagoginnen und Pädagogen modernisiert und attraktiviert. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(30, 2, 'Support of “green jobs”, meaning providing people with jobs in the green technology sector.', 0, NULL, NULL, 'Förderung von "Green Jobs", also Arbeitsplätzen im Bereich grüner Technologien.', 'Salzburg als Vorreiter in der Energietechnik: Ziel ist die Schaffung von Arbeitsplätzen im Bereich grüner Technologien (green jobs) sowie weitere Entkoppelung von Wirtschaftswachstum und Ressourcenverbrauch. Deshalb werden Best-Practice-Beispiele und Forschung in diesem Bereich unterstützt. Es soll eine Plattform für Salzburger Unternehmen gegründet werden, die im Bereich der erneuerbaren Energien tätig sind. Dieses „Netzwerk erneuerbare Energie“ soll längerfristig zu einem „Energiecluster Salzburg“ ausgebaut werden. ', 'http://www.salzburgstandortzukunft.at/ ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(31, 2, 'Funding for economic development for more sustainability in enterprises.', 0, NULL, NULL, 'Förderung der Gemeinwohlökonomie für Betriebe.', 'Serviceorientierung im Bereich der Verwaltung: Zur Erleichterung von Betriebsansiedlungen und -erweiterungen sowie zur Erhöhung der Wettbewerbsfähigkeit braucht es beschleunigte Verfahren, kürzere Entscheidungsfristen und einheitliche Ansprechpartner/innen.', 'http://www.salzburgstandortzukunft.at/ ', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(32, 2, 'No new developement of ski-region, but enhancements and fusions are still possible.', 0, NULL, NULL, 'Keine Neuerschließung von Skigebieten, Erweiterungen und Zusammenschlüsse bleiben möglich.', 'Wir bekennen uns zur Bedeutung der Skigebiete für Salzburg und die Wirtschaft, aber auch zum Grundsatz, dass keine neuen Skigebiete erschlossen werden. Bei Skigebietserweiterungen und -zusammenschlüssen stehen Qualitätsverbesserungen im Vordergrund; dabei sind Klimaverträglichkeit, abnehmende Schneebedeckung und verkehrstechnische Erreichbarkeit mit zu beurteilen. Die Arbeitsgruppe Skianlagen ist fortzuführen. Sie erhält den Auftrag, die innerhalb der kommenden fünf Jahre geplanten Skigebietserweiterungs- und -zusammenschlussprojekte zu erfassen und fachlich unter Miteinbeziehung der ökologischen Tragfähigkeit des Alpenraums zu analysieren und zu bewerten. Dabei ist ein von der Landesregierung zu beschließendes landesweites Freiraumkonzept zu Grunde zu legen. Dieses hat zur Vermeidung von Nutzungskonflikten in Umsetzung der Alpenkonvention touristische Zonen und alpine Ruhezonen inkl. Wildkorridore auszuweisen. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf', '2013-07-24 17:40:45', '2013-07-24 17:40:45'),
(33, 2, 'Reintroduction of local exhibitions and a new “Sound of Music” centre.', 0, NULL, NULL, 'Wiedereinführung von Landesausstellungen und ein neues "Sound of Music"-Center.', 'Wir beabsichtigen die Wiedereinführung von Landesausstellungen mit besonderer Berücksichtigung von „200 Jahre Salzburg bei Österreich 2016“ und „200 Jahre Stille Nacht 2018. ', 'http://www.salzburg.gv.at/arbeitsuebereinkommen2013.pdf ', '2013-07-24 17:40:45', '2013-07-24 17:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(2, 'comment', '2013-07-24 16:07:58', '2013-07-24 16:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `confirmation_code`, `confirmed`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.org', '$2y$08$ilwh0XZ.3inmx1H60SeAPeahRtJpRHxA1iSqsOq2rWRKrAwgYxHd6', '34387d6062ad01ad2b82235d9998b96d', 1, '2013-07-24 16:07:58', '2013-07-24 16:07:58'),
(2, 'user', 'user@example.org', '$2y$08$9tt6qYRw.vXmyHnuBkH.y.CFP74X7KBwnLCKVMnLIYx53q./UjTm6', '59d2ff43a6059da2f5b07eafac22232a', 1, '2013-07-24 16:07:58', '2013-07-24 16:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `profile_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `political` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relationship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_employer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education_degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voter` int(11) NOT NULL,
  `promise` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `state` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
