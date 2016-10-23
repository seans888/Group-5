-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2016 at 06:09 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar_event`
--

CREATE TABLE `calendar_event` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `attendee` varchar(255) NOT NULL,
  `venue` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_event_has_person`
--

CREATE TABLE `calendar_event_has_person` (
  `calendar_event_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field1` blob NOT NULL,
  `group_field2` blob NOT NULL,
  `group_field3` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_sst`
--

CREATE TABLE `cobalt_sst` (
  `auto_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `config_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`id`, `name`) VALUES
(2, 'Logistics Committee'),
(3, 'Marketing and Promotions Committee'),
(4, 'Information and Communications Committee'),
(5, 'Events Committee'),
(6, 'Finance Committee'),
(7, 'Membership Committee'),
(11, 'Creative Committee'),
(12, 'Operations Committee');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `representative` varchar(45) NOT NULL,
  `adviser` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `name`, `representative`, `adviser`) VALUES
(1, 'Junior Philippine Computer Society (JPCS)', 'N / A', 'N / A'),
(2, 'Junior Information Systems Security Association (JISSA)', 'N / A', 'N / A'),
(3, 'Microsoft Community (MSC)', 'N / A', 'N / A'),
(4, 'Cipher', 'N / A', 'N / A'),
(5, 'APC Gaming Genesis (GG)', 'N / A', 'N / A'),
(6, 'APC Grand Chorale', 'N / A', 'N / A'),
(7, 'Bahay Bombilya (BB)', 'N / A', 'N / A'),
(8, 'Association of Computer Engineering Students (ACES)', 'N / A', 'N / A'),
(9, 'APC Animation Society', 'N / A', 'N / A'),
(10, 'APC Band', 'N / A', 'N / A'),
(11, 'APC Speaks', 'N / A', 'N / A'),
(12, 'APC Dance Company', 'N / A', 'N / A'),
(13, 'APC SM Scholars', 'N / A', 'N / A'),
(14, 'Business Management Group (BMAG)', 'N / A', 'N / A'),
(15, 'Explorer''s Club', 'N / A', 'N / A'),
(16, 'Junior Philippine Institute of Accountants (JPIA)', 'N / A', 'N / A'),
(17, 'Asia Pacific Junior Marketing Association (APJMA)', 'N / A', 'N / A'),
(18, 'Asia Pacific College Psychological Society', 'N / A', 'N / A'),
(19, 'APC Robotics Organization (ROBORG)', 'N / A', 'N / A'),
(20, 'Teatre Phileo', 'N / A', 'N / A'),
(21, 'Student Organization Association of Regents (SOAR)', 'N / A', 'N / A'),
(22, 'APC Math Society', 'N / A', 'N / A'),
(23, 'PWERSA', 'N / A', 'N / A'),
(24, 'APC Rotaract Club', 'N / A', 'N / A'),
(25, 'APC Strings', 'N / A', 'N / A'),
(26, 'Tourism Management Society', 'N / A', 'N / A'),
(27, 'Flickers Photo Society', 'N / A', 'N / A'),
(28, 'Junior People Management of the Philippines (JPMAP)', 'N / A', 'N / A'),
(29, 'APC Campus Ministry', 'N / A', 'N / A'),
(30, 'Association Internationale des Étudiants en Sciences Économiques et Commerciales APC', 'N / A', 'N / A'),
(31, 'Every Nation Campus', 'N / A', 'N / A'),
(32, 'Seeds of the Nation Campus Ministry', 'N / A', 'N / A'),
(33, 'Society of Electronics Engineering Students (SEES)', 'N / A', 'N / A');

-- --------------------------------------------------------

--
-- Table structure for table `organization_has_person`
--

CREATE TABLE `organization_has_person` (
  `organization_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_has_person`
--

INSERT INTO `organization_has_person` (`organization_id`, `person_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `org_position`
--

CREATE TABLE `org_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_position`
--

INSERT INTO `org_position` (`id`, `name`) VALUES
(1, 'President'),
(2, 'Vice President for Internal Affairs'),
(3, 'Vice President for External Affairs'),
(4, 'Committee Director'),
(5, 'Officer'),
(6, 'Assistant Director'),
(7, 'Organization''s Adviser');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `contact_num` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `last_name`, `first_name`, `middle_name`, `gender`, `birthday`, `contact_num`) VALUES
(1, 'Root', 'Super User', 'X', 'Male', '0000-00-00', '2147483647');

-- --------------------------------------------------------

--
-- Table structure for table `person_has_org_position`
--

CREATE TABLE `person_has_org_position` (
  `person_id` int(11) NOT NULL,
  `org_position_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_has_org_position`
--

INSERT INTO `person_has_org_position` (`person_id`, `org_position_id`, `organization_id`) VALUES
(1, 1, 1),
(1, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `entry_id` bigint(20) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` int(11) NOT NULL,
  `action` mediumtext NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', 1476141160, 'Logged in', '/test/login.php'),
(2, '::1', 'root', 1476141161, 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$vTeDK/BecBP4rv80XKUiKeKZwaAnV00EwYIWxD.2VtmL88OdiUNkq\n    [2] => vTeDK/BecBP4rv80XKUiKg\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/test/login.php'),
(3, '::1', 'root', 1476141173, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''root''', '/test/change_skin.php'),
(4, '::1', 'root', 1476141178, 'Logged out', '/test/end.php'),
(5, '::1', 'root', 1476141290, 'Logged in', '/test/login.php'),
(6, '::1', 'root', 1476141627, 'Logged out', '/test/end.php'),
(7, '::1', 'root', 1476141980, 'Logged in', '/test/login.php'),
(8, '::1', 'root', 1476141993, 'Logged out', '/test/end.php'),
(9, '::1', 'root', 1476142157, 'Logged in', '/test/login.php'),
(10, '::1', 'root', 1476142484, 'Logged out', '/test/end.php'),
(11, '::1', 'root', 1476142489, 'Logged in', '/test/login.php'),
(12, '::1', 'root', 1476143633, 'Logged out', '/test/end.php'),
(13, '::1', 'root', 1476143636, 'Logged in', '/test/login.php'),
(14, '::1', 'root', 1476143698, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(15, '::1', 'root', 1476143698, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View calendar event\n    [2] => modules/listview_calendar_event.php\n    [3] => Calendar Event\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => calendar.png\n    [9] => 0\n    [10] => 39\n)\n', '/test/sysadmin/edit_user_links.php'),
(16, '::1', 'root', 1476143804, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(17, '::1', 'root', 1476143804, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View document\n    [2] => modules/listview_document.php\n    [3] => Document\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => Docs.png\n    [9] => 0\n    [10] => 43\n)\n', '/test/sysadmin/edit_user_links.php'),
(18, '::1', 'root', 1476143829, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(19, '::1', 'root', 1476143829, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View organization\n    [2] => modules/listview_organization.php\n    [3] => Organization\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => org.png\n    [9] => 0\n    [10] => 47\n)\n', '/test/sysadmin/edit_user_links.php'),
(20, '::1', 'root', 1476143869, 'Logged out', '/test/end.php'),
(21, '::1', 'root', 1476143872, 'Logged in', '/test/login.php'),
(22, '::1', 'root', 1476143942, 'Logged out', '/test/end.php'),
(23, '::1', 'root', 1476143949, 'Logged in', '/test/login.php'),
(24, '::1', 'root', 1476144115, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(25, '::1', 'root', 1476144115, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add document\n    [2] => modules/upload.php\n    [3] => Add Document\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 41\n)\n', '/test/sysadmin/edit_user_links.php'),
(26, '::1', 'root', 1476144136, 'Pressed cancel button', '/test/modules/add_document.php'),
(27, '::1', 'root', 1476144321, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(28, '::1', 'root', 1476144321, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add document\n    [2] => modules/upload.php\n    [3] => Add Document\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 41\n)\n', '/test/sysadmin/edit_user_links.php'),
(29, '::1', 'root', 1476144773, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(30, '::1', 'root', 1476144773, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add document\n    [2] => modules/index.html\n    [3] => Add Document\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 41\n)\n', '/test/sysadmin/edit_user_links.php'),
(31, '::1', 'root', 1476144785, 'Logged out', '/test/end.php'),
(32, '::1', 'root', 1476144789, 'Logged in', '/test/login.php'),
(33, '::1', 'root', 1476144880, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(34, '::1', 'root', 1476144881, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View document\n    [2] => modules/listview_document.php\n    [3] => Document\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => Docs.png\n    [9] => 0\n    [10] => 43\n)\n', '/test/sysadmin/edit_user_links.php'),
(35, '::1', 'root', 1476144905, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(36, '::1', 'root', 1476144905, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add document\n    [2] => modules/index.html\n    [3] => Add Document\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => Docs.png\n    [9] => 0\n    [10] => 41\n)\n', '/test/sysadmin/edit_user_links.php'),
(37, '::1', 'root', 1476145065, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(38, '::1', 'root', 1476145065, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View calendar event\n    [2] => modules/listview_calendar_event.php\n    [3] => Calendar Event\n    [4] => \n    [5] => 2\n    [6] => Yes\n    [7] => On\n    [8] => calendar.png\n    [9] => 0\n    [10] => 39\n)\n', '/test/sysadmin/edit_user_links.php'),
(39, '::1', 'root', 1476145087, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(40, '::1', 'root', 1476145087, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View calendar event\n    [2] => modules/listview_calendar_event.php\n    [3] => Calendar Event\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => calendar.png\n    [9] => 0\n    [10] => 39\n)\n', '/test/sysadmin/edit_user_links.php'),
(41, '::1', 'root', 1476145152, 'Pressed submit button', '/test/modules/add_organization.php'),
(42, '::1', 'root', 1476145157, 'Pressed cancel button', '/test/modules/add_organization.php'),
(43, '::1', 'root', 1476145889, 'Logged out', '/test/end.php'),
(44, '::1', 'root', 1476145923, 'Logged in', '/test/login.php'),
(45, '::1', 'root', 1476146068, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(46, '::1', 'root', 1476146068, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add calendar event\n    [2] => modules/calendar.php\n    [3] => Add Calendar Event\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 37\n)\n', '/test/sysadmin/edit_user_links.php'),
(47, '::1', 'root', 1476146073, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(48, '::1', 'root', 1476146073, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add calendar event\n    [2] => modules/calendar.php\n    [3] => Add Calendar Event\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 37\n)\n', '/test/sysadmin/edit_user_links.php'),
(49, '::1', 'root', 1476146088, 'Pressed cancel button', '/test/modules/add_calendar_event.php'),
(50, '::1', 'root', 1476146197, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(51, '::1', 'root', 1476146198, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => admin\n    [2] => $2y$12$O0o8fsnA3Mt2if/0NBI0HOVqbHzRPHf08BPvC82OHSsytROAphnKO\n    [3] => O0o8fsnA3Mt2if/0NBI0HQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 2\n    [8] => 10\n)\n', '/test/sysadmin/add_user.php'),
(52, '::1', 'root', 1476146198, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/add_user.php'),
(53, '::1', 'root', 1476146201, 'Logged out', '/test/end.php'),
(54, '::1', 'admin', 1476146204, 'Logged in', '/test/login.php'),
(55, '::1', 'admin', 1476146210, 'Logged out', '/test/end.php'),
(56, '::1', 'root', 1476146216, 'Logged in', '/test/login.php'),
(57, '::1', 'root', 1476146324, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/role_permissions.php'),
(58, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''37'')', '/test/sysadmin/role_permissions.php'),
(59, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/test/sysadmin/role_permissions.php'),
(60, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''45'')', '/test/sysadmin/role_permissions.php'),
(61, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''39'')', '/test/sysadmin/role_permissions.php'),
(62, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''40'')', '/test/sysadmin/role_permissions.php'),
(63, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/test/sysadmin/role_permissions.php'),
(64, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''48'')', '/test/sysadmin/role_permissions.php'),
(65, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''43'')', '/test/sysadmin/role_permissions.php'),
(66, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''38'')', '/test/sysadmin/role_permissions.php'),
(67, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/test/sysadmin/role_permissions.php'),
(68, '::1', 'root', 1476146324, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''47'')', '/test/sysadmin/role_permissions.php'),
(69, '::1', 'root', 1476146325, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''6'')', '/test/sysadmin/role_permissions.php'),
(70, '::1', 'root', 1476146325, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''32'')', '/test/sysadmin/role_permissions.php'),
(71, '::1', 'root', 1476146325, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''10'')', '/test/sysadmin/role_permissions.php'),
(72, '::1', 'root', 1476146325, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''14'')', '/test/sysadmin/role_permissions.php'),
(73, '::1', 'root', 1476146326, 'Logged out', '/test/end.php'),
(74, '::1', 'admin', 1476146332, 'Logged in', '/test/login.php'),
(75, '::1', 'admin', 1476146339, 'Logged out', '/test/end.php'),
(76, '::1', 'root', 1476146342, 'Logged in', '/test/login.php'),
(77, '::1', 'root', 1476146386, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2'' AND link_id IN (''37'',''38'',''39'',''40'',''41'',''42'',''43'',''44'',''45'',''46'',''47'',''48'')', '/test/sysadmin/role_permissions.php'),
(78, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''37'')', '/test/sysadmin/role_permissions.php'),
(79, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/test/sysadmin/role_permissions.php'),
(80, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''45'')', '/test/sysadmin/role_permissions.php'),
(81, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''39'')', '/test/sysadmin/role_permissions.php'),
(82, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''40'')', '/test/sysadmin/role_permissions.php'),
(83, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/test/sysadmin/role_permissions.php'),
(84, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''48'')', '/test/sysadmin/role_permissions.php'),
(85, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''43'')', '/test/sysadmin/role_permissions.php'),
(86, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''38'')', '/test/sysadmin/role_permissions.php'),
(87, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/test/sysadmin/role_permissions.php'),
(88, '::1', 'root', 1476146386, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''47'')', '/test/sysadmin/role_permissions.php'),
(89, '::1', 'root', 1476146392, 'Logged out', '/test/end.php'),
(90, '::1', 'admin', 1476146395, 'Logged in', '/test/login.php'),
(91, '::1', 'admin', 1476146438, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(92, '::1', 'admin', 1476146438, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View calendar event\n    [2] => modules/listview_calendar_event.php\n    [3] => Calendar Event\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => calendar.png\n    [9] => 0\n    [10] => 39\n)\n', '/test/sysadmin/edit_user_links.php'),
(93, '::1', 'admin', 1476146441, 'Pressed cancel button', '/test/sysadmin/listview_user_links.php'),
(94, '::1', 'admin', 1476146449, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''admin''', '/test/change_skin.php'),
(95, '::1', 'admin', 1476146457, 'Logged out', '/test/end.php'),
(96, '::1', 'root', 1476146460, 'Logged in', '/test/login.php'),
(97, '::1', 'root', 1476146504, 'Query executed: DELETE FROM user_passport WHERE username IN (''admin'')', '/test/sysadmin/role_permissions_cascade.php'),
(98, '::1', 'root', 1476146504, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/role_permissions_cascade.php'),
(99, '::1', 'root', 1476146506, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(100, '::1', 'root', 1476146508, 'Logged out', '/test/end.php'),
(101, '::1', 'admin', 1476146511, 'Logged in', '/test/login.php'),
(102, '::1', 'admin', 1476146527, 'Pressed cancel button', '/test/sysadmin/reset_password.php'),
(103, '::1', 'admin', 1476146577, 'Logged out', '/test/end.php'),
(104, '::1', 'root', 1476146581, 'Logged in', '/test/login.php'),
(105, '::1', 'root', 1476146618, 'Pressed submit button', '/test/sysadmin/add_user_role.php'),
(106, '::1', 'root', 1476146618, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Standard User\n    [3] => Standard User with Basic System Privileges\n)\n', '/test/sysadmin/add_user_role.php'),
(107, '::1', 'root', 1476146635, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(108, '::1', 'root', 1476146635, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => user\n    [2] => $2y$12$LDoyF6YbFd5pzPSAUzFd3uTTBvCduxyhpFPaTLhyrxETgOOHRc3R2\n    [3] => LDoyF6YbFd5pzPSAUzFd3w\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 3\n    [8] => 5\n)\n', '/test/sysadmin/add_user.php'),
(109, '::1', 'root', 1476146635, 'Query executed: INSERT `user_passport` SELECT ''user'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/add_user.php'),
(110, '::1', 'root', 1476146751, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/role_permissions.php'),
(111, '::1', 'root', 1476146751, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''37'')', '/test/sysadmin/role_permissions.php'),
(112, '::1', 'root', 1476146751, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/test/sysadmin/role_permissions.php'),
(113, '::1', 'root', 1476146751, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''45'')', '/test/sysadmin/role_permissions.php'),
(114, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''39'')', '/test/sysadmin/role_permissions.php'),
(115, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''40'')', '/test/sysadmin/role_permissions.php'),
(116, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''44'')', '/test/sysadmin/role_permissions.php'),
(117, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/test/sysadmin/role_permissions.php'),
(118, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''38'')', '/test/sysadmin/role_permissions.php'),
(119, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/test/sysadmin/role_permissions.php'),
(120, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''46'')', '/test/sysadmin/role_permissions.php'),
(121, '::1', 'root', 1476146752, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/test/sysadmin/role_permissions.php'),
(122, '::1', 'root', 1476146759, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/role_permissions.php'),
(123, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''37'')', '/test/sysadmin/role_permissions.php'),
(124, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/test/sysadmin/role_permissions.php'),
(125, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''45'')', '/test/sysadmin/role_permissions.php'),
(126, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''39'')', '/test/sysadmin/role_permissions.php'),
(127, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''40'')', '/test/sysadmin/role_permissions.php'),
(128, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''44'')', '/test/sysadmin/role_permissions.php'),
(129, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/test/sysadmin/role_permissions.php'),
(130, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''38'')', '/test/sysadmin/role_permissions.php'),
(131, '::1', 'root', 1476146759, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/test/sysadmin/role_permissions.php'),
(132, '::1', 'root', 1476146760, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''46'')', '/test/sysadmin/role_permissions.php'),
(133, '::1', 'root', 1476146760, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/test/sysadmin/role_permissions.php'),
(134, '::1', 'root', 1476146781, 'Query executed: DELETE FROM user_passport WHERE username IN (''user'')', '/test/sysadmin/role_permissions_cascade.php'),
(135, '::1', 'root', 1476146781, 'Query executed: INSERT `user_passport` SELECT ''user'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/role_permissions_cascade.php'),
(136, '::1', 'root', 1476146783, 'Logged out', '/test/end.php'),
(137, '::1', 'user', 1476146787, 'Logged in', '/test/login.php'),
(138, '::1', 'user', 1476146798, 'Logged out', '/test/end.php'),
(139, '::1', 'root', 1476146804, 'Logged in', '/test/login.php'),
(140, '::1', 'root', 1476147037, 'Logged out', '/test/end.php'),
(141, '::1', 'admin', 1476147042, 'Logged in', '/test/login.php'),
(142, '::1', 'admin', 1476147046, 'Logged out', '/test/end.php'),
(143, '::1', 'admin', 1476147053, 'Logged in', '/test/login.php'),
(144, '::1', 'admin', 1476147056, 'Logged out', '/test/end.php'),
(145, '::1', 'user', 1476147188, 'Logged in', '/test/login.php'),
(146, '::1', 'user', 1476147193, 'Logged out', '/test/end.php'),
(147, '::1', 'root', 1476147498, 'Logged in', '/test/login.php'),
(148, '::1', 'root', 1476147521, 'Logged out', '/test/end.php'),
(149, '::1', 'root', 1476147728, 'Logged in', '/test/login.php'),
(150, '::1', 'root', 1476147841, 'Logged out', '/test/end.php'),
(151, '::1', 'root', 1476147844, 'Logged in', '/test/login.php'),
(152, '::1', 'root', 1476147954, 'Logged out', '/test/end.php'),
(153, '::1', 'admin', 1476147963, 'Logged in', '/test/login.php'),
(154, '::1', 'admin', 1476147990, 'Logged out', '/test/end.php'),
(155, '::1', 'root', 1476148000, 'Logged in', '/test/login.php'),
(156, '::1', 'root', 1476148022, 'Pressed submit button', '/test/sysadmin/add_person.php'),
(157, '::1', 'root', 1476148149, 'Logged out', '/test/end.php'),
(158, '::1', 'root', 1476148200, 'Logged in', '/test/login.php'),
(159, '::1', 'root', 1476148211, 'Pressed submit button', '/test/sysadmin/add_person.php'),
(160, '::1', 'root', 1476148211, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Chamber\n    [3] => F\n    [4] => Jose\n    [5] => Male\n)\n', '/test/sysadmin/add_person.php'),
(161, '::1', 'root', 1476148269, 'Pressed submit button', '/test/sysadmin/edit_user.php'),
(162, '::1', 'root', 1476148269, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => admin\n    [2] => 2\n    [3] => 2\n    [4] => 5\n    [5] => admin\n)\n', '/test/sysadmin/edit_user.php'),
(163, '::1', 'root', 1476148269, 'Query executed: DELETE FROM user_passport WHERE username = ''admin''', '/test/sysadmin/edit_user.php'),
(164, '::1', 'root', 1476148269, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/edit_user.php'),
(165, '::1', 'root', 1476148271, 'Logged out', '/test/end.php'),
(166, '::1', 'admin', 1476148281, 'Logged in', '/test/login.php'),
(167, '::1', 'admin', 1476148289, 'Logged out', '/test/end.php'),
(168, '::1', 'root', 1476148294, 'Logged in', '/test/login.php'),
(169, '::1', 'root', 1476148302, 'Pressed submit button', '/test/sysadmin/edit_user.php'),
(170, '::1', 'root', 1476148302, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => admin\n    [2] => 1\n    [3] => 2\n    [4] => 5\n    [5] => admin\n)\n', '/test/sysadmin/edit_user.php'),
(171, '::1', 'root', 1476148302, 'Query executed: DELETE FROM user_passport WHERE username = ''admin''', '/test/sysadmin/edit_user.php'),
(172, '::1', 'root', 1476148302, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/edit_user.php'),
(173, '::1', 'root', 1476148306, 'Pressed delete button', '/test/sysadmin/delete_person.php'),
(174, '::1', 'root', 1476148306, 'Query Executed: DELETE FROM person WHERE person_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/test/sysadmin/delete_person.php'),
(175, '::1', 'root', 1476148308, 'Logged out', '/test/end.php'),
(176, '::1', 'admin', 1476148312, 'Logged in', '/test/login.php'),
(177, '::1', 'admin', 1476148324, 'Logged out', '/test/end.php'),
(178, '::1', 'root', 1476148759, 'Logged in', '/test/login.php'),
(179, '::1', 'root', 1476148833, 'Logged out', '/test/end.php'),
(180, '::1', 'root', 1476149407, 'Logged in', '/test/login.php'),
(181, '::1', 'root', 1476149523, 'Pressed cancel button', '/test/sysadmin/reset_password.php'),
(182, '::1', 'root', 1476149536, 'Pressed cancel button', '/test/sysadmin/reset_password.php'),
(183, '::1', 'root', 1476149542, 'Pressed cancel button', '/test/sysadmin/module_control.php'),
(184, '::1', 'root', 1476149548, 'Pressed cancel button', '/test/sysadmin/set_user_passports.php'),
(185, '::1', 'root', 1476149693, 'Logged out', '/test/end.php'),
(186, '::1', 'root', 1476192988, 'Logged in', '/test/login.php'),
(187, '::1', 'root', 1476233911, 'Logged in', '/test/login.php'),
(188, '::1', 'root', 1476233935, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''root''', '/test/change_skin.php'),
(189, '::1', 'root', 1476233942, 'Query executed: UPDATE user SET skin_id=''6'' WHERE username=''root''', '/test/change_skin.php'),
(190, '::1', 'root', 1476233953, 'Query executed: UPDATE user SET skin_id=''7'' WHERE username=''root''', '/test/change_skin.php'),
(191, '::1', 'root', 1476233961, 'Query executed: UPDATE user SET skin_id=''8'' WHERE username=''root''', '/test/change_skin.php'),
(192, '::1', 'root', 1476233970, 'Query executed: UPDATE user SET skin_id=''9'' WHERE username=''root''', '/test/change_skin.php'),
(193, '::1', 'root', 1476233976, 'Query executed: UPDATE user SET skin_id=''10'' WHERE username=''root''', '/test/change_skin.php'),
(194, '::1', 'root', 1476233980, 'Query executed: UPDATE user SET skin_id=''4'' WHERE username=''root''', '/test/change_skin.php'),
(195, '::1', 'root', 1476233994, 'Query executed: UPDATE user SET skin_id=''1'' WHERE username=''root''', '/test/change_skin.php'),
(196, '::1', 'root', 1476233998, 'Query executed: UPDATE user SET skin_id=''2'' WHERE username=''root''', '/test/change_skin.php'),
(197, '::1', 'root', 1476234003, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''root''', '/test/change_skin.php'),
(198, '::1', 'root', 1476234165, 'Pressed cancel button', '/test/modules/listview_calendar_event.php'),
(199, '::1', 'root', 1476234338, 'Logged out', '/test/end.php'),
(200, '::1', 'root', 1476236312, 'Logged in', '/test/login.php'),
(201, '::1', 'root', 1476237071, 'Logged out', '/test/end.php'),
(202, '::1', 'root', 1476238052, 'Logged in', '/test/login.php'),
(203, '::1', 'root', 1476238054, 'Logged out', '/test/end.php'),
(204, '::1', 'root', 1476238753, 'Logged in', '/test/login.php'),
(205, '::1', 'root', 1476239052, 'Logged out', '/test/end.php'),
(206, '::1', 'root', 1476255505, 'Logged in', '/test/login.php'),
(207, '::1', 'root', 1476255511, 'Logged out', '/test/end.php'),
(208, '::1', 'root', 1476255520, 'Logged in', '/test/login.php'),
(209, '::1', 'root', 1476255525, 'Logged out', '/test/end.php'),
(210, '::1', 'root', 1476255753, 'Logged in', '/test/login.php'),
(211, '::1', 'root', 1476255757, 'Logged out', '/test/end.php'),
(212, '::1', 'root', 1476257679, 'Logged in', '/test/login.php'),
(213, '::1', 'root', 1476260582, 'Logged out', '/test/end.php'),
(214, '::1', 'root', 1476261367, 'Logged in', '/test/login.php'),
(215, '::1', 'root', 1476261567, 'Pressed cancel button', '/test/sysadmin/module_control.php'),
(216, '::1', 'root', 1476264284, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(217, '::1', 'root', 1476264285, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add document\n    [2] => modules/upload.php\n    [3] => Add Document\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => Docs.png\n    [9] => 0\n    [10] => 41\n)\n', '/test/sysadmin/edit_user_links.php'),
(218, '::1', 'root', 1476264344, 'Query executed: UPDATE user SET skin_id=''1'' WHERE username=''root''', '/test/change_skin.php'),
(219, '::1', 'root', 1476264369, 'Logged out', '/test/end.php'),
(220, '::1', 'root', 1476264377, 'Logged in', '/test/login.php'),
(221, '::1', 'root', 1476264384, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''root''', '/test/change_skin.php'),
(222, '::1', 'root', 1476264604, 'Logged out', '/test/end.php'),
(223, '::1', 'root', 1476264608, 'Logged in', '/test/login.php'),
(224, '::1', 'root', 1476264655, 'Logged out', '/test/end.php'),
(225, '::1', 'root', 1476282165, 'Logged in', '/test/login.php'),
(226, '::1', 'root', 1476282175, 'Pressed cancel button', '/test/sysadmin/add_user.php'),
(227, '::1', 'root', 1476282404, 'Logged out', '/test/end.php'),
(228, '::1', 'admin', 1476282409, 'Logged in', '/test/login.php'),
(229, '::1', 'admin', 1476282463, 'Logged out', '/test/end.php'),
(230, '::1', 'user', 1476282470, 'Logged in', '/test/login.php'),
(231, '::1', 'user', 1476284221, 'Query executed: UPDATE user SET skin_id=''2'' WHERE username=''user''', '/test/change_skin.php'),
(232, '::1', 'user', 1476284227, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''user''', '/test/change_skin.php'),
(233, '::1', 'user', 1476322964, 'Logged in', '/test/login.php'),
(234, '::1', 'user', 1476322980, 'Logged out', '/test/end.php'),
(235, '::1', 'user', 1476381112, 'Logged in', '/test/login.php'),
(236, '::1', 'user', 1476381239, 'Logged out', '/test/end.php'),
(237, '::1', 'root', 1476381398, 'Logged in', '/test/login.php'),
(238, '::1', 'root', 1476381420, 'Query executed: UPDATE user SET skin_id=''9'' WHERE username=''root''', '/test/change_skin.php'),
(239, '::1', 'root', 1476381428, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''root''', '/test/change_skin.php'),
(240, '::1', 'root', 1476381442, 'Query executed: UPDATE user SET skin_id=''4'' WHERE username=''root''', '/test/change_skin.php'),
(241, '::1', 'root', 1476381457, 'Query executed: UPDATE user SET skin_id=''8'' WHERE username=''root''', '/test/change_skin.php'),
(242, '::1', 'root', 1476381469, 'Query executed: UPDATE user SET skin_id=''7'' WHERE username=''root''', '/test/change_skin.php'),
(243, '::1', 'root', 1476381475, 'Query executed: UPDATE user SET skin_id=''6'' WHERE username=''root''', '/test/change_skin.php'),
(244, '::1', 'root', 1476381496, 'Pressed submit button', '/test/sysadmin/add_person.php'),
(245, '::1', 'root', 1476381496, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Chamber\n    [3] => F\n    [4] => Jose\n    [5] => Male\n)\n', '/test/sysadmin/add_person.php'),
(246, '::1', 'root', 1476381546, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(247, '::1', 'root', 1476381547, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => cfjose\n    [2] => $2y$12$gT3X4tEQPSgnZ3uBQgvV2e3xAo7clQB800pslktjq4Hg/ycwiUbGy\n    [3] => gT3X4tEQPSgnZ3uBQgvV2g\n    [4] => 12\n    [5] => blowfish\n    [6] => 2\n    [7] => 3\n    [8] => 6\n)\n', '/test/sysadmin/add_user.php'),
(248, '::1', 'root', 1476381547, 'Query executed: INSERT `user_passport` SELECT ''cfjose'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/add_user.php'),
(249, '::1', 'root', 1476381550, 'Logged out', '/test/end.php'),
(250, '::1', 'cfjose', 1476381565, 'Logged in', '/test/login.php'),
(251, '::1', 'cfjose', 1476381582, 'Logged out', '/test/end.php'),
(252, '::1', 'root', 1476381588, 'Logged in', '/test/login.php'),
(253, '::1', 'root', 1476381608, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(254, '::1', 'root', 1476381608, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => John Kenneth\n    [2] => H\n    [3] => Ferrer\n    [4] => Male\n    [5] => 2\n)\n', '/test/sysadmin/edit_person.php'),
(255, '::1', 'root', 1476381615, 'Logged out', '/test/end.php'),
(256, '::1', 'cfjose', 1476381621, 'Logged in', '/test/login.php'),
(257, '::1', 'cfjose', 1476381635, 'Logged out', '/test/end.php'),
(258, '::1', 'root', 1476381639, 'Logged in', '/test/login.php'),
(259, '::1', 'root', 1476381652, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(260, '::1', 'root', 1476381652, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Rempson\n    [2] => P\n    [3] => Dulitin\n    [4] => Male\n    [5] => 2\n)\n', '/test/sysadmin/edit_person.php'),
(261, '::1', 'root', 1476381655, 'Logged out', '/test/end.php'),
(262, '::1', 'cfjose', 1476381664, 'Logged in', '/test/login.php'),
(263, '::1', 'cfjose', 1476381672, 'Logged out', '/test/end.php'),
(264, '::1', 'root', 1476381678, 'Logged in', '/test/login.php'),
(265, '::1', 'root', 1476381685, 'Pressed delete button', '/test/sysadmin/delete_person.php'),
(266, '::1', 'root', 1476381700, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(267, '::1', 'root', 1476381700, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Chamber\n    [2] => F\n    [3] => Jose\n    [4] => Male\n    [5] => 2\n)\n', '/test/sysadmin/edit_person.php'),
(268, '::1', 'root', 1476381717, 'Pressed delete button', '/test/sysadmin/delete_person.php'),
(269, '::1', 'root', 1476381760, 'Pressed delete button', '/test/sysadmin/delete_user.php'),
(270, '::1', 'root', 1476381760, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => cfjose\n)\n', '/test/sysadmin/delete_user.php'),
(271, '::1', 'root', 1476381764, 'Pressed delete button', '/test/sysadmin/delete_person.php'),
(272, '::1', 'root', 1476381765, 'Query Executed: DELETE FROM person WHERE person_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/test/sysadmin/delete_person.php'),
(273, '::1', 'root', 1476381787, 'Logged out', '/test/end.php'),
(274, '::1', 'admin', 1476381941, 'Logged in', '/test/login.php'),
(275, '::1', 'admin', 1476381980, 'Logged out', '/test/end.php'),
(276, '::1', 'root', 1476381985, 'Logged in', '/test/login.php'),
(277, '::1', 'root', 1476382884, 'Logged out', '/test/end.php'),
(278, '::1', 'root', 1476407647, 'Logged in', '/test/login.php'),
(279, '::1', 'root', 1476408121, 'Logged out', '/test/end.php'),
(280, '::1', 'root', 1476408174, 'Logged in', '/test/login.php'),
(281, '::1', 'root', 1476408197, 'Pressed submit button', '/test/modules/add_organization.php'),
(282, '::1', 'root', 1476408206, 'Pressed submit button', '/test/modules/add_organization.php'),
(283, '::1', 'root', 1476408206, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Junior Philippine Computer Society\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(284, '::1', 'root', 1476408275, 'Logged out', '/test/end.php'),
(285, '::1', 'root', 1476408279, 'Logged in', '/test/login.php'),
(286, '::1', 'root', 1476408291, 'Pressed submit button', '/test/modules/edit_organization.php'),
(287, '::1', 'root', 1476408291, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior Philippine Computer Society (JPCS)\n    [2] => N / A\n    [3] => N / A\n    [4] => 1\n)\n', '/test/modules/edit_organization.php'),
(288, '::1', 'root', 1476408311, 'Pressed cancel button', '/test/modules/add_organization.php'),
(289, '::1', 'root', 1476408314, 'Logged out', '/test/end.php'),
(290, '::1', 'root', 1476408383, 'Logged in', '/test/login.php'),
(291, '::1', 'root', 1476408441, 'Pressed submit button', '/test/modules/add_organization.php'),
(292, '::1', 'root', 1476408581, 'Logged out', '/test/end.php'),
(293, '::1', 'root', 1476408592, 'Logged in', '/test/login.php'),
(294, '::1', 'root', 1476408617, 'Logged out', '/test/end.php'),
(295, '::1', 'root', 1476408713, 'Logged in', '/test/login.php'),
(296, '::1', 'root', 1476408831, 'Logged in', '/test/login.php'),
(297, '::1', 'root', 1476408852, 'Pressed submit button', '/test/modules/add_organization.php'),
(298, '::1', 'root', 1476408852, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => JISSA\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(299, '::1', 'root', 1476408855, 'Logged out', '/test/end.php'),
(300, '::1', 'root', 1476408861, 'Logged in', '/test/login.php'),
(301, '::1', 'root', 1476408878, 'Pressed submit button', '/test/modules/add_organization.php'),
(302, '::1', 'root', 1476408878, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Microsoft Community (MSC)\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(303, '::1', 'root', 1476408888, 'Pressed submit button', '/test/modules/add_organization.php'),
(304, '::1', 'root', 1476408889, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Cipher\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(305, '::1', 'root', 1476408920, 'Pressed cancel button', '/test/modules/add_organization.php'),
(306, '::1', 'root', 1476408935, 'Pressed submit button', '/test/modules/add_organization.php'),
(307, '::1', 'root', 1476408935, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Gaming Genesis (GG)\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(308, '::1', 'root', 1476408947, 'Logged out', '/test/end.php'),
(309, '::1', 'root', 1476408955, 'Logged in', '/test/login.php'),
(310, '::1', 'root', 1476408976, 'Pressed submit button', '/test/modules/add_organization.php'),
(311, '::1', 'root', 1476408976, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Grand Chorale\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(312, '::1', 'root', 1476409023, 'Pressed submit button', '/test/modules/add_organization.php'),
(313, '::1', 'root', 1476409023, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Bahay Bombilya\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(314, '::1', 'root', 1476409048, 'Pressed submit button', '/test/modules/add_organization.php'),
(315, '::1', 'root', 1476409053, 'Pressed submit button', '/test/modules/add_organization.php'),
(316, '::1', 'root', 1476409053, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Association of Computer Engineering Students\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(317, '::1', 'root', 1476409080, 'Pressed submit button', '/test/modules/add_organization.php'),
(318, '::1', 'root', 1476409080, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Animation Society\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(319, '::1', 'root', 1476409095, 'Pressed submit button', '/test/modules/add_organization.php'),
(320, '::1', 'root', 1476409095, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Band\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(321, '::1', 'root', 1476409110, 'Pressed submit button', '/test/modules/add_organization.php'),
(322, '::1', 'root', 1476409110, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Speaks\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(323, '::1', 'root', 1476409125, 'Pressed submit button', '/test/modules/add_organization.php'),
(324, '::1', 'root', 1476409125, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Dance Company\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(325, '::1', 'root', 1476409140, 'Pressed submit button', '/test/modules/add_organization.php'),
(326, '::1', 'root', 1476409140, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC SM Scholars\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(327, '::1', 'root', 1476409172, 'Pressed submit button', '/test/modules/add_organization.php'),
(328, '::1', 'root', 1476409172, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Business Management Group (BMAG)\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(329, '::1', 'root', 1476409193, 'Pressed submit button', '/test/modules/add_organization.php'),
(330, '::1', 'root', 1476409193, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Explorer''s Club\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(331, '::1', 'root', 1476409222, 'Pressed submit button', '/test/modules/add_organization.php'),
(332, '::1', 'root', 1476409222, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Junior Philippine Institue of Accountants\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(333, '::1', 'root', 1476409231, 'Pressed submit button', '/test/modules/edit_organization.php'),
(334, '::1', 'root', 1476409231, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior Philippine Institute of Accountants\n    [2] => N / A\n    [3] => N / A\n    [4] => 16\n)\n', '/test/modules/edit_organization.php'),
(335, '::1', 'root', 1476409263, 'Pressed submit button', '/test/modules/add_organization.php'),
(336, '::1', 'root', 1476409263, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Asia Pacific Junior Marketing Association\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(337, '::1', 'root', 1476409291, 'Pressed submit button', '/test/modules/add_organization.php'),
(338, '::1', 'root', 1476409291, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Asia Pacific College Psychological Society\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(339, '::1', 'root', 1476409310, 'Pressed submit button', '/test/modules/add_organization.php'),
(340, '::1', 'root', 1476409310, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => ROBORG\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(341, '::1', 'root', 1476409354, 'Pressed submit button', '/test/modules/add_organization.php'),
(342, '::1', 'root', 1476409354, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Teatré Phileo\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(343, '::1', 'root', 1476409463, 'Pressed submit button', '/test/modules/add_organization.php'),
(344, '::1', 'root', 1476409463, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Student Organization Association of Regents\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(345, '::1', 'root', 1476410190, 'Pressed submit button', '/test/modules/add_organization.php'),
(346, '::1', 'root', 1476410190, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Math Society\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(347, '::1', 'root', 1476410207, 'Pressed submit button', '/test/modules/add_organization.php'),
(348, '::1', 'root', 1476410207, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => PWERSA\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(349, '::1', 'root', 1476410221, 'Pressed submit button', '/test/modules/add_organization.php'),
(350, '::1', 'root', 1476410221, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Rotaract Club\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(351, '::1', 'root', 1476410240, 'Pressed submit button', '/test/modules/add_organization.php'),
(352, '::1', 'root', 1476410240, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Strings\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(353, '::1', 'root', 1476410262, 'Pressed submit button', '/test/modules/add_organization.php'),
(354, '::1', 'root', 1476410262, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Tourism Management Society\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(355, '::1', 'root', 1476410282, 'Pressed submit button', '/test/modules/add_organization.php'),
(356, '::1', 'root', 1476410282, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Flickers Photo Society\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(357, '::1', 'root', 1476410314, 'Logged out', '/test/end.php'),
(358, '127.0.0.1', 'root', 1476415699, 'Logged in', '/test/login.php'),
(359, '127.0.0.1', 'root', 1476416206, 'Logged out', '/test/end.php'),
(360, '::1', 'root', 1476425512, 'Logged in', '/test/login.php'),
(361, '::1', 'root', 1476425557, 'Pressed submit button', '/test/modules/edit_organization.php'),
(362, '::1', 'root', 1476425558, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Teatre Phileo\n    [2] => N / A\n    [3] => N / A\n    [4] => 20\n)\n', '/test/modules/edit_organization.php'),
(363, '::1', 'root', 1476428450, 'Logged in', '/test/login.php'),
(364, '::1', 'root', 1476428634, 'Logged out', '/test/end.php'),
(365, '::1', 'root', 1476428756, 'Logged in', '/test/login.php'),
(366, '::1', 'root', 1476428826, 'Logged out', '/test/end.php'),
(367, '::1', 'root', 1476429740, 'Logged in', '/test/login.php'),
(368, '::1', 'root', 1476429754, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(369, '::1', 'root', 1476430243, 'Logged out', '/test/end.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(370, '::1', 'root', 1476661166, 'Logged in', '/test1/login.php'),
(371, '::1', 'root', 1476661223, 'Logged in', '/test/login.php'),
(372, '::1', 'root', 1476661245, 'Logged out', '/test/end.php'),
(373, '::1', 'root', 1476661251, 'Logged in', '/test/login.php'),
(374, '::1', 'Not Logged In', 1476746273, 'Pressed submit button', '/test1/sysadmin/add_user.php'),
(375, '::1', 'root', 1476746326, 'Logged in', '/test/login.php'),
(376, '::1', 'root', 1476746343, 'Pressed cancel button', '/test/sysadmin/add_person.php'),
(377, '::1', 'root', 1476746962, 'Pressed submit button', '/test1/sysadmin/add_person.php'),
(378, '::1', 'root', 1476746964, 'Pressed cancel button', '/test1/sysadmin/add_person.php'),
(379, '::1', 'root', 1476747470, 'Logged out', '/test1/end.php'),
(380, '::1', 'root', 1476747525, 'Logged in', '/test/login.php'),
(381, '::1', 'root', 1476747532, 'Pressed cancel button', '/test/sst/add_cobalt_sst.php'),
(382, '::1', 'root', 1476747574, 'Pressed submit button', '/test/sysadmin/edit_system_settings.php'),
(383, '::1', 'root', 1476747574, 'Query Executed: UPDATE system_settings SET setting = ?, value = ? WHERE setting = ?\r\nArray\n(\n    [0] => sss\n    [1] => Max Attachment Size (MB)\n    [2] => 100\n    [3] => Max Attachment Size (MB)\n)\n', '/test/sysadmin/edit_system_settings.php'),
(384, '::1', 'root', 1476747627, 'Logged out', '/test/end.php'),
(385, '::1', 'root', 1476747764, 'Logged in', '/test1/login.php'),
(386, '::1', 'root', 1476747790, 'Pressed submit button', '/test1/modules/edit_organization.php'),
(387, '::1', 'root', 1476747790, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior Information Systems Security Association (JISSA)\n    [2] => N / A\n    [3] => N / A\n    [4] => 2\n)\n', '/test1/modules/edit_organization.php'),
(388, '::1', 'root', 1476747802, 'Logged out', '/test1/end.php'),
(389, '::1', 'root', 1476747828, 'Logged in', '/test/login.php'),
(390, '::1', 'root', 1476748251, 'Pressed cancel button', '/test/sysadmin/add_person.php'),
(391, '::1', 'root', 1476748317, 'Pressed cancel button', '/test/modules/add_organization.php'),
(392, '::1', 'root', 1476748322, 'Logged out', '/test/end.php'),
(393, '::1', 'root', 1476748337, 'Logged in', '/test/login.php'),
(394, '::1', 'root', 1476748378, 'Pressed submit button', '/test/modules/edit_organization.php'),
(395, '::1', 'root', 1476748378, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Asia Pacific Junior Marketing Association (APJMA)\n    [2] => N / A\n    [3] => N / A\n    [4] => 17\n)\n', '/test/modules/edit_organization.php'),
(396, '::1', 'root', 1476748387, 'Pressed submit button', '/test/modules/edit_organization.php'),
(397, '::1', 'root', 1476748387, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Association of Computer Engineering Students (ACES)\n    [2] => N / A\n    [3] => N / A\n    [4] => 8\n)\n', '/test/modules/edit_organization.php'),
(398, '::1', 'root', 1476748397, 'Pressed submit button', '/test/modules/edit_organization.php'),
(399, '::1', 'root', 1476748397, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Bahay Bombilya (BB)\n    [2] => N / A\n    [3] => N / A\n    [4] => 7\n)\n', '/test/modules/edit_organization.php'),
(400, '::1', 'root', 1476748412, 'Pressed submit button', '/test/modules/edit_organization.php'),
(401, '::1', 'root', 1476748412, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior Philippine Institute of Accountants (JPIA)\n    [2] => N / A\n    [3] => N / A\n    [4] => 16\n)\n', '/test/modules/edit_organization.php'),
(402, '::1', 'root', 1476748421, 'Pressed submit button', '/test/modules/edit_organization.php'),
(403, '::1', 'root', 1476748421, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Student Organization Association of Regents (SOAR)\n    [2] => N / A\n    [3] => N / A\n    [4] => 21\n)\n', '/test/modules/edit_organization.php'),
(404, '::1', 'root', 1476749496, 'Logged in', '/test1/login.php'),
(405, '::1', 'root', 1476749706, 'Pressed submit button', '/test1/sysadmin/add_person.php'),
(406, '::1', 'root', 1476749743, 'Pressed submit button', '/test1/sysadmin/add_person.php'),
(407, '::1', 'root', 1476749753, 'Pressed submit button', '/test1/sysadmin/add_person.php'),
(408, '::1', 'root', 1476749862, 'Pressed submit button', '/test1/sysadmin/add_person.php'),
(409, '::1', 'root', 1476749896, 'Pressed submit button', '/test1/sysadmin/add_person.php'),
(410, '::1', 'root', 1476749896, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Juan\n    [3] => Santos\n    [4] => de la Cruz\n    [5] => Male\n)\n', '/test1/sysadmin/add_person.php'),
(411, '::1', 'root', 1476750783, 'Logged out', '/test1/end.php'),
(412, '::1', 'root', 1476752469, 'Logged in', '/test1/login.php'),
(413, '::1', 'root', 1476752474, 'Logged out', '/test1/end.php'),
(414, '::1', 'root', 1476752637, 'Logged in', '/test1/login.php'),
(415, '::1', 'root', 1476761246, 'Logged in', '/test/login.php'),
(416, '::1', 'root', 1476761250, 'Logged in', '/test1/login.php'),
(417, '::1', 'root', 1476771380, 'Query executed: UPDATE user SET skin_id=''7'' WHERE username=''root''', '/test/change_skin.php'),
(418, '::1', 'root', 1476771395, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''root''', '/test/change_skin.php'),
(419, '::1', 'root', 1476771409, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''root''', '/test/change_skin.php'),
(420, '::1', 'root', 1476771415, 'Query executed: UPDATE user SET skin_id=''9'' WHERE username=''root''', '/test/change_skin.php'),
(421, '::1', 'root', 1476771429, 'Query executed: UPDATE user SET skin_id=''6'' WHERE username=''root''', '/test/change_skin.php'),
(422, '::1', 'root', 1477144231, 'Logged in', '/test/login.php'),
(423, '::1', 'root', 1477144328, 'Logged out', '/test/end.php'),
(424, '::1', 'root', 1477144340, 'Logged in', '/test1/login.php'),
(425, '::1', 'root', 1477145062, 'Logged out', '/test1/end.php'),
(426, '::1', 'root', 1477145075, 'Logged in', '/test/login.php'),
(427, '::1', 'root', 1477145306, 'Logged out', '/test/end.php'),
(428, '::1', 'root', 1477154586, 'Logged in', '/test/login.php'),
(429, '::1', 'root', 1477154699, 'Logged out', '/test/end.php'),
(430, '::1', 'admin', 1477154713, 'Logged in', '/test/login.php'),
(431, '::1', 'admin', 1477154719, 'Logged out', '/test/end.php'),
(432, '::1', 'user', 1477154730, 'Logged in', '/test/login.php'),
(433, '::1', 'user', 1477154742, 'Query executed: UPDATE user SET skin_id=''7'' WHERE username=''user''', '/test/change_skin.php'),
(434, '::1', 'user', 1477154748, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''user''', '/test/change_skin.php'),
(435, '::1', 'user', 1477154758, 'Query executed: UPDATE user SET skin_id=''2'' WHERE username=''user''', '/test/change_skin.php'),
(436, '::1', 'user', 1477154797, 'Logged out', '/test/end.php'),
(437, '::1', 'root', 1477187427, 'Logged in', '/test/login.php'),
(438, '::1', 'root', 1477187478, 'Pressed submit button', '/test/modules/add_organization.php'),
(439, '::1', 'root', 1477187484, 'Pressed submit button', '/test/modules/add_organization.php'),
(440, '::1', 'root', 1477187484, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Junior Philippine Marketing Association of the Philippines (JPMAP))\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(441, '::1', 'root', 1477187496, 'Pressed submit button', '/test/modules/edit_organization.php'),
(442, '::1', 'root', 1477187496, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior Philippine Marketing Association of the Philippines (JPMAP)\n    [2] => N / A\n    [3] => N / A\n    [4] => 28\n)\n', '/test/modules/edit_organization.php'),
(443, '::1', 'root', 1477187532, 'Logged out', '/test/end.php'),
(444, '::1', 'root', 1477187591, 'Logged in', '/test/login.php'),
(445, '::1', 'root', 1477187631, 'Pressed submit button', '/test/modules/edit_organization.php'),
(446, '::1', 'root', 1477187631, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior Personnel Management Association of the Philippines (JPMAP)\n    [2] => N / A\n    [3] => N / A\n    [4] => 28\n)\n', '/test/modules/edit_organization.php'),
(447, '::1', 'root', 1477187642, 'Logged out', '/test/end.php'),
(448, '::1', 'admin', 1477187646, 'Logged in', '/test/login.php'),
(449, '::1', 'admin', 1477187673, 'Logged out', '/test/end.php'),
(450, '::1', 'root', 1477187678, 'Logged in', '/test/login.php'),
(451, '::1', 'root', 1477187700, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/role_permissions.php'),
(452, '::1', 'root', 1477187700, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''37'')', '/test/sysadmin/role_permissions.php'),
(453, '::1', 'root', 1477187700, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/test/sysadmin/role_permissions.php'),
(454, '::1', 'root', 1477187700, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''45'')', '/test/sysadmin/role_permissions.php'),
(455, '::1', 'root', 1477187700, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''39'')', '/test/sysadmin/role_permissions.php'),
(456, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''40'')', '/test/sysadmin/role_permissions.php'),
(457, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/test/sysadmin/role_permissions.php'),
(458, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''43'')', '/test/sysadmin/role_permissions.php'),
(459, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''38'')', '/test/sysadmin/role_permissions.php'),
(460, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/test/sysadmin/role_permissions.php'),
(461, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''47'')', '/test/sysadmin/role_permissions.php'),
(462, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''6'')', '/test/sysadmin/role_permissions.php'),
(463, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''32'')', '/test/sysadmin/role_permissions.php'),
(464, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''10'')', '/test/sysadmin/role_permissions.php'),
(465, '::1', 'root', 1477187701, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''14'')', '/test/sysadmin/role_permissions.php'),
(466, '::1', 'root', 1477187717, 'Query executed: DELETE FROM user_passport WHERE username IN (''admin'')', '/test/sysadmin/role_permissions_cascade.php'),
(467, '::1', 'root', 1477187717, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/role_permissions_cascade.php'),
(468, '::1', 'root', 1477187719, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(469, '::1', 'root', 1477187721, 'Logged out', '/test/end.php'),
(470, '::1', 'admin', 1477187735, 'Logged in', '/test/login.php'),
(471, '::1', 'admin', 1477188791, 'Logged out', '/test/end.php'),
(472, '::1', 'root', 1477195636, 'Logged in', '/test/login.php'),
(473, '::1', 'root', 1477195649, 'Pressed submit button', '/test/sysadmin/add_person.php'),
(474, '::1', 'root', 1477195649, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Johanna Marisse\n    [3] => Credito\n    [4] => Heramia\n    [5] => Female\n)\n', '/test/sysadmin/add_person.php'),
(475, '::1', 'root', 1477195687, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(476, '::1', 'root', 1477195688, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => jcheramia\n    [2] => $2y$12$aURf9FJuz1l1bELZ2DbZxO9LraLEmmMtpWu9nTA79N0QHBVq7TB.G\n    [3] => aURf9FJuz1l1bELZ2DbZxQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 15\n    [7] => 3\n    [8] => 5\n)\n', '/test/sysadmin/add_user.php'),
(477, '::1', 'root', 1477195688, 'Query executed: INSERT `user_passport` SELECT ''jcheramia'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/add_user.php'),
(478, '::1', 'root', 1477195692, 'Logged out', '/test/end.php'),
(479, '::1', 'jcheramia', 1477195697, 'Logged in', '/test/login.php'),
(480, '::1', 'jcheramia', 1477195742, 'Logged out', '/test/end.php'),
(481, '::1', 'root', 1477195747, 'Logged in', '/test/login.php'),
(482, '::1', 'root', 1477195762, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(483, '::1', 'root', 1477195763, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Danya\n    [2] => Pateno\n    [3] => Balcena\n    [4] => Female\n    [5] => 15\n)\n', '/test/sysadmin/edit_person.php'),
(484, '::1', 'root', 1477195766, 'Logged out', '/test/end.php'),
(485, '::1', 'jcheramia', 1477195774, 'Logged in', '/test/login.php'),
(486, '::1', 'jcheramia', 1477195799, 'Logged out', '/test/end.php'),
(487, '::1', 'root', 1477195804, 'Logged in', '/test/login.php'),
(488, '::1', 'root', 1477195820, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(489, '::1', 'root', 1477195820, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Edric Jon Cleon\n    [2] => Buena\n    [3] => Caranto\n    [4] => Male\n    [5] => 15\n)\n', '/test/sysadmin/edit_person.php'),
(490, '::1', 'root', 1477195823, 'Logged out', '/test/end.php'),
(491, '::1', 'jcheramia', 1477195830, 'Logged in', '/test/login.php'),
(492, '::1', 'jcheramia', 1477195839, 'Logged out', '/test/end.php'),
(493, '::1', 'root', 1477195843, 'Logged in', '/test/login.php'),
(494, '::1', 'root', 1477195853, 'Pressed delete button', '/test/sysadmin/delete_user.php'),
(495, '::1', 'root', 1477195854, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => jcheramia\n)\n', '/test/sysadmin/delete_user.php'),
(496, '::1', 'root', 1477195862, 'Pressed delete button', '/test/sysadmin/delete_person.php'),
(497, '::1', 'root', 1477195862, 'Query Executed: DELETE FROM person WHERE person_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 15\n)\n', '/test/sysadmin/delete_person.php'),
(498, '::1', 'root', 1477195864, 'Logged out', '/test/end.php'),
(499, '::1', 'root', 1477219519, 'Logged in', '/test1/login.php'),
(500, '::1', 'root', 1477219523, 'Logged out', '/test1/end.php'),
(501, '::1', 'root', 1477219891, 'Logged in', '/test-1/login.php'),
(502, '::1', 'root', 1477219924, 'Pressed cancel button', '/test-1/sst/add_cobalt_sst.php'),
(503, '::1', 'root', 1477219987, 'Pressed cancel button', '/test-1/sysadmin/add_user_links.php'),
(504, '::1', 'root', 1477220048, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(505, '::1', 'root', 1477220087, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(506, '::1', 'root', 1477220087, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Add Committee\n    [3] => modules/add_committee.php\n    [4] => Add new Committee\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(507, '::1', 'root', 1477220109, 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions.php'),
(508, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/test-1/sysadmin/role_permissions.php'),
(509, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/test-1/sysadmin/role_permissions.php'),
(510, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/test-1/sysadmin/role_permissions.php'),
(511, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/test-1/sysadmin/role_permissions.php'),
(512, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/test-1/sysadmin/role_permissions.php'),
(513, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/test-1/sysadmin/role_permissions.php'),
(514, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/test-1/sysadmin/role_permissions.php'),
(515, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/test-1/sysadmin/role_permissions.php'),
(516, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/test-1/sysadmin/role_permissions.php'),
(517, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/test-1/sysadmin/role_permissions.php'),
(518, '::1', 'root', 1477220109, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/test-1/sysadmin/role_permissions.php'),
(519, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/test-1/sysadmin/role_permissions.php'),
(520, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/test-1/sysadmin/role_permissions.php'),
(521, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/test-1/sysadmin/role_permissions.php'),
(522, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/test-1/sysadmin/role_permissions.php'),
(523, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/test-1/sysadmin/role_permissions.php'),
(524, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/test-1/sysadmin/role_permissions.php'),
(525, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/test-1/sysadmin/role_permissions.php'),
(526, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/test-1/sysadmin/role_permissions.php'),
(527, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/test-1/sysadmin/role_permissions.php'),
(528, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/test-1/sysadmin/role_permissions.php'),
(529, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/test-1/sysadmin/role_permissions.php'),
(530, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/test-1/sysadmin/role_permissions.php'),
(531, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/test-1/sysadmin/role_permissions.php'),
(532, '::1', 'root', 1477220110, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/test-1/sysadmin/role_permissions.php'),
(533, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/test-1/sysadmin/role_permissions.php'),
(534, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/test-1/sysadmin/role_permissions.php'),
(535, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/test-1/sysadmin/role_permissions.php'),
(536, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/test-1/sysadmin/role_permissions.php'),
(537, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/test-1/sysadmin/role_permissions.php'),
(538, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/test-1/sysadmin/role_permissions.php'),
(539, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/test-1/sysadmin/role_permissions.php'),
(540, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/test-1/sysadmin/role_permissions.php'),
(541, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/test-1/sysadmin/role_permissions.php'),
(542, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/test-1/sysadmin/role_permissions.php'),
(543, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/test-1/sysadmin/role_permissions.php'),
(544, '::1', 'root', 1477220111, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/test-1/sysadmin/role_permissions.php'),
(545, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/test-1/sysadmin/role_permissions.php'),
(546, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/test-1/sysadmin/role_permissions.php'),
(547, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/test-1/sysadmin/role_permissions.php'),
(548, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/test-1/sysadmin/role_permissions.php'),
(549, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/test-1/sysadmin/role_permissions.php'),
(550, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/test-1/sysadmin/role_permissions.php'),
(551, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/test-1/sysadmin/role_permissions.php'),
(552, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/test-1/sysadmin/role_permissions.php'),
(553, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/test-1/sysadmin/role_permissions.php'),
(554, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/test-1/sysadmin/role_permissions.php'),
(555, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/test-1/sysadmin/role_permissions.php'),
(556, '::1', 'root', 1477220112, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/test-1/sysadmin/role_permissions.php'),
(557, '::1', 'root', 1477220122, 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/test-1/sysadmin/role_permissions_cascade.php'),
(558, '::1', 'root', 1477220122, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions_cascade.php'),
(559, '::1', 'root', 1477220124, 'Pressed cancel button', '/test-1/sysadmin/role_permissions_cascade.php'),
(560, '::1', 'root', 1477220194, 'Pressed cancel button', '/test-1/modules/add_committee.php'),
(561, '::1', 'root', 1477220338, 'Pressed submit button', '/test-1/sysadmin/add_user_role.php'),
(562, '::1', 'root', 1477220338, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Organization Head (President, Committee Directors, etc.)\n    [3] => User role granted with Organization management authority\n)\n', '/test-1/sysadmin/add_user_role.php'),
(563, '::1', 'root', 1477220355, 'Pressed cancel button', '/test-1/sysadmin/add_user_role.php'),
(564, '::1', 'root', 1477220366, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(565, '::1', 'root', 1477220366, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Organization Head (President, Committee Heads, etc.)\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(566, '::1', 'root', 1477220375, 'Pressed cancel button', '/test-1/sysadmin/add_user_role.php'),
(567, '::1', 'root', 1477220387, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(568, '::1', 'root', 1477220387, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Organization Head (President and Committee Heads)\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(569, '::1', 'root', 1477220400, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(570, '::1', 'root', 1477220400, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Organization Head (President & Committee Heads)\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(571, '::1', 'root', 1477220465, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(572, '::1', 'root', 1477220465, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Organization Heads\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(573, '::1', 'root', 1477220470, 'Pressed cancel button', '/test-1/sysadmin/edit_user_role.php'),
(574, '::1', 'root', 1477220483, 'Pressed submit button', '/test-1/sysadmin/add_user_role.php'),
(575, '::1', 'root', 1477220487, 'Pressed submit button', '/test-1/sysadmin/add_user_role.php'),
(576, '::1', 'root', 1477220487, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Officers\n    [3] => Standard User with Basic System Privileges\n)\n', '/test-1/sysadmin/add_user_role.php'),
(577, '::1', 'root', 1477220540, 'Pressed cancel button', '/test-1/sysadmin/add_user_role.php'),
(578, '::1', 'root', 1477220583, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(579, '::1', 'root', 1477220583, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => View Committee\n    [3] => modules/listview_committee.php\n    [4] => Committee\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(580, '::1', 'root', 1477220610, 'Pressed submit button', '/test-1/sysadmin/edit_user_links.php'),
(581, '::1', 'root', 1477220610, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add Committee\n    [2] => modules/add_committee.php\n    [3] => Add Committee\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 49\n)\n', '/test-1/sysadmin/edit_user_links.php'),
(582, '::1', 'root', 1477220628, 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions.php'),
(583, '::1', 'root', 1477220628, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/test-1/sysadmin/role_permissions.php'),
(584, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/test-1/sysadmin/role_permissions.php'),
(585, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/test-1/sysadmin/role_permissions.php'),
(586, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/test-1/sysadmin/role_permissions.php'),
(587, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/test-1/sysadmin/role_permissions.php'),
(588, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/test-1/sysadmin/role_permissions.php'),
(589, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/test-1/sysadmin/role_permissions.php'),
(590, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/test-1/sysadmin/role_permissions.php'),
(591, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/test-1/sysadmin/role_permissions.php'),
(592, '::1', 'root', 1477220629, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/test-1/sysadmin/role_permissions.php'),
(593, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/test-1/sysadmin/role_permissions.php'),
(594, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/test-1/sysadmin/role_permissions.php'),
(595, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/test-1/sysadmin/role_permissions.php'),
(596, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/test-1/sysadmin/role_permissions.php'),
(597, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/test-1/sysadmin/role_permissions.php'),
(598, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/test-1/sysadmin/role_permissions.php'),
(599, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/test-1/sysadmin/role_permissions.php'),
(600, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/test-1/sysadmin/role_permissions.php'),
(601, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/test-1/sysadmin/role_permissions.php'),
(602, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/test-1/sysadmin/role_permissions.php'),
(603, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/test-1/sysadmin/role_permissions.php'),
(604, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/test-1/sysadmin/role_permissions.php'),
(605, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/test-1/sysadmin/role_permissions.php'),
(606, '::1', 'root', 1477220630, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/test-1/sysadmin/role_permissions.php'),
(607, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/test-1/sysadmin/role_permissions.php'),
(608, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/test-1/sysadmin/role_permissions.php'),
(609, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/test-1/sysadmin/role_permissions.php'),
(610, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/test-1/sysadmin/role_permissions.php'),
(611, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/test-1/sysadmin/role_permissions.php'),
(612, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/test-1/sysadmin/role_permissions.php'),
(613, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/test-1/sysadmin/role_permissions.php'),
(614, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/test-1/sysadmin/role_permissions.php'),
(615, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/test-1/sysadmin/role_permissions.php'),
(616, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/test-1/sysadmin/role_permissions.php'),
(617, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/test-1/sysadmin/role_permissions.php'),
(618, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/test-1/sysadmin/role_permissions.php'),
(619, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/test-1/sysadmin/role_permissions.php'),
(620, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/test-1/sysadmin/role_permissions.php'),
(621, '::1', 'root', 1477220631, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/test-1/sysadmin/role_permissions.php'),
(622, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/test-1/sysadmin/role_permissions.php'),
(623, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/test-1/sysadmin/role_permissions.php'),
(624, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/test-1/sysadmin/role_permissions.php'),
(625, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/test-1/sysadmin/role_permissions.php'),
(626, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/test-1/sysadmin/role_permissions.php'),
(627, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/test-1/sysadmin/role_permissions.php'),
(628, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/test-1/sysadmin/role_permissions.php'),
(629, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/test-1/sysadmin/role_permissions.php'),
(630, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/test-1/sysadmin/role_permissions.php'),
(631, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/test-1/sysadmin/role_permissions.php'),
(632, '::1', 'root', 1477220632, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/test-1/sysadmin/role_permissions.php'),
(633, '::1', 'root', 1477220639, 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/test-1/sysadmin/role_permissions_cascade.php'),
(634, '::1', 'root', 1477220639, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions_cascade.php'),
(635, '::1', 'root', 1477220641, 'Pressed cancel button', '/test-1/sysadmin/role_permissions_cascade.php'),
(636, '::1', 'root', 1477220651, 'Pressed cancel button', '/test-1/modules/add_committee.php'),
(637, '::1', 'root', 1477220658, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(638, '::1', 'root', 1477220658, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Logistics Committee\n)\n', '/test-1/modules/add_committee.php'),
(639, '::1', 'root', 1477220718, 'Pressed cancel button', '/test-1/modules/add_committee.php'),
(640, '::1', 'root', 1477220754, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(641, '::1', 'root', 1477220754, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Edit Committee\n    [3] => modules/edit_committee.php\n    [4] => Edit Committee\n    [5] => \n    [6] => 1\n    [7] => No\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(642, '::1', 'root', 1477220807, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(643, '::1', 'root', 1477220807, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Delete Committee\n    [3] => modules/delete_committee.php\n    [4] => Delete Committee\n    [5] => \n    [6] => 1\n    [7] => No\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(644, '::1', 'root', 1477220823, 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions.php'),
(645, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/test-1/sysadmin/role_permissions.php'),
(646, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/test-1/sysadmin/role_permissions.php'),
(647, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/test-1/sysadmin/role_permissions.php'),
(648, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/test-1/sysadmin/role_permissions.php'),
(649, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/test-1/sysadmin/role_permissions.php'),
(650, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/test-1/sysadmin/role_permissions.php'),
(651, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/test-1/sysadmin/role_permissions.php'),
(652, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/test-1/sysadmin/role_permissions.php'),
(653, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/test-1/sysadmin/role_permissions.php'),
(654, '::1', 'root', 1477220823, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/test-1/sysadmin/role_permissions.php'),
(655, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/test-1/sysadmin/role_permissions.php'),
(656, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/test-1/sysadmin/role_permissions.php'),
(657, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/test-1/sysadmin/role_permissions.php'),
(658, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/test-1/sysadmin/role_permissions.php'),
(659, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/test-1/sysadmin/role_permissions.php'),
(660, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/test-1/sysadmin/role_permissions.php'),
(661, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/test-1/sysadmin/role_permissions.php'),
(662, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/test-1/sysadmin/role_permissions.php'),
(663, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/test-1/sysadmin/role_permissions.php'),
(664, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/test-1/sysadmin/role_permissions.php'),
(665, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/test-1/sysadmin/role_permissions.php'),
(666, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/test-1/sysadmin/role_permissions.php'),
(667, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/test-1/sysadmin/role_permissions.php'),
(668, '::1', 'root', 1477220824, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/test-1/sysadmin/role_permissions.php'),
(669, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/test-1/sysadmin/role_permissions.php'),
(670, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/test-1/sysadmin/role_permissions.php'),
(671, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/test-1/sysadmin/role_permissions.php'),
(672, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/test-1/sysadmin/role_permissions.php'),
(673, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/test-1/sysadmin/role_permissions.php'),
(674, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/test-1/sysadmin/role_permissions.php'),
(675, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/test-1/sysadmin/role_permissions.php'),
(676, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/test-1/sysadmin/role_permissions.php'),
(677, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/test-1/sysadmin/role_permissions.php'),
(678, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/test-1/sysadmin/role_permissions.php'),
(679, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/test-1/sysadmin/role_permissions.php'),
(680, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/test-1/sysadmin/role_permissions.php'),
(681, '::1', 'root', 1477220825, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/test-1/sysadmin/role_permissions.php'),
(682, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/test-1/sysadmin/role_permissions.php'),
(683, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/test-1/sysadmin/role_permissions.php'),
(684, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/test-1/sysadmin/role_permissions.php'),
(685, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/test-1/sysadmin/role_permissions.php'),
(686, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/test-1/sysadmin/role_permissions.php'),
(687, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/test-1/sysadmin/role_permissions.php'),
(688, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/test-1/sysadmin/role_permissions.php'),
(689, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/test-1/sysadmin/role_permissions.php'),
(690, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/test-1/sysadmin/role_permissions.php'),
(691, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/test-1/sysadmin/role_permissions.php'),
(692, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/test-1/sysadmin/role_permissions.php'),
(693, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/test-1/sysadmin/role_permissions.php'),
(694, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/test-1/sysadmin/role_permissions.php'),
(695, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/test-1/sysadmin/role_permissions.php'),
(696, '::1', 'root', 1477220826, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/test-1/sysadmin/role_permissions.php'),
(697, '::1', 'root', 1477220842, 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/test-1/sysadmin/role_permissions_cascade.php'),
(698, '::1', 'root', 1477220843, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions_cascade.php'),
(699, '::1', 'root', 1477220844, 'Pressed cancel button', '/test-1/sysadmin/role_permissions_cascade.php'),
(700, '::1', 'root', 1477220853, 'Pressed submit button', '/test-1/modules/edit_committee.php'),
(701, '::1', 'root', 1477220853, 'Query Executed: UPDATE committee SET name = ? WHERE id = ?\r\nArray\n(\n    [0] => si\n    [1] => Logistics Committee\n    [2] => 1\n)\n', '/test-1/modules/edit_committee.php'),
(702, '::1', 'root', 1477220902, 'Pressed delete button', '/test-1/modules/delete_committee.php'),
(703, '::1', 'root', 1477220902, 'Query Executed: DELETE FROM committee WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/test-1/modules/delete_committee.php'),
(704, '::1', 'root', 1477220909, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(705, '::1', 'root', 1477220909, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Logistics\n)\n', '/test-1/modules/add_committee.php'),
(706, '::1', 'root', 1477220922, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(707, '::1', 'root', 1477220922, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Marketing and Promotions\n)\n', '/test-1/modules/add_committee.php'),
(708, '::1', 'root', 1477220931, 'Pressed submit button', '/test-1/modules/edit_committee.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(709, '::1', 'root', 1477220932, 'Query Executed: UPDATE committee SET name = ? WHERE id = ?\r\nArray\n(\n    [0] => si\n    [1] => Logistics Committee\n    [2] => 2\n)\n', '/test-1/modules/edit_committee.php'),
(710, '::1', 'root', 1477220944, 'Pressed submit button', '/test-1/modules/edit_committee.php'),
(711, '::1', 'root', 1477220944, 'Query Executed: UPDATE committee SET name = ? WHERE id = ?\r\nArray\n(\n    [0] => si\n    [1] => Marketing and Promotions Committee\n    [2] => 3\n)\n', '/test-1/modules/edit_committee.php'),
(712, '::1', 'root', 1477220965, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(713, '::1', 'root', 1477220965, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Information and Communications Committee\n)\n', '/test-1/modules/add_committee.php'),
(714, '::1', 'root', 1477220972, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(715, '::1', 'root', 1477220972, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Events Committee\n)\n', '/test-1/modules/add_committee.php'),
(716, '::1', 'root', 1477220983, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(717, '::1', 'root', 1477220983, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Finance Committee\n)\n', '/test-1/modules/add_committee.php'),
(718, '::1', 'root', 1477221167, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(719, '::1', 'root', 1477221167, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Membership Committee\n)\n', '/test-1/modules/add_committee.php'),
(720, '::1', 'root', 1477221192, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(721, '::1', 'root', 1477221192, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Vice President for Internal Affairs\n)\n', '/test-1/modules/add_committee.php'),
(722, '::1', 'root', 1477221212, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(723, '::1', 'root', 1477221212, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Vice President for External Affairs\n)\n', '/test-1/modules/add_committee.php'),
(724, '::1', 'root', 1477221250, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(725, '::1', 'root', 1477221250, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Vice President for SOAR\n)\n', '/test-1/modules/add_committee.php'),
(726, '::1', 'root', 1477221258, 'Pressed delete button', '/test-1/modules/delete_committee.php'),
(727, '::1', 'root', 1477221258, 'Query Executed: DELETE FROM committee WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 10\n)\n', '/test-1/modules/delete_committee.php'),
(728, '::1', 'root', 1477221866, 'Pressed delete button', '/test-1/modules/delete_committee.php'),
(729, '::1', 'root', 1477221866, 'Query Executed: DELETE FROM committee WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 8\n)\n', '/test-1/modules/delete_committee.php'),
(730, '::1', 'root', 1477221870, 'Pressed delete button', '/test-1/modules/delete_committee.php'),
(731, '::1', 'root', 1477221870, 'Query Executed: DELETE FROM committee WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 9\n)\n', '/test-1/modules/delete_committee.php'),
(732, '::1', 'root', 1477221890, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(733, '::1', 'root', 1477221890, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Heads & Directors\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(734, '::1', 'root', 1477221967, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(735, '::1', 'root', 1477221967, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Heads (P, IVP, EVP)\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(736, '::1', 'root', 1477221984, 'Pressed cancel button', '/test-1/sysadmin/add_user_role.php'),
(737, '::1', 'root', 1477221995, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(738, '::1', 'root', 1477221995, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Heads (P, IVP, EVP)\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(739, '::1', 'root', 1477222020, 'Pressed submit button', '/test-1/sysadmin/add_user_role.php'),
(740, '::1', 'root', 1477222020, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Committee Directors\n    [3] => Committee Heads granted with committee management authority\n)\n', '/test-1/sysadmin/add_user_role.php'),
(741, '::1', 'root', 1477222109, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(742, '::1', 'root', 1477222109, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Creative Committee\n)\n', '/test-1/modules/add_committee.php'),
(743, '::1', 'root', 1477222147, 'Pressed submit button', '/test-1/modules/add_committee.php'),
(744, '::1', 'root', 1477222147, 'Query Executed: INSERT INTO committee(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Operations Committee\n)\n', '/test-1/modules/add_committee.php'),
(745, '::1', 'root', 1477222231, 'Pressed submit button', '/test-1/sysadmin/edit_user_role.php'),
(746, '::1', 'root', 1477222231, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Heads (P, IVP, EVP, AVP)\n    [2] => User role granted with Organization management authority\n    [3] => 4\n)\n', '/test-1/sysadmin/edit_user_role.php'),
(747, '::1', 'root', 1477224307, 'Logged in', '/test/login.php'),
(748, '::1', 'root', 1477224617, 'Logged in', '/test/login.php'),
(749, '::1', 'root', 1477224650, 'Logged out', '/test/end.php'),
(750, '::1', 'root', 1477224730, 'Logged in', '/test/login.php'),
(751, '::1', 'root', 1477224767, 'Logged out', '/test/end.php'),
(752, '::1', 'root', 1477224813, 'Logged in', '/test/login.php'),
(753, '::1', 'root', 1477224817, 'Logged out', '/test/end.php'),
(754, '::1', 'root', 1477224847, 'Logged in', '/test/login.php'),
(755, '::1', 'root', 1477225370, 'Pressed cancel button', '/test/sysadmin/edit_user.php'),
(756, '::1', 'root', 1477225379, 'Pressed delete button', '/test/sysadmin/delete_user_role.php'),
(757, '::1', 'root', 1477225379, 'Query Executed: DELETE FROM user_role WHERE role_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 5\n)\n', '/test/sysadmin/delete_user_role.php'),
(758, '::1', 'root', 1477225379, 'Query Executed: DELETE FROM user_role_links WHERE role_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 5\n)\n', '/test/sysadmin/delete_user_role.php'),
(759, '::1', 'root', 1477225386, 'Pressed submit button', '/test/sysadmin/edit_user_role.php'),
(760, '::1', 'root', 1477225386, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Officer\n    [2] => Standard User with Basic System Privileges\n    [3] => 3\n)\n', '/test/sysadmin/edit_user_role.php'),
(761, '::1', 'root', 1477225852, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/role_permissions.php'),
(762, '::1', 'root', 1477225852, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''37'')', '/test/sysadmin/role_permissions.php'),
(763, '::1', 'root', 1477225852, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/test/sysadmin/role_permissions.php'),
(764, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''45'')', '/test/sysadmin/role_permissions.php'),
(765, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''39'')', '/test/sysadmin/role_permissions.php'),
(766, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''40'')', '/test/sysadmin/role_permissions.php'),
(767, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''36'')', '/test/sysadmin/role_permissions.php'),
(768, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/test/sysadmin/role_permissions.php'),
(769, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''43'')', '/test/sysadmin/role_permissions.php'),
(770, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''38'')', '/test/sysadmin/role_permissions.php'),
(771, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/test/sysadmin/role_permissions.php'),
(772, '::1', 'root', 1477225853, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''47'')', '/test/sysadmin/role_permissions.php'),
(773, '::1', 'root', 1477225854, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''6'')', '/test/sysadmin/role_permissions.php'),
(774, '::1', 'root', 1477225854, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''32'')', '/test/sysadmin/role_permissions.php'),
(775, '::1', 'root', 1477225854, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''10'')', '/test/sysadmin/role_permissions.php'),
(776, '::1', 'root', 1477225854, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''14'')', '/test/sysadmin/role_permissions.php'),
(777, '::1', 'root', 1477225864, 'Query executed: DELETE FROM user_passport WHERE username IN (''admin'')', '/test/sysadmin/role_permissions_cascade.php'),
(778, '::1', 'root', 1477225864, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''2''', '/test/sysadmin/role_permissions_cascade.php'),
(779, '::1', 'root', 1477225865, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(780, '::1', 'root', 1477225955, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/role_permissions.php'),
(781, '::1', 'root', 1477225955, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''37'')', '/test/sysadmin/role_permissions.php'),
(782, '::1', 'root', 1477225955, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/test/sysadmin/role_permissions.php'),
(783, '::1', 'root', 1477225955, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''39'')', '/test/sysadmin/role_permissions.php'),
(784, '::1', 'root', 1477225955, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''40'')', '/test/sysadmin/role_permissions.php'),
(785, '::1', 'root', 1477225955, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''44'')', '/test/sysadmin/role_permissions.php'),
(786, '::1', 'root', 1477225956, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/test/sysadmin/role_permissions.php'),
(787, '::1', 'root', 1477225956, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''38'')', '/test/sysadmin/role_permissions.php'),
(788, '::1', 'root', 1477225956, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/test/sysadmin/role_permissions.php'),
(789, '::1', 'root', 1477225956, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''46'')', '/test/sysadmin/role_permissions.php'),
(790, '::1', 'root', 1477225956, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/test/sysadmin/role_permissions.php'),
(791, '::1', 'root', 1477225966, 'Query executed: DELETE FROM user_passport WHERE username IN (''user'')', '/test/sysadmin/role_permissions_cascade.php'),
(792, '::1', 'root', 1477225966, 'Query executed: INSERT `user_passport` SELECT ''user'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/role_permissions_cascade.php'),
(793, '::1', 'root', 1477225968, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(794, '::1', 'root', 1477226126, 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/test/sysadmin/role_permissions.php'),
(795, '::1', 'root', 1477226126, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''37'')', '/test/sysadmin/role_permissions.php'),
(796, '::1', 'root', 1477226126, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''49'')', '/test/sysadmin/role_permissions.php'),
(797, '::1', 'root', 1477226126, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''41'')', '/test/sysadmin/role_permissions.php'),
(798, '::1', 'root', 1477226126, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''39'')', '/test/sysadmin/role_permissions.php'),
(799, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''50'')', '/test/sysadmin/role_permissions.php'),
(800, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''40'')', '/test/sysadmin/role_permissions.php'),
(801, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''44'')', '/test/sysadmin/role_permissions.php'),
(802, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''43'')', '/test/sysadmin/role_permissions.php'),
(803, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''38'')', '/test/sysadmin/role_permissions.php'),
(804, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''51'')', '/test/sysadmin/role_permissions.php'),
(805, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''42'')', '/test/sysadmin/role_permissions.php'),
(806, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''46'')', '/test/sysadmin/role_permissions.php'),
(807, '::1', 'root', 1477226127, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/test/sysadmin/role_permissions.php'),
(808, '::1', 'root', 1477226139, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(809, '::1', 'root', 1477226179, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(810, '::1', 'root', 1477226180, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => org_head\n    [2] => $2y$12$DV.KBe5mbDZU2iBJkjuGee3M8cafZcL1yZ2sREw5t4XEQVNL7AC2.\n    [3] => DV+KBe5mbDZU2iBJkjuGeg\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 4\n    [8] => 7\n)\n', '/test/sysadmin/add_user.php'),
(811, '::1', 'root', 1477226180, 'Query executed: INSERT `user_passport` SELECT ''org_head'', `link_id` FROM user_role_links WHERE role_id=''4''', '/test/sysadmin/add_user.php'),
(812, '::1', 'root', 1477226188, 'Query executed: DELETE FROM user_passport WHERE username IN (''org_head'')', '/test/sysadmin/role_permissions_cascade.php'),
(813, '::1', 'root', 1477226189, 'Query executed: INSERT `user_passport` SELECT ''org_head'', `link_id` FROM user_role_links WHERE role_id=''4''', '/test/sysadmin/role_permissions_cascade.php'),
(814, '::1', 'root', 1477226190, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(815, '::1', 'root', 1477226193, 'Logged out', '/test/end.php'),
(816, '::1', 'org_head', 1477226202, 'Logged in', '/test/login.php'),
(817, '::1', 'org_head', 1477226227, 'Pressed cancel button', '/test/modules/listview_organization.php'),
(818, '::1', 'org_head', 1477226235, 'Logged out', '/test/end.php'),
(819, '::1', 'root', 1477226241, 'Logged in', '/test/login.php'),
(820, '::1', 'root', 1477226263, 'Pressed delete button', '/test/sysadmin/delete_person.php'),
(821, '::1', 'root', 1477226263, 'Query Executed: DELETE FROM person WHERE person_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/test/sysadmin/delete_person.php'),
(822, '::1', 'root', 1477226290, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(823, '::1', 'root', 1477226290, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => commdir\n    [2] => $2y$12$rzFfBA67p/hizoLETRJbmu1AJjek9pO2oam/FQnP30dIlu.7T3gr6\n    [3] => rzFfBA67p/hizoLETRJbmw\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 6\n    [8] => 3\n)\n', '/test/sysadmin/add_user.php'),
(824, '::1', 'root', 1477226290, 'Query executed: INSERT `user_passport` SELECT ''commdir'', `link_id` FROM user_role_links WHERE role_id=''6''', '/test/sysadmin/add_user.php'),
(825, '::1', 'root', 1477226296, 'Query executed: DELETE FROM user_passport WHERE username IN (''commdir'')', '/test/sysadmin/role_permissions_cascade.php'),
(826, '::1', 'root', 1477226296, 'Query executed: INSERT `user_passport` SELECT ''commdir'', `link_id` FROM user_role_links WHERE role_id=''6''', '/test/sysadmin/role_permissions_cascade.php'),
(827, '::1', 'root', 1477226297, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(828, '::1', 'root', 1477226299, 'Logged out', '/test/end.php'),
(829, '::1', 'commdir', 1477226308, 'Logged in', '/test/login.php'),
(830, '::1', 'commdir', 1477226400, 'Logged out', '/test/end.php'),
(831, '::1', 'root', 1477226405, 'Logged in', '/test/login.php'),
(832, '::1', 'root', 1477226758, 'Logged out', '/test/end.php'),
(833, '::1', 'root', 1477235244, 'Logged in', '/test-1/login.php'),
(834, '::1', 'root', 1477235340, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(835, '::1', 'root', 1477235340, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Add Org Position\n    [3] => modules/add_org_position.php\n    [4] => Add Org Position\n    [5] => \n    [6] => 1\n    [7] => No\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(836, '::1', 'root', 1477235372, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(837, '::1', 'root', 1477235372, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => View Org Position\n    [3] => modules/listview_org_position.php\n    [4] => Org Position\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(838, '::1', 'root', 1477235408, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(839, '::1', 'root', 1477235408, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Edit Org Position\n    [3] => modules/edit_org_position.php\n    [4] => Edit Org Position\n    [5] => \n    [6] => 1\n    [7] => No\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(840, '::1', 'root', 1477235440, 'Pressed submit button', '/test-1/sysadmin/add_user_links.php'),
(841, '::1', 'root', 1477235440, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Delete Org Position\n    [3] => modules/delete_org_position.php\n    [4] => Delete Org Position\n    [5] => \n    [6] => 1\n    [7] => No\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test-1/sysadmin/add_user_links.php'),
(842, '::1', 'root', 1477235459, 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions.php'),
(843, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/test-1/sysadmin/role_permissions.php'),
(844, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/test-1/sysadmin/role_permissions.php'),
(845, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/test-1/sysadmin/role_permissions.php'),
(846, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/test-1/sysadmin/role_permissions.php'),
(847, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''53'')', '/test-1/sysadmin/role_permissions.php'),
(848, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/test-1/sysadmin/role_permissions.php'),
(849, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/test-1/sysadmin/role_permissions.php'),
(850, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/test-1/sysadmin/role_permissions.php'),
(851, '::1', 'root', 1477235459, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/test-1/sysadmin/role_permissions.php'),
(852, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/test-1/sysadmin/role_permissions.php'),
(853, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/test-1/sysadmin/role_permissions.php'),
(854, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/test-1/sysadmin/role_permissions.php'),
(855, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/test-1/sysadmin/role_permissions.php'),
(856, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/test-1/sysadmin/role_permissions.php'),
(857, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/test-1/sysadmin/role_permissions.php'),
(858, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/test-1/sysadmin/role_permissions.php'),
(859, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/test-1/sysadmin/role_permissions.php'),
(860, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/test-1/sysadmin/role_permissions.php'),
(861, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/test-1/sysadmin/role_permissions.php'),
(862, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/test-1/sysadmin/role_permissions.php'),
(863, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''56'')', '/test-1/sysadmin/role_permissions.php'),
(864, '::1', 'root', 1477235460, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/test-1/sysadmin/role_permissions.php'),
(865, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/test-1/sysadmin/role_permissions.php'),
(866, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/test-1/sysadmin/role_permissions.php'),
(867, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/test-1/sysadmin/role_permissions.php'),
(868, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/test-1/sysadmin/role_permissions.php'),
(869, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/test-1/sysadmin/role_permissions.php'),
(870, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/test-1/sysadmin/role_permissions.php'),
(871, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/test-1/sysadmin/role_permissions.php'),
(872, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/test-1/sysadmin/role_permissions.php'),
(873, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/test-1/sysadmin/role_permissions.php'),
(874, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/test-1/sysadmin/role_permissions.php'),
(875, '::1', 'root', 1477235461, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/test-1/sysadmin/role_permissions.php'),
(876, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/test-1/sysadmin/role_permissions.php'),
(877, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''55'')', '/test-1/sysadmin/role_permissions.php'),
(878, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/test-1/sysadmin/role_permissions.php'),
(879, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/test-1/sysadmin/role_permissions.php'),
(880, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/test-1/sysadmin/role_permissions.php'),
(881, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/test-1/sysadmin/role_permissions.php'),
(882, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/test-1/sysadmin/role_permissions.php'),
(883, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/test-1/sysadmin/role_permissions.php'),
(884, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/test-1/sysadmin/role_permissions.php'),
(885, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/test-1/sysadmin/role_permissions.php'),
(886, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/test-1/sysadmin/role_permissions.php'),
(887, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''54'')', '/test-1/sysadmin/role_permissions.php'),
(888, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/test-1/sysadmin/role_permissions.php'),
(889, '::1', 'root', 1477235462, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/test-1/sysadmin/role_permissions.php'),
(890, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/test-1/sysadmin/role_permissions.php'),
(891, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/test-1/sysadmin/role_permissions.php'),
(892, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/test-1/sysadmin/role_permissions.php'),
(893, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/test-1/sysadmin/role_permissions.php'),
(894, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/test-1/sysadmin/role_permissions.php'),
(895, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/test-1/sysadmin/role_permissions.php'),
(896, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/test-1/sysadmin/role_permissions.php'),
(897, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/test-1/sysadmin/role_permissions.php'),
(898, '::1', 'root', 1477235463, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/test-1/sysadmin/role_permissions.php'),
(899, '::1', 'root', 1477235467, 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/test-1/sysadmin/role_permissions_cascade.php'),
(900, '::1', 'root', 1477235467, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test-1/sysadmin/role_permissions_cascade.php'),
(901, '::1', 'root', 1477235468, 'Pressed cancel button', '/test-1/sysadmin/role_permissions_cascade.php'),
(902, '::1', 'root', 1477235485, 'Logged in', '/test/login.php'),
(903, '::1', 'root', 1477235497, 'Logged out', '/test/end.php'),
(904, '::1', 'root', 1477235570, 'Logged out', '/test-1/end.php'),
(905, '::1', 'root', 1477235578, 'Logged in', '/test/login.php'),
(906, '::1', 'root', 1477235632, 'Pressed cancel button', '/test/modules/add_org_position.php'),
(907, '::1', 'root', 1477235634, 'Pressed delete button', '/test/modules/delete_org_position.php'),
(908, '::1', 'root', 1477235634, 'Query Executed: DELETE FROM org_position WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/test/modules/delete_org_position.php'),
(909, '::1', 'root', 1477235641, 'Pressed submit button', '/test/modules/add_org_position.php'),
(910, '::1', 'root', 1477235642, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => President\n)\n', '/test/modules/add_org_position.php'),
(911, '::1', 'root', 1477235667, 'Pressed submit button', '/test/modules/add_org_position.php'),
(912, '::1', 'root', 1477235667, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Vice President for Internal Affairs\n)\n', '/test/modules/add_org_position.php'),
(913, '::1', 'root', 1477235678, 'Pressed submit button', '/test/modules/add_org_position.php'),
(914, '::1', 'root', 1477235678, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Vice President for External Affairs\n)\n', '/test/modules/add_org_position.php'),
(915, '::1', 'root', 1477235693, 'Pressed cancel button', '/test/modules/add_org_position.php'),
(916, '::1', 'root', 1477235708, 'Pressed submit button', '/test/modules/add_org_position.php'),
(917, '::1', 'root', 1477235708, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Committee Director\n)\n', '/test/modules/add_org_position.php'),
(918, '::1', 'root', 1477235713, 'Pressed submit button', '/test/modules/add_org_position.php'),
(919, '::1', 'root', 1477235713, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Officer\n)\n', '/test/modules/add_org_position.php'),
(920, '::1', 'root', 1477235734, 'Pressed submit button', '/test/modules/add_org_position.php'),
(921, '::1', 'root', 1477235734, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Assistant Director\n)\n', '/test/modules/add_org_position.php'),
(922, '::1', 'root', 1477235907, 'Pressed submit button', '/test/modules/add_organization.php'),
(923, '::1', 'root', 1477235907, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => APC Campus Ministry\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(924, '::1', 'root', 1477235933, 'Pressed submit button', '/test/modules/edit_organization.php'),
(925, '::1', 'root', 1477235933, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => APC Gaming Genesis (GG)\n    [2] => N / A\n    [3] => N / A\n    [4] => 5\n)\n', '/test/modules/edit_organization.php'),
(926, '::1', 'root', 1477235974, 'Pressed submit button', '/test/modules/edit_organization.php'),
(927, '::1', 'root', 1477235974, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => APC Robotics Organization (ROBORG)\n    [2] => N / A\n    [3] => N / A\n    [4] => 19\n)\n', '/test/modules/edit_organization.php'),
(928, '::1', 'root', 1477236005, 'Pressed submit button', '/test/modules/add_organization.php'),
(929, '::1', 'root', 1477236006, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Association Internationale des Étudiants en Sciences Économiques et Commerciales APC\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(930, '::1', 'root', 1477236044, 'Pressed submit button', '/test/modules/add_organization.php'),
(931, '::1', 'root', 1477236044, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Every Nation Campus\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(932, '::1', 'root', 1477236085, 'Pressed submit button', '/test/modules/edit_organization.php'),
(933, '::1', 'root', 1477236085, 'Query Executed: UPDATE organization SET name = ?, representative = ?, adviser = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => Junior People Management of the Philippines (JPMAP)\n    [2] => N / A\n    [3] => N / A\n    [4] => 28\n)\n', '/test/modules/edit_organization.php'),
(934, '::1', 'root', 1477236128, 'Pressed submit button', '/test/modules/add_organization.php'),
(935, '::1', 'root', 1477236128, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Seeds of the Nation Campus Ministry\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(936, '::1', 'root', 1477236170, 'Pressed submit button', '/test/modules/add_organization.php'),
(937, '::1', 'root', 1477236170, 'Query Executed: INSERT INTO organization(id, name, representative, adviser) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => Society of Electronics Engineering Students (SEES)\n    [3] => N / A\n    [4] => N / A\n)\n', '/test/modules/add_organization.php'),
(938, '::1', 'root', 1477236292, 'Pressed submit button', '/test/modules/add_org_position.php'),
(939, '::1', 'root', 1477236292, 'Query Executed: INSERT INTO org_position(id, name) VALUES(?,?)\r\nArray\n(\n    [0] => is\n    [1] => \n    [2] => Organization''s Adviser\n)\n', '/test/modules/add_org_position.php'),
(940, '::1', 'root', 1477236489, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(941, '::1', 'root', 1477236489, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Danya\n    [2] => Pateno\n    [3] => Balcena\n    [4] => Female\n    [5] => 1\n)\n', '/test/sysadmin/edit_person.php'),
(942, '::1', 'root', 1477236491, 'Logged out', '/test/end.php'),
(943, '::1', 'root', 1477236496, 'Logged in', '/test/login.php'),
(944, '::1', 'root', 1477236520, 'Logged out', '/test/end.php'),
(945, '::1', 'root', 1477238177, 'Logged in', '/test/login.php'),
(946, '::1', 'root', 1477238191, 'Pressed submit button', '/test/sysadmin/edit_user_role.php'),
(947, '::1', 'root', 1477238191, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Standard User\n    [2] => Standard User with Basic System Privileges\n    [3] => 3\n)\n', '/test/sysadmin/edit_user_role.php'),
(948, '::1', 'root', 1477238195, 'Pressed delete button', '/test/sysadmin/delete_user_role.php'),
(949, '::1', 'root', 1477238195, 'Query Executed: DELETE FROM user_role WHERE role_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 4\n)\n', '/test/sysadmin/delete_user_role.php'),
(950, '::1', 'root', 1477238195, 'Query Executed: DELETE FROM user_role_links WHERE role_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 4\n)\n', '/test/sysadmin/delete_user_role.php'),
(951, '::1', 'root', 1477238199, 'Pressed delete button', '/test/sysadmin/delete_user_role.php'),
(952, '::1', 'root', 1477238200, 'Query Executed: DELETE FROM user_role WHERE role_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 6\n)\n', '/test/sysadmin/delete_user_role.php'),
(953, '::1', 'root', 1477238200, 'Query Executed: DELETE FROM user_role_links WHERE role_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 6\n)\n', '/test/sysadmin/delete_user_role.php'),
(954, '::1', 'root', 1477238870, 'Pressed cancel button', '/test/sysadmin/add_person.php'),
(955, '::1', 'root', 1477238880, 'Pressed submit button', '/test/sysadmin/edit_person.php'),
(956, '::1', 'root', 1477238880, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Super User\n    [2] => X\n    [3] => Root\n    [4] => Male\n    [5] => 1\n)\n', '/test/sysadmin/edit_person.php'),
(957, '::1', 'root', 1477238885, 'Logged out', '/test/end.php'),
(958, '::1', 'root', 1477238889, 'Logged in', '/test/login.php');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Max Attachment Height', '0'),
('Max Attachment Size (MB)', '100'),
('Max Attachment Width', '0'),
('Security Level', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE `system_skins` (
  `skin_id` int(11) NOT NULL,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css', 'cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css', 'cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css', 'cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css', 'cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css', 'cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css', 'cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css', 'cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css', 'cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css', 'cobalt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL,
  `password_reset_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`, `password_reset_code`) VALUES
('admin', '$2y$12$O0o8fsnA3Mt2if/0NBI0HOVqbHzRPHf08BPvC82OHSsytROAphnKO', '', 'O0o8fsnA3Mt2if/0NBI0HQ', 12, 'blowfish', 1, 2, 5, ''),
('commdir', '$2y$12$rzFfBA67p/hizoLETRJbmu1AJjek9pO2oam/FQnP30dIlu.7T3gr6', '', 'rzFfBA67p/hizoLETRJbmw', 12, 'blowfish', 1, 6, 3, ''),
('org_head', '$2y$12$DV.KBe5mbDZU2iBJkjuGee3M8cafZcL1yZ2sREw5t4XEQVNL7AC2.', '', 'DV+KBe5mbDZU2iBJkjuGeg', 12, 'blowfish', 1, 4, 7, ''),
('root', '$2y$12$vTeDK/BecBP4rv80XKUiKeKZwaAnV00EwYIWxD.2VtmL88OdiUNkq', '', 'vTeDK/BecBP4rv80XKUiKg', 12, 'blowfish', 1, 1, 6, ''),
('user', '$2y$12$LDoyF6YbFd5pzPSAUzFd3uTTBvCduxyhpFPaTLhyrxETgOOHRc3R2', '', 'LDoyF6YbFd5pzPSAUzFd3w', 12, 'blowfish', 1, 3, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`, `priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', 0),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', 0),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', 0),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', 0),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', 0),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', 0),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', 0),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', 0),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', 0),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', 0),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', 0),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', 0),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', 0),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', 0),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', 0),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', 0),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', 0),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', 0),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', 0),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', 0),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', 0),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', 0),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', 0),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', 0),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', 0),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', 0),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', 0),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', 0),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', 0),
(33, 'Add cobalt sst', 'sst/add_cobalt_sst.php', 'Add Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(34, 'Edit cobalt sst', 'sst/edit_cobalt_sst.php', 'Edit Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(35, 'View cobalt sst', 'sst/listview_cobalt_sst.php', 'Cobalt SST', '', 2, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete cobalt sst', 'sst/delete_cobalt_sst.php', 'Delete Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(37, 'Add calendar event', 'modules/calendar.php', 'Add Calendar Event', '', 1, 'Yes', 'On', 'form3.png', 0),
(38, 'Edit calendar event', 'modules/edit_calendar_event.php', 'Edit Calendar Event', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View calendar event', 'modules/listview_calendar_event.php', 'Calendar Event', '', 1, 'Yes', 'On', 'calendar.png', 0),
(40, 'Delete calendar event', 'modules/delete_calendar_event.php', 'Delete Calendar Event', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add document', 'modules/upload.php', 'Add Document', '', 1, 'Yes', 'On', 'Docs.png', 0),
(42, 'Edit document', 'modules/edit_document.php', 'Edit Document', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View document', 'modules/listview_document.php', 'Document', '', 1, 'No', 'On', 'Docs.png', 0),
(44, 'Delete document', 'modules/delete_document.php', 'Delete Document', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add organization', 'modules/add_organization.php', 'Add Organization', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit organization', 'modules/edit_organization.php', 'Edit Organization', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View organization', 'modules/listview_organization.php', 'Organization', '', 1, 'Yes', 'On', 'org.png', 0),
(48, 'Delete organization', 'modules/delete_organization.php', 'Delete Organization', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add Committee', 'modules/add_committee.php', 'Add Committee', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'View Committee', 'modules/listview_committee.php', 'Committee', '', 1, 'Yes', 'On', 'form3.png', 0),
(51, 'Edit Committee', 'modules/edit_committee.php', 'Edit Committee', '', 1, 'No', 'On', 'form3.png', 0),
(52, 'Delete Committee', 'modules/delete_committee.php', 'Delete Committee', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add Org Position', 'modules/add_org_position.php', 'Add Org Position', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'View Org Position', 'modules/listview_org_position.php', 'Org Position', '', 1, 'Yes', 'On', 'form3.png', 0),
(55, 'Edit Org Position', 'modules/edit_org_position.php', 'Edit Org Position', '', 1, 'No', 'On', 'form3.png', 0),
(56, 'Delete Org Position', 'modules/delete_org_position.php', 'Delete Org Position', '', 1, 'No', 'On', 'form3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`username`, `link_id`) VALUES
('admin', 6),
('admin', 10),
('admin', 14),
('admin', 32),
('admin', 36),
('admin', 37),
('admin', 38),
('admin', 39),
('admin', 40),
('admin', 41),
('admin', 42),
('admin', 43),
('admin', 44),
('admin', 45),
('admin', 47),
('cfjose', 37),
('cfjose', 38),
('cfjose', 39),
('cfjose', 40),
('cfjose', 41),
('cfjose', 42),
('cfjose', 43),
('cfjose', 44),
('cfjose', 45),
('cfjose', 46),
('cfjose', 47),
('jcheramia', 37),
('jcheramia', 38),
('jcheramia', 39),
('jcheramia', 40),
('jcheramia', 41),
('jcheramia', 42),
('jcheramia', 43),
('jcheramia', 44),
('jcheramia', 45),
('jcheramia', 46),
('jcheramia', 47),
('org_head', 37),
('org_head', 38),
('org_head', 39),
('org_head', 40),
('org_head', 41),
('org_head', 42),
('org_head', 43),
('org_head', 44),
('org_head', 46),
('org_head', 47),
('org_head', 49),
('org_head', 50),
('org_head', 51),
('root', 1),
('root', 2),
('root', 3),
('root', 4),
('root', 5),
('root', 6),
('root', 7),
('root', 8),
('root', 9),
('root', 10),
('root', 11),
('root', 12),
('root', 13),
('root', 14),
('root', 15),
('root', 16),
('root', 17),
('root', 18),
('root', 19),
('root', 20),
('root', 21),
('root', 22),
('root', 23),
('root', 24),
('root', 25),
('root', 26),
('root', 27),
('root', 28),
('root', 29),
('root', 30),
('root', 31),
('root', 32),
('root', 33),
('root', 34),
('root', 35),
('root', 36),
('root', 37),
('root', 38),
('root', 39),
('root', 40),
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 45),
('root', 46),
('root', 47),
('root', 48),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('user', 37),
('user', 38),
('user', 39),
('user', 40),
('user', 41),
('user', 42),
('user', 43),
('user', 44),
('user', 46),
('user', 47);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`, `priority`, `icon`) VALUES
(1, 'Default', 0, 'blue_folder3.png'),
(2, 'Admin', 0, 'preferences-system.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions'),
(3, 'Standard User', 'Standard User with Basic System Privileges');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE `user_role_links` (
  `role_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_links`
--

INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
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
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(2, 6),
(2, 10),
(2, 14),
(2, 32),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 47),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 46),
(3, 47);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_event`
--
ALTER TABLE `calendar_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `calendar_event_has_person`
--
ALTER TABLE `calendar_event_has_person`
  ADD PRIMARY KEY (`calendar_event_id`,`person_id`),
  ADD KEY `fk_calendar_event_has_person_person1_idx` (`person_id`),
  ADD KEY `fk_calendar_event_has_person_calendar_event1_idx` (`calendar_event_id`);

--
-- Indexes for table `cobalt_reporter`
--
ALTER TABLE `cobalt_reporter`
  ADD PRIMARY KEY (`module_name`,`report_name`);

--
-- Indexes for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `organization_has_person`
--
ALTER TABLE `organization_has_person`
  ADD PRIMARY KEY (`organization_id`,`person_id`),
  ADD KEY `fk_organization_has_person_person1_idx` (`person_id`),
  ADD KEY `fk_organization_has_person_organization1_idx` (`organization_id`);

--
-- Indexes for table `org_position`
--
ALTER TABLE `org_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`person_id`);

--
-- Indexes for table `person_has_org_position`
--
ALTER TABLE `person_has_org_position`
  ADD KEY `fk_person_id_idx` (`person_id`),
  ADD KEY `fk_org_position_id_idx` (`org_position_id`) USING BTREE,
  ADD KEY `fk_organization_id_idx` (`organization_id`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting`);

--
-- Indexes for table `system_skins`
--
ALTER TABLE `system_skins`
  ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `user_passport`
--
ALTER TABLE `user_passport`
  ADD PRIMARY KEY (`username`,`link_id`);

--
-- Indexes for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  ADD PRIMARY KEY (`passport_group_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user_role_links`
--
ALTER TABLE `user_role_links`
  ADD PRIMARY KEY (`role_id`,`link_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar_event`
--
ALTER TABLE `calendar_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `org_position`
--
ALTER TABLE `org_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  MODIFY `passport_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `calendar_event_has_person`
--
ALTER TABLE `calendar_event_has_person`
  ADD CONSTRAINT `fk_calendar_event_has_person_calendar_event1` FOREIGN KEY (`calendar_event_id`) REFERENCES `calendar_event` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calendar_event_has_person_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `organization_has_person`
--
ALTER TABLE `organization_has_person`
  ADD CONSTRAINT `fk_organization_has_person_organization1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_organization_has_person_person1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `person_has_org_position`
--
ALTER TABLE `person_has_org_position`
  ADD CONSTRAINT `fk_org_position_id` FOREIGN KEY (`org_position_id`) REFERENCES `org_position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
