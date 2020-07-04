/*
Navicat MySQL Data Transfer

Source Server         : django
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : django

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-07-04 16:16:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '5', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '5', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '5', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '5', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '6', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '6', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '6', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '6', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '7', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '7', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '7', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '7', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '8', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '8', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '8', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '8', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '1', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '1', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '1', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '1', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '9', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '9', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '9', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '9', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add sqlmodel name', '2', 'add_sqlmodelname');
INSERT INTO `auth_permission` VALUES ('26', 'Can change sqlmodel name', '2', 'change_sqlmodelname');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete sqlmodel name', '2', 'delete_sqlmodelname');
INSERT INTO `auth_permission` VALUES ('28', 'Can view sqlmodel name', '2', 'view_sqlmodelname');
INSERT INTO `auth_permission` VALUES ('29', 'Can add auth user', '3', 'add_authuser');
INSERT INTO `auth_permission` VALUES ('30', 'Can change auth user', '3', 'change_authuser');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete auth user', '3', 'delete_authuser');
INSERT INTO `auth_permission` VALUES ('32', 'Can view auth user', '3', 'view_authuser');
INSERT INTO `auth_permission` VALUES ('33', 'Can add sqlmodel permission', '4', 'add_sqlmodelpermission');
INSERT INTO `auth_permission` VALUES ('34', 'Can change sqlmodel permission', '4', 'change_sqlmodelpermission');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete sqlmodel permission', '4', 'delete_sqlmodelpermission');
INSERT INTO `auth_permission` VALUES ('36', 'Can view sqlmodel permission', '4', 'view_sqlmodelpermission');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('19', 'pbkdf2_sha256$150000$a$Ew1nOjzYeaefm44tQakvSdTk6bZqr8L14ylatI67NLw=', null, '1', '123', '', '', '', '0', '1', '2020-07-04 08:08:39');
INSERT INTO `auth_user` VALUES ('20', 'pbkdf2_sha256$150000$a$Ew1nOjzYeaefm44tQakvSdTk6bZqr8L14ylatI67NLw=', '2020-07-04 08:14:15.819948', '1', '123@qq.com', '', '', '', '0', '1', '2020-07-04 08:12:12');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('2', 'MyModel', 'sqlmodelname');
INSERT INTO `django_content_type` VALUES ('3', 'MyModel', 'authuser');
INSERT INTO `django_content_type` VALUES ('4', 'MyModel', 'sqlmodelpermission');
INSERT INTO `django_content_type` VALUES ('5', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('6', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('7', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('8', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('9', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-04-27 06:20:07.134231');
INSERT INTO `django_migrations` VALUES ('2', 'MyModel', '0001_initial', '2020-05-26 02:07:16.688485');
INSERT INTO `django_migrations` VALUES ('3', 'MyModel', '0002_authuser_sqlmodelpermission', '2020-05-26 02:07:16.715423');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0001_initial', '2020-05-26 02:44:52.090610');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0001_initial', '2020-05-26 02:44:52.196797');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0002_logentry_remove_auto_add', '2020-05-26 02:44:52.504459');
INSERT INTO `django_migrations` VALUES ('7', 'admin', '0003_logentry_add_action_flag_choices', '2020-05-26 02:44:52.512465');
INSERT INTO `django_migrations` VALUES ('8', 'contenttypes', '0002_remove_content_type_name', '2020-05-26 02:44:52.843410');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0002_alter_permission_name_max_length', '2020-05-26 02:44:52.931889');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0003_alter_user_email_max_length', '2020-05-26 02:44:53.001745');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0004_alter_user_username_opts', '2020-05-26 02:44:53.018700');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0005_alter_user_last_login_null', '2020-05-26 02:44:53.064762');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0006_require_contenttypes_0002', '2020-05-26 02:44:53.068772');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0007_alter_validators_add_error_messages', '2020-05-26 02:44:53.077729');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0008_alter_user_username_max_length', '2020-05-26 02:44:53.118657');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0009_alter_user_last_name_max_length', '2020-05-26 02:44:53.161807');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0010_alter_group_name_max_length', '2020-05-26 02:44:53.286447');
INSERT INTO `django_migrations` VALUES ('18', 'auth', '0011_update_proxy_permissions', '2020-05-26 02:44:53.298415');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2020-05-26 02:44:53.368679');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('e283llpt3lfiwxgr4ukqy5qmlsiy44ua', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 06:10:13.637769');
INSERT INTO `django_session` VALUES ('72c9ctigm5n5n46azaxls78qg4escqe3', 0x4D5464684D474D354D6A637A5A54677A5954686A4E6A5A6C5A445668595749785A47566A5A5449324F5467304E6A41785A5441355A6A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F334C434A6659585630614639316332567958326C6B496A6F694E794973496C39686458526F5833567A5A584A66596D466A613256755A434936496D52715957356E6279356A62323530636D6C694C6D463164476775596D466A613256755A484D755457396B5A57784359574E725A57356B49697769583246316447686664584E6C636C396F59584E6F496A6F69496E303D, '2020-06-09 06:41:17.706887');
INSERT INTO `django_session` VALUES ('5o93cp1rcj39bv0bo23hopn7ihgtbwcr', 0x4D5464684D474D354D6A637A5A54677A5954686A4E6A5A6C5A445668595749785A47566A5A5449324F5467304E6A41785A5441355A6A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F334C434A6659585630614639316332567958326C6B496A6F694E794973496C39686458526F5833567A5A584A66596D466A613256755A434936496D52715957356E6279356A62323530636D6C694C6D463164476775596D466A613256755A484D755457396B5A57784359574E725A57356B49697769583246316447686664584E6C636C396F59584E6F496A6F69496E303D, '2020-06-09 06:42:03.749072');
INSERT INTO `django_session` VALUES ('s002m8czyeu6wq9jpmiofau2bnofo7iq', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 06:47:07.750806');
INSERT INTO `django_session` VALUES ('z4s7v392fcvi7pimhd7hgz8pwa2bvvjf', 0x4D5464684D474D354D6A637A5A54677A5954686A4E6A5A6C5A445668595749785A47566A5A5449324F5467304E6A41785A5441355A6A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F334C434A6659585630614639316332567958326C6B496A6F694E794973496C39686458526F5833567A5A584A66596D466A613256755A434936496D52715957356E6279356A62323530636D6C694C6D463164476775596D466A613256755A484D755457396B5A57784359574E725A57356B49697769583246316447686664584E6C636C396F59584E6F496A6F69496E303D, '2020-06-09 06:48:05.834811');
INSERT INTO `django_session` VALUES ('eyhax8hultc2xjin9z7r0gi879yzmms2', 0x4D5464684D474D354D6A637A5A54677A5954686A4E6A5A6C5A445668595749785A47566A5A5449324F5467304E6A41785A5441355A6A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F334C434A6659585630614639316332567958326C6B496A6F694E794973496C39686458526F5833567A5A584A66596D466A613256755A434936496D52715957356E6279356A62323530636D6C694C6D463164476775596D466A613256755A484D755457396B5A57784359574E725A57356B49697769583246316447686664584E6C636C396F59584E6F496A6F69496E303D, '2020-06-09 06:48:53.076726');
INSERT INTO `django_session` VALUES ('2h3r04x2fc462bb3pxa61gnbizqgc5t8', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 06:51:37.838756');
INSERT INTO `django_session` VALUES ('cz5ey8wxk3caymbftbevtcd1hwj9fi36', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 06:52:05.618005');
INSERT INTO `django_session` VALUES ('hcjxhutbhnifc8lh6fte28jlzq3zqv8f', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 06:56:02.843194');
INSERT INTO `django_session` VALUES ('62aucvfwh68t5lfy1gmr5ajmpnemeubo', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:12:26.933321');
INSERT INTO `django_session` VALUES ('xa5ycr12seincapgab0ekgt2mhvnftfh', 0x4D5464684D474D354D6A637A5A54677A5954686A4E6A5A6C5A445668595749785A47566A5A5449324F5467304E6A41785A5441355A6A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F334C434A6659585630614639316332567958326C6B496A6F694E794973496C39686458526F5833567A5A584A66596D466A613256755A434936496D52715957356E6279356A62323530636D6C694C6D463164476775596D466A613256755A484D755457396B5A57784359574E725A57356B49697769583246316447686664584E6C636C396F59584E6F496A6F69496E303D, '2020-06-09 09:12:51.455255');
INSERT INTO `django_session` VALUES ('jjwbb7gh32a439n403mqpu8ylb3njvxo', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:18:28.682727');
INSERT INTO `django_session` VALUES ('juty7wn1yxc0orimspcurpjbv2igb9on', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:19:54.722182');
INSERT INTO `django_session` VALUES ('xu44j5jofdrzdvf3sykzbc0k2p6un8qj', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:22:42.465636');
INSERT INTO `django_session` VALUES ('ycr4oxfdp4ky0jhj9w045uijqi8rmri8', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:23:06.460107');
INSERT INTO `django_session` VALUES ('k1z7yuqif4r07bo135rukvgfohbqlxvc', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:23:44.002873');
INSERT INTO `django_session` VALUES ('1a2t8sigwuro0zj55mdr2mmqt6vfp7ke', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:26:16.847259');
INSERT INTO `django_session` VALUES ('skfyaamrtl3iv3iajlqh56u4zeoo35sp', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:26:42.346144');
INSERT INTO `django_session` VALUES ('5p9j97nu22clssmpk187dsydd5c0ovhg', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:27:05.891451');
INSERT INTO `django_session` VALUES ('05mc4yoxpd05bs4d4rfdsqvdj3xf2srz', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:27:51.717454');
INSERT INTO `django_session` VALUES ('0qj2eze45alij6pmlx27ifzoa29gufcy', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:28:49.050046');
INSERT INTO `django_session` VALUES ('4q3upl1gxeczqz95ge5pfj2j9e1hf705', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:29:05.263836');
INSERT INTO `django_session` VALUES ('zpz59hzpcv24sav3c9a1uuk0cu9qb2hw', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:29:31.744963');
INSERT INTO `django_session` VALUES ('95vlg5e6jk79wujrqkcn84d9dgz0qwxm', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:31:03.756160');
INSERT INTO `django_session` VALUES ('fc6aegtzyvvpj96wounys1dzdhdfk7yc', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-06-09 09:31:39.262874');
INSERT INTO `django_session` VALUES ('j9wr8nf6ixf1h2emth5l8faw2mwnjncg', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:18:26.168530');
INSERT INTO `django_session` VALUES ('06bwv0msujreujcyrxynvuvrnke2c1b4', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:19:30.004012');
INSERT INTO `django_session` VALUES ('sgyr6b2nvthfsmkv9s31o0jz8wywqv2o', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:19:57.837156');
INSERT INTO `django_session` VALUES ('k0ap371rdx0ek2ezvnfjytafskmei7wx', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:20:13.291820');
INSERT INTO `django_session` VALUES ('ah94igu2a0odpsuteobq55ipz9anhjcr', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:21:37.226705');
INSERT INTO `django_session` VALUES ('uh8hvzi4g8h18ixxrw9jqhlrks34vwn6', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:22:19.308805');
INSERT INTO `django_session` VALUES ('11vnmq9ukiucbf2yem0vwctu14injst0', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:30:23.508983');
INSERT INTO `django_session` VALUES ('21mir60ogh62s4g3c9fxhhbnpkkg6j4n', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:31:46.489919');
INSERT INTO `django_session` VALUES ('kz87jfrfoywsppzeyuvzror2ieqi1tw9', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:52:19.609259');
INSERT INTO `django_session` VALUES ('nvohp81j41mg88rusbax9ucxtcof8gtv', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:53:06.793495');
INSERT INTO `django_session` VALUES ('c5xuy542youd2ckjye8i689r8sae7zje', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:54:52.525719');
INSERT INTO `django_session` VALUES ('prfchh2zuioyhle3s2rfelg0h15rbhfv', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 06:56:01.303285');
INSERT INTO `django_session` VALUES ('y98me1g8b8u4sjviss7gap8vaa5aucmt', 0x597A55784D4445354E7A646A5A545A694E444D7A4D545A695A4745345A6D5A694D4755354E7A686B595451304F446C69597A4A694E7A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F3366513D3D, '2020-07-18 07:36:13.651747');
INSERT INTO `django_session` VALUES ('q7rpm5hb79tji6568k16vnnxv8ocjuq4', 0x5A4449324E324D35595441324E44686A59574933596D4931595459794F544A6B4D5459304D444E6A4D44426C4D6A417A4E3245354E547037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F7866513D3D, '2020-07-18 07:37:00.443512');
INSERT INTO `django_session` VALUES ('cp0pg18lmurtbleonnq0kqk3cz3esyf4', 0x4E5445784E7A6C684D4755354D4455354E7A646B4F4464694E5463354D5451324F444E6D5932526C5A5759774D32566A596A4932596A7037496D6C7A583278765A326C75496A7030636E566C4C434A316332567958326C6B496A6F794D437769583246316447686664584E6C636C39705A434936496A497749697769583246316447686664584E6C636C396959574E725A57356B496A6F695A477068626D64764C6D4E76626E527961574975595856306143356959574E725A57356B6379354262477876643046736246567A5A584A7A5457396B5A57784359574E725A57356B49697769583246316447686664584E6C636C396F59584E6F496A6F694E6D4D314E6A4D334E32517A4F5451344E7A637A5A6D4E6D4F4459304E7A566A4F4756684E47466A4D4759785A6A4A6D596A45774E694A39, '2020-07-18 08:14:15.837898');

-- ----------------------------
-- Table structure for sqlmodel_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_admin_log`;
CREATE TABLE `sqlmodel_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for sqlmodel_content_type
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_content_type`;
CREATE TABLE `sqlmodel_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_content_type
-- ----------------------------
INSERT INTO `sqlmodel_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `sqlmodel_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `sqlmodel_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `sqlmodel_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `sqlmodel_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `sqlmodel_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `sqlmodel_content_type` VALUES ('7', 'SqlModel', 'test');

-- ----------------------------
-- Table structure for sqlmodel_group
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_group`;
CREATE TABLE `sqlmodel_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_group
-- ----------------------------

-- ----------------------------
-- Table structure for sqlmodel_migrations
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_migrations`;
CREATE TABLE `sqlmodel_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_migrations
-- ----------------------------
INSERT INTO `sqlmodel_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-08-27 08:01:01.227725');
INSERT INTO `sqlmodel_migrations` VALUES ('2', 'auth', '0001_initial', '2019-08-27 08:01:01.670243');
INSERT INTO `sqlmodel_migrations` VALUES ('3', 'admin', '0001_initial', '2019-08-27 08:01:03.288363');
INSERT INTO `sqlmodel_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-08-27 08:01:03.651565');
INSERT INTO `sqlmodel_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-08-27 08:01:03.673093');
INSERT INTO `sqlmodel_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-08-27 08:01:03.850922');
INSERT INTO `sqlmodel_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-08-27 08:01:03.984105');
INSERT INTO `sqlmodel_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-08-27 08:01:04.203821');
INSERT INTO `sqlmodel_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-08-27 08:01:04.216322');
INSERT INTO `sqlmodel_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-08-27 08:01:04.290345');
INSERT INTO `sqlmodel_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-08-27 08:01:04.292880');
INSERT INTO `sqlmodel_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-08-27 08:01:04.305385');
INSERT INTO `sqlmodel_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-08-27 08:01:04.403594');
INSERT INTO `sqlmodel_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-08-27 08:01:04.522767');
INSERT INTO `sqlmodel_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2019-08-27 08:01:04.630185');
INSERT INTO `sqlmodel_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2019-08-27 08:01:04.647761');
INSERT INTO `sqlmodel_migrations` VALUES ('17', 'sessions', '0001_initial', '2019-08-27 08:01:04.734591');
INSERT INTO `sqlmodel_migrations` VALUES ('18', 'SqlModel', '0001_initial', '2019-08-27 08:01:49.107963');

-- ----------------------------
-- Table structure for sqlmodel_name
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_name`;
CREATE TABLE `sqlmodel_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_name
-- ----------------------------
INSERT INTO `sqlmodel_name` VALUES ('1', 'user1');
INSERT INTO `sqlmodel_name` VALUES ('2', 'user2');
INSERT INTO `sqlmodel_name` VALUES ('3', 'user3');

-- ----------------------------
-- Table structure for sqlmodel_permission
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_permission`;
CREATE TABLE `sqlmodel_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_permission
-- ----------------------------
INSERT INTO `sqlmodel_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `sqlmodel_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `sqlmodel_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `sqlmodel_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `sqlmodel_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `sqlmodel_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `sqlmodel_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `sqlmodel_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `sqlmodel_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `sqlmodel_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `sqlmodel_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `sqlmodel_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `sqlmodel_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `sqlmodel_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `sqlmodel_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `sqlmodel_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `sqlmodel_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `sqlmodel_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `sqlmodel_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `sqlmodel_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `sqlmodel_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `sqlmodel_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `sqlmodel_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `sqlmodel_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `sqlmodel_permission` VALUES ('25', 'Can add test', '7', 'add_test');
INSERT INTO `sqlmodel_permission` VALUES ('26', 'Can change test', '7', 'change_test');
INSERT INTO `sqlmodel_permission` VALUES ('27', 'Can delete test', '7', 'delete_test');
INSERT INTO `sqlmodel_permission` VALUES ('28', 'Can view test', '7', 'view_test');

-- ----------------------------
-- Table structure for sqlmodel_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_permissions`;
CREATE TABLE `sqlmodel_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for sqlmodel_session
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_session`;
CREATE TABLE `sqlmodel_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_session
-- ----------------------------

-- ----------------------------
-- Table structure for sqlmodel_test
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_test`;
CREATE TABLE `sqlmodel_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_test
-- ----------------------------
INSERT INTO `sqlmodel_test` VALUES ('1', 'Google');
INSERT INTO `sqlmodel_test` VALUES ('2', 'Facebook');
INSERT INTO `sqlmodel_test` VALUES ('3', 'runoob');
INSERT INTO `sqlmodel_test` VALUES ('4', 'runoob');

-- ----------------------------
-- Table structure for sqlmodel_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sqlmodel_user_user_permissions`;
CREATE TABLE `sqlmodel_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sqlmodel_user_user_permissions
-- ----------------------------
