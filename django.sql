/*
Navicat MySQL Data Transfer

Source Server         : django
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : django

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-05-25 16:56:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
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
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', '123456', '2020-03-03 16:51:45.000000', '1', 'hz', 'l', 'hz', '874035968@qq.com', '0', '0', '2020-03-10 16:51:38');
INSERT INTO `auth_user` VALUES ('7', 'pbkdf2_sha256$150000$yl4LeDcwjLfF$K8iqa5qYdtxqB8lHAwmpCtvZyh755+zYAXJXZroPea4=', null, '1', 'name', '', '', '132132@qq.com', '0', '0', '2020-03-02 16:51:38');
INSERT INTO `auth_user` VALUES ('9', 'pbkdf2_sha256$150000$cLerHJx4kJTh$cFbgC36VbKQOB71QfUPRBpiZRRSP4mDR9fTYOniONpA=', null, '1', '123', '', '', '123@qq.com', '0', '0', '2020-03-02 16:51:38');
INSERT INTO `auth_user` VALUES ('11', 'pbkdf2_sha256$150000$5R0LLa1tOIL1$cQoF7tJBgC46znR+a+sdRL6ky0fV1zdwV+b900trRu0=', null, '1', 'username', '', '', '5@qq.com', '0', '0', '2020-03-02 16:51:38');
INSERT INTO `auth_user` VALUES ('12', 'pbkdf2_sha256$150000$6udMi7e5eQ19$WentiFhnELtAxjdu089Q9lqO0C+2iOJEh2jQ6QJ4SmQ=', null, '1', '', '', '', '321@qq.com', '0', '0', '2020-05-25 08:39:59');

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
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-04-27 06:20:07.134231');

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
