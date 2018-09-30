# Host: localhost  (Version: 5.5.53)
# Date: 2018-06-21 18:33:08
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tp_loginlog"
#

DROP TABLE IF EXISTS `tp_loginlog`;
CREATE TABLE `tp_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `login_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登录日志';

#
# Data for table "tp_loginlog"
#

/*!40000 ALTER TABLE `tp_loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_loginlog` ENABLE KEYS */;

#
# Structure for table "tp_node"
#

DROP TABLE IF EXISTS `tp_node`;
CREATE TABLE `tp_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_category` varchar(255) DEFAULT NULL COMMENT '节点分类',
  `node_name` varchar(255) DEFAULT NULL COMMENT '节点名称',
  `node_url` varchar(255) DEFAULT NULL COMMENT '节点地址',
  `node_describe` varchar(255) DEFAULT NULL COMMENT '节点功能描述',
  `is_nav` tinyint(1) DEFAULT NULL COMMENT '是否左侧导航,是1, 不是0',
  `sort` tinyint(3) DEFAULT NULL COMMENT '排序',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='节点表(权限)';

#
# Data for table "tp_node"
#


#
# Structure for table "tp_operationlog"
#

DROP TABLE IF EXISTS `tp_operationlog`;
CREATE TABLE `tp_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='操作日志';

#
# Data for table "tp_operationlog"
#

/*!40000 ALTER TABLE `tp_operationlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_operationlog` ENABLE KEYS */;

#
# Structure for table "tp_plan"
#

DROP TABLE IF EXISTS `tp_plan`;
CREATE TABLE `tp_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '教案标题',
  `content` text COMMENT '教案内容',
  `user_id` tinyint(3) DEFAULT NULL COMMENT '对应user表id',
  `add_time` datetime DEFAULT NULL,
  `sort` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='教案表';

#
# Data for table "tp_plan"
#

/*!40000 ALTER TABLE `tp_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_plan` ENABLE KEYS */;

#
# Structure for table "tp_role"
#

DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_describe` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `add_time` datetime DEFAULT NULL COMMENT '角色添加时间',
  `node_ids` text COMMENT '拥有的权限节点',
  `sort` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

#
# Data for table "tp_role"
#


#
# Structure for table "tp_user"
#

DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别,0代表男,1代表女',
  `mobile_phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `grade` tinyint(1) DEFAULT NULL COMMENT '任课年级',
  `group` varchar(20) DEFAULT NULL COMMENT '任课组',
  `position` tinyint(1) DEFAULT NULL COMMENT '职位,0位老师,1为领导',
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '是否软删除1代表删除,0代表正常',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `role_id` tinyint(3) DEFAULT NULL COMMENT '角色ID',
  `sort` tinyint(3) DEFAULT '0',
  `login_count` int(11) DEFAULT '0' COMMENT '登录次数',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '累计登录时长',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

#
# Data for table "tp_user"
#

/*!40000 ALTER TABLE `tp_user` DISABLE KEYS */;
INSERT INTO `tp_user` VALUES (1,'admin','96e79218965eb72c92a549dd5a330112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tp_user` ENABLE KEYS */;
