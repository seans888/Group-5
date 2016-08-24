-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2016 at 10:50 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `database_connection`
--

CREATE TABLE `database_connection` (
  `DB_Connection_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_Name` varchar(255) NOT NULL,
  `Hostname` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Database` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database_connection`
--

INSERT INTO `database_connection` (`DB_Connection_ID`, `Project_ID`, `DB_Connection_Name`, `Hostname`, `Username`, `Password`, `Database`) VALUES
('2cInlQMDYUQcmdEZDqOXTw', 'T2VyPTlIj+HFVg0NozCjBg', 'projDb', 'localhost', 'root', 'projDb_2016', 'sams_db');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `Page_ID` char(44) NOT NULL,
  `Page_Name` varchar(255) NOT NULL,
  `Generator` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`Page_ID`, `Page_Name`, `Generator`, `Description`) VALUES
('+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Add1', 'Add1.php', 'Standard input form'),
('alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Edit1', 'Edit1.php', 'Standard edit form'),
('AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'DetailView1', 'DetailView1.php', 'Detail View of a record'),
('Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'ListView', 'ListView1.php', 'List View of a table'),
('qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Delete1', 'Delete1.php', 'Standard record deletion page'),
('DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'CSVExport1', 'CSVExport1.php', 'Standard export data to CSV module'),
('X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'ReporterInterface1', 'ReporterInterface1.php', 'Default "custom reporting tool" interface'),
('/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'ReporterResult1', 'ReporterResult1.php', 'Default "custom reporting tool" result page'),
('EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'ReporterResultPDF1', 'ReporterResultPDF1.php', 'Default "custom reporting tool" PDF result');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Project_ID` char(44) NOT NULL,
  `Project_Name` varchar(255) NOT NULL,
  `Client_Name` varchar(255) NOT NULL,
  `Project_Description` text NOT NULL,
  `Base_Directory` varchar(255) NOT NULL,
  `Database_Connection_ID` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_ID`, `Project_Name`, `Client_Name`, `Project_Description`, `Base_Directory`, `Database_Connection_ID`) VALUES
('T2VyPTlIj+HFVg0NozCjBg', 'Student Activities Management System', 'APC Students Activities Office', 'The Student Activities Management System is a platform that will help the APC SAO to improve its performance and efficiency in terms of processing documents and managing event handling operations', 'test', '2cInlQMDYUQcmdEZDqOXTw');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `Table_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_ID` varchar(255) NOT NULL,
  `Table_Name` varchar(255) NOT NULL,
  `Remarks` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`Table_ID`, `Project_ID`, `DB_Connection_ID`, `Table_Name`, `Remarks`) VALUES
('UdGkk3lJ3u0jbnQDFE06nw', 'T2VyPTlIj+HFVg0NozCjBg', '2cInlQMDYUQcmdEZDqOXTw', 'docrequest', ''),
('Bk/bNp0UNkneBR9laE/8rQ', 'T2VyPTlIj+HFVg0NozCjBg', '2cInlQMDYUQcmdEZDqOXTw', 'docrequirement', ''),
('BjRYYlEnaiVf+gSNwniw7Q', 'T2VyPTlIj+HFVg0NozCjBg', '2cInlQMDYUQcmdEZDqOXTw', 'document', ''),
('lIb3nGBgH9582wYzTmY27Q', 'T2VyPTlIj+HFVg0NozCjBg', '2cInlQMDYUQcmdEZDqOXTw', 'org', ''),
('ueWOd9HRa3MfNHCgD6SjMg', 'T2VyPTlIj+HFVg0NozCjBg', '2cInlQMDYUQcmdEZDqOXTw', 'calevent', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields`
--

CREATE TABLE `table_fields` (
  `Field_ID` char(44) NOT NULL,
  `Table_ID` char(44) NOT NULL,
  `Field_Name` varchar(255) NOT NULL,
  `Data_Type` varchar(255) NOT NULL,
  `Nullable` varchar(255) NOT NULL,
  `Length` int(11) NOT NULL,
  `Attribute` varchar(255) NOT NULL,
  `Auto_Increment` char(1) NOT NULL,
  `Control_Type` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `In_Listview` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields`
--

INSERT INTO `table_fields` (`Field_ID`, `Table_ID`, `Field_Name`, `Data_Type`, `Nullable`, `Length`, `Attribute`, `Auto_Increment`, `Control_Type`, `Label`, `In_Listview`) VALUES
('9P6HtzMweq7qhqtaf/1V2g', 'ueWOd9HRa3MfNHCgD6SjMg', 'calEvent_Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Event ID', 'no'),
('gRqDMvCf++7sI0dCP2Qu0A', 'ueWOd9HRa3MfNHCgD6SjMg', 'calEvent_Name', 'varchar', 'NO', 45, 'none', 'N', 'textbox', 'Event Name', 'yes'),
('1I29uT0sVe9MaPLITHZx2A', 'ueWOd9HRa3MfNHCgD6SjMg', 'calEvent_Attendee', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Event Attendees', 'yes'),
('mzzLo1Y12SfXVF1jAqryww', 'ueWOd9HRa3MfNHCgD6SjMg', 'calEvent_Loc', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Event Location', 'yes'),
('zHyjWo0h8xSMnVh7yQMpbw', 'ueWOd9HRa3MfNHCgD6SjMg', 'calEvent_Time', 'varchar', 'NO', 4, 'none', 'N', 'textbox', 'Event Time', 'yes'),
('WWy5bYGyawppxavuL4suxg', 'ueWOd9HRa3MfNHCgD6SjMg', 'calEvent_Date', 'date', 'NO', 0, 'none', 'N', 'date controls', 'Event Date', 'yes'),
('ZdEn4Y1pvO70DpNYSp1I2g', 'UdGkk3lJ3u0jbnQDFE06nw', 'docRequest_Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Document Request ID', 'no'),
('1ds7Nibj7y/P/PVbXdFPXg', 'UdGkk3lJ3u0jbnQDFE06nw', 'docRequest_Title', 'varchar', 'NO', 45, 'none', 'N', 'textbox', 'Document Request Title', 'yes'),
('XOaaIdthtWISLpILwn05/g', 'UdGkk3lJ3u0jbnQDFE06nw', 'docRequest_Desc', 'varchar', 'NO', 45, 'none', 'N', 'textbox', 'Document Request Description', 'yes'),
('WHQzmYdL/Uba2e0mFiM+Kw', 'Bk/bNp0UNkneBR9laE/8rQ', 'id', 'integer', 'NO', 11, 'primary key', 'N', 'none', 'Document Requirement ID', 'no'),
('6XdiLtCa8PEXzjx8p38noA', 'Bk/bNp0UNkneBR9laE/8rQ', 'name', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Document Requirement Name', 'yes'),
('yrz0u0XrIurJgSsZOoKiIA', 'Bk/bNp0UNkneBR9laE/8rQ', 'spec', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Document Requirement Specification', 'yes'),
('qzqF1j+FDuu2qjbh6+d7DA', 'Bk/bNp0UNkneBR9laE/8rQ', 'user_id', 'integer', 'YES', 11, 'foreign key', '', 'none', 'User ID', 'no'),
('e/e4DnnVSDWO9wfeeCCaKA', 'Bk/bNp0UNkneBR9laE/8rQ', 'org_id', 'integer', 'YES', 11, 'foreign key', '', 'none', 'Org ID', 'no'),
('bSGUgWqTQrAXzxlTJVrHNQ', 'BjRYYlEnaiVf+gSNwniw7Q', 'Doc_Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Document ID', 'no'),
('7XSslebIRQ7Fpig7nS+TLg', 'BjRYYlEnaiVf+gSNwniw7Q', 'Doc_Name', 'varchar', 'NO', 45, 'none', 'N', 'textbox', 'Document Name', 'yes'),
('kvYzbA8udIcnyrgsoyjZDQ', 'BjRYYlEnaiVf+gSNwniw7Q', 'Doc_Description', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Document Description', 'yes'),
('0hbjQTV8qeTxWMwMasg6CQ', 'BjRYYlEnaiVf+gSNwniw7Q', 'docRequest_docRequest_Id', 'integer', 'YES', 11, 'foreign key', 'N', 'none', 'DocRequest DocRequest ID', 'no'),
('X3GPSBeAmo82Jz6Ez8jNBQ', 'lIb3nGBgH9582wYzTmY27Q', 'user_id', 'integer', 'YES', 11, 'foreign key', '', 'none', 'User ID', 'no'),
('JEIUYsrH899SpvfDnfnRzA', 'UdGkk3lJ3u0jbnQDFE06nw', 'user_id', 'integer', 'YES', 11, 'foreign key', '', 'none', 'User ID', 'no'),
('7n709hfDx03bt6fXkDqqpA', 'BjRYYlEnaiVf+gSNwniw7Q', 'user_id', 'integer', 'YES', 11, 'foreign key', '', 'none', 'User ID', 'no'),
('RZ/9El3hCo0NTENEwP4R4A', 'lIb3nGBgH9582wYzTmY27Q', 'Org_Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Organization ID', 'no'),
('krg7g4dIyOueVACYDPuFxQ', 'lIb3nGBgH9582wYzTmY27Q', 'Org_Name', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Organization Name', 'yes'),
('hqjFmbGDWjUteXDrrzKwWQ', 'lIb3nGBgH9582wYzTmY27Q', 'Org_Representative', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Organization Representative', 'yes'),
('pn9NIISC95+N0FGQqY5l9Q', 'lIb3nGBgH9582wYzTmY27Q', 'Org_Members', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Organization Members', 'yes'),
('tLKtvQW5IuVzAnbV8MytSg', 'lIb3nGBgH9582wYzTmY27Q', 'Org_Contact', 'varchar', 'YES', 45, 'none', 'N', 'textbox', 'Organization Contact', 'yes'),
('mc/5dM8vxKw3KRqhrq6JTg', 'lIb3nGBgH9582wYzTmY27Q', 'Org_Dept', 'varchar', 'NO', 45, 'none', 'N', 'textbox', 'Organization Department', 'yes'),
('Ut5E4rN1gQGxdGh6qLB5Sg', 'ueWOd9HRa3MfNHCgD6SjMg', 'user_id', 'integer', 'YES', 11, 'foreign key', '', 'none', 'User ID', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_book_list`
--

CREATE TABLE `table_fields_book_list` (
  `Field_ID` char(44) NOT NULL,
  `Book_List_Generator` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list`
--

CREATE TABLE `table_fields_list` (
  `Field_ID` char(44) NOT NULL,
  `List_ID` char(44) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_select`
--

CREATE TABLE `table_fields_list_source_select` (
  `Field_ID` char(44) NOT NULL,
  `Auto_ID` int(11) NOT NULL,
  `Select_Field_ID` char(44) NOT NULL,
  `Display` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_where`
--

CREATE TABLE `table_fields_list_source_where` (
  `Field_ID` char(44) NOT NULL,
  `Where_Field_ID` char(44) NOT NULL,
  `Where_Field_Operand` varchar(20) NOT NULL,
  `Where_Field_Value` varchar(200) NOT NULL,
  `Where_Field_Connector` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list`
--

CREATE TABLE `table_fields_predefined_list` (
  `List_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `List_Name` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list`
--

INSERT INTO `table_fields_predefined_list` (`List_ID`, `Project_ID`, `List_Name`, `Remarks`) VALUES
('LHu3NbqcqTZc8acwDsz12g', 'T2VyPTlIj+HFVg0NozCjBg', 'Male/Female', 'Male/Female gender list'),
('W5Z5xm6CcWR86HtElVXfpA', 'T2VyPTlIj+HFVg0NozCjBg', 'On/Off', 'On/Off status list'),
('s7HxdxYfn6xXW9qwUPgYOg', 'T2VyPTlIj+HFVg0NozCjBg', 'TRUE/FALSE', 'TRUE/FALSE list'),
('wetmERTetO7YbGagFtU1wg', 'T2VyPTlIj+HFVg0NozCjBg', 'M/F', 'Single character male/female gender list'),
('ugp89mEEPLg4z+C+W6D1Mw', 'T2VyPTlIj+HFVg0NozCjBg', 'Yes/No', 'Yes/No list'),
('2iPFwAAq5ys6GAS/vCnBvw', 'T2VyPTlIj+HFVg0NozCjBg', 'Y/N', 'Single character yes/no list');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list_items`
--

CREATE TABLE `table_fields_predefined_list_items` (
  `List_ID` char(44) NOT NULL,
  `Number` int(11) NOT NULL,
  `List_Item` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list_items`
--

INSERT INTO `table_fields_predefined_list_items` (`List_ID`, `Number`, `List_Item`) VALUES
('LHu3NbqcqTZc8acwDsz12g', 1, 'Male'),
('LHu3NbqcqTZc8acwDsz12g', 2, 'Female'),
('W5Z5xm6CcWR86HtElVXfpA', 1, 'On'),
('W5Z5xm6CcWR86HtElVXfpA', 2, 'Off'),
('s7HxdxYfn6xXW9qwUPgYOg', 1, 'TRUE'),
('s7HxdxYfn6xXW9qwUPgYOg', 2, 'FALSE'),
('wetmERTetO7YbGagFtU1wg', 1, 'M'),
('wetmERTetO7YbGagFtU1wg', 2, 'F'),
('ugp89mEEPLg4z+C+W6D1Mw', 1, 'Yes'),
('ugp89mEEPLg4z+C+W6D1Mw', 2, 'No'),
('2iPFwAAq5ys6GAS/vCnBvw', 1, 'Y'),
('2iPFwAAq5ys6GAS/vCnBvw', 2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_secondary_validation`
--

CREATE TABLE `table_fields_secondary_validation` (
  `Field_ID` char(44) NOT NULL,
  `Validation_Routine` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_pages`
--

CREATE TABLE `table_pages` (
  `Table_ID` char(44) NOT NULL,
  `Page_ID` char(44) NOT NULL,
  `Path_Filename` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_pages`
--

INSERT INTO `table_pages` (`Table_ID`, `Page_ID`, `Path_Filename`) VALUES
('UdGkk3lJ3u0jbnQDFE06nw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'test/csv_docrequest.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'test/reporter_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'test/reporter_result_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'test/reporter_pdfresult_calevent.php'),
('UdGkk3lJ3u0jbnQDFE06nw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'test/add_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'test/edit_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'test/detailview_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'test/listview_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'test/delete_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'test/reporter_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'test/reporter_result_docrequest.php'),
('UdGkk3lJ3u0jbnQDFE06nw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'test/reporter_pdfresult_docrequest.php'),
('Bk/bNp0UNkneBR9laE/8rQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'test/add_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'test/edit_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'test/detailview_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'test/listview_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'test/delete_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'test/csv_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'test/reporter_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'test/reporter_result_docrequirement.php'),
('Bk/bNp0UNkneBR9laE/8rQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'test/reporter_pdfresult_docrequirement.php'),
('BjRYYlEnaiVf+gSNwniw7Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'test/add_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'test/edit_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'test/detailview_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'test/listview_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'test/delete_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'test/csv_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'test/reporter_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'test/reporter_result_document.php'),
('BjRYYlEnaiVf+gSNwniw7Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'test/reporter_pdfresult_document.php'),
('lIb3nGBgH9582wYzTmY27Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'test/add_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'test/edit_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'test/detailview_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'test/listview_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'test/delete_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'test/csv_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'test/reporter_org.php'),
('lIb3nGBgH9582wYzTmY27Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'test/reporter_result_org.php'),
('lIb3nGBgH9582wYzTmY27Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'test/reporter_pdfresult_org.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'test/csv_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'test/delete_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'test/listview_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'test/detailview_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'test/edit_calevent.php'),
('ueWOd9HRa3MfNHCgD6SjMg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'test/add_calevent.php');

-- --------------------------------------------------------

--
-- Table structure for table `table_relations`
--

CREATE TABLE `table_relations` (
  `Relation_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `Relation` varchar(255) NOT NULL,
  `Parent_Field_ID` char(44) NOT NULL,
  `Child_Field_ID` char(44) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Child_Field_Subtext` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `database_connection`
--
ALTER TABLE `database_connection`
  ADD PRIMARY KEY (`DB_Connection_ID`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`Page_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`Table_ID`),
  ADD KEY `DB_Connection_ID` (`DB_Connection_ID`),
  ADD KEY `Project_ID` (`Project_ID`);

--
-- Indexes for table `table_fields`
--
ALTER TABLE `table_fields`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_book_list`
--
ALTER TABLE `table_fields_book_list`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_list`
--
ALTER TABLE `table_fields_list`
  ADD PRIMARY KEY (`Field_ID`,`List_ID`);

--
-- Indexes for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  ADD PRIMARY KEY (`Field_ID`,`Auto_ID`);

--
-- Indexes for table `table_fields_list_source_where`
--
ALTER TABLE `table_fields_list_source_where`
  ADD PRIMARY KEY (`Field_ID`,`Where_Field_ID`,`Where_Field_Operand`,`Where_Field_Value`);

--
-- Indexes for table `table_fields_predefined_list`
--
ALTER TABLE `table_fields_predefined_list`
  ADD PRIMARY KEY (`List_ID`);

--
-- Indexes for table `table_fields_predefined_list_items`
--
ALTER TABLE `table_fields_predefined_list_items`
  ADD PRIMARY KEY (`List_ID`,`Number`);

--
-- Indexes for table `table_fields_secondary_validation`
--
ALTER TABLE `table_fields_secondary_validation`
  ADD PRIMARY KEY (`Field_ID`,`Validation_Routine`);

--
-- Indexes for table `table_pages`
--
ALTER TABLE `table_pages`
  ADD PRIMARY KEY (`Table_ID`,`Page_ID`);

--
-- Indexes for table `table_relations`
--
ALTER TABLE `table_relations`
  ADD PRIMARY KEY (`Relation_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  MODIFY `Auto_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
