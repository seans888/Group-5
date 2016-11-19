--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Security Level', 'HIGH'),
('Max Attachment Size (MB)', '0'),
('Max Attachment Width', '0'),
('Max Attachment Height', '0');
-- --------------------------------------------------------

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css','cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css','cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css','cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css','cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css','cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css','cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css','cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css','cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css','cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css','cobalt'),
(11, 'Warm Teal', 'skins/default_header.php', 'skins/default_footer.php', 'warm_teal_master.css', 'warm_teal_colors.css', 'warm_teal_fonts.css', 'warm_teal_override.css', 'cobalt'),
(12, 'Purple Rain', 'skins/default_header.php', 'skins/default_footer.php', 'purple_rain_master.css', 'purple_rain_colors.css', 'purple_rain_fonts.css', 'purple_rain_override.css', 'cobalt');


-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`,`priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', ''),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', ''),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', ''),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', ''),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', ''),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', ''),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', ''),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', ''),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', ''),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', ''),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', ''),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', ''),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', ''),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', ''),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', ''),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', ''),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', ''),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', ''),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', ''),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', ''),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', ''),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', ''),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', ''),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', ''),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', ''),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', ''),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', ''),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', ''),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', ''),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', ''),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', ''),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', ''),
(33, 'Add cobalt sst', 'sst/add_cobalt_sst.php', 'Add Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(34, 'Edit cobalt sst', 'sst/edit_cobalt_sst.php', 'Edit Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(35, 'View cobalt sst', 'sst/listview_cobalt_sst.php', 'Cobalt SST', '', 2, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete cobalt sst', 'sst/delete_cobalt_sst.php', 'Delete Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0);

-- --------------------------------------------------------

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
(2, 36);
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add calendar event', 'modules/calendar_event/add_calendar_event.php', 'Add Calendar Event','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit calendar event', 'modules/calendar_event/edit_calendar_event.php', 'Edit Calendar Event','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View calendar event', 'modules/calendar_event/listview_calendar_event.php', 'Calendar Event','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete calendar event', 'modules/calendar_event/delete_calendar_event.php', 'Delete Calendar Event','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add document', 'modules/document/add_document.php', 'Add Document','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit document', 'modules/document/edit_document.php', 'Edit Document','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View document', 'modules/document/listview_document.php', 'Document','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete document', 'modules/document/delete_document.php', 'Delete Document','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add org position', 'modules/org_position/add_org_position.php', 'Add Org Position','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit org position', 'modules/org_position/edit_org_position.php', 'Edit Org Position','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View org position', 'modules/org_position/listview_org_position.php', 'Org Position','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete org position', 'modules/org_position/delete_org_position.php', 'Delete Org Position','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add organization', 'modules/organization/add_organization.php', 'Add Organization','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit organization', 'modules/organization/edit_organization.php', 'Edit Organization','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View organization', 'modules/organization/listview_organization.php', 'Organization','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete organization', 'modules/organization/delete_organization.php', 'Delete Organization','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add share option', 'modules/share_option/add_share_option.php', 'Add Share Option','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit share option', 'modules/share_option/edit_share_option.php', 'Edit Share Option','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View share option', 'modules/share_option/listview_share_option.php', 'Share Option','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete share option', 'modules/share_option/delete_share_option.php', 'Delete Share Option','','1','No','On','form3.png');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '37');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '38');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '39');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '40');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '41');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '42');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '43');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '44');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '45');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '46');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '47');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '48');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '49');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '50');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '51');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '52');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '53');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '54');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '55');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '56');
INSERT `user_passport` SELECT 'root', `link_id` FROM user_role_links WHERE role_id='1'