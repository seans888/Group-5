-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2016 at 04:08 AM
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
  `name` varchar(45) NOT NULL,
  `representative` varchar(45) NOT NULL,
  `adviser` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization_has_person`
--

CREATE TABLE `organization_has_person` (
  `organization_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `contact_num` int(11) DEFAULT NULL,
  `org_position` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `last_name`, `first_name`, `middle_name`, `gender`, `birthday`, `contact_num`, `org_position`) VALUES
(1, 'Root', 'Super User', 'X', 'Male', '0000-00-00', 2147483647, 'Admin');

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
(203, '::1', 'root', 1476238054, 'Logged out', '/test/end.php');

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
('Max Attachment Size (MB)', '0'),
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
('root', '$2y$12$vTeDK/BecBP4rv80XKUiKeKZwaAnV00EwYIWxD.2VtmL88OdiUNkq', '', 'vTeDK/BecBP4rv80XKUiKg', 12, 'blowfish', 1, 1, 5, ''),
('user', '$2y$12$LDoyF6YbFd5pzPSAUzFd3uTTBvCduxyhpFPaTLhyrxETgOOHRc3R2', 'chamberj18@gmail.com', 'LDoyF6YbFd5pzPSAUzFd3w', 12, 'blowfish', 1, 3, 5, 'n4pit');

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
(41, 'Add document', 'modules/index.html', 'Add Document', '', 1, 'Yes', 'On', 'Docs.png', 0),
(42, 'Edit document', 'modules/edit_document.php', 'Edit Document', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View document', 'modules/listview_document.php', 'Document', '', 1, 'No', 'On', 'Docs.png', 0),
(44, 'Delete document', 'modules/delete_document.php', 'Delete Document', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add organization', 'modules/add_organization.php', 'Add Organization', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit organization', 'modules/edit_organization.php', 'Edit Organization', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View organization', 'modules/listview_organization.php', 'Organization', '', 1, 'Yes', 'On', 'org.png', 0),
(48, 'Delete organization', 'modules/delete_organization.php', 'Delete Organization', '', 1, 'No', 'On', 'form3.png', 0);

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
('admin', 48),
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
('user', 37),
('user', 38),
('user', 39),
('user', 40),
('user', 41),
('user', 42),
('user', 43),
('user', 44),
('user', 45),
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
(2, 6),
(2, 10),
(2, 14),
(2, 32),
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
(2, 48),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
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
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`person_id`);

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
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  MODIFY `passport_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_person` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
