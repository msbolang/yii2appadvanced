-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-01-24 16:04:14
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('用户管理', '1', 1485270976),
('超级管理员', '1', 1485270990);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1485095128, 1485095128),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/default/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/default/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/menu/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/menu/create', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/menu/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/menu/update', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/menu/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/create', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/update', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/permission/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/assign', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/create', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/delete', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/remove', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/update', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/role/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/route/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/route/assign', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/route/create', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/route/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/route/remove', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/rule/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/rule/create', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/rule/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/rule/update', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/rule/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/activate', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/delete', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/login', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/logout', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/signup', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/admin/user/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/default/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/default/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/debug/default/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/default/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/default/action', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/default/diff', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/default/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/default/preview', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/gii/default/view', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/site/*', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/site/error', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/site/index', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/site/login', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/site/logout', 2, NULL, NULL, NULL, 1485264659, 1485264659),
('/user/*', 2, NULL, NULL, NULL, 1485270578, 1485270578),
('/user/create', 2, NULL, NULL, NULL, 1485270578, 1485270578),
('/user/delete', 2, NULL, NULL, NULL, 1485270578, 1485270578),
('/user/index', 2, NULL, NULL, NULL, 1485270578, 1485270578),
('/user/update', 2, NULL, NULL, NULL, 1485270578, 1485270578),
('/user/view', 2, NULL, NULL, NULL, 1485270578, 1485270578),
('用户管理', 2, '用户管理', NULL, NULL, 1485270593, 1485270593),
('超级管理员', 1, '超级管理员', NULL, NULL, 1485270769, 1485270769);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('用户管理', '/user/*'),
('用户管理', '/user/create'),
('用户管理', '/user/delete'),
('用户管理', '/user/index'),
('用户管理', '/user/update'),
('用户管理', '/user/view'),
('超级管理员', '用户管理');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'ODAC5fQfEzh-d7cFRSoftE7-9s45zI-d', '$2y$13$2ORSUXxlSsSfLVRgKBZbTuv.H81bnYqZJ/T5688flPJ/QMHZl8msq', NULL, 'admin@admin.com', 10, 1484974639, 1484974639),
(2, 'admin2', 'saddfdfs', 'fdssfee', 'adfadf', 'admin2@admin.com', 2, 1485272643, 1485272643);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
