-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2016 at 11:15 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calevent`
--

CREATE TABLE `calevent` (
  `calEvent_Id` int(11) NOT NULL,
  `calEvent_Name` varchar(45) NOT NULL,
  `calEvent_Detail` varchar(255) NOT NULL,
  `calEvent_Date` varchar(10) NOT NULL,
  `calDate_Added` date NOT NULL,
  `calEvent_Attendee` varchar(45) DEFAULT NULL,
  `calEvent_Loc` varchar(45) DEFAULT NULL,
  `calEvent_Time` time(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calevent_has_org`
--

CREATE TABLE `calevent_has_org` (
  `calEvent_calEvent_Id` int(11) NOT NULL,
  `calEvent_SAO_SAO_Id` int(11) NOT NULL,
  `Org_Org_Id` int(11) NOT NULL,
  `Org_SAO_SAO_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `docrequest`
--

CREATE TABLE `docrequest` (
  `docRequest_Id` int(11) NOT NULL,
  `docRequest_Title` varchar(45) NOT NULL,
  `docRequest_Desc` varchar(45) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `docrequirement`
--

CREATE TABLE `docrequirement` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `spec` varchar(45) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `Doc_Id` int(11) NOT NULL,
  `Doc_Name` varchar(45) NOT NULL,
  `Doc_Description` varchar(45) DEFAULT NULL,
  `docRequest_docRequest_Id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `Org_Id` int(11) NOT NULL,
  `Org_Name` varchar(45) DEFAULT NULL,
  `Org_Representative` varchar(45) DEFAULT NULL,
  `Org_Members` varchar(45) DEFAULT NULL,
  `Org_Contact` varchar(45) DEFAULT NULL,
  `Org_Dept` varchar(45) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male');

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
(1, '::1', 'root', 1470546482, 'Logged in', '/sao_dlms/login.php'),
(2, '::1', 'root', 1470546482, 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$YIG9NX5d6hpa.OoSil82qO.eXn4F2Bp/TyuWG4h/Swi3j1GJe8vDi\n    [2] => YIG9NX5d6hpa+OoSil82qQ\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/sao_dlms/login.php'),
(3, '::1', 'root', 1470546804, 'Logged in', '/test/login.php'),
(4, '::1', 'root', 1470546830, 'Logged out', '/test/end.php'),
(5, '::1', 'root', 1470547136, 'Logged in', '/test/login.php'),
(6, '::1', 'root', 1470547147, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''root''', '/test/change_skin.php'),
(7, '::1', 'root', 1470547420, 'Pressed submit button', '/test/sysadmin/add_user_role.php'),
(8, '::1', 'root', 1470547420, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Standard User\n    [3] => Standard user granted with basic privileges\n)\n', '/test/sysadmin/add_user_role.php'),
(9, '::1', 'root', 1470547511, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/role_permissions.php'),
(10, '::1', 'root', 1470547511, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/test/sysadmin/role_permissions.php'),
(11, '::1', 'root', 1470547511, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''53'')', '/test/sysadmin/role_permissions.php'),
(12, '::1', 'root', 1470547511, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''65'')', '/test/sysadmin/role_permissions.php'),
(13, '::1', 'root', 1470547512, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/test/sysadmin/role_permissions.php'),
(14, '::1', 'root', 1470547512, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''44'')', '/test/sysadmin/role_permissions.php'),
(15, '::1', 'root', 1470547512, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''56'')', '/test/sysadmin/role_permissions.php'),
(16, '::1', 'root', 1470547512, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/test/sysadmin/role_permissions.php'),
(17, '::1', 'root', 1470547512, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/test/sysadmin/role_permissions.php'),
(18, '::1', 'root', 1470547513, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''54'')', '/test/sysadmin/role_permissions.php'),
(19, '::1', 'root', 1470547513, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/test/sysadmin/role_permissions.php'),
(20, '::1', 'root', 1470547513, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''5'')', '/test/sysadmin/role_permissions.php'),
(21, '::1', 'root', 1470547513, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/test/sysadmin/role_permissions.php'),
(22, '::1', 'root', 1470547513, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/test/sysadmin/role_permissions.php'),
(23, '::1', 'root', 1470547513, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''30'')', '/test/sysadmin/role_permissions.php'),
(24, '::1', 'root', 1470547561, 'Query executed: UPDATE user SET skin_id=''10'' WHERE username=''root''', '/test/change_skin.php'),
(25, '::1', 'root', 1470548396, 'Query executed: UPDATE user SET skin_id=''7'' WHERE username=''root''', '/test/change_skin.php'),
(26, '::1', 'root', 1470548412, 'Query executed: UPDATE user SET skin_id=''8'' WHERE username=''root''', '/test/change_skin.php'),
(27, '::1', 'root', 1470548424, 'Query executed: UPDATE user SET skin_id=''9'' WHERE username=''root''', '/test/change_skin.php'),
(28, '::1', 'root', 1470548442, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''root''', '/test/change_skin.php'),
(29, '::1', 'root', 1470549688, 'Logged out', '/test/end.php'),
(30, '::1', 'root', 1470564511, 'Logged in', '/test/login.php'),
(31, '::1', 'root', 1470564572, 'Query executed: UPDATE user SET skin_id=''10'' WHERE username=''root''', '/test/change_skin.php'),
(32, '::1', 'root', 1470564577, 'Query executed: UPDATE user SET skin_id=''1'' WHERE username=''root''', '/test/change_skin.php'),
(33, '::1', 'root', 1470564835, 'Logged out', '/test/end.php'),
(34, '::1', 'root', 1470564959, 'Logged in', '/test/login.php'),
(35, '::1', 'root', 1470565062, 'Logged in', '/test/login.php'),
(36, '::1', 'root', 1470565097, 'Pressed submit button', '/test/modules/test/add_org.php'),
(37, '::1', 'root', 1470565106, 'Pressed cancel button', '/test/modules/test/add_org.php'),
(38, '::1', 'root', 1470565200, 'Pressed submit button', '/test/modules/test/add_sao.php'),
(39, '::1', 'root', 1470565200, 'Query Executed: INSERT INTO sao(SAO_Id, SAO_Name, SAO_Cont, SAO_Add, SAO_emailAdd) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Mary Kareen L. Gancio\n    [3] => 09123456789\n    [4] => Asia Pacific College\n    [5] => maryg@apc.edu.ph\n)\n', '/test/modules/test/add_sao.php'),
(40, '::1', 'root', 1470565207, 'Pressed cancel button', '/test/modules/test/listview_sao.php'),
(41, '::1', 'root', 1470565246, 'Pressed submit button', '/test/modules/test/add_org.php'),
(42, '::1', 'root', 1470565253, 'Pressed submit button', '/test/modules/test/add_org.php'),
(43, '::1', 'root', 1470565253, 'Query Executed: INSERT INTO org(Org_Id, Org_Name, Org_Representative, Org_Members, Org_Contact, Org_Dept, SAO_SAO_Id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => JPCS\n    [3] => Monique Isabela Jovellano\n    [4] => N/A\n    [5] => N/A\n    [6] => SoCIT\n    [7] => 1234\n)\n', '/test/modules/test/add_org.php'),
(44, '::1', 'root', 1470565271, 'Pressed delete button', '/test/modules/test/delete_org.php'),
(45, '::1', 'root', 1470565271, 'Query Executed: DELETE FROM org WHERE Org_Id = ? AND SAO_SAO_Id = ?\r\nArray\n(\n    [0] => ii\n    [1] => 1\n    [2] => 1234\n)\n', '/test/modules/test/delete_org.php'),
(46, '::1', 'root', 1470565275, 'Pressed cancel button', '/test/modules/test/listview_org.php'),
(47, '::1', 'root', 1470565380, 'Pressed cancel button', '/test/modules/test/add_org_rep.php'),
(48, '::1', 'root', 1470565383, 'Pressed cancel button', '/test/modules/test/listview_org_rep.php'),
(49, '::1', 'root', 1470565437, 'Pressed cancel button', '/test/modules/test/listview_org.php'),
(50, '::1', 'root', 1470570045, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''root''', '/test/change_skin.php'),
(51, '::1', 'root', 1470570051, 'Query executed: UPDATE user SET skin_id=''6'' WHERE username=''root''', '/test/change_skin.php'),
(52, '::1', 'root', 1470570066, 'Query executed: UPDATE user SET skin_id=''10'' WHERE username=''root''', '/test/change_skin.php'),
(53, '::1', 'root', 1470570108, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(54, '::1', 'root', 1470570224, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(55, '::1', 'root', 1470570225, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => sampleuser\n    [2] => $2y$12$Y/v3MetDg2AQhDulUZPf4OyMCjpa2siN7nPmtNMNLmT0l9RcFFw22\n    [3] => Y/v3MetDg2AQhDulUZPf4Q\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 3\n    [8] => 5\n)\n', '/test/sysadmin/add_user.php'),
(56, '::1', 'root', 1470570225, 'Query executed: INSERT `user_passport` SELECT ''sampleuser'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/add_user.php'),
(57, '::1', 'root', 1470570229, 'Logged out', '/test/end.php'),
(58, '::1', 'sampleuser', 1470570243, 'Logged in', '/test/login.php'),
(59, '::1', 'sampleuser', 1470570274, 'Logged out', '/test/end.php'),
(60, '::1', 'sampleuser', 1470570345, 'Logged in', '/test/login.php'),
(61, '::1', 'sampleuser', 1470570428, 'Query executed: UPDATE user SET skin_id=''3'' WHERE username=''sampleuser''', '/test/change_skin.php'),
(62, '::1', 'sampleuser', 1470570443, 'Query executed: UPDATE user SET skin_id=''2'' WHERE username=''sampleuser''', '/test/change_skin.php'),
(63, '::1', 'sampleuser', 1470570455, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''sampleuser''', '/test/change_skin.php'),
(64, '::1', 'sampleuser', 1470570498, 'Logged out', '/test/end.php'),
(65, '::1', 'root', 1470570508, 'Logged in', '/test/login.php'),
(66, '::1', 'root', 1470570537, 'Pressed submit button', '/test/sysadmin/reset_password.php'),
(67, '::1', 'root', 1470570538, 'Query executed: UPDATE user SET `password`=''$2y$12$4tBaULwlIM4jGkZqPyc.H.9uvczpugoqYRlojQHs/5QNS30rB35RW'', `salt`=''4tBaULwlIM4jGkZqPyc+HA'', `iteration`=''12'', `method`=''blowfish'' WHERE username=''sampleuser''', '/test/sysadmin/reset_password.php'),
(68, '::1', 'root', 1470570542, 'Logged out', '/test/end.php'),
(69, '::1', 'sampleuser', 1470570549, 'Logged in', '/test/login.php'),
(70, '::1', 'sampleuser', 1470570570, 'Query executed: UPDATE user SET `password`=''$2y$12$k6cZQFq52eq0rtdvljMHreKW.kvbyAqcHZxY3BhbUrzLSLlTxdl.q'', `salt`=''k6cZQFq52eq0rtdvljMHrg'', `iteration`=''12'', `method`=''blowfish'' WHERE username=''sampleuser''', '/test/change_password.php'),
(71, '::1', 'sampleuser', 1470570576, 'Logged out', '/test/end.php'),
(72, '::1', 'sampleuser', 1470570584, 'Logged in', '/test/login.php'),
(73, '::1', 'sampleuser', 1470570592, 'Logged out', '/test/end.php'),
(74, '::1', 'root', 1470570622, 'Logged in', '/test/login.php'),
(75, '::1', 'root', 1470571998, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''37''', '/test/sysadmin/module_control.php'),
(76, '::1', 'root', 1470571998, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''41''', '/test/sysadmin/module_control.php'),
(77, '::1', 'root', 1470571998, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''45''', '/test/sysadmin/module_control.php'),
(78, '::1', 'root', 1470571998, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''33''', '/test/sysadmin/module_control.php'),
(79, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''49''', '/test/sysadmin/module_control.php'),
(80, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''53''', '/test/sysadmin/module_control.php'),
(81, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''57''', '/test/sysadmin/module_control.php'),
(82, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''61''', '/test/sysadmin/module_control.php'),
(83, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''65''', '/test/sysadmin/module_control.php'),
(84, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''4''', '/test/sysadmin/module_control.php'),
(85, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''69''', '/test/sysadmin/module_control.php'),
(86, '::1', 'root', 1470571999, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''73''', '/test/sysadmin/module_control.php'),
(87, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''16''', '/test/sysadmin/module_control.php'),
(88, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''28''', '/test/sysadmin/module_control.php'),
(89, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''8''', '/test/sysadmin/module_control.php'),
(90, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''20''', '/test/sysadmin/module_control.php'),
(91, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''24''', '/test/sysadmin/module_control.php'),
(92, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''12''', '/test/sysadmin/module_control.php'),
(93, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''39''', '/test/sysadmin/module_control.php'),
(94, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''43''', '/test/sysadmin/module_control.php'),
(95, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''47''', '/test/sysadmin/module_control.php'),
(96, '::1', 'root', 1470572000, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''35''', '/test/sysadmin/module_control.php'),
(97, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''40''', '/test/sysadmin/module_control.php'),
(98, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''44''', '/test/sysadmin/module_control.php'),
(99, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''48''', '/test/sysadmin/module_control.php'),
(100, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''36''', '/test/sysadmin/module_control.php'),
(101, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''52''', '/test/sysadmin/module_control.php'),
(102, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''56''', '/test/sysadmin/module_control.php'),
(103, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''60''', '/test/sysadmin/module_control.php'),
(104, '::1', 'root', 1470572001, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''64''', '/test/sysadmin/module_control.php'),
(105, '::1', 'root', 1470572002, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''68''', '/test/sysadmin/module_control.php'),
(106, '::1', 'root', 1470572002, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''7''', '/test/sysadmin/module_control.php'),
(107, '::1', 'root', 1470572002, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''72''', '/test/sysadmin/module_control.php'),
(108, '::1', 'root', 1470572002, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''76''', '/test/sysadmin/module_control.php'),
(109, '::1', 'root', 1470572002, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''19''', '/test/sysadmin/module_control.php'),
(110, '::1', 'root', 1470572002, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''31''', '/test/sysadmin/module_control.php'),
(111, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''11''', '/test/sysadmin/module_control.php'),
(112, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''23''', '/test/sysadmin/module_control.php'),
(113, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''27''', '/test/sysadmin/module_control.php'),
(114, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''15''', '/test/sysadmin/module_control.php'),
(115, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''51''', '/test/sysadmin/module_control.php'),
(116, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''55''', '/test/sysadmin/module_control.php'),
(117, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''38''', '/test/sysadmin/module_control.php'),
(118, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''42''', '/test/sysadmin/module_control.php'),
(119, '::1', 'root', 1470572003, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''46''', '/test/sysadmin/module_control.php'),
(120, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''34''', '/test/sysadmin/module_control.php'),
(121, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''50''', '/test/sysadmin/module_control.php'),
(122, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''54''', '/test/sysadmin/module_control.php'),
(123, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''58''', '/test/sysadmin/module_control.php'),
(124, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''62''', '/test/sysadmin/module_control.php'),
(125, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''66''', '/test/sysadmin/module_control.php'),
(126, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''5''', '/test/sysadmin/module_control.php'),
(127, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''70''', '/test/sysadmin/module_control.php'),
(128, '::1', 'root', 1470572004, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''74''', '/test/sysadmin/module_control.php'),
(129, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''17''', '/test/sysadmin/module_control.php'),
(130, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''29''', '/test/sysadmin/module_control.php'),
(131, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''9''', '/test/sysadmin/module_control.php'),
(132, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''21''', '/test/sysadmin/module_control.php'),
(133, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''25''', '/test/sysadmin/module_control.php'),
(134, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''13''', '/test/sysadmin/module_control.php'),
(135, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''59''', '/test/sysadmin/module_control.php'),
(136, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''63''', '/test/sysadmin/module_control.php'),
(137, '::1', 'root', 1470572005, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''67''', '/test/sysadmin/module_control.php'),
(138, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''6''', '/test/sysadmin/module_control.php'),
(139, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''32''', '/test/sysadmin/module_control.php'),
(140, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''71''', '/test/sysadmin/module_control.php'),
(141, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''3''', '/test/sysadmin/module_control.php'),
(142, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''2''', '/test/sysadmin/module_control.php'),
(143, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''75''', '/test/sysadmin/module_control.php'),
(144, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''18''', '/test/sysadmin/module_control.php'),
(145, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''30''', '/test/sysadmin/module_control.php'),
(146, '::1', 'root', 1470572006, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''10''', '/test/sysadmin/module_control.php'),
(147, '::1', 'root', 1470572007, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''22''', '/test/sysadmin/module_control.php'),
(148, '::1', 'root', 1470572007, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''26''', '/test/sysadmin/module_control.php'),
(149, '::1', 'root', 1470572007, 'Query executed: UPDATE user_links SET status=''Off'' WHERE link_id=''14''', '/test/sysadmin/module_control.php'),
(150, '::1', 'root', 1470572018, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''37''', '/test/sysadmin/module_control.php'),
(151, '::1', 'root', 1470572018, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''41''', '/test/sysadmin/module_control.php'),
(152, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''45''', '/test/sysadmin/module_control.php'),
(153, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''33''', '/test/sysadmin/module_control.php'),
(154, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''49''', '/test/sysadmin/module_control.php'),
(155, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''53''', '/test/sysadmin/module_control.php'),
(156, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''57''', '/test/sysadmin/module_control.php'),
(157, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''61''', '/test/sysadmin/module_control.php'),
(158, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''65''', '/test/sysadmin/module_control.php'),
(159, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''4''', '/test/sysadmin/module_control.php'),
(160, '::1', 'root', 1470572019, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''69''', '/test/sysadmin/module_control.php'),
(161, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''73''', '/test/sysadmin/module_control.php'),
(162, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''16''', '/test/sysadmin/module_control.php'),
(163, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''28''', '/test/sysadmin/module_control.php'),
(164, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''8''', '/test/sysadmin/module_control.php'),
(165, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''20''', '/test/sysadmin/module_control.php'),
(166, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''24''', '/test/sysadmin/module_control.php'),
(167, '::1', 'root', 1470572020, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''12''', '/test/sysadmin/module_control.php'),
(168, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''39''', '/test/sysadmin/module_control.php'),
(169, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''43''', '/test/sysadmin/module_control.php'),
(170, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''47''', '/test/sysadmin/module_control.php'),
(171, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''35''', '/test/sysadmin/module_control.php'),
(172, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''40''', '/test/sysadmin/module_control.php'),
(173, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''44''', '/test/sysadmin/module_control.php'),
(174, '::1', 'root', 1470572021, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''48''', '/test/sysadmin/module_control.php'),
(175, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''36''', '/test/sysadmin/module_control.php'),
(176, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''52''', '/test/sysadmin/module_control.php'),
(177, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''56''', '/test/sysadmin/module_control.php'),
(178, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''60''', '/test/sysadmin/module_control.php'),
(179, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''64''', '/test/sysadmin/module_control.php'),
(180, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''68''', '/test/sysadmin/module_control.php'),
(181, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''7''', '/test/sysadmin/module_control.php'),
(182, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''72''', '/test/sysadmin/module_control.php'),
(183, '::1', 'root', 1470572022, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''76''', '/test/sysadmin/module_control.php'),
(184, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''19''', '/test/sysadmin/module_control.php'),
(185, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''31''', '/test/sysadmin/module_control.php'),
(186, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''11''', '/test/sysadmin/module_control.php'),
(187, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''23''', '/test/sysadmin/module_control.php'),
(188, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''27''', '/test/sysadmin/module_control.php'),
(189, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''15''', '/test/sysadmin/module_control.php'),
(190, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''51''', '/test/sysadmin/module_control.php'),
(191, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''55''', '/test/sysadmin/module_control.php'),
(192, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''38''', '/test/sysadmin/module_control.php'),
(193, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''42''', '/test/sysadmin/module_control.php'),
(194, '::1', 'root', 1470572023, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''46''', '/test/sysadmin/module_control.php'),
(195, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''34''', '/test/sysadmin/module_control.php'),
(196, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''50''', '/test/sysadmin/module_control.php'),
(197, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''54''', '/test/sysadmin/module_control.php'),
(198, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''58''', '/test/sysadmin/module_control.php'),
(199, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''62''', '/test/sysadmin/module_control.php'),
(200, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''66''', '/test/sysadmin/module_control.php'),
(201, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''5''', '/test/sysadmin/module_control.php'),
(202, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''70''', '/test/sysadmin/module_control.php'),
(203, '::1', 'root', 1470572024, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''74''', '/test/sysadmin/module_control.php'),
(204, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''17''', '/test/sysadmin/module_control.php'),
(205, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''29''', '/test/sysadmin/module_control.php'),
(206, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''9''', '/test/sysadmin/module_control.php'),
(207, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''21''', '/test/sysadmin/module_control.php'),
(208, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''25''', '/test/sysadmin/module_control.php'),
(209, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''13''', '/test/sysadmin/module_control.php'),
(210, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''59''', '/test/sysadmin/module_control.php'),
(211, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''63''', '/test/sysadmin/module_control.php'),
(212, '::1', 'root', 1470572025, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''67''', '/test/sysadmin/module_control.php'),
(213, '::1', 'root', 1470572026, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''6''', '/test/sysadmin/module_control.php'),
(214, '::1', 'root', 1470572026, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''32''', '/test/sysadmin/module_control.php'),
(215, '::1', 'root', 1470572026, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''71''', '/test/sysadmin/module_control.php'),
(216, '::1', 'root', 1470572026, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''3''', '/test/sysadmin/module_control.php'),
(217, '::1', 'root', 1470572026, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''2''', '/test/sysadmin/module_control.php'),
(218, '::1', 'root', 1470572026, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''75''', '/test/sysadmin/module_control.php'),
(219, '::1', 'root', 1470572027, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''18''', '/test/sysadmin/module_control.php'),
(220, '::1', 'root', 1470572027, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''30''', '/test/sysadmin/module_control.php'),
(221, '::1', 'root', 1470572027, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''10''', '/test/sysadmin/module_control.php'),
(222, '::1', 'root', 1470572027, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''22''', '/test/sysadmin/module_control.php'),
(223, '::1', 'root', 1470572027, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''26''', '/test/sysadmin/module_control.php'),
(224, '::1', 'root', 1470572028, 'Query executed: UPDATE user_links SET status=''On'' WHERE link_id=''14''', '/test/sysadmin/module_control.php'),
(225, '::1', 'root', 1470573010, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''root''', '/test/change_skin.php'),
(226, '::1', 'root', 1470573064, 'Logged out', '/test/end.php'),
(227, '::1', 'root', 1470573331, 'Logged in', '/test/login.php'),
(228, '::1', 'root', 1470804175, 'Logged in', '/test/login.php'),
(229, '::1', 'root', 1470804182, 'Logged out', '/test/end.php'),
(230, '::1', 'root', 1470805237, 'Logged in', '/test/login.php'),
(231, '::1', 'root', 1470805266, 'Pressed delete button', '/test/modules/test/delete_sao.php'),
(232, '::1', 'root', 1470805266, 'Query Executed: DELETE FROM sao WHERE SAO_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/test/modules/test/delete_sao.php'),
(233, '::1', 'root', 1470805344, 'Pressed cancel button', '/test/modules/test/csv_document.php'),
(234, '::1', 'root', 1470806118, 'Pressed submit button', '/test/sysadmin/edit_system_settings.php'),
(235, '::1', 'root', 1470806118, 'Query Executed: UPDATE system_settings SET setting = ?, value = ? WHERE setting = ?\r\nArray\n(\n    [0] => sss\n    [1] => Max Attachment Size (MB)\n    [2] => 100\n    [3] => Max Attachment Size (MB)\n)\n', '/test/sysadmin/edit_system_settings.php'),
(236, '::1', 'root', 1470806127, 'Pressed submit button', '/test/sysadmin/edit_system_settings.php'),
(237, '::1', 'root', 1470806127, 'Query Executed: UPDATE system_settings SET setting = ?, value = ? WHERE setting = ?\r\nArray\n(\n    [0] => sss\n    [1] => Security Level\n    [2] => HIGH\n    [3] => Security Level\n)\n', '/test/sysadmin/edit_system_settings.php'),
(238, '::1', 'root', 1470806154, 'Logged out', '/test/end.php'),
(239, '::1', 'root', 1470806899, 'Logged in', '/test/login.php'),
(240, '::1', 'root', 1471408145, 'Logged in', '/test/login.php'),
(241, '::1', 'root', 1471408223, 'Logged out', '/test/end.php'),
(242, '::1', 'root', 1471408316, 'Logged in', '/test/login.php'),
(243, '::1', 'root', 1471718919, 'Logged in', '/test/login.php'),
(244, '::1', 'root', 1471718969, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(245, '::1', 'root', 1471718970, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 37\n)\n', '/test/sysadmin/delete_user_links.php'),
(246, '::1', 'root', 1471718974, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(247, '::1', 'root', 1471718974, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 38\n)\n', '/test/sysadmin/delete_user_links.php'),
(248, '::1', 'root', 1471718978, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(249, '::1', 'root', 1471718978, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 39\n)\n', '/test/sysadmin/delete_user_links.php'),
(250, '::1', 'root', 1471718982, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(251, '::1', 'root', 1471718982, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 40\n)\n', '/test/sysadmin/delete_user_links.php'),
(252, '::1', 'root', 1471718995, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(253, '::1', 'root', 1471718995, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 45\n)\n', '/test/sysadmin/delete_user_links.php'),
(254, '::1', 'root', 1471718999, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(255, '::1', 'root', 1471718999, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 46\n)\n', '/test/sysadmin/delete_user_links.php'),
(256, '::1', 'root', 1471719003, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(257, '::1', 'root', 1471719003, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 47\n)\n', '/test/sysadmin/delete_user_links.php'),
(258, '::1', 'root', 1471719007, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(259, '::1', 'root', 1471719007, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 48\n)\n', '/test/sysadmin/delete_user_links.php'),
(260, '::1', 'root', 1471719018, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(261, '::1', 'root', 1471719018, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 57\n)\n', '/test/sysadmin/delete_user_links.php'),
(262, '::1', 'root', 1471719021, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(263, '::1', 'root', 1471719022, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 58\n)\n', '/test/sysadmin/delete_user_links.php'),
(264, '::1', 'root', 1471719025, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(265, '::1', 'root', 1471719025, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 59\n)\n', '/test/sysadmin/delete_user_links.php'),
(266, '::1', 'root', 1471719028, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(267, '::1', 'root', 1471719028, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 60\n)\n', '/test/sysadmin/delete_user_links.php'),
(268, '::1', 'root', 1471719039, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(269, '::1', 'root', 1471719039, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 65\n)\n', '/test/sysadmin/delete_user_links.php'),
(270, '::1', 'root', 1471719043, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(271, '::1', 'root', 1471719043, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 66\n)\n', '/test/sysadmin/delete_user_links.php'),
(272, '::1', 'root', 1471719047, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(273, '::1', 'root', 1471719047, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 67\n)\n', '/test/sysadmin/delete_user_links.php'),
(274, '::1', 'root', 1471719051, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(275, '::1', 'root', 1471719051, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 68\n)\n', '/test/sysadmin/delete_user_links.php'),
(276, '::1', 'root', 1471719061, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(277, '::1', 'root', 1471719061, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 69\n)\n', '/test/sysadmin/delete_user_links.php'),
(278, '::1', 'root', 1471719064, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(279, '::1', 'root', 1471719065, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 70\n)\n', '/test/sysadmin/delete_user_links.php'),
(280, '::1', 'root', 1471719068, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(281, '::1', 'root', 1471719068, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 71\n)\n', '/test/sysadmin/delete_user_links.php'),
(282, '::1', 'root', 1471719071, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(283, '::1', 'root', 1471719071, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 72\n)\n', '/test/sysadmin/delete_user_links.php'),
(284, '::1', 'root', 1471719082, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(285, '::1', 'root', 1471719083, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 73\n)\n', '/test/sysadmin/delete_user_links.php'),
(286, '::1', 'root', 1471719085, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(287, '::1', 'root', 1471719086, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 74\n)\n', '/test/sysadmin/delete_user_links.php'),
(288, '::1', 'root', 1471719088, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(289, '::1', 'root', 1471719089, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 75\n)\n', '/test/sysadmin/delete_user_links.php'),
(290, '::1', 'root', 1471719091, 'Pressed delete button', '/test/sysadmin/delete_user_links.php'),
(291, '::1', 'root', 1471719092, 'Query Executed: DELETE FROM user_links WHERE link_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 76\n)\n', '/test/sysadmin/delete_user_links.php'),
(292, '::1', 'root', 1471719122, 'Pressed cancel button', '/test/sysadmin/add_user_links.php'),
(293, '::1', 'root', 1471719155, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(294, '::1', 'root', 1471719155, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View calevent\n    [2] => modules/test/listview_calevent.php\n    [3] => Calendar Events\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 43\n)\n', '/test/sysadmin/edit_user_links.php'),
(295, '::1', 'root', 1471719194, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(296, '::1', 'root', 1471719194, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View docrequest\n    [2] => modules/test/listview_docrequest.php\n    [3] => Document Requests\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 51\n)\n', '/test/sysadmin/edit_user_links.php'),
(297, '::1', 'root', 1471719221, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(298, '::1', 'root', 1471719221, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View org\n    [2] => modules/test/listview_org.php\n    [3] => Organizations\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 63\n)\n', '/test/sysadmin/edit_user_links.php'),
(299, '::1', 'root', 1471719957, 'Logged in', '/test/login.php'),
(300, '::1', 'root', 1471720111, 'Pressed submit button', '/test/sysadmin/add_user_links.php'),
(301, '::1', 'root', 1471720119, 'Pressed submit button', '/test/sysadmin/add_user_links.php'),
(302, '::1', 'root', 1471720120, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Add docrequirement\n    [3] => modules/test/add_docrequirement.php\n    [4] => Add docrequirement\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test/sysadmin/add_user_links.php'),
(303, '::1', 'root', 1471720134, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(304, '::1', 'root', 1471720134, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add docrequest\n    [2] => modules/test/add_docrequest.php\n    [3] => Add Docrequest\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 49\n)\n', '/test/sysadmin/edit_user_links.php'),
(305, '::1', 'root', 1471720180, 'Pressed submit button', '/test/sysadmin/add_user_links.php'),
(306, '::1', 'root', 1471720187, 'Pressed submit button', '/test/sysadmin/add_user_links.php'),
(307, '::1', 'root', 1471720187, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Edit docrequirement\n    [3] => modules/test/edit_docrequirement.php\n    [4] => Edit docrequirement\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test/sysadmin/add_user_links.php'),
(308, '::1', 'root', 1471720248, 'Pressed submit button', '/test/sysadmin/add_user_links.php'),
(309, '::1', 'root', 1471720248, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => View docrequirement\n    [3] => modules/test/listview_docrequirement.php\n    [4] => Document Requirements\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test/sysadmin/add_user_links.php'),
(310, '::1', 'root', 1471720307, 'Pressed submit button', '/test/sysadmin/add_user_links.php'),
(311, '::1', 'root', 1471720307, 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Delete docrequirement\n    [3] => modules/test/delete_docrequirement.php\n    [4] => Delete docrequirement\n    [5] => \n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/test/sysadmin/add_user_links.php'),
(312, '::1', 'root', 1471720351, 'Logged out', '/test/end.php'),
(313, '::1', 'root', 1471720356, 'Logged in', '/test/login.php'),
(314, '::1', 'root', 1471720443, 'Pressed cancel button', '/test/sysadmin/edit_user_links.php'),
(315, '::1', 'root', 1471720450, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(316, '::1', 'root', 1471720450, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add docrequirement\n    [2] => modules/test/add_docrequirement.php\n    [3] => Add docrequirement\n    [4] => \n    [5] => 2\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 77\n)\n', '/test/sysadmin/edit_user_links.php'),
(317, '::1', 'root', 1471720458, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(318, '::1', 'root', 1471720458, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit docrequirement\n    [2] => modules/test/edit_docrequirement.php\n    [3] => Edit docrequirement\n    [4] => \n    [5] => 2\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 78\n)\n', '/test/sysadmin/edit_user_links.php'),
(319, '::1', 'root', 1471720465, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(320, '::1', 'root', 1471720465, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View docrequirement\n    [2] => modules/test/listview_docrequirement.php\n    [3] => Document Requirements\n    [4] => \n    [5] => 2\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/test/sysadmin/edit_user_links.php'),
(321, '::1', 'root', 1471720476, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(322, '::1', 'root', 1471720476, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete docrequirement\n    [2] => modules/test/delete_docrequirement.php\n    [3] => Delete docrequirement\n    [4] => \n    [5] => 2\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 80\n)\n', '/test/sysadmin/edit_user_links.php'),
(323, '::1', 'root', 1471720515, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(324, '::1', 'root', 1471720515, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add docrequirement\n    [2] => modules/test/add_docrequirement.php\n    [3] => Add docrequirement\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 77\n)\n', '/test/sysadmin/edit_user_links.php'),
(325, '::1', 'root', 1471720524, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(326, '::1', 'root', 1471720524, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit docrequirement\n    [2] => modules/test/edit_docrequirement.php\n    [3] => Edit docrequirement\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 78\n)\n', '/test/sysadmin/edit_user_links.php'),
(327, '::1', 'root', 1471720534, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(328, '::1', 'root', 1471720535, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View docrequirement\n    [2] => modules/test/listview_docrequirement.php\n    [3] => Document Requirements\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/test/sysadmin/edit_user_links.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(329, '::1', 'root', 1471720544, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(330, '::1', 'root', 1471720544, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete docrequirement\n    [2] => modules/test/delete_docrequirement.php\n    [3] => Delete docrequirement\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 80\n)\n', '/test/sysadmin/edit_user_links.php'),
(331, '::1', 'root', 1471720606, 'Logged out', '/test/end.php'),
(332, '::1', 'root', 1471720625, 'Logged in', '/test/login.php'),
(333, '::1', 'root', 1471720854, 'Logged in', '/test/login.php'),
(334, '::1', 'root', 1471720970, 'Logged in', '/test/login.php'),
(335, '::1', 'root', 1471721040, 'Pressed cancel button', '/test/sysadmin/listview_user_passport_groups.php'),
(336, '::1', 'root', 1471721062, 'Pressed submit button', '/test/sysadmin/reset_password.php'),
(337, '::1', 'root', 1471721063, 'Query executed: UPDATE user SET `password`=''$2y$12$kuZfP3Gjq7h5bGkHLxSy4.WwYfjmwfvhqtGGxjFoWjaQxaj.Z6tJm'', `salt`=''kuZfP3Gjq7h5bGkHLxSy4A'', `iteration`=''12'', `method`=''blowfish'' WHERE username=''sampleuser''', '/test/sysadmin/reset_password.php'),
(338, '::1', 'root', 1471721064, 'Logged out', '/test/end.php'),
(339, '::1', 'sampleuser', 1471721070, 'Logged in', '/test/login.php'),
(340, '::1', 'sampleuser', 1471721080, 'Logged out', '/test/end.php'),
(341, '::1', 'root', 1471721086, 'Logged in', '/test/login.php'),
(342, '::1', 'root', 1471721246, 'Pressed cancel button', '/test/sysadmin/edit_user_links.php'),
(343, '::1', 'root', 1471721254, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(344, '::1', 'root', 1471721254, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View docrequirement\n    [2] => modules/test/listview_docrequirement.php\n    [3] => Document Requirements\n    [4] => \n    [5] => 2\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/test/sysadmin/edit_user_links.php'),
(345, '::1', 'root', 1471721284, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(346, '::1', 'root', 1471721284, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => View docrequirement\n    [2] => modules/test/listview_docrequirement.php\n    [3] => Document Requirements\n    [4] => \n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 79\n)\n', '/test/sysadmin/edit_user_links.php'),
(347, '::1', 'root', 1471721395, 'Query executed: DELETE FROM user_passport WHERE username=''root'' AND link_id IN (''41'',''42'',''43'',''44'',''49'',''50'',''51'',''52'',''53'',''54'',''55'',''56'',''61'',''62'',''63'',''64'',''77'',''78'',''79'',''80'')', '/test/sysadmin/set_user_passports.php'),
(348, '::1', 'root', 1471721395, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''41''),(''root'', ''49''),(''root'', ''77''),(''root'', ''53''),(''root'', ''61''),(''root'', ''43''),(''root'', ''44''),(''root'', ''52''),(''root'', ''80''),(''root'', ''56''),(''root'', ''64''),(''root'', ''55''),(''root'', ''51''),(''root'', ''79''),(''root'', ''42''),(''root'', ''50''),(''root'', ''78''),(''root'', ''54''),(''root'', ''62''),(''root'', ''63'')', '/test/sysadmin/set_user_passports.php'),
(349, '::1', 'root', 1471721395, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/test/sysadmin/set_user_passports.php'),
(350, '::1', 'root', 1471721504, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(351, '::1', 'root', 1471721504, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Add docrequirement\n    [2] => modules/test/add_docrequirement.php\n    [3] => Add docrequirement\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 77\n)\n', '/test/sysadmin/edit_user_links.php'),
(352, '::1', 'root', 1471721510, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(353, '::1', 'root', 1471721511, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Edit docrequirement\n    [2] => modules/test/edit_docrequirement.php\n    [3] => Edit docrequirement\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 78\n)\n', '/test/sysadmin/edit_user_links.php'),
(354, '::1', 'root', 1471721519, 'Pressed submit button', '/test/sysadmin/edit_user_links.php'),
(355, '::1', 'root', 1471721519, 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Delete docrequirement\n    [2] => modules/test/delete_docrequirement.php\n    [3] => Delete docrequirement\n    [4] => \n    [5] => 1\n    [6] => No\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 80\n)\n', '/test/sysadmin/edit_user_links.php'),
(356, '::1', 'root', 1471721624, 'Logged in', '/test/login.php'),
(357, '::1', 'root', 1471721791, 'Logged out', '/test/end.php'),
(358, '::1', 'root', 1471721834, 'Logged in', '/test/login.php'),
(359, '::1', 'root', 1471722186, 'Logged out', '/test/end.php'),
(360, '::1', 'root', 1471722232, 'Logged in', '/test/login.php'),
(361, '::1', 'root', 1471722235, 'Logged out', '/test/end.php'),
(362, '::1', 'root', 1471722392, 'Logged in', '/test/login.php'),
(363, '::1', 'root', 1471722466, 'Logged out', '/test/end.php'),
(364, '::1', 'root', 1471722491, 'Logged in', '/test/login.php'),
(365, '::1', 'root', 1471722549, 'Logged out', '/test/end.php'),
(366, '::1', 'sampleuser', 1471722554, 'Logged in', '/test/login.php'),
(367, '::1', 'sampleuser', 1471722563, 'Logged out', '/test/end.php'),
(368, '::1', 'root', 1471722695, 'Logged in', '/test/login.php'),
(369, '::1', 'root', 1471722918, 'Pressed submit button', '/test/sysadmin/edit_user.php'),
(370, '::1', 'root', 1471722919, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => 1\n    [4] => 5\n    [5] => root\n)\n', '/test/sysadmin/edit_user.php'),
(371, '::1', 'root', 1471722919, 'Query executed: DELETE FROM user_passport WHERE username = ''root''', '/test/sysadmin/edit_user.php'),
(372, '::1', 'root', 1471722919, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test/sysadmin/edit_user.php'),
(373, '::1', 'root', 1471722946, 'Pressed cancel button', '/test/sysadmin/edit_user_passport_groups.php'),
(374, '::1', 'root', 1471722997, 'Query executed: DELETE FROM user_passport WHERE username=''root''', '/test/sysadmin/set_user_passports.php'),
(375, '::1', 'root', 1471722997, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''root'', ''41''),(''root'', ''33''),(''root'', ''49''),(''root'', ''77''),(''root'', ''53''),(''root'', ''61''),(''root'', ''4''),(''root'', ''16''),(''root'', ''28''),(''root'', ''8''),(''root'', ''20''),(''root'', ''24''),(''root'', ''12''),(''root'', ''43''),(''root'', ''35''),(''root'', ''44''),(''root'', ''36''),(''root'', ''52''),(''root'', ''80''),(''root'', ''56''),(''root'', ''64''),(''root'', ''7''),(''root'', ''19''),(''root'', ''31''),(''root'', ''11''),(''root'', ''23''),(''root'', ''27''),(''root'', ''15''),(''root'', ''55''),(''root'', ''51''),(''root'', ''79''),(''root'', ''42''),(''root'', ''34''),(''root'', ''50''),(''root'', ''78''),(''root'', ''54''),(''root'', ''62''),(''root'', ''5''),(''root'', ''17''),(''root'', ''29''),(''root'', ''9''),(''root'', ''21''),(''root'', ''25''),(''root'', ''13''),(''root'', ''1''),(''root'', ''63''),(''root'', ''6''),(''root'', ''32''),(''root'', ''3''),(''root'', ''2''),(''root'', ''18''),(''root'', ''30''),(''root'', ''10''),(''root'', ''22''),(''root'', ''26''),(''root'', ''14'')', '/test/sysadmin/set_user_passports.php'),
(376, '::1', 'root', 1471722997, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''root''', '/test/sysadmin/set_user_passports.php'),
(377, '::1', 'root', 1471723017, 'Pressed submit button', '/test/sysadmin/edit_user.php'),
(378, '::1', 'root', 1471723017, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => \n    [4] => 5\n    [5] => root\n)\n', '/test/sysadmin/edit_user.php'),
(379, '::1', 'root', 1471723074, 'Pressed submit button', '/test/sysadmin/edit_user.php'),
(380, '::1', 'root', 1471723074, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => 1\n    [4] => 5\n    [5] => root\n)\n', '/test/sysadmin/edit_user.php'),
(381, '::1', 'root', 1471723074, 'Query executed: DELETE FROM user_passport WHERE username = ''root''', '/test/sysadmin/edit_user.php'),
(382, '::1', 'root', 1471723075, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test/sysadmin/edit_user.php'),
(383, '::1', 'root', 1471723078, 'ILLEGAL ACCESS ATTEMPT - Tried to access ''/test/modules/test/listview_docrequirement.php'' without sufficient privileges.', '/test/modules/test/listview_docrequirement.php'),
(384, '::1', 'root', 1471723110, 'Logged in', '/test/login.php'),
(385, '::1', 'root', 1471723174, 'Pressed cancel button', '/test/sysadmin/edit_user_passport_groups.php'),
(386, '::1', 'root', 1471723184, 'Pressed cancel button', '/test/sysadmin/edit_user.php'),
(387, '::1', 'root', 1471723282, 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/test/sysadmin/role_permissions.php'),
(388, '::1', 'root', 1471723282, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/test/sysadmin/role_permissions.php'),
(389, '::1', 'root', 1471723282, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/test/sysadmin/role_permissions.php'),
(390, '::1', 'root', 1471723282, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/test/sysadmin/role_permissions.php'),
(391, '::1', 'root', 1471723282, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''77'')', '/test/sysadmin/role_permissions.php'),
(392, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''53'')', '/test/sysadmin/role_permissions.php'),
(393, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''61'')', '/test/sysadmin/role_permissions.php'),
(394, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/test/sysadmin/role_permissions.php'),
(395, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/test/sysadmin/role_permissions.php'),
(396, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/test/sysadmin/role_permissions.php'),
(397, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/test/sysadmin/role_permissions.php'),
(398, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/test/sysadmin/role_permissions.php'),
(399, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/test/sysadmin/role_permissions.php'),
(400, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/test/sysadmin/role_permissions.php'),
(401, '::1', 'root', 1471723283, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/test/sysadmin/role_permissions.php'),
(402, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/test/sysadmin/role_permissions.php'),
(403, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/test/sysadmin/role_permissions.php'),
(404, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/test/sysadmin/role_permissions.php'),
(405, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/test/sysadmin/role_permissions.php'),
(406, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''80'')', '/test/sysadmin/role_permissions.php'),
(407, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''56'')', '/test/sysadmin/role_permissions.php'),
(408, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''64'')', '/test/sysadmin/role_permissions.php'),
(409, '::1', 'root', 1471723284, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/test/sysadmin/role_permissions.php'),
(410, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/test/sysadmin/role_permissions.php'),
(411, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/test/sysadmin/role_permissions.php'),
(412, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/test/sysadmin/role_permissions.php'),
(413, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/test/sysadmin/role_permissions.php'),
(414, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/test/sysadmin/role_permissions.php'),
(415, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/test/sysadmin/role_permissions.php'),
(416, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''55'')', '/test/sysadmin/role_permissions.php'),
(417, '::1', 'root', 1471723285, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/test/sysadmin/role_permissions.php'),
(418, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''79'')', '/test/sysadmin/role_permissions.php'),
(419, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/test/sysadmin/role_permissions.php'),
(420, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/test/sysadmin/role_permissions.php'),
(421, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/test/sysadmin/role_permissions.php'),
(422, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''78'')', '/test/sysadmin/role_permissions.php'),
(423, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''54'')', '/test/sysadmin/role_permissions.php'),
(424, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''62'')', '/test/sysadmin/role_permissions.php'),
(425, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/test/sysadmin/role_permissions.php'),
(426, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/test/sysadmin/role_permissions.php'),
(427, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/test/sysadmin/role_permissions.php'),
(428, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/test/sysadmin/role_permissions.php'),
(429, '::1', 'root', 1471723286, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/test/sysadmin/role_permissions.php'),
(430, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/test/sysadmin/role_permissions.php'),
(431, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/test/sysadmin/role_permissions.php'),
(432, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/test/sysadmin/role_permissions.php'),
(433, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''63'')', '/test/sysadmin/role_permissions.php'),
(434, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/test/sysadmin/role_permissions.php'),
(435, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/test/sysadmin/role_permissions.php'),
(436, '::1', 'root', 1471723287, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/test/sysadmin/role_permissions.php'),
(437, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/test/sysadmin/role_permissions.php'),
(438, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/test/sysadmin/role_permissions.php'),
(439, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/test/sysadmin/role_permissions.php'),
(440, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/test/sysadmin/role_permissions.php'),
(441, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/test/sysadmin/role_permissions.php'),
(442, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/test/sysadmin/role_permissions.php'),
(443, '::1', 'root', 1471723288, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/test/sysadmin/role_permissions.php'),
(444, '::1', 'root', 1471723305, 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/test/sysadmin/role_permissions_cascade.php'),
(445, '::1', 'root', 1471723305, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/test/sysadmin/role_permissions_cascade.php'),
(446, '::1', 'root', 1471723308, 'Pressed cancel button', '/test/sysadmin/role_permissions_cascade.php'),
(447, '::1', 'root', 1471723331, 'Logged out', '/test/end.php'),
(448, '::1', 'sampleuser', 1471723352, 'Logged in', '/test/login.php'),
(449, '::1', 'sampleuser', 1471723398, 'Logged out', '/test/end.php'),
(450, '::1', 'root', 1471724587, 'Logged in', '/sams/login.php'),
(451, '::1', 'root', 1471726653, 'Logged out', '/sams/end.php'),
(452, '::1', 'root', 1471727263, 'Logged in', '/sams/login.php'),
(453, '::1', 'root', 1471827939, 'Logged in', '/sams/login.php'),
(454, '::1', 'root', 1471828243, 'Logged out', '/sams/end.php'),
(455, '::1', 'sampleuser', 1471830982, 'Logged in', '/sams/login.php'),
(456, '::1', 'sampleuser', 1471830995, 'Logged out', '/sams/end.php'),
(457, '::1', 'root', 1471830999, 'Logged in', '/sams/login.php'),
(458, '::1', 'root', 1471831278, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2''', '/sams/sysadmin/role_permissions.php'),
(459, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/sams/sysadmin/role_permissions.php'),
(460, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''49'')', '/sams/sysadmin/role_permissions.php'),
(461, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''77'')', '/sams/sysadmin/role_permissions.php'),
(462, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''53'')', '/sams/sysadmin/role_permissions.php'),
(463, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''61'')', '/sams/sysadmin/role_permissions.php'),
(464, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''43'')', '/sams/sysadmin/role_permissions.php'),
(465, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/sams/sysadmin/role_permissions.php'),
(466, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''52'')', '/sams/sysadmin/role_permissions.php'),
(467, '::1', 'root', 1471831279, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''80'')', '/sams/sysadmin/role_permissions.php'),
(468, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''56'')', '/sams/sysadmin/role_permissions.php'),
(469, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''55'')', '/sams/sysadmin/role_permissions.php'),
(470, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''51'')', '/sams/sysadmin/role_permissions.php'),
(471, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''79'')', '/sams/sysadmin/role_permissions.php'),
(472, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/sams/sysadmin/role_permissions.php'),
(473, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''50'')', '/sams/sysadmin/role_permissions.php'),
(474, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''78'')', '/sams/sysadmin/role_permissions.php'),
(475, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''54'')', '/sams/sysadmin/role_permissions.php'),
(476, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''62'')', '/sams/sysadmin/role_permissions.php'),
(477, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''63'')', '/sams/sysadmin/role_permissions.php'),
(478, '::1', 'root', 1471831280, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''6'')', '/sams/sysadmin/role_permissions.php'),
(479, '::1', 'root', 1471831281, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''32'')', '/sams/sysadmin/role_permissions.php'),
(480, '::1', 'root', 1471831281, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''10'')', '/sams/sysadmin/role_permissions.php'),
(481, '::1', 'root', 1471831285, 'Logged out', '/sams/end.php'),
(482, '::1', 'sampleuser', 1471831290, 'Logged in', '/sams/login.php'),
(483, '::1', 'sampleuser', 1471831308, 'Logged out', '/sams/end.php'),
(484, '::1', 'root', 1471831314, 'Logged in', '/sams/login.php'),
(485, '::1', 'root', 1471831331, 'Pressed cancel button', '/sams/sysadmin/role_permissions_cascade.php'),
(486, '::1', 'root', 1471831341, 'Pressed submit button', '/sams/sysadmin/edit_user.php'),
(487, '::1', 'root', 1471831341, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => sampleuser\n    [2] => 1\n    [3] => 2\n    [4] => 5\n    [5] => sampleuser\n)\n', '/sams/sysadmin/edit_user.php'),
(488, '::1', 'root', 1471831341, 'Query executed: DELETE FROM user_passport WHERE username = ''sampleuser''', '/sams/sysadmin/edit_user.php'),
(489, '::1', 'root', 1471831341, 'Query executed: INSERT `user_passport` SELECT ''sampleuser'', `link_id` FROM user_role_links WHERE role_id=''2''', '/sams/sysadmin/edit_user.php'),
(490, '::1', 'root', 1471831343, 'Logged out', '/sams/end.php'),
(491, '::1', 'sampleuser', 1471831350, 'Logged in', '/sams/login.php'),
(492, '::1', 'sampleuser', 1471831386, 'Pressed cancel button', '/sams/sysadmin/detailview_person.php'),
(493, '::1', 'sampleuser', 1471831419, 'Query executed: UPDATE user SET skin_id=''2'' WHERE username=''sampleuser''', '/sams/change_skin.php'),
(494, '::1', 'sampleuser', 1471831426, 'Query executed: UPDATE user SET skin_id=''5'' WHERE username=''sampleuser''', '/sams/change_skin.php'),
(495, '::1', 'sampleuser', 1471831448, 'Logged out', '/sams/end.php'),
(496, '::1', 'root', 1471831469, 'Logged in', '/sams/login.php'),
(497, '::1', 'root', 1471831501, 'Pressed submit button', '/sams/sysadmin/add_user.php'),
(498, '::1', 'root', 1471831502, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => standard\n    [2] => $2y$12$p4j5V5VXuBjVe53kCSfWoOW3DDG4pYkK5IHUpmjkmNKgLl88XnEYe\n    [3] => p4j5V5VXuBjVe53kCSfWoQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 3\n    [8] => 2\n)\n', '/sams/sysadmin/add_user.php'),
(499, '::1', 'root', 1471831502, 'Query executed: INSERT `user_passport` SELECT ''standard'', `link_id` FROM user_role_links WHERE role_id=''3''', '/sams/sysadmin/add_user.php'),
(500, '::1', 'root', 1471831669, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/sams/sysadmin/role_permissions.php'),
(501, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''41'')', '/sams/sysadmin/role_permissions.php'),
(502, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''53'')', '/sams/sysadmin/role_permissions.php'),
(503, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''43'')', '/sams/sysadmin/role_permissions.php'),
(504, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''44'')', '/sams/sysadmin/role_permissions.php'),
(505, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''56'')', '/sams/sysadmin/role_permissions.php'),
(506, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''55'')', '/sams/sysadmin/role_permissions.php'),
(507, '::1', 'root', 1471831669, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''42'')', '/sams/sysadmin/role_permissions.php'),
(508, '::1', 'root', 1471831670, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''54'')', '/sams/sysadmin/role_permissions.php'),
(509, '::1', 'root', 1471831670, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''62'')', '/sams/sysadmin/role_permissions.php'),
(510, '::1', 'root', 1471831670, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/sams/sysadmin/role_permissions.php'),
(511, '::1', 'root', 1471831772, 'Query executed: DELETE FROM user_passport WHERE username IN (''standard'')', '/sams/sysadmin/role_permissions_cascade.php'),
(512, '::1', 'root', 1471831773, 'Query executed: INSERT `user_passport` SELECT ''standard'', `link_id` FROM user_role_links WHERE role_id=''3''', '/sams/sysadmin/role_permissions_cascade.php'),
(513, '::1', 'root', 1471831775, 'Pressed cancel button', '/sams/sysadmin/role_permissions_cascade.php'),
(514, '::1', 'root', 1471831777, 'Logged out', '/sams/end.php'),
(515, '::1', 'standard', 1471831788, 'Logged in', '/sams/login.php'),
(516, '::1', 'standard', 1471831810, 'Pressed cancel button', '/sams/modules/test/add_calevent.php'),
(517, '::1', 'standard', 1471831931, 'Logged out', '/sams/end.php'),
(518, '::1', 'sampleuser', 1471831937, 'Logged in', '/sams/login.php'),
(519, '::1', 'sampleuser', 1471831951, 'Logged out', '/sams/end.php'),
(520, '::1', 'root', 1471832026, 'Logged in', '/sams/login.php'),
(521, '::1', 'root', 1471832050, 'Pressed cancel button', '/sams/sysadmin/edit_user_role.php'),
(522, '::1', 'root', 1471832076, 'Pressed submit button', '/sams/sysadmin/edit_user_passport_groups.php'),
(523, '::1', 'root', 1471832076, 'Query Executed: UPDATE user_passport_groups SET passport_group = ?, priority = ?, icon = ? WHERE passport_group_id = ?\r\nArray\n(\n    [0] => sisi\n    [1] => Administration\n    [2] => 0\n    [3] => preferences-system.png\n    [4] => 2\n)\n', '/sams/sysadmin/edit_user_passport_groups.php'),
(524, '::1', 'root', 1471832103, 'Pressed submit button', '/sams/sysadmin/edit_user_passport_groups.php'),
(525, '::1', 'root', 1471832103, 'Query Executed: UPDATE user_passport_groups SET passport_group = ?, priority = ?, icon = ? WHERE passport_group_id = ?\r\nArray\n(\n    [0] => sisi\n    [1] => System Administration\n    [2] => 0\n    [3] => preferences-system.png\n    [4] => 2\n)\n', '/sams/sysadmin/edit_user_passport_groups.php'),
(526, '::1', 'root', 1471832130, 'Pressed submit button', '/sams/sysadmin/edit_user_passport_groups.php'),
(527, '::1', 'root', 1471832130, 'Query Executed: UPDATE user_passport_groups SET passport_group = ?, priority = ?, icon = ? WHERE passport_group_id = ?\r\nArray\n(\n    [0] => sisi\n    [1] => User Administration\n    [2] => 0\n    [3] => blue_folder3.png\n    [4] => 1\n)\n', '/sams/sysadmin/edit_user_passport_groups.php'),
(528, '::1', 'root', 1471832277, 'Logged out', '/sams/end.php'),
(529, '::1', 'standard', 1471832415, 'Logged in', '/sams/login.php'),
(530, '::1', 'standard', 1471833312, 'Logged out', '/sams/end.php'),
(531, '::1', 'root', 1471833317, 'Logged in', '/sams/login.php'),
(532, '::1', 'root', 1471833332, 'Logged out', '/sams/end.php'),
(533, '::1', 'sampleuser', 1471833367, 'Logged in', '/sams/login.php'),
(534, '::1', 'sampleuser', 1471835064, 'Logged out', '/sams/end.php'),
(535, '::1', 'sampleuser', 1471835072, 'Logged in', '/sams/login.php'),
(536, '::1', 'sampleuser', 1471835290, 'Logged out', '/sams/end.php'),
(537, '::1', 'root', 1471836474, 'Logged in', '/sams/login.php'),
(538, '::1', 'root', 1471839199, 'Logged out', '/sams/end.php'),
(539, '::1', 'standard', 1471839494, 'Logged in', '/sams/login.php'),
(540, '::1', 'standard', 1471839573, 'Logged out', '/sams/end.php'),
(541, '::1', 'sampleuser', 1471839580, 'Logged in', '/sams/login.php'),
(542, '::1', 'sampleuser', 1471839608, 'Pressed submit button', '/sams/modules/test/add_org.php'),
(543, '::1', 'sampleuser', 1471839611, 'Pressed submit button', '/sams/modules/test/add_org.php'),
(544, '::1', 'sampleuser', 1471839612, 'Query Executed: INSERT INTO org(Org_Id, Org_Name, Org_Representative, Org_Members, Org_Contact, Org_Dept, SAO_SAO_Id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => JPCS\n    [3] => JPCS\n    [4] => JPCS\n    [5] => 12345678901\n    [6] => SoCIT\n    [7] => 123\n)\n', '/sams/modules/test/add_org.php'),
(545, '::1', 'sampleuser', 1471839624, 'Logged out', '/sams/end.php'),
(546, '::1', 'root', 1471839628, 'Logged in', '/sams/login.php'),
(547, '::1', 'root', 1471839636, 'Pressed delete button', '/sams/modules/test/delete_org.php'),
(548, '::1', 'root', 1471839637, 'Query Executed: DELETE FROM org WHERE Org_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/sams/modules/test/delete_org.php'),
(549, '::1', 'root', 1471839640, 'Logged out', '/sams/end.php'),
(550, '::1', 'sampleuser', 1471839647, 'Logged in', '/sams/login.php'),
(551, '::1', 'sampleuser', 1471839660, 'Logged out', '/sams/end.php'),
(552, '::1', 'root', 1471842746, 'Logged in', '/sams/login.php'),
(553, '::1', 'standard', 1471845693, 'Logged in', '/sams/login.php'),
(554, '::1', 'standard', 1471845699, 'Logged out', '/sams/end.php'),
(555, '::1', 'sampleuser', 1471845711, 'Logged in', '/sams/login.php'),
(556, '::1', 'sampleuser', 1471845825, 'Logged out', '/sams/end.php'),
(557, '::1', 'root', 1471845829, 'Logged in', '/sams/login.php'),
(558, '::1', 'root', 1471845908, 'Pressed submit button', '/sams/modules/test/add_docrequirement.php'),
(559, '::1', 'root', 1471845926, 'Pressed submit button', '/sams/modules/test/add_docrequirement.php'),
(560, '::1', 'root', 1471845926, 'Query Executed: INSERT INTO docrequirement(id, name, spec, User_id, User_Person_id, User_Person_Org_id, Org_id, Org_calEvent_id, Org_calEvent_User_id, Org_calEvent_User_Person_id, Org_calEvent_User_Person_Org_id) VALUES(?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issiiiiiiii\n    [1] => 11234\n    [2] => Sample Document Requirement Name\n    [3] => Sample Specification\n    [4] => 1234\n    [5] => 1234\n    [6] => 1234\n    [7] => 1234\n    [8] => 1234\n    [9] => 1234\n    [10] => 1234\n    [11] => 1234\n)\n', '/sams/modules/test/add_docrequirement.php'),
(561, '::1', 'root', 1471846219, 'Logged out', '/sams/end.php'),
(562, '::1', 'root', 1471944643, 'Logged in', '/sams/login.php'),
(563, '::1', 'root', 1471944678, 'Pressed cancel button', '/sams/modules/test/reporter_calevent.php'),
(564, '::1', 'root', 1471944682, 'Pressed cancel button', '/sams/modules/test/csv_calevent.php'),
(565, '::1', 'root', 1471944693, 'Pressed cancel button', '/sams/modules/test/listview_calevent.php'),
(566, '::1', 'root', 1471944708, 'Pressed cancel button', '/sams/modules/test/add_document.php'),
(567, '::1', 'root', 1471944739, 'Pressed cancel button', '/sams/modules/test/edit_docrequirement.php'),
(568, '::1', 'root', 1471944751, 'Pressed delete button', '/sams/modules/test/delete_docrequirement.php'),
(569, '::1', 'root', 1471944751, 'Query Executed: DELETE FROM docrequirement WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 11234\n)\n', '/sams/modules/test/delete_docrequirement.php'),
(570, '::1', 'root', 1471944782, 'Pressed cancel button', '/sams/modules/test/add_org.php'),
(571, '::1', 'root', 1471945357, 'Logged in', '/sams/login.php'),
(572, '::1', 'root', 1471945367, 'Pressed cancel button', '/sams/modules/test/add_calevent.php'),
(573, '::1', 'root', 1471945374, 'Pressed cancel button', '/sams/modules/test/add_document.php'),
(574, '::1', 'root', 1471945382, 'Pressed cancel button', '/sams/modules/test/add_docrequest.php'),
(575, '::1', 'root', 1471945419, 'Pressed cancel button', '/sams/modules/test/add_org.php'),
(576, '::1', 'root', 1471945601, 'Logged in', '/sams/login.php'),
(577, '::1', 'root', 1471945610, 'Pressed cancel button', '/sams/modules/test/add_calevent.php'),
(578, '::1', 'root', 1471945623, 'Pressed submit button', '/sams/modules/test/add_document.php'),
(579, '::1', 'root', 1471945660, 'Pressed submit button', '/sams/modules/test/add_document.php'),
(580, '::1', 'root', 1471945671, 'Pressed cancel button', '/sams/modules/test/add_document.php'),
(581, '::1', 'root', 1471945680, 'Pressed cancel button', '/sams/modules/test/add_docrequest.php'),
(582, '::1', 'root', 1471945691, 'Pressed cancel button', '/sams/modules/test/add_docrequirement.php'),
(583, '::1', 'root', 1471945701, 'Pressed cancel button', '/sams/modules/test/add_org.php'),
(584, '::1', 'root', 1471945707, 'Pressed submit button', '/sams/modules/test/add_docrequirement.php'),
(585, '::1', 'root', 1471945709, 'Pressed submit button', '/sams/modules/test/add_docrequirement.php'),
(586, '::1', 'root', 1471945712, 'Pressed cancel button', '/sams/modules/test/add_docrequirement.php'),
(587, '::1', 'root', 1471946141, 'Pressed submit button', '/sams/modules/test/add_calevent.php'),
(588, '::1', 'root', 1471946171, 'Pressed cancel button', '/sams/modules/test/add_calevent.php'),
(589, '::1', 'root', 1471946359, 'Pressed submit button', '/sams/modules/test/add_org.php'),
(590, '::1', 'root', 1471946380, 'Pressed submit button', '/sams/modules/test/add_document.php'),
(591, '::1', 'root', 1471946387, 'Pressed cancel button', '/sams/modules/test/add_document.php'),
(592, '::1', 'root', 1471946564, 'Logged in', '/sams/login.php'),
(593, '::1', 'root', 1471946572, 'Pressed cancel button', '/sams/modules/test/add_calevent.php'),
(594, '::1', 'root', 1471946577, 'Pressed cancel button', '/sams/modules/test/add_document.php'),
(595, '::1', 'root', 1471946609, 'Pressed submit button', '/sams/modules/test/add_docrequest.php'),
(596, '::1', 'root', 1471946730, 'Logged out', '/sams/end.php'),
(597, '::1', 'root', 1471946736, 'Logged in', '/sams/login.php'),
(598, '::1', 'root', 1471947048, 'Pressed cancel button', '/sams/modules/test/add_calevent.php'),
(599, '::1', 'root', 1471947134, 'Logged out', '/sams/end.php'),
(600, '::1', 'root', 1471947316, 'Logged in', '/sams/login.php'),
(601, '::1', 'root', 1471947400, 'Pressed submit button', '/sams/sysadmin/edit_person.php'),
(602, '::1', 'root', 1471947400, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Chamber\n    [2] => F\n    [3] => Jose\n    [4] => Male\n    [5] => 1\n)\n', '/sams/sysadmin/edit_person.php'),
(603, '::1', 'root', 1471947418, 'Logged out', '/sams/end.php'),
(604, '::1', 'root', 1471947423, 'Logged in', '/sams/login.php'),
(605, '::1', 'root', 1471947448, 'Pressed submit button', '/sams/sysadmin/edit_person.php'),
(606, '::1', 'root', 1471947448, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Super User\n    [2] => X\n    [3] => Root\n    [4] => Male\n    [5] => 1\n)\n', '/sams/sysadmin/edit_person.php'),
(607, '::1', 'root', 1471947452, 'Logged out', '/sams/end.php'),
(608, '::1', 'root', 1471947457, 'Logged in', '/sams/login.php'),
(609, '::1', 'root', 1471947701, 'Logged out', '/sams/end.php'),
(610, '::1', 'root', 1471947706, 'Logged in', '/sams/login.php'),
(611, '::1', 'root', 1471947735, 'Pressed cancel button', '/sams/sysadmin/edit_user_role.php'),
(612, '::1', 'root', 1471947755, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2''', '/sams/sysadmin/role_permissions.php'),
(613, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/sams/sysadmin/role_permissions.php'),
(614, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''49'')', '/sams/sysadmin/role_permissions.php'),
(615, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''77'')', '/sams/sysadmin/role_permissions.php'),
(616, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''53'')', '/sams/sysadmin/role_permissions.php'),
(617, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''61'')', '/sams/sysadmin/role_permissions.php'),
(618, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/sams/sysadmin/role_permissions.php'),
(619, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''52'')', '/sams/sysadmin/role_permissions.php'),
(620, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''80'')', '/sams/sysadmin/role_permissions.php'),
(621, '::1', 'root', 1471947756, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''56'')', '/sams/sysadmin/role_permissions.php'),
(622, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''55'')', '/sams/sysadmin/role_permissions.php'),
(623, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''51'')', '/sams/sysadmin/role_permissions.php'),
(624, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''79'')', '/sams/sysadmin/role_permissions.php'),
(625, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/sams/sysadmin/role_permissions.php'),
(626, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''50'')', '/sams/sysadmin/role_permissions.php'),
(627, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''78'')', '/sams/sysadmin/role_permissions.php'),
(628, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''54'')', '/sams/sysadmin/role_permissions.php'),
(629, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''62'')', '/sams/sysadmin/role_permissions.php'),
(630, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''63'')', '/sams/sysadmin/role_permissions.php'),
(631, '::1', 'root', 1471947757, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''6'')', '/sams/sysadmin/role_permissions.php'),
(632, '::1', 'root', 1471947758, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''32'')', '/sams/sysadmin/role_permissions.php'),
(633, '::1', 'root', 1471947758, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''10'')', '/sams/sysadmin/role_permissions.php'),
(634, '::1', 'root', 1471947761, 'Logged out', '/sams/end.php'),
(635, '::1', 'sampleuser', 1471947768, 'Logged in', '/sams/login.php'),
(636, '::1', 'sampleuser', 1471947787, 'Logged out', '/sams/end.php'),
(637, '::1', 'root', 1471947792, 'Logged in', '/sams/login.php'),
(638, '::1', 'root', 1471947810, 'Query executed: DELETE FROM user_role_links WHERE role_id=''2''', '/sams/sysadmin/role_permissions.php'),
(639, '::1', 'root', 1471947810, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''41'')', '/sams/sysadmin/role_permissions.php'),
(640, '::1', 'root', 1471947810, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''49'')', '/sams/sysadmin/role_permissions.php'),
(641, '::1', 'root', 1471947810, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''77'')', '/sams/sysadmin/role_permissions.php'),
(642, '::1', 'root', 1471947810, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''53'')', '/sams/sysadmin/role_permissions.php'),
(643, '::1', 'root', 1471947810, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''61'')', '/sams/sysadmin/role_permissions.php'),
(644, '::1', 'root', 1471947810, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''43'')', '/sams/sysadmin/role_permissions.php'),
(645, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''44'')', '/sams/sysadmin/role_permissions.php'),
(646, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''52'')', '/sams/sysadmin/role_permissions.php'),
(647, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''80'')', '/sams/sysadmin/role_permissions.php'),
(648, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''56'')', '/sams/sysadmin/role_permissions.php'),
(649, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''55'')', '/sams/sysadmin/role_permissions.php'),
(650, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''51'')', '/sams/sysadmin/role_permissions.php'),
(651, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''79'')', '/sams/sysadmin/role_permissions.php'),
(652, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''42'')', '/sams/sysadmin/role_permissions.php'),
(653, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''50'')', '/sams/sysadmin/role_permissions.php'),
(654, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''78'')', '/sams/sysadmin/role_permissions.php'),
(655, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''54'')', '/sams/sysadmin/role_permissions.php'),
(656, '::1', 'root', 1471947811, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''62'')', '/sams/sysadmin/role_permissions.php'),
(657, '::1', 'root', 1471947812, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''63'')', '/sams/sysadmin/role_permissions.php'),
(658, '::1', 'root', 1471947812, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''6'')', '/sams/sysadmin/role_permissions.php'),
(659, '::1', 'root', 1471947812, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''32'')', '/sams/sysadmin/role_permissions.php'),
(660, '::1', 'root', 1471947812, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''2'', ''10'')', '/sams/sysadmin/role_permissions.php'),
(661, '::1', 'root', 1471947815, 'Logged out', '/sams/end.php'),
(662, '::1', 'root', 1471948065, 'Logged in', '/sams/login.php'),
(663, '::1', 'root', 1471948236, 'Pressed cancel button', '/sams/modules/test/add_docrequest.php'),
(664, '::1', 'root', 1471948240, 'Pressed cancel button', '/sams/modules/test/reporter_docrequest.php'),
(665, '::1', 'root', 1471948784, 'Pressed submit button', '/sams/modules/test/add_docrequest.php'),
(666, '::1', 'root', 1471952566, 'Logged in', '/sams/login.php'),
(667, '::1', 'root', 1471952583, 'Pressed submit button', '/sams/modules/test/add_calevent.php'),
(668, '::1', 'root', 1471952598, 'Pressed submit button', '/sams/modules/test/add_document.php'),
(669, '::1', 'root', 1471952612, 'Pressed submit button', '/sams/modules/test/add_docrequest.php'),
(670, '::1', 'root', 1471952619, 'Pressed submit button', '/sams/modules/test/add_docrequirement.php'),
(671, '::1', 'root', 1471952822, 'Logged in', '/test/login.php'),
(672, '::1', 'root', 1471952840, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(673, '::1', 'root', 1471952847, 'Pressed submit button', '/test/modules/test/add_document.php'),
(674, '::1', 'root', 1471952856, 'Pressed submit button', '/test/modules/test/add_docrequest.php'),
(675, '::1', 'root', 1471952864, 'Pressed submit button', '/test/modules/test/add_docrequirement.php'),
(676, '::1', 'root', 1471952876, 'Pressed submit button', '/test/modules/test/add_org.php'),
(677, '::1', 'root', 1471956572, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(678, '::1', 'root', 1471956651, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(679, '::1', 'root', 1471956739, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(680, '::1', 'root', 1471956801, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(681, '::1', 'root', 1471956885, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(682, '::1', 'root', 1471959817, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(683, '::1', 'root', 1471960679, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(684, '::1', 'root', 1471962368, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(685, '::1', 'root', 1471962849, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(686, '::1', 'root', 1471963071, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(687, '::1', 'root', 1471964104, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(688, '::1', 'root', 1471964253, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(689, '::1', 'root', 1471964281, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(690, '::1', 'root', 1471965174, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(691, '::1', 'root', 1471965215, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(692, '::1', 'root', 1471965472, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(693, '::1', 'root', 1471965809, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(694, '::1', 'root', 1471966770, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(695, '::1', 'root', 1471966871, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(696, '::1', 'root', 1471966927, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(697, '::1', 'root', 1471968623, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(698, '::1', 'root', 1471971117, 'Pressed submit button', '/test/modules/test/add_calevent.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(699, '::1', 'root', 1471971255, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(700, '::1', 'root', 1471971392, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(701, '::1', 'root', 1471972052, 'Pressed cancel button', '/test/sysadmin/edit_user_links.php'),
(702, '::1', 'root', 1471972089, 'Pressed cancel button', '/test/sysadmin/edit_user_links.php'),
(703, '::1', 'root', 1471972377, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(704, '::1', 'root', 1471972493, 'Logged out', '/test/end.php'),
(705, '::1', 'root', 1471972506, 'Logged in', '/test/login.php'),
(706, '::1', 'root', 1471972520, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(707, '::1', 'root', 1471972596, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(708, '::1', 'root', 1471972676, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(709, '::1', 'root', 1471972761, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(710, '::1', 'root', 1471972802, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(711, '::1', 'root', 1471972827, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(712, '::1', 'root', 1471973065, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(713, '::1', 'root', 1471973096, 'Logged out', '/test/end.php'),
(714, '::1', 'root', 1471973106, 'Logged in', '/test/login.php'),
(715, '::1', 'root', 1471973139, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(716, '::1', 'root', 1471973184, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(717, '::1', 'root', 1471973377, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(718, '::1', 'root', 1471973456, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(719, '::1', 'root', 1471973531, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(720, '::1', 'root', 1471973902, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(721, '::1', 'root', 1471974294, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(722, '::1', 'root', 1471974511, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(723, '::1', 'root', 1471974555, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(724, '::1', 'root', 1471974938, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(725, '::1', 'root', 1471974971, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(726, '::1', 'root', 1471974971, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwer\n    [3] => qw\n    [4] => qwe\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => 11\n)\n', '/test/modules/test/add_calevent.php'),
(727, '::1', 'root', 1471975042, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(728, '::1', 'root', 1471975146, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(729, '::1', 'root', 1471975378, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(730, '::1', 'root', 1471975753, 'Logged in', '/test/login.php'),
(731, '::1', 'root', 1471975763, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(732, '::1', 'root', 1471976038, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(733, '::1', 'root', 1471976819, 'Logged out', '/test/end.php'),
(734, '::1', 'root', 1471976825, 'Logged in', '/test/login.php'),
(735, '::1', 'root', 1471976835, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(736, '::1', 'root', 1471977564, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(737, '::1', 'root', 1471977568, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(738, '::1', 'root', 1471977572, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(739, '::1', 'root', 1471977572, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => q\n    [3] => q\n    [4] => q\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(740, '::1', 'root', 1471977858, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(741, '::1', 'root', 1471977858, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => g\n    [3] => g\n    [4] => g\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(742, '::1', 'root', 1471977900, 'Pressed delete button', '/test/modules/test/delete_calevent.php'),
(743, '::1', 'root', 1471977900, 'Query Executed: DELETE FROM calevent WHERE calEvent_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/test/modules/test/delete_calevent.php'),
(744, '::1', 'root', 1471977902, 'Pressed delete button', '/test/modules/test/delete_calevent.php'),
(745, '::1', 'root', 1471977902, 'Query Executed: DELETE FROM calevent WHERE calEvent_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/test/modules/test/delete_calevent.php'),
(746, '::1', 'root', 1471977905, 'Pressed delete button', '/test/modules/test/delete_calevent.php'),
(747, '::1', 'root', 1471977905, 'Query Executed: DELETE FROM calevent WHERE calEvent_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/test/modules/test/delete_calevent.php'),
(748, '::1', 'root', 1471977907, 'Pressed delete button', '/test/modules/test/delete_calevent.php'),
(749, '::1', 'root', 1471977907, 'Query Executed: DELETE FROM calevent WHERE calEvent_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 4\n)\n', '/test/modules/test/delete_calevent.php'),
(750, '::1', 'root', 1471977925, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(751, '::1', 'root', 1471977925, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(752, '::1', 'root', 1471978091, 'Pressed submit button', '/test/sysadmin/add_person.php'),
(753, '::1', 'root', 1471978091, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Chamber\n    [3] => F\n    [4] => Jose\n    [5] => Male\n)\n', '/test/sysadmin/add_person.php'),
(754, '::1', 'root', 1471978111, 'Pressed submit button', '/test/sysadmin/add_user.php'),
(755, '::1', 'root', 1471978112, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => cfjose\n    [2] => $2y$12$huQmjNtzMRKLPramGeHT9ulH8FhneWG0QOKQqBKlqzjSc6GHesHhy\n    [3] => huQmjNtzMRKLPramGeHT9w\n    [4] => 12\n    [5] => blowfish\n    [6] => 2\n    [7] => 3\n    [8] => 2\n)\n', '/test/sysadmin/add_user.php'),
(756, '::1', 'root', 1471978112, 'Query executed: INSERT `user_passport` SELECT ''cfjose'', `link_id` FROM user_role_links WHERE role_id=''3''', '/test/sysadmin/add_user.php'),
(757, '::1', 'root', 1471978115, 'Logged out', '/test/end.php'),
(758, '::1', 'cfjose', 1471978121, 'Logged in', '/test/login.php'),
(759, '::1', 'cfjose', 1471978150, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(760, '::1', 'cfjose', 1471978151, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => asdfg\n    [3] => asdfg\n    [4] => asdfg\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(761, '::1', 'cfjose', 1471978374, 'Logged out', '/test/end.php'),
(762, '::1', 'root', 1471978382, 'Logged in', '/test/login.php'),
(763, '::1', 'root', 1471978404, 'Pressed cancel button', '/test/sysadmin/edit_user_passport_groups.php'),
(764, '::1', 'root', 1471978445, 'Pressed cancel button', '/test/sysadmin/role_permissions.php'),
(765, '::1', 'root', 1471979261, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(766, '::1', 'root', 1471979261, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => zxcvb\n    [3] => zxcvb\n    [4] => zxcvb\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(767, '::1', 'root', 1471979407, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(768, '::1', 'root', 1471979407, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => werty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(769, '::1', 'root', 1471979487, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(770, '::1', 'root', 1471979487, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(771, '::1', 'root', 1471979852, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(772, '::1', 'root', 1471979853, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(773, '::1', 'root', 1471979885, 'Pressed cancel button', '/test/modules/test/edit_calevent.php'),
(774, '::1', 'root', 1471979889, 'Pressed delete button', '/test/modules/test/delete_calevent.php'),
(775, '::1', 'root', 1471979889, 'Query Executed: DELETE FROM calevent WHERE calEvent_Id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/test/modules/test/delete_calevent.php'),
(776, '::1', 'root', 1471979917, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(777, '::1', 'root', 1471979917, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => werty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(778, '::1', 'root', 1471979957, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(779, '::1', 'root', 1471979958, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(780, '::1', 'root', 1471980242, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(781, '::1', 'root', 1471980242, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(782, '::1', 'root', 1471980490, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(783, '::1', 'root', 1471980490, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(784, '::1', 'root', 1471980533, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(785, '::1', 'root', 1471980534, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(786, '::1', 'root', 1471981377, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(787, '::1', 'root', 1471981378, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwertyu\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(788, '::1', 'root', 1471981492, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(789, '::1', 'root', 1471981493, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(790, '::1', 'root', 1471983315, 'Logged in', '/test/login.php'),
(791, '::1', 'root', 1471983329, 'Pressed submit button', '/test/modules/test/add_calevent.php'),
(792, '::1', 'root', 1471983330, 'Query Executed: INSERT INTO calevent(calEvent_Id, calEvent_Name, calEvent_Attendee, calEvent_Loc, calEvent_Time, calEvent_Date, user_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => qwerty\n    [5] => 1234\n    [6] => 2016-08-24\n    [7] => \n)\n', '/test/modules/test/add_calevent.php'),
(793, '::1', 'root', 1471983351, 'Pressed submit button', '/test/modules/test/add_document.php'),
(794, '::1', 'root', 1471983361, 'Pressed submit button', '/test/modules/test/add_docrequest.php'),
(795, '::1', 'root', 1471983364, 'Query Executed: INSERT INTO docrequest(docRequest_Id, docRequest_Title, docRequest_Desc, user_id) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => issi\n    [1] => \n    [2] => qwerty\n    [3] => qwerty\n    [4] => \n)\n', '/test/modules/test/add_docrequest.php'),
(796, '::1', 'root', 1471984406, 'Logged in', '/test/login.php'),
(797, '::1', 'root', 1471984444, 'Pressed submit button', '/test/modules/test/add_org.php'),
(798, '::1', 'root', 1471984445, 'Query Executed: INSERT INTO org(user_id, Org_Id, Org_Name, Org_Representative, Org_Members, Org_Contact, Org_Dept) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => iisssss\n    [1] => \n    [2] => \n    [3] => qwerty\n    [4] => qwertyu\n    [5] => qwertyu\n    [6] => 123456\n    [7] => qwerty\n)\n', '/test/modules/test/add_org.php'),
(799, '::1', 'root', 1471984537, 'Pressed delete button', '/test/sysadmin/delete_user.php'),
(800, '::1', 'root', 1471984537, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => cfjose\n)\n', '/test/sysadmin/delete_user.php'),
(801, '::1', 'root', 1471984767, 'Logged in', '/sams/login.php'),
(802, '::1', 'root', 1471985209, 'Logged out', '/sams/end.php'),
(803, '::1', 'root', 1471985217, 'Logged in', '/sams/login.php'),
(804, '::1', 'root', 1471985733, 'Logged out', '/sams/end.php'),
(805, '::1', 'root', 1471986056, 'Logged in', '/sams/login.php'),
(806, '::1', 'root', 1471986347, 'Logged in', '/sams/login.php'),
(807, '::1', 'root', 1471986697, 'Logged in', '/sams/login.php'),
(808, '::1', 'root', 1471986837, 'Logged out', '/sams/end.php'),
(809, '::1', 'root', 1471986842, 'Logged in', '/sams/login.php'),
(810, '::1', 'root', 1471986885, 'Logged out', '/sams/end.php'),
(811, '::1', 'root', 1471986916, 'Logged in', '/sams/login.php');

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
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('root', '$2y$12$YIG9NX5d6hpa.OoSil82qO.eXn4F2Bp/TyuWG4h/Swi3j1GJe8vDi', 'YIG9NX5d6hpa+OoSil82qQ', 12, 'blowfish', 1, 1, 5),
('sampleuser', '$2y$12$kuZfP3Gjq7h5bGkHLxSy4.WwYfjmwfvhqtGGxjFoWjaQxaj.Z6tJm', 'kuZfP3Gjq7h5bGkHLxSy4A', 12, 'blowfish', 1, 2, 5),
('standard', '$2y$12$p4j5V5VXuBjVe53kCSfWoOW3DDG4pYkK5IHUpmjkmNKgLl88XnEYe', 'p4j5V5VXuBjVe53kCSfWoQ', 12, 'blowfish', 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_document`
--

CREATE TABLE `user_has_document` (
  `User_User_Id` int(11) NOT NULL,
  `User_Org_Rep_Org_Rep_Id` int(11) NOT NULL,
  `User_Org_Rep_Org_Org_Id` int(11) NOT NULL,
  `User_Org_Rep_Org_SAO_SAO_Id` int(11) NOT NULL,
  `Document_Doc_Id` int(11) NOT NULL,
  `Document_docRequest_docRequest_Id` int(11) NOT NULL,
  `Document_docRequest_SAO_SAO_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(41, 'Add calevent', 'modules/test/add_calevent.php', 'Add Calevent', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit calevent', 'modules/test/edit_calevent.php', 'Edit Calevent', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View calevent', 'modules/test/listview_calevent.php', 'Calendar Events', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete calevent', 'modules/test/delete_calevent.php', 'Delete Calevent', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add docrequest', 'modules/test/add_docrequest.php', 'Add Docrequest', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit docrequest', 'modules/test/edit_docrequest.php', 'Edit Docrequest', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View docrequest', 'modules/test/listview_docrequest.php', 'Document Requests', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete docrequest', 'modules/test/delete_docrequest.php', 'Delete Docrequest', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add document', 'modules/test/add_document.php', 'Add Document', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit document', 'modules/test/edit_document.php', 'Edit Document', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View document', 'modules/test/listview_document.php', 'Document', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete document', 'modules/test/delete_document.php', 'Delete Document', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add org', 'modules/test/add_org.php', 'Add Org', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit org', 'modules/test/edit_org.php', 'Edit Org', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View org', 'modules/test/listview_org.php', 'Organizations', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete org', 'modules/test/delete_org.php', 'Delete Org', '', 1, 'No', 'On', 'form3.png', 0),
(77, 'Add docrequirement', 'modules/test/add_docrequirement.php', 'Add docrequirement', '', 1, 'No', 'On', 'form3.png', 0),
(78, 'Edit docrequirement', 'modules/test/edit_docrequirement.php', 'Edit docrequirement', '', 1, 'No', 'On', 'form3.png', 0),
(79, 'View docrequirement', 'modules/test/listview_docrequirement.php', 'Document Requirements', '', 1, 'Yes', 'On', 'form3.png', 0),
(80, 'Delete docrequirement', 'modules/test/delete_docrequirement.php', 'Delete docrequirement', '', 1, 'No', 'On', 'form3.png', 0);

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
('cfjose', 41),
('cfjose', 42),
('cfjose', 43),
('cfjose', 44),
('cfjose', 53),
('cfjose', 54),
('cfjose', 55),
('cfjose', 56),
('cfjose', 62),
('cfjose', 63),
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
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 77),
('root', 78),
('root', 79),
('root', 80),
('sampleuser', 6),
('sampleuser', 10),
('sampleuser', 32),
('sampleuser', 41),
('sampleuser', 42),
('sampleuser', 43),
('sampleuser', 44),
('sampleuser', 49),
('sampleuser', 50),
('sampleuser', 51),
('sampleuser', 52),
('sampleuser', 53),
('sampleuser', 54),
('sampleuser', 55),
('sampleuser', 56),
('sampleuser', 61),
('sampleuser', 62),
('sampleuser', 63),
('sampleuser', 77),
('sampleuser', 78),
('sampleuser', 79),
('sampleuser', 80),
('standard', 41),
('standard', 42),
('standard', 43),
('standard', 44),
('standard', 53),
('standard', 54),
('standard', 55),
('standard', 56),
('standard', 62),
('standard', 63);

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
(1, 'User Administration', 0, 'blue_folder3.png'),
(2, 'System Administration', 0, 'preferences-system.png');

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
(3, 'Standard User', 'Standard user granted with basic privileges');

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
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(2, 6),
(2, 10),
(2, 32),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 61),
(2, 62),
(2, 63),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 53),
(3, 54),
(3, 55),
(3, 56),
(3, 62),
(3, 63);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calevent`
--
ALTER TABLE `calevent`
  ADD PRIMARY KEY (`calEvent_Id`),
  ADD UNIQUE KEY `calEvent_Id_UNIQUE` (`calEvent_Id`);

--
-- Indexes for table `calevent_has_org`
--
ALTER TABLE `calevent_has_org`
  ADD PRIMARY KEY (`calEvent_calEvent_Id`,`calEvent_SAO_SAO_Id`,`Org_Org_Id`,`Org_SAO_SAO_Id`),
  ADD KEY `fk_calEvent_has_Org_Org1_idx` (`Org_Org_Id`,`Org_SAO_SAO_Id`),
  ADD KEY `fk_calEvent_has_Org_calEvent1_idx` (`calEvent_calEvent_Id`,`calEvent_SAO_SAO_Id`);

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
-- Indexes for table `docrequest`
--
ALTER TABLE `docrequest`
  ADD PRIMARY KEY (`docRequest_Id`),
  ADD UNIQUE KEY `docRequest_Id_UNIQUE` (`docRequest_Id`);

--
-- Indexes for table `docrequirement`
--
ALTER TABLE `docrequirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`Doc_Id`,`docRequest_docRequest_Id`),
  ADD UNIQUE KEY `Doc_Id_UNIQUE` (`Doc_Id`),
  ADD KEY `fk_Document_docRequest1_idx` (`docRequest_docRequest_Id`);

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`Org_Id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

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
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_has_document`
--
ALTER TABLE `user_has_document`
  ADD PRIMARY KEY (`User_User_Id`,`User_Org_Rep_Org_Rep_Id`,`User_Org_Rep_Org_Org_Id`,`User_Org_Rep_Org_SAO_SAO_Id`,`Document_Doc_Id`,`Document_docRequest_docRequest_Id`,`Document_docRequest_SAO_SAO_Id`),
  ADD KEY `fk_User_has_Document_Document1_idx` (`Document_Doc_Id`,`Document_docRequest_docRequest_Id`,`Document_docRequest_SAO_SAO_Id`),
  ADD KEY `fk_User_has_Document_User1_idx` (`User_User_Id`,`User_Org_Rep_Org_Rep_Id`,`User_Org_Rep_Org_Org_Id`,`User_Org_Rep_Org_SAO_SAO_Id`);

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
-- AUTO_INCREMENT for table `calevent`
--
ALTER TABLE `calevent`
  MODIFY `calEvent_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `docrequest`
--
ALTER TABLE `docrequest`
  MODIFY `docRequest_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `Doc_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `org`
--
ALTER TABLE `org`
  MODIFY `Org_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=812;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
