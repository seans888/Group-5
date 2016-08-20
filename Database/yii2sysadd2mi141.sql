-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2016 at 06:33 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2sysadd2mi141`
--

-- --------------------------------------------------------

--
-- Table structure for table `adviser`
--

CREATE TABLE `adviser` (
  `Adv_Id` int(11) NOT NULL,
  `Adv_Name` varchar(45) DEFAULT NULL,
  `Adv_Cont` varchar(45) DEFAULT NULL,
  `Adv_Add` varchar(45) DEFAULT NULL,
  `Adv_emailAdd` varchar(45) DEFAULT NULL,
  `Org_Org_Id` int(11) NOT NULL,
  `Org_SAO_SAO_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calevent`
--

CREATE TABLE `calevent` (
  `calEvent_Id` int(11) NOT NULL,
  `calEvent_Name` varchar(45) NOT NULL,
  `calEvent_Attendee` varchar(45) DEFAULT NULL,
  `calEvent_Loc` varchar(45) DEFAULT NULL,
  `calEvent_Time` time(4) NOT NULL,
  `calEvent_Date` date NOT NULL,
  `SAO_SAO_Id` int(11) NOT NULL
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
  `SAO_SAO_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `Doc_Id` int(11) NOT NULL,
  `Doc_Name` varchar(45) NOT NULL,
  `Doc_Description` varchar(45) DEFAULT NULL,
  `docRequest_docRequest_Id` int(11) NOT NULL,
  `docRequest_SAO_SAO_Id` int(11) NOT NULL,
  `Adviser_Adv_Id` int(11) NOT NULL,
  `Adviser_Org_Org_Id` int(11) NOT NULL,
  `Adviser_Org_SAO_SAO_Id` int(11) NOT NULL,
  `Student Affair Head_SAH_Id` int(11) NOT NULL,
  `SAO_SAO_Id` int(11) NOT NULL
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
  `SAO_SAO_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `org_rep`
--

CREATE TABLE `org_rep` (
  `Org_Rep_Id` int(11) NOT NULL,
  `Org_Rep_Lname` varchar(45) NOT NULL,
  `Org_Rep_Fname` varchar(45) NOT NULL,
  `Org_Rep_Midinit` varchar(45) DEFAULT NULL,
  `Org_Org_Id` int(11) NOT NULL,
  `Org_SAO_SAO_Id` int(11) NOT NULL
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
-- Table structure for table `sao`
--

CREATE TABLE `sao` (
  `SAO_Id` int(11) NOT NULL,
  `SAO_Name` varchar(45) DEFAULT NULL,
  `SAO_Cont` varchar(45) DEFAULT NULL,
  `SAO_Add` varchar(45) DEFAULT NULL,
  `SAO_emailAdd` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student affair head`
--

CREATE TABLE `student affair head` (
  `SAH_Id` int(11) NOT NULL,
  `SAH_Name` varchar(45) DEFAULT NULL,
  `SAH_Cont` varchar(45) DEFAULT NULL,
  `SAH_Add` varchar(45) DEFAULT NULL,
  `SAH_emailAdd` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(242, '::1', 'root', 1471408316, 'Logged in', '/test/login.php');

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
('sampleuser', '$2y$12$k6cZQFq52eq0rtdvljMHreKW.kvbyAqcHZxY3BhbUrzLSLlTxdl.q', 'k6cZQFq52eq0rtdvljMHrg', 12, 'blowfish', 1, 3, 5);

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
(37, 'Add adviser', 'modules/test/add_adviser.php', 'Add Adviser', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit adviser', 'modules/test/edit_adviser.php', 'Edit Adviser', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View adviser', 'modules/test/listview_adviser.php', 'Adviser', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete adviser', 'modules/test/delete_adviser.php', 'Delete Adviser', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add calevent', 'modules/test/add_calevent.php', 'Add Calevent', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit calevent', 'modules/test/edit_calevent.php', 'Edit Calevent', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View calevent', 'modules/test/listview_calevent.php', 'Calevent', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete calevent', 'modules/test/delete_calevent.php', 'Delete Calevent', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add calevent has org', 'modules/test/add_calevent_has_org.php', 'Add Calevent Has Org', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit calevent has org', 'modules/test/edit_calevent_has_org.php', 'Edit Calevent Has Org', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View calevent has org', 'modules/test/listview_calevent_has_org.php', 'Calevent Has Org', '', 1, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete calevent has org', 'modules/test/delete_calevent_has_org.php', 'Delete Calevent Has Org', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add docrequest', 'modules/test/add_docrequest.php', 'Add Docrequest', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit docrequest', 'modules/test/edit_docrequest.php', 'Edit Docrequest', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View docrequest', 'modules/test/listview_docrequest.php', 'Docrequest', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete docrequest', 'modules/test/delete_docrequest.php', 'Delete Docrequest', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add document', 'modules/test/add_document.php', 'Add Document', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit document', 'modules/test/edit_document.php', 'Edit Document', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View document', 'modules/test/listview_document.php', 'Document', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete document', 'modules/test/delete_document.php', 'Delete Document', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add migration', 'modules/test/add_migration.php', 'Add Migration', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit migration', 'modules/test/edit_migration.php', 'Edit Migration', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View migration', 'modules/test/listview_migration.php', 'Migration', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete migration', 'modules/test/delete_migration.php', 'Delete Migration', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add org', 'modules/test/add_org.php', 'Add Org', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit org', 'modules/test/edit_org.php', 'Edit Org', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View org', 'modules/test/listview_org.php', 'Org', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete org', 'modules/test/delete_org.php', 'Delete Org', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add org rep', 'modules/test/add_org_rep.php', 'Add Org Rep', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit org rep', 'modules/test/edit_org_rep.php', 'Edit Org Rep', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View org rep', 'modules/test/listview_org_rep.php', 'Org Rep', '', 1, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete org rep', 'modules/test/delete_org_rep.php', 'Delete Org Rep', '', 1, 'No', 'On', 'form3.png', 0),
(69, 'Add sao', 'modules/test/add_sao.php', 'Add Sao', '', 1, 'No', 'On', 'form3.png', 0),
(70, 'Edit sao', 'modules/test/edit_sao.php', 'Edit Sao', '', 1, 'No', 'On', 'form3.png', 0),
(71, 'View sao', 'modules/test/listview_sao.php', 'Sao', '', 1, 'Yes', 'On', 'form3.png', 0),
(72, 'Delete sao', 'modules/test/delete_sao.php', 'Delete Sao', '', 1, 'No', 'On', 'form3.png', 0),
(73, 'Add student affair head', 'modules/test/add_student affair head.php', 'Add Student Affair Head', '', 1, 'No', 'On', 'form3.png', 0),
(74, 'Edit student affair head', 'modules/test/edit_student affair head.php', 'Edit Student Affair Head', '', 1, 'No', 'On', 'form3.png', 0),
(75, 'View student affair head', 'modules/test/listview_student affair head.php', 'Student Affair Head', '', 1, 'Yes', 'On', 'form3.png', 0),
(76, 'Delete student affair head', 'modules/test/delete_student affair head.php', 'Delete Student Affair Head', '', 1, 'No', 'On', 'form3.png', 0);

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
('root', 57),
('root', 58),
('root', 59),
('root', 60),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 65),
('root', 66),
('root', 67),
('root', 68),
('root', 69),
('root', 70),
('root', 71),
('root', 72),
('root', 73),
('root', 74),
('root', 75),
('root', 76),
('sampleuser', 5),
('sampleuser', 30),
('sampleuser', 41),
('sampleuser', 42),
('sampleuser', 43),
('sampleuser', 44),
('sampleuser', 53),
('sampleuser', 54),
('sampleuser', 55),
('sampleuser', 56),
('sampleuser', 63),
('sampleuser', 65),
('sampleuser', 66),
('sampleuser', 67);

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
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(2, 1),
(2, 2),
(2, 3),
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
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(3, 5),
(3, 30),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 53),
(3, 54),
(3, 55),
(3, 56),
(3, 63),
(3, 65),
(3, 66),
(3, 67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`Adv_Id`,`Org_Org_Id`,`Org_SAO_SAO_Id`),
  ADD KEY `fk_Adviser_Org1_idx` (`Org_Org_Id`,`Org_SAO_SAO_Id`);

--
-- Indexes for table `calevent`
--
ALTER TABLE `calevent`
  ADD PRIMARY KEY (`calEvent_Id`,`SAO_SAO_Id`),
  ADD UNIQUE KEY `calEvent_Id_UNIQUE` (`calEvent_Id`),
  ADD KEY `fk_calEvent_SAO1_idx` (`SAO_SAO_Id`);

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
  ADD PRIMARY KEY (`docRequest_Id`,`SAO_SAO_Id`),
  ADD UNIQUE KEY `docRequest_Id_UNIQUE` (`docRequest_Id`),
  ADD KEY `fk_docRequest_SAO1_idx` (`SAO_SAO_Id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`Doc_Id`,`docRequest_docRequest_Id`,`docRequest_SAO_SAO_Id`,`Adviser_Adv_Id`,`Adviser_Org_Org_Id`,`Adviser_Org_SAO_SAO_Id`,`Student Affair Head_SAH_Id`,`SAO_SAO_Id`),
  ADD UNIQUE KEY `Doc_Id_UNIQUE` (`Doc_Id`),
  ADD KEY `fk_Document_docRequest1_idx` (`docRequest_docRequest_Id`,`docRequest_SAO_SAO_Id`),
  ADD KEY `fk_Document_Adviser1_idx` (`Adviser_Adv_Id`,`Adviser_Org_Org_Id`,`Adviser_Org_SAO_SAO_Id`),
  ADD KEY `fk_Document_Student Affair Head1_idx` (`Student Affair Head_SAH_Id`),
  ADD KEY `fk_Document_SAO1_idx` (`SAO_SAO_Id`);

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`Org_Id`,`SAO_SAO_Id`),
  ADD KEY `fk_Org_SAO_idx` (`SAO_SAO_Id`);

--
-- Indexes for table `org_rep`
--
ALTER TABLE `org_rep`
  ADD PRIMARY KEY (`Org_Rep_Id`,`Org_Org_Id`,`Org_SAO_SAO_Id`),
  ADD UNIQUE KEY `Org_Rep_Id_UNIQUE` (`Org_Rep_Id`),
  ADD KEY `fk_Org_Rep_Org1_idx` (`Org_Org_Id`,`Org_SAO_SAO_Id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `sao`
--
ALTER TABLE `sao`
  ADD PRIMARY KEY (`SAO_Id`);

--
-- Indexes for table `student affair head`
--
ALTER TABLE `student affair head`
  ADD PRIMARY KEY (`SAH_Id`);

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
-- AUTO_INCREMENT for table `adviser`
--
ALTER TABLE `adviser`
  MODIFY `Adv_Id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `org_rep`
--
ALTER TABLE `org_rep`
  MODIFY `Org_Rep_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sao`
--
ALTER TABLE `sao`
  MODIFY `SAO_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student affair head`
--
ALTER TABLE `student affair head`
  MODIFY `SAH_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
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
-- Constraints for table `adviser`
--
ALTER TABLE `adviser`
  ADD CONSTRAINT `fk_Adviser_Org1` FOREIGN KEY (`Org_Org_Id`,`Org_SAO_SAO_Id`) REFERENCES `org` (`Org_Id`, `SAO_SAO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `calevent`
--
ALTER TABLE `calevent`
  ADD CONSTRAINT `fk_calEvent_SAO1` FOREIGN KEY (`SAO_SAO_Id`) REFERENCES `sao` (`SAO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `calevent_has_org`
--
ALTER TABLE `calevent_has_org`
  ADD CONSTRAINT `fk_calEvent_has_Org_Org1` FOREIGN KEY (`Org_Org_Id`,`Org_SAO_SAO_Id`) REFERENCES `org` (`Org_Id`, `SAO_SAO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calEvent_has_Org_calEvent1` FOREIGN KEY (`calEvent_calEvent_Id`,`calEvent_SAO_SAO_Id`) REFERENCES `calevent` (`calEvent_Id`, `SAO_SAO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `docrequest`
--
ALTER TABLE `docrequest`
  ADD CONSTRAINT `fk_docRequest_SAO1` FOREIGN KEY (`SAO_SAO_Id`) REFERENCES `sao` (`SAO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
