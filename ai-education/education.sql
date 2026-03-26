-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 17, 2025 at 11:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add image', 7, 'add_image'),
(26, 'Can change image', 7, 'change_image'),
(27, 'Can delete image', 7, 'delete_image'),
(28, 'Can view image', 7, 'view_image'),
(29, 'Can add parent', 8, 'add_parent'),
(30, 'Can change parent', 8, 'change_parent'),
(31, 'Can delete parent', 8, 'delete_parent'),
(32, 'Can view parent', 8, 'view_parent'),
(33, 'Can add student', 9, 'add_student'),
(34, 'Can change student', 9, 'change_student'),
(35, 'Can delete student', 9, 'delete_student'),
(36, 'Can view student', 9, 'view_student'),
(37, 'Can add quiz', 10, 'add_quiz'),
(38, 'Can change quiz', 10, 'change_quiz'),
(39, 'Can delete quiz', 10, 'delete_quiz'),
(40, 'Can view quiz', 10, 'view_quiz'),
(41, 'Can add performance report', 11, 'add_performancereport'),
(42, 'Can change performance report', 11, 'change_performancereport'),
(43, 'Can delete performance report', 11, 'delete_performancereport'),
(44, 'Can view performance report', 11, 'view_performancereport'),
(45, 'Can add assignment', 12, 'add_assignment'),
(46, 'Can change assignment', 12, 'change_assignment'),
(47, 'Can delete assignment', 12, 'delete_assignment'),
(48, 'Can view assignment', 12, 'view_assignment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$ZPumh0hHLtIlpRESvmAjX7$cRFtKVsMO1gr+mR3tlRXt2KVZfMlVB54HQSfGZu4CIU=', '2025-01-16 10:35:50.479971', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-01-16 10:35:25.489332');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'education_app', 'image'),
(8, 'education_app', 'parent'),
(9, 'education_app', 'student'),
(10, 'education_app', 'quiz'),
(11, 'education_app', 'performancereport'),
(12, 'education_app', 'assignment');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-01-14 11:34:56.863213'),
(2, 'auth', '0001_initial', '2025-01-14 11:34:57.331235'),
(3, 'admin', '0001_initial', '2025-01-14 11:34:57.540214'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-01-14 11:34:57.549217'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-01-14 11:34:57.598248'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-01-14 11:34:57.680250'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-01-14 11:34:57.747135'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-01-14 11:34:57.818029'),
(9, 'auth', '0004_alter_user_username_opts', '2025-01-14 11:34:57.829129'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-01-14 11:34:57.881615'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-01-14 11:34:57.882613'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-01-14 11:34:57.891606'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-01-14 11:34:57.937607'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-01-14 11:34:57.976602'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-01-14 11:34:58.032023'),
(16, 'auth', '0011_update_proxy_permissions', '2025-01-14 11:34:58.045459'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-01-14 11:34:58.100039'),
(18, 'education_app', '0001_initial', '2025-01-14 11:34:58.569010'),
(19, 'sessions', '0001_initial', '2025-01-14 11:34:58.637241'),
(20, 'education_app', '0002_delete_assignment', '2025-01-15 02:50:51.636904'),
(21, 'education_app', '0003_assignment', '2025-01-15 02:52:25.807469'),
(22, 'education_app', '0004_alter_quiz_student', '2025-01-15 05:58:32.540813');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6ar4m8l8id7ikvwbu2h4l4khyw8qec7t', 'eyJpZCI6Mywicm9sZSI6InBhcmVudCJ9:1tY25h:Wt9v2c8XKDUgtYGiGo65mtTrE2EouC1-GiIag8xsTkM', '2025-01-29 12:01:45.409985'),
('pdt2lrvzt6hz4gxmposydxmcqqvvarp4', 'eyJpZCI6Mywicm9sZSI6InBhcmVudCJ9:1tYOVL:XMmtiHAtIlpPGzNxSF-vpVkjQ78o2oQ0ndzp2_ExTEQ', '2025-01-30 11:57:43.140776'),
('2pm99r8pppmy5fqpmpiznwcwbkveslsh', 'eyJpZCI6Mywicm9sZSI6InBhcmVudCJ9:1tY0EU:KnIQWWrjPSI4KeTEyjQo-j_vS3VrJsc_QEmptMJQJCM', '2025-01-29 10:02:42.649818'),
('1im4d0x6gjhn2224n8ltoo0evmkh7hp8', 'eyJpZCI6Mywicm9sZSI6InN0dWRlbnQifQ:1tYN2M:dT-k6kI4A0ptk_k6sRNbBqC_8TcC7500bFKvYPC-jJc', '2025-01-30 10:23:42.543925'),
('ebkxj8u8lwmrbmt84bkw9fhasmm5kowp', '.eJxVjEEOwiAQRe_C2hCoQwGX7nsGMgyMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIitDj9bhHpkesO0h3rrUlqdV3mKHdFHrTLqaX8vB7u30HBXr61AlZAnvJZjYzZD4wGtKHIOg3R-OQ4gya23kWmUQM5Y62H6A0hGBbvD_rFOHg:1tYNE6:44RB67Mg0Wvkvx77m6PiUyBLfflWQmiYXzEhtSthvDo', '2025-01-30 10:35:50.481980');

-- --------------------------------------------------------

--
-- Table structure for table `education_app_assignment`
--

DROP TABLE IF EXISTS `education_app_assignment`;
CREATE TABLE IF NOT EXISTS `education_app_assignment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assigned_at` datetime(6) NOT NULL,
  `parent_id` bigint NOT NULL,
  `quiz_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `education_app_assignment_parent_id_c3da0598` (`parent_id`),
  KEY `education_app_assignment_quiz_id_c87c75fb` (`quiz_id`),
  KEY `education_app_assignment_student_id_e1b21cd3` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `education_app_assignment`
--

INSERT INTO `education_app_assignment` (`id`, `assigned_at`, `parent_id`, `quiz_id`, `student_id`) VALUES
(1, '2025-01-15 03:01:37.880245', 1, 1, 1),
(2, '2025-01-15 04:34:17.914175', 1, 1, 1),
(3, '2025-01-15 07:15:33.248922', 3, 8, 3),
(7, '2025-01-15 11:16:35.655420', 3, 10, 3),
(6, '2025-01-15 10:03:32.304911', 3, 9, 3),
(11, '2025-01-16 10:13:01.317673', 3, 21, 3);

-- --------------------------------------------------------

--
-- Table structure for table `education_app_image`
--

DROP TABLE IF EXISTS `education_app_image`;
CREATE TABLE IF NOT EXISTS `education_app_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `tags` varchar(255) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education_app_parent`
--

DROP TABLE IF EXISTS `education_app_parent`;
CREATE TABLE IF NOT EXISTS `education_app_parent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `education_app_parent_email_59c364b7_uniq` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `education_app_parent`
--

INSERT INTO `education_app_parent` (`id`, `name`, `phone_number`, `email`, `password`) VALUES
(1, 'pranav', '1234567891', 'p@gmail.com', '123'),
(2, 'Sreekanth K', '7592033013', 'srekthk@gmail.com', '123446'),
(3, 'Parent A', '7592033013', 'parent@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `education_app_performancereport`
--

DROP TABLE IF EXISTS `education_app_performancereport`;
CREATE TABLE IF NOT EXISTS `education_app_performancereport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `report_data` json NOT NULL,
  `generated_at` datetime(6) NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `education_app_performancereport_student_id_8a615eac` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education_app_quiz`
--

DROP TABLE IF EXISTS `education_app_quiz`;
CREATE TABLE IF NOT EXISTS `education_app_quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quiz_data` json NOT NULL,
  `response` json DEFAULT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `education_app_quiz_student_id_f59a9d27` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `education_app_quiz`
--

INSERT INTO `education_app_quiz` (`id`, `quiz_data`, `response`, `student_id`) VALUES
(1, '[{\"options\": [\"func myFunction():\", \"function myFunction():\", \"def myFunction():\", \"define myFunction():\"], \"question\": \"Which of the following is used to define a function in Python?\", \"correct_answer\": 3}, {\"options\": [\"int\", \"float\", \"string\", \"boolean\"], \"question\": \"What data type is the result of 5 / 2 in Python 3?\", \"correct_answer\": 2}, {\"options\": [], \"question\": \"What will be printed by the following code snippet?\", \"correct_answer\": null}, {\"options\": [\"while loop\", \"for loop\", \"do-while loop (Python doesn\'t have this)\", \"repeat-until loop (Python doesn\'t have this)\"], \"question\": \"Which loop is best suited for iterating a specific number of times?\", \"correct_answer\": 2}, {\"options\": [], \"question\": \"What is the output of the following code?\", \"correct_answer\": null}]', '{\"quiz\": [{\"action\": \"feedback\", \"options\": [\"A language\", \"A snake\", \"A tool\", \"A fruit\"], \"question\": \"What is Python?\", \"user_answers\": 2, \"correct_answer\": 1}, {\"action\": \"feedback\", \"options\": [\"Web Development\", \"Data Science\", \"Scripting\", \"All of the above\"], \"question\": \"What is Python used for?\", \"user_answers\": 3, \"correct_answer\": 4}], \"total_time\": 10}', 1),
(10, '{\"topic\": \"General Knowledge\", \"questions\": [{\"options\": [\"K2\", \"Kangchenjunga\", \"Mount Everest\", \"Lhotse\"], \"question\": \"What is the highest mountain in the world?\", \"correct_answer\": 3}, {\"options\": [\"Jupiter\", \"Venus\", \"Mars\", \"Saturn\"], \"question\": \"Which planet is known as the \\\"Red Planet\\\"?\", \"correct_answer\": 3}, {\"options\": [\"CO2\", \"O3\", \"H2O\", \"NaCl\"], \"question\": \"What is the chemical symbol for water?\", \"correct_answer\": 3}, {\"options\": [\"Leonardo da Vinci\", \"Michelangelo\", \"Raphael\", \"Donatello\"], \"question\": \"Who painted the Mona Lisa?\", \"correct_answer\": 1}, {\"options\": [\"1914\", \"1939\", \"1945\", \"1918\"], \"question\": \"In what year did World War II begin?\", \"correct_answer\": 2}, {\"options\": [\"Pacific Ocean\", \"Atlantic Ocean\", \"Indian Ocean\", \"Arctic Ocean\"], \"question\": \"What is the largest ocean in the world?\", \"correct_answer\": 1}, {\"options\": [\"Nepal\", \"Pakistan\", \"India\", \"Bangladesh\"], \"question\": \"Which country is home to the Taj Mahal?\", \"correct_answer\": 3}, {\"options\": [\"Yuan\", \"Won\", \"Yen\", \"Rupee\"], \"question\": \"What is the currency of Japan?\", \"correct_answer\": 3}, {\"options\": [\"William Shakespeare\", \"Jane Austen\", \"Charles Dickens\", \"Leo Tolstoy\"], \"question\": \"Who wrote \\\"Hamlet\\\"?\", \"correct_answer\": 1}, {\"options\": [\"Phobos\", \"Deimos\", \"The Moon\", \"Titan\"], \"question\": \"What is the name of Earth\'s natural satellite?\", \"correct_answer\": 3}]}', '{\"quiz\": {\"topic\": \"General Knowledge\", \"questions\": [{\"options\": [\"K2\", \"Kangchenjunga\", \"Mount Everest\", \"Lhotse\"], \"question\": \"What is the highest mountain in the world?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Jupiter\", \"Venus\", \"Mars\", \"Saturn\"], \"question\": \"Which planet is known as the \\\"Red Planet\\\"?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"CO2\", \"O3\", \"H2O\", \"NaCl\"], \"question\": \"What is the chemical symbol for water?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Leonardo da Vinci\", \"Michelangelo\", \"Raphael\", \"Donatello\"], \"question\": \"Who painted the Mona Lisa?\", \"user_answer\": 3, \"correct_answer\": 1}, {\"options\": [\"1914\", \"1939\", \"1945\", \"1918\"], \"question\": \"In what year did World War II begin?\", \"user_answer\": 3, \"correct_answer\": 2}, {\"options\": [\"Pacific Ocean\", \"Atlantic Ocean\", \"Indian Ocean\", \"Arctic Ocean\"], \"question\": \"What is the largest ocean in the world?\", \"user_answer\": 3, \"correct_answer\": 1}, {\"options\": [\"Nepal\", \"Pakistan\", \"India\", \"Bangladesh\"], \"question\": \"Which country is home to the Taj Mahal?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Yuan\", \"Won\", \"Yen\", \"Rupee\"], \"question\": \"What is the currency of Japan?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"William Shakespeare\", \"Jane Austen\", \"Charles Dickens\", \"Leo Tolstoy\"], \"question\": \"Who wrote \\\"Hamlet\\\"?\", \"user_answer\": 3, \"correct_answer\": 1}, {\"options\": [\"Phobos\", \"Deimos\", \"The Moon\", \"Titan\"], \"question\": \"What is the name of Earth\'s natural satellite?\", \"user_answer\": 3, \"correct_answer\": 3}]}, \"total_time\": 105}', 3),
(8, '{\"topic\": \"General Knowledge\", \"questions\": [{\"options\": [\"Mars\", \"Earth\", \"Jupiter\", \"None of the above\"], \"question\": \"What is the largest planet in our solar system?\", \"correct_answer\": 4}, {\"options\": [\"Michelangelo\", \"Raphael\", \"Leonardo da Vinci\", \"Donatello\"], \"question\": \"Who painted the Mona Lisa?\", \"correct_answer\": 3}, {\"options\": [\"CO2\", \"H2O\", \"O2\", \"NaCl\"], \"question\": \"What is the chemical symbol for water?\", \"correct_answer\": 2}, {\"options\": [\"1939\", \"1914\", \"1945\", \"1918\"], \"question\": \"In what year did World War II begin?\", \"correct_answer\": 1}, {\"options\": [\"K2\", \"Kangchenjunga\", \"Mount Everest\", \"Lhotse\"], \"question\": \"What is the highest mountain in the world?\", \"correct_answer\": 3}, {\"options\": [\"China\", \"South Korea\", \"Japan\", \"India\"], \"question\": \"Which country is known as the \\\"Land of the Rising Sun\\\"?\", \"correct_answer\": 3}, {\"options\": [\"Monaco\", \"Nauru\", \"Vatican City\", \"San Marino\"], \"question\": \"What is the smallest country in the world?\", \"correct_answer\": 3}, {\"options\": [\"Geoffrey Chaucer\", \"William Shakespeare\", \"William Shakespeare\", \"John Milton\"], \"question\": \"Who wrote \\\"Hamlet\\\"?\", \"correct_answer\": 3}, {\"options\": [\"Phobos\", \"Deimos\", \"The Moon\", \"Titan\"], \"question\": \"What is the name of Earth\'s only natural satellite?\", \"correct_answer\": 3}, {\"options\": [\"Red\", \"Blue\", \"Purple\", \"Yellow\"], \"question\": \"Which of these is NOT a primary color?\", \"correct_answer\": 3}]}', '{\"quiz\": {\"topic\": \"General Knowledge\", \"questions\": [{\"options\": [\"Mars\", \"Earth\", \"Jupiter\", \"None of the above\"], \"question\": \"What is the largest planet in our solar system?\", \"user_answer\": 3, \"correct_answer\": 4}, {\"options\": [\"Michelangelo\", \"Raphael\", \"Leonardo da Vinci\", \"Donatello\"], \"question\": \"Who painted the Mona Lisa?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"CO2\", \"H2O\", \"O2\", \"NaCl\"], \"question\": \"What is the chemical symbol for water?\", \"user_answer\": 3, \"correct_answer\": 2}, {\"options\": [\"1939\", \"1914\", \"1945\", \"1918\"], \"question\": \"In what year did World War II begin?\", \"user_answer\": 3, \"correct_answer\": 1}, {\"options\": [\"K2\", \"Kangchenjunga\", \"Mount Everest\", \"Lhotse\"], \"question\": \"What is the highest mountain in the world?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"China\", \"South Korea\", \"Japan\", \"India\"], \"question\": \"Which country is known as the \\\"Land of the Rising Sun\\\"?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Monaco\", \"Nauru\", \"Vatican City\", \"San Marino\"], \"question\": \"What is the smallest country in the world?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Geoffrey Chaucer\", \"William Shakespeare\", \"William Shakespeare\", \"John Milton\"], \"question\": \"Who wrote \\\"Hamlet\\\"?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Phobos\", \"Deimos\", \"The Moon\", \"Titan\"], \"question\": \"What is the name of Earth\'s only natural satellite?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Red\", \"Blue\", \"Purple\", \"Yellow\"], \"question\": \"Which of these is NOT a primary color?\", \"user_answer\": 3, \"correct_answer\": 3}]}, \"total_time\": 128}', 3),
(9, '{\"topic\": \"Sports\", \"questions\": [{\"options\": [\"Brazil\", \"Argentina\", \"Uruguay\", \"Italy\"], \"question\": \"Which country won the first ever FIFA World Cup?\", \"correct_answer\": 3}, {\"options\": [\"Golf\", \"Basketball\", \"Tennis\", \"Boxing\"], \"question\": \"In which sport is a \\\"Grand Slam\\\" achieved?\", \"correct_answer\": 3}, {\"options\": [\"Giro d\'Italia\", \"Vuelta a España\", \"Tour de France\", \"Tour of Flanders\"], \"question\": \"What is the name of the famous cycling race that takes place in France?\", \"correct_answer\": 3}, {\"options\": [\"5\", \"6\", \"7\", \"8\"], \"question\": \"How many players are on a volleyball team?\", \"correct_answer\": 2}, {\"options\": [\"Swimming\", \"Gymnastics\", \"Fencing\", \"American Football\"], \"question\": \"Which of these is NOT an Olympic sport?\", \"correct_answer\": 4}, {\"options\": [\"Break Point\", \"Match Point\", \"Game Point\", \"Set Point\"], \"question\": \"What is the term for a decisive point in a tennis game?\", \"correct_answer\": 3}, {\"options\": [\"Barry Bonds\", \"Hank Aaron\", \"Babe Ruth\", \"Albert Pujols\"], \"question\": \"Who holds the record for most home runs in MLB history?\", \"correct_answer\": 1}, {\"options\": [\"England\", \"Australia\", \"India\", \"Pakistan\"], \"question\": \"Which country is known as the \\\"home of cricket\\\"?\", \"correct_answer\": 1}, {\"options\": [\"Bill Russell NBA Finals MVP Award\", \"Maurice Podoloff Trophy\", \"Larry O\'Brien Championship Trophy\", \"NBA Sixth Man of the Year Award\"], \"question\": \"What is the name of the award given to the best player in the NBA Finals?\", \"correct_answer\": 1}, {\"options\": [\"To score goals\", \"To pass the ball\", \"To defend midfield\", \"To prevent goals\"], \"question\": \"What is the purpose of a goalie in soccer (football)?\", \"correct_answer\": 4}]}', '{\"quiz\": {\"topic\": \"Sports\", \"questions\": [{\"options\": [\"Brazil\", \"Argentina\", \"Uruguay\", \"Italy\"], \"question\": \"Which country won the first ever FIFA World Cup?\", \"user_answer\": 4, \"correct_answer\": 3}, {\"options\": [\"Golf\", \"Basketball\", \"Tennis\", \"Boxing\"], \"question\": \"In which sport is a \\\"Grand Slam\\\" achieved?\", \"user_answer\": 4, \"correct_answer\": 3}, {\"options\": [\"Giro d\'Italia\", \"Vuelta a España\", \"Tour de France\", \"Tour of Flanders\"], \"question\": \"What is the name of the famous cycling race that takes place in France?\", \"user_answer\": 4, \"correct_answer\": 3}, {\"options\": [\"5\", \"6\", \"7\", \"8\"], \"question\": \"How many players are on a volleyball team?\", \"user_answer\": 4, \"correct_answer\": 2}, {\"options\": [\"Swimming\", \"Gymnastics\", \"Fencing\", \"American Football\"], \"question\": \"Which of these is NOT an Olympic sport?\", \"user_answer\": 4, \"correct_answer\": 4}, {\"options\": [\"Break Point\", \"Match Point\", \"Game Point\", \"Set Point\"], \"question\": \"What is the term for a decisive point in a tennis game?\", \"user_answer\": 4, \"correct_answer\": 3}, {\"options\": [\"Barry Bonds\", \"Hank Aaron\", \"Babe Ruth\", \"Albert Pujols\"], \"question\": \"Who holds the record for most home runs in MLB history?\", \"user_answer\": 4, \"correct_answer\": 1}, {\"options\": [\"England\", \"Australia\", \"India\", \"Pakistan\"], \"question\": \"Which country is known as the \\\"home of cricket\\\"?\", \"user_answer\": 4, \"correct_answer\": 1}, {\"options\": [\"Bill Russell NBA Finals MVP Award\", \"Maurice Podoloff Trophy\", \"Larry O\'Brien Championship Trophy\", \"NBA Sixth Man of the Year Award\"], \"question\": \"What is the name of the award given to the best player in the NBA Finals?\", \"user_answer\": 4, \"correct_answer\": 1}, {\"options\": [\"To score goals\", \"To pass the ball\", \"To defend midfield\", \"To prevent goals\"], \"question\": \"What is the purpose of a goalie in soccer (football)?\", \"user_answer\": 4, \"correct_answer\": 4}]}, \"total_time\": 106}', 3),
(21, '{\"topic\": \"Kerala tourism \", \"questions\": [{\"options\": [\"Cinnamon\", \"Cloves\", \"Cardamom\", \"All of the above\"], \"question\": \"Which spice is Kerala most famous for?\", \"correct_answer\": 4}, {\"options\": [\"Cauvery River\", \"Godavari River\", \"Vembanad Lake\", \"Periyar River\"], \"question\": \"What is the name of the network of backwaters in Kerala?\", \"correct_answer\": 3}, {\"options\": [\"Bharatanatyam\", \"Kathak\", \"Mohiniyattam\", \"Odissi\"], \"question\": \"Which dance form is considered the classical dance of Kerala?\", \"correct_answer\": 3}, {\"options\": [\"Munnar\", \"Thekkady\", \"Wayanad\", \"All of the above\"], \"question\": \"What is the name of the famous hill station in Kerala known for its tea plantations?\", \"correct_answer\": 4}, {\"options\": [\"Silent Valley National Park\", \"Eravikulam National Park\", \"Periyar National Park\", \"Agasthyamalai Biosphere Reserve\"], \"question\": \"Which national park is famous for its Periyar Lake and abundant wildlife?\", \"correct_answer\": 3}, {\"options\": [\"Its graceful movements and expressive eyes.\", \"Its elaborate costumes and makeup.\", \"Its storytelling through dramatic gestures and facial expressions.\", \"All of the above\"], \"question\": \"What is Kathakali known for?\", \"correct_answer\": 4}, {\"options\": [\"Motorboat\", \"Speedboat\", \"Kettuvallam\", \"Canoe\"], \"question\": \"Which type of houseboat is traditionally used in the Kerala backwaters?\", \"correct_answer\": 3}, {\"options\": [\"Shirodhara\", \"Abhyanga\", \"Pizhichil\", \"All of the above\"], \"question\": \"Which Ayurvedic treatment is popular in Kerala?\", \"correct_answer\": 4}, {\"options\": [\"Malayalam\", \"Tamil\", \"Telugu\", \"Kannada\"], \"question\": \"What is the primary language spoken in Kerala?\", \"correct_answer\": 1}, {\"options\": [\"Onam\", \"Vishu\", \"Pongal\", \"None of the above (Although Onam is associated with boat races, this question aims to highlight that it\'s not exclusively celebrated with them)\"], \"question\": \"Which festival is celebrated with elaborate boat races in Kerala?\", \"correct_answer\": 4}]}', '{\"quiz\": {\"topic\": \"Kerala tourism \", \"questions\": [{\"options\": [\"Cinnamon\", \"Cloves\", \"Cardamom\", \"All of the above\"], \"question\": \"Which spice is Kerala most famous for?\", \"user_answer\": 4, \"correct_answer\": 4}, {\"options\": [\"Cauvery River\", \"Godavari River\", \"Vembanad Lake\", \"Periyar River\"], \"question\": \"What is the name of the network of backwaters in Kerala?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Bharatanatyam\", \"Kathak\", \"Mohiniyattam\", \"Odissi\"], \"question\": \"Which dance form is considered the classical dance of Kerala?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Munnar\", \"Thekkady\", \"Wayanad\", \"All of the above\"], \"question\": \"What is the name of the famous hill station in Kerala known for its tea plantations?\", \"user_answer\": 4, \"correct_answer\": 4}, {\"options\": [\"Silent Valley National Park\", \"Eravikulam National Park\", \"Periyar National Park\", \"Agasthyamalai Biosphere Reserve\"], \"question\": \"Which national park is famous for its Periyar Lake and abundant wildlife?\", \"user_answer\": 2, \"correct_answer\": 3}, {\"options\": [\"Its graceful movements and expressive eyes.\", \"Its elaborate costumes and makeup.\", \"Its storytelling through dramatic gestures and facial expressions.\", \"All of the above\"], \"question\": \"What is Kathakali known for?\", \"user_answer\": 4, \"correct_answer\": 4}, {\"options\": [\"Motorboat\", \"Speedboat\", \"Kettuvallam\", \"Canoe\"], \"question\": \"Which type of houseboat is traditionally used in the Kerala backwaters?\", \"user_answer\": 3, \"correct_answer\": 3}, {\"options\": [\"Shirodhara\", \"Abhyanga\", \"Pizhichil\", \"All of the above\"], \"question\": \"Which Ayurvedic treatment is popular in Kerala?\", \"user_answer\": 4, \"correct_answer\": 4}, {\"options\": [\"Malayalam\", \"Tamil\", \"Telugu\", \"Kannada\"], \"question\": \"What is the primary language spoken in Kerala?\", \"user_answer\": 1, \"correct_answer\": 1}, {\"options\": [\"Onam\", \"Vishu\", \"Pongal\", \"None of the above (Although Onam is associated with boat races, this question aims to highlight that it\'s not exclusively celebrated with them)\"], \"question\": \"Which festival is celebrated with elaborate boat races in Kerala?\", \"user_answer\": 4, \"correct_answer\": 4}]}, \"total_time\": 69}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `education_app_student`
--

DROP TABLE IF EXISTS `education_app_student`;
CREATE TABLE IF NOT EXISTS `education_app_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `parent_id` bigint NOT NULL,
  `batch` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `education_app_student_parent_id_560c1753` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `education_app_student`
--

INSERT INTO `education_app_student` (`id`, `name`, `phone_number`, `email`, `password`, `parent_id`, `batch`, `department`) VALUES
(1, 'pranav', '1234567891', 'p@gmail.com', '123', 1, '2023-2027', 'bca'),
(2, 'kishan', '8473659387', 'kishan@gmail.com', '123', 1, '2025-2029', 'bca'),
(3, 'Sasi', '9656995772', 'sasi@gmail.com', '123456', 3, 'Cc', 'LKG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
