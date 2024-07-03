/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t110`;
CREATE DATABASE IF NOT EXISTS `t110` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t110`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot5j0wf/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot5j0wf/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot5j0wf/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusswuzizixun`;
CREATE TABLE IF NOT EXISTS `discusswuzizixun` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621181067579 DEFAULT CHARSET=utf8mb3 COMMENT='物资资讯评论表';

DELETE FROM `discusswuzizixun`;
INSERT INTO `discusswuzizixun` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(91, '2021-05-16 15:58:07', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(92, '2021-05-16 15:58:07', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(93, '2021-05-16 15:58:07', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(94, '2021-05-16 15:58:07', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(95, '2021-05-16 15:58:07', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(96, '2021-05-16 15:58:07', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1621181067578, '2021-05-16 16:04:26', 71, 11, '用户1', 'dfgdfgsdfhdfhdfh', NULL);

DROP TABLE IF EXISTS `gonggaoxinxi`;
CREATE TABLE IF NOT EXISTS `gonggaoxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggaoxinxi`;
INSERT INTO `gonggaoxinxi` (`id`, `addtime`, `biaoti`, `tupian`, `gonggaoneirong`, `faburiqi`) VALUES
	(21, '2021-05-16 15:58:07', '标题1', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian1.jpg', '公告内容1', '2021-05-16'),
	(22, '2021-05-16 15:58:07', '标题2', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian2.jpg', '公告内容2', '2021-05-16'),
	(23, '2021-05-16 15:58:07', '标题3', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian3.jpg', '公告内容3', '2021-05-16'),
	(24, '2021-05-16 15:58:07', '标题4', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian4.jpg', '公告内容4', '2021-05-16'),
	(25, '2021-05-16 15:58:07', '标题5', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian5.jpg', '公告内容5', '2021-05-16'),
	(26, '2021-05-16 15:58:07', '标题6', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian6.jpg', '公告内容6', '2021-05-16');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621181051538 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1621181051537, '2021-05-16 16:04:10', 11, 21, 'gonggaoxinxi', '标题1', 'http://localhost:8080/springboot5j0wf/upload/gonggaoxinxi_tupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '397gvi127sly57419406p47ia4uxk9j0', '2021-05-16 16:01:57', '2024-02-16 07:23:21'),
	(2, 11, '用户1', 'yonghu', '用户', '2x3070g1979ksne6y1pqjtd33xzzamqj', '2021-05-16 16:04:09', '2024-02-16 07:24:41');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-16 15:58:07');

DROP TABLE IF EXISTS `wuzichuku`;
CREATE TABLE IF NOT EXISTS `wuzichuku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukudanhao` varchar(200) DEFAULT NULL COMMENT '出库单号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `chukuriqi` datetime DEFAULT NULL COMMENT '出库日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukudanhao` (`chukudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='物资出库';

DELETE FROM `wuzichuku`;
INSERT INTO `wuzichuku` (`id`, `addtime`, `chukudanhao`, `wuzimingcheng`, `wuzifenlei`, `shuliang`, `chukuriqi`) VALUES
	(61, '2021-05-16 15:58:07', '出库单号1', '物资名称1', '物资分类1', '数量1', '2021-05-16 23:58:07'),
	(62, '2021-05-16 15:58:07', '出库单号2', '物资名称2', '物资分类2', '数量2', '2021-05-16 23:58:07'),
	(63, '2021-05-16 15:58:07', '出库单号3', '物资名称3', '物资分类3', '数量3', '2021-05-16 23:58:07'),
	(64, '2021-05-16 15:58:07', '出库单号4', '物资名称4', '物资分类4', '数量4', '2021-05-16 23:58:07'),
	(65, '2021-05-16 15:58:07', '出库单号5', '物资名称5', '物资分类5', '数量5', '2021-05-16 23:58:07'),
	(66, '2021-05-16 15:58:07', '出库单号6', '物资名称6', '物资分类6', '数量6', '2021-05-16 23:58:07');

DROP TABLE IF EXISTS `wuzifenlei`;
CREATE TABLE IF NOT EXISTS `wuzifenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='物资分类';

DELETE FROM `wuzifenlei`;
INSERT INTO `wuzifenlei` (`id`, `addtime`, `wuzifenlei`) VALUES
	(31, '2021-05-16 15:58:07', '物资分类1'),
	(32, '2021-05-16 15:58:07', '物资分类2'),
	(33, '2021-05-16 15:58:07', '物资分类3'),
	(34, '2021-05-16 15:58:07', '物资分类4'),
	(35, '2021-05-16 15:58:07', '物资分类5'),
	(36, '2021-05-16 15:58:07', '物资分类6');

DROP TABLE IF EXISTS `wuziruku`;
CREATE TABLE IF NOT EXISTS `wuziruku` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukudanhao` varchar(200) DEFAULT NULL COMMENT '入库单号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `rukuriqi` datetime DEFAULT NULL COMMENT '入库日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukudanhao` (`rukudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='物资入库';

DELETE FROM `wuziruku`;
INSERT INTO `wuziruku` (`id`, `addtime`, `rukudanhao`, `wuzimingcheng`, `wuzifenlei`, `shuliang`, `rukuriqi`) VALUES
	(51, '2021-05-16 15:58:07', '入库单号1', '物资名称1', '物资分类1', '数量1', '2021-05-16 23:58:07'),
	(52, '2021-05-16 15:58:07', '入库单号2', '物资名称2', '物资分类2', '数量2', '2021-05-16 23:58:07'),
	(53, '2021-05-16 15:58:07', '入库单号3', '物资名称3', '物资分类3', '数量3', '2021-05-16 23:58:07'),
	(54, '2021-05-16 15:58:07', '入库单号4', '物资名称4', '物资分类4', '数量4', '2021-05-16 23:58:07'),
	(55, '2021-05-16 15:58:07', '入库单号5', '物资名称5', '物资分类5', '数量5', '2021-05-16 23:58:07'),
	(56, '2021-05-16 15:58:07', '入库单号6', '物资名称6', '物资分类6', '数量6', '2021-05-16 23:58:07');

DROP TABLE IF EXISTS `wuzixinxi`;
CREATE TABLE IF NOT EXISTS `wuzixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `wuzixiangqing` longtext COMMENT '物资详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='物资信息';

DELETE FROM `wuzixinxi`;
INSERT INTO `wuzixinxi` (`id`, `addtime`, `wuzimingcheng`, `tupian`, `wuzifenlei`, `guige`, `shuliang`, `wuzixiangqing`) VALUES
	(41, '2021-05-16 15:58:07', '物资名称1', 'http://localhost:8080/springboot5j0wf/upload/wuzixinxi_tupian1.jpg', '物资分类1', '规格1', '数量1', '物资详情1'),
	(42, '2021-05-16 15:58:07', '物资名称2', 'http://localhost:8080/springboot5j0wf/upload/wuzixinxi_tupian2.jpg', '物资分类2', '规格2', '数量2', '物资详情2'),
	(43, '2021-05-16 15:58:07', '物资名称3', 'http://localhost:8080/springboot5j0wf/upload/wuzixinxi_tupian3.jpg', '物资分类3', '规格3', '数量3', '物资详情3'),
	(44, '2021-05-16 15:58:07', '物资名称4', 'http://localhost:8080/springboot5j0wf/upload/wuzixinxi_tupian4.jpg', '物资分类4', '规格4', '数量4', '物资详情4'),
	(45, '2021-05-16 15:58:07', '物资名称5', 'http://localhost:8080/springboot5j0wf/upload/wuzixinxi_tupian5.jpg', '物资分类5', '规格5', '数量5', '物资详情5'),
	(46, '2021-05-16 15:58:07', '物资名称6', 'http://localhost:8080/springboot5j0wf/upload/wuzixinxi_tupian6.jpg', '物资分类6', '规格6', '数量6', '物资详情6');

DROP TABLE IF EXISTS `wuzizixun`;
CREATE TABLE IF NOT EXISTS `wuzizixun` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zixunxinxi` longtext COMMENT '资讯信息',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='物资资讯';

DELETE FROM `wuzizixun`;
INSERT INTO `wuzizixun` (`id`, `addtime`, `biaoti`, `tupian`, `zixunxinxi`, `faburiqi`, `thumbsupnum`, `crazilynum`) VALUES
	(71, '2021-05-16 15:58:07', '标题1', 'http://localhost:8080/springboot5j0wf/upload/wuzizixun_tupian1.jpg', '资讯信息1', '2021-05-16', 1, 1),
	(72, '2021-05-16 15:58:07', '标题2', 'http://localhost:8080/springboot5j0wf/upload/wuzizixun_tupian2.jpg', '资讯信息2', '2021-05-16', 2, 2),
	(73, '2021-05-16 15:58:07', '标题3', 'http://localhost:8080/springboot5j0wf/upload/wuzizixun_tupian3.jpg', '资讯信息3', '2021-05-16', 3, 3),
	(74, '2021-05-16 15:58:07', '标题4', 'http://localhost:8080/springboot5j0wf/upload/wuzizixun_tupian4.jpg', '资讯信息4', '2021-05-16', 4, 4),
	(75, '2021-05-16 15:58:07', '标题5', 'http://localhost:8080/springboot5j0wf/upload/wuzizixun_tupian5.jpg', '资讯信息5', '2021-05-16', 5, 5),
	(76, '2021-05-16 15:58:07', '标题6', 'http://localhost:8080/springboot5j0wf/upload/wuzizixun_tupian6.jpg', '资讯信息6', '2021-05-16', 6, 6);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `yonghuxingming`, `touxiang`, `xingbie`, `nianling`, `shoujihaoma`, `youxiang`) VALUES
	(11, '2021-05-16 15:58:07', '用户1', '123456', '用户姓名1', 'http://localhost:8080/springboot5j0wf/upload/yonghu_touxiang1.jpg', '男', 1, '13823888881', '773890001@qq.com'),
	(12, '2021-05-16 15:58:07', '用户2', '123456', '用户姓名2', 'http://localhost:8080/springboot5j0wf/upload/yonghu_touxiang2.jpg', '男', 2, '13823888882', '773890002@qq.com'),
	(13, '2021-05-16 15:58:07', '用户3', '123456', '用户姓名3', 'http://localhost:8080/springboot5j0wf/upload/yonghu_touxiang3.jpg', '男', 3, '13823888883', '773890003@qq.com'),
	(14, '2021-05-16 15:58:07', '用户4', '123456', '用户姓名4', 'http://localhost:8080/springboot5j0wf/upload/yonghu_touxiang4.jpg', '男', 4, '13823888884', '773890004@qq.com'),
	(15, '2021-05-16 15:58:07', '用户5', '123456', '用户姓名5', 'http://localhost:8080/springboot5j0wf/upload/yonghu_touxiang5.jpg', '男', 5, '13823888885', '773890005@qq.com'),
	(16, '2021-05-16 15:58:07', '用户6', '123456', '用户姓名6', 'http://localhost:8080/springboot5j0wf/upload/yonghu_touxiang6.jpg', '男', 6, '13823888886', '773890006@qq.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
