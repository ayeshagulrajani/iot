-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 12:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add association', 8, 'add_association'),
(30, 'Can change association', 8, 'change_association'),
(31, 'Can delete association', 8, 'delete_association'),
(32, 'Can view association', 8, 'view_association'),
(33, 'Can add code', 9, 'add_code'),
(34, 'Can change code', 9, 'change_code'),
(35, 'Can delete code', 9, 'delete_code'),
(36, 'Can view code', 9, 'view_code'),
(37, 'Can add nonce', 10, 'add_nonce'),
(38, 'Can change nonce', 10, 'change_nonce'),
(39, 'Can delete nonce', 10, 'delete_nonce'),
(40, 'Can view nonce', 10, 'view_nonce'),
(41, 'Can add user social auth', 11, 'add_usersocialauth'),
(42, 'Can change user social auth', 11, 'change_usersocialauth'),
(43, 'Can delete user social auth', 11, 'delete_usersocialauth'),
(44, 'Can view user social auth', 11, 'view_usersocialauth'),
(45, 'Can add partial', 12, 'add_partial'),
(46, 'Can change partial', 12, 'change_partial'),
(47, 'Can delete partial', 12, 'delete_partial'),
(48, 'Can view partial', 12, 'view_partial');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, '!Un3rWBii3k1akXqWdGuZrQWidrLniyNHGOXnuPxN', '2019-10-02 13:39:30.480276', 0, '2017.ayesha.gulrajani', 'AYESHA', 'GULRAJANI', '2017.ayesha.gulrajani@ves.ac.in', 0, 1, '2019-10-02 12:31:02.243076'),
(2, '!GDY1ITdWiJJnZUWW9Z6MSdF3IRezx8pXZjxdixfn', '2019-10-02 13:26:50.343125', 0, '2017.jay.bendre', 'JAY', 'BENDRE', '2017.jay.bendre@ves.ac.in', 0, 1, '2019-10-02 13:26:49.937003');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(8, 'social_django', 'association'),
(9, 'social_django', 'code'),
(10, 'social_django', 'nonce'),
(12, 'social_django', 'partial'),
(11, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-02 12:18:04.443045'),
(2, 'auth', '0001_initial', '2019-10-02 12:18:05.850733'),
(3, 'admin', '0001_initial', '2019-10-02 12:18:13.025382'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-02 12:18:15.235076'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-02 12:18:15.404363'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-02 12:18:16.435861'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-02 12:18:17.088118'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-02 12:18:18.057532'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-02 12:18:18.138075'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-02 12:18:18.605383'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-02 12:18:18.656206'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-02 12:18:18.709203'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-02 12:18:19.836624'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-02 12:18:20.710670'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-02 12:18:21.990154'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-02 12:18:22.041969'),
(17, 'sessions', '0001_initial', '2019-10-02 12:18:23.317250'),
(18, 'sites', '0001_initial', '2019-10-02 12:18:23.819011'),
(19, 'sites', '0002_alter_domain_unique', '2019-10-02 12:18:24.000111'),
(20, 'default', '0001_initial', '2019-10-02 12:18:25.997151'),
(21, 'social_auth', '0001_initial', '2019-10-02 12:18:26.021340'),
(22, 'default', '0002_add_related_name', '2019-10-02 12:18:27.793104'),
(23, 'social_auth', '0002_add_related_name', '2019-10-02 12:18:27.833521'),
(24, 'default', '0003_alter_email_max_length', '2019-10-02 12:18:28.778880'),
(25, 'social_auth', '0003_alter_email_max_length', '2019-10-02 12:18:28.827217'),
(26, 'default', '0004_auto_20160423_0400', '2019-10-02 12:18:28.876424'),
(27, 'social_auth', '0004_auto_20160423_0400', '2019-10-02 12:18:28.910850'),
(28, 'social_auth', '0005_auto_20160727_2333', '2019-10-02 12:18:29.185633'),
(29, 'social_django', '0006_partial', '2019-10-02 12:18:29.468722'),
(30, 'social_django', '0007_code_timestamp', '2019-10-02 12:18:30.081750'),
(31, 'social_django', '0008_partial_timestamp', '2019-10-02 12:18:31.083020'),
(32, 'social_django', '0001_initial', '2019-10-02 12:18:31.441479'),
(33, 'social_django', '0003_alter_email_max_length', '2019-10-02 12:18:31.544736'),
(34, 'social_django', '0005_auto_20160727_2333', '2019-10-02 12:18:31.591566'),
(35, 'social_django', '0002_add_related_name', '2019-10-02 12:18:31.622760'),
(36, 'social_django', '0004_auto_20160423_0400', '2019-10-02 12:18:31.669655');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ydk0ax6dgr10spxuo77h3rg26o8tzy82', 'NzM1ZmQ1M2E5MGYwYWQ5NjQzMzMzN2ZmNGRkZTJmNmQxNTg3NmU4Yjp7Imdvb2dsZS1vYXV0aDJfc3RhdGUiOiJ3aXlWMU1kajY1a240cnNQZkJiY0RNb3J3enNlUmZBQSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic29jaWFsX2NvcmUuYmFja2VuZHMuZ29vZ2xlLkdvb2dsZU9BdXRoMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImJlMGJkZWEzMjdiMDA1ODM3MDc0Y2YwZTgxM2Q5YjdmY2Q2NzhmMGUiLCJzb2NpYWxfYXV0aF9sYXN0X2xvZ2luX2JhY2tlbmQiOiJnb29nbGUtb2F1dGgyIn0=', '2019-10-16 13:26:50.410979');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `number` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `incharge_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`number`, `name`, `incharge_id`) VALUES
(501, 'sql lab', 2),
(502, 'language lab', 4),
(503, 'IoT Lab', 11);

-- --------------------------------------------------------

--
-- Table structure for table `movement`
--

CREATE TABLE `movement` (
  `m_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `in` int(11) NOT NULL,
  `out` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movement`
--

INSERT INTO `movement` (`m_id`, `p_id`, `in`, `out`, `user_id`) VALUES
(0, 0, 0, 0, 0),
(1, 32, 501, 502, 26),
(2, 14, 502, 502, 29),
(3, 8, 503, 501, 8),
(4, 16, 503, 501, 8),
(5, 3, 502, 502, 29),
(6, 11, 501, 501, 47),
(7, 10, 501, 501, 31),
(8, 22, 501, 502, 40),
(9, 32, 503, 501, 1),
(10, 22, 501, 502, 16),
(11, 3, 503, 503, 3),
(12, 38, 501, 501, 5),
(13, 10, 501, 502, 8),
(14, 5, 502, 502, 15),
(15, 20, 502, 502, 27),
(16, 32, 503, 501, 8),
(17, 27, 502, 501, 26),
(18, 39, 503, 503, 45),
(19, 19, 502, 503, 29),
(20, 33, 501, 503, 34),
(21, 5, 501, 503, 18),
(22, 4, 502, 502, 28),
(23, 30, 503, 503, 43),
(24, 17, 501, 501, 34),
(25, 12, 501, 503, 32),
(26, 10, 502, 502, 2),
(27, 31, 503, 501, 25),
(28, 7, 502, 502, 7),
(29, 18, 503, 502, 16),
(30, 1, 501, 501, 2),
(31, 33, 501, 502, 22),
(32, 7, 502, 501, 20),
(33, 3, 502, 503, 46),
(34, 16, 501, 502, 34),
(35, 11, 501, 502, 36),
(36, 35, 503, 503, 18),
(37, 27, 502, 503, 50),
(38, 16, 501, 501, 19),
(39, 31, 501, 503, 35),
(40, 9, 501, 501, 32),
(41, 28, 502, 502, 50),
(42, 39, 503, 502, 9),
(43, 21, 501, 501, 29),
(44, 19, 503, 501, 5),
(45, 14, 501, 502, 47),
(46, 15, 503, 503, 33),
(47, 1, 503, 502, 19),
(48, 11, 501, 501, 15),
(49, 19, 501, 501, 37),
(50, 16, 503, 503, 29),
(51, 13, 502, 501, 30),
(52, 9, 503, 503, 49),
(53, 32, 503, 502, 15),
(54, 7, 503, 502, 38),
(55, 11, 502, 503, 43),
(56, 28, 501, 503, 38),
(57, 33, 501, 502, 5),
(58, 35, 503, 502, 24),
(59, 13, 503, 503, 3),
(60, 15, 501, 503, 7),
(61, 27, 501, 501, 8),
(62, 36, 503, 503, 20),
(63, 17, 501, 502, 48),
(64, 20, 502, 502, 2),
(65, 28, 501, 501, 25),
(66, 25, 502, 503, 4),
(67, 6, 501, 503, 5),
(68, 28, 502, 502, 4),
(69, 15, 501, 502, 45);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `status` int(1) NOT NULL COMMENT '0-success, 1-failed',
  `movement_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `rfid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `source_lab` int(11) NOT NULL,
  `destination_lab` int(11) NOT NULL,
  `last_serviced_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`rfid`, `name`, `details`, `source_lab`, `destination_lab`, `last_serviced_date`) VALUES
(0, 'name', 'details', 0, 0, '0000-00-00 00:00:00'),
(11, 'product1', '', 502, 0, '0000-00-00 00:00:00'),
(12, 'product2', '', 501, 0, '0000-00-00 00:00:00'),
(13, 'product3', '', 501, 0, '0000-00-00 00:00:00'),
(14, 'product4', '', 503, 0, '0000-00-00 00:00:00'),
(15, 'product5', '', 503, 0, '0000-00-00 00:00:00'),
(16, 'product6', '', 503, 0, '0000-00-00 00:00:00'),
(17, 'product7', '', 503, 0, '0000-00-00 00:00:00'),
(18, 'product8', '', 501, 0, '0000-00-00 00:00:00'),
(19, 'product9', '', 502, 0, '0000-00-00 00:00:00'),
(110, 'product10', '', 503, 0, '0000-00-00 00:00:00'),
(111, 'product11', '', 503, 0, '0000-00-00 00:00:00'),
(112, 'product12', '', 502, 0, '0000-00-00 00:00:00'),
(113, 'product13', '', 501, 0, '0000-00-00 00:00:00'),
(114, 'product14', '', 503, 0, '0000-00-00 00:00:00'),
(115, 'product15', '', 502, 0, '0000-00-00 00:00:00'),
(116, 'product16', '', 502, 0, '0000-00-00 00:00:00'),
(117, 'product17', '', 501, 0, '0000-00-00 00:00:00'),
(118, 'product18', '', 502, 0, '0000-00-00 00:00:00'),
(119, 'product19', '', 503, 0, '0000-00-00 00:00:00'),
(120, 'product20', '', 501, 0, '0000-00-00 00:00:00'),
(121, 'product21', '', 501, 0, '0000-00-00 00:00:00'),
(122, 'product22', '', 501, 0, '0000-00-00 00:00:00'),
(123, 'product23', '', 503, 0, '0000-00-00 00:00:00'),
(124, 'product24', '', 502, 0, '0000-00-00 00:00:00'),
(125, 'product25', '', 501, 0, '0000-00-00 00:00:00'),
(126, 'product26', '', 503, 0, '0000-00-00 00:00:00'),
(127, 'product27', '', 502, 0, '0000-00-00 00:00:00'),
(128, 'product28', '', 501, 0, '0000-00-00 00:00:00'),
(129, 'product29', '', 503, 0, '0000-00-00 00:00:00'),
(130, 'product30', '', 502, 0, '0000-00-00 00:00:00'),
(131, 'product31', '', 502, 0, '0000-00-00 00:00:00'),
(132, 'product32', '', 502, 0, '0000-00-00 00:00:00'),
(133, 'product33', '', 502, 0, '0000-00-00 00:00:00'),
(134, 'product34', '', 503, 0, '0000-00-00 00:00:00'),
(135, 'product35', '', 503, 0, '0000-00-00 00:00:00'),
(136, 'product36', '', 502, 0, '0000-00-00 00:00:00'),
(137, 'product37', '', 501, 0, '0000-00-00 00:00:00'),
(138, 'product38', '', 502, 0, '0000-00-00 00:00:00'),
(139, 'product39', '', 501, 0, '0000-00-00 00:00:00'),
(140, 'product40', '', 501, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`) VALUES
(1, 'google-oauth2', '2017.ayesha.gulrajani@ves.ac.in', '{\"auth_time\": 1570022669, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Il-UB9tEEqMEEMIM96Uav_pIyK1yh8ZNWWLZPn6NkXPt9iV5Xp9oVExkYyvVLCWup2_AsYMkR4LbPCawyrun28J_edWVCAV7rZIqylZu_CsbuGCSEeW-884reDkpQEQ2hQ\"}', 1),
(2, 'google-oauth2', 'ayeshagulrajani@gmail.com', '{\"auth_time\": 1570023570, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Il-UBy41_kQWdzaaAnO2V_nDPtT-vgUblqtKURyTdL1BtUz2YvWroe-F64xelV9nhqQgIXQ2Me_xIFShM6Uyn1f5nejW_blS9cc2epswl_QOt0ZQObIk2XZJGZqOKF83yg\"}', 1),
(3, 'google-oauth2', '2017.jay.bendre@ves.ac.in', '{\"auth_time\": 1570022830, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Il-UB8n3QiqKxPi1TSjHe8E7HO-UurQnSbL31iAODIVG_tnig-Bef3J-hWgkHQRrPpu5oBoErMdm7cD4DzLWkmsBVEsFsc0s3zb-r9TrpTlwJS4_VdPXFcnXFACtTVtyxw\"}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `role` int(1) NOT NULL COMMENT '0-admin, 1-labInchage, 2-peon',
  `dept` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `role`, `dept`, `email`, `address`) VALUES
(1, 'Ayesha Gulrajani', 0, 'INFT', '2017.ayesha.gulrajani@ves.ac.in', 'VES Hostel'),
(2, 'name', 0, 'dept', 'email', 'address'),
(3, 'user3', 2, 'INFT', 'user3@gmail.com', ''),
(4, 'user4', 1, 'INFT', 'user4@gmail.com', ''),
(5, 'user5', 0, 'INFT', 'user5@gmail.com', ''),
(6, 'user6', 2, 'INFT', 'user6@gmail.com', ''),
(7, 'user7', 2, 'INFT', 'user7@gmail.com', ''),
(8, 'user8', 2, 'INFT', 'user8@gmail.com', ''),
(9, 'user9', 2, 'INFT', 'user9@gmail.com', ''),
(10, 'user10', 0, 'INFT', 'user10@gmail.com', ''),
(11, 'user11', 1, 'INFT', 'user11@gmail.com', ''),
(12, 'user12', 2, 'INFT', 'user12@gmail.com', ''),
(13, 'user13', 2, 'INFT', 'user13@gmail.com', ''),
(14, 'user14', 1, 'INFT', 'user14@gmail.com', ''),
(15, 'user15', 2, 'INFT', 'user15@gmail.com', ''),
(16, 'user16', 2, 'INFT', 'user16@gmail.com', ''),
(17, 'user17', 1, 'INFT', 'user17@gmail.com', ''),
(18, 'user18', 2, 'INFT', 'user18@gmail.com', ''),
(19, 'user19', 2, 'INFT', 'user19@gmail.com', ''),
(20, 'user20', 2, 'INFT', 'user20@gmail.com', ''),
(21, 'user21', 2, 'INFT', 'user21@gmail.com', ''),
(22, 'user22', 1, 'INFT', 'user22@gmail.com', ''),
(23, 'user23', 1, 'INFT', 'user23@gmail.com', ''),
(24, 'user24', 2, 'INFT', 'user24@gmail.com', ''),
(25, 'user25', 2, 'INFT', 'user25@gmail.com', ''),
(26, 'user26', 2, 'INFT', 'user26@gmail.com', ''),
(27, 'user27', 2, 'INFT', 'user27@gmail.com', ''),
(28, 'user28', 2, 'INFT', 'user28@gmail.com', ''),
(29, 'user29', 1, 'INFT', 'user29@gmail.com', ''),
(30, 'user30', 2, 'INFT', 'user30@gmail.com', ''),
(31, 'user31', 1, 'INFT', 'user31@gmail.com', ''),
(32, 'user32', 1, 'INFT', 'user32@gmail.com', ''),
(33, 'user33', 1, 'INFT', 'user33@gmail.com', ''),
(34, 'user34', 1, 'INFT', 'user34@gmail.com', ''),
(35, 'user35', 1, 'INFT', 'user35@gmail.com', ''),
(36, 'user36', 2, 'INFT', 'user36@gmail.com', ''),
(37, 'user37', 1, 'INFT', 'user37@gmail.com', ''),
(38, 'user38', 2, 'INFT', 'user38@gmail.com', ''),
(39, 'user39', 1, 'INFT', 'user39@gmail.com', ''),
(40, 'user40', 2, 'INFT', 'user40@gmail.com', ''),
(41, 'user41', 2, 'INFT', 'user41@gmail.com', ''),
(42, 'user42', 2, 'INFT', 'user42@gmail.com', ''),
(43, 'user43', 2, 'INFT', 'user43@gmail.com', ''),
(44, 'user44', 2, 'INFT', 'user44@gmail.com', ''),
(45, 'user45', 2, 'INFT', 'user45@gmail.com', ''),
(46, 'user46', 1, 'INFT', 'user46@gmail.com', ''),
(47, 'user47', 1, 'INFT', 'user47@gmail.com', ''),
(48, 'user48', 1, 'INFT', 'user48@gmail.com', ''),
(49, 'user49', 2, 'INFT', 'user49@gmail.com', ''),
(50, 'user50', 2, 'INFT', 'user50@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`number`),
  ADD KEY `fk_incharge_id` (`incharge_id`) USING BTREE;

--
-- Indexes for table `movement`
--
ALTER TABLE `movement`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD KEY `FK_movement_id` (`movement_id`),
  ADD KEY `FK_uid` (`uid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`rfid`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `labs`
--
ALTER TABLE `labs`
  ADD CONSTRAINT `fk_incharge_id` FOREIGN KEY (`incharge_id`) REFERENCES `user` (`uid`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_movement_id` FOREIGN KEY (`movement_id`) REFERENCES `movement` (`m_id`),
  ADD CONSTRAINT `FK_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
