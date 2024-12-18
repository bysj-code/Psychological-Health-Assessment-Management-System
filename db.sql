/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshengxinlijiankangpingce
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshengxinlijiankangpingce` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshengxinlijiankangpingce`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'123','/upload/1679305672331.jpg'),(2,'2','/upload/1679305679831.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'xinlijiankang_types','心理健康类型',1,'心理健康类型1',NULL,NULL,'2023-03-20 16:53:27'),(2,'xinlijiankang_types','心理健康类型',2,'心理健康类型2',NULL,NULL,'2023-03-20 16:53:27'),(3,'xinlijiankang_types','心理健康类型',3,'心理健康类型3',NULL,NULL,'2023-03-20 16:53:27'),(4,'shuju_types','数据类型',1,'文章',NULL,NULL,'2023-03-20 16:53:27'),(5,'shuju_types','数据类型',2,'视频',NULL,NULL,'2023-03-20 16:53:27'),(6,'xinlijiankang_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-20 16:53:27'),(7,'xinlijiankang_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-20 16:53:27'),(8,'xinlijiankang_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-20 16:53:27'),(9,'zhixunshi_chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-20 16:53:27'),(10,'zhixunshi_chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-20 16:53:27'),(11,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-20 16:53:27'),(12,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-20 16:53:27'),(13,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-03-20 16:53:27'),(14,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-03-20 16:53:27'),(15,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-03-20 16:53:27'),(16,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-03-20 16:53:27'),(17,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-03-20 16:53:27'),(18,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-03-20 16:53:27'),(19,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-03-20 16:53:27'),(20,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-03-20 16:53:27'),(21,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-20 16:53:27'),(22,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-20 16:53:27'),(23,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-20 16:53:27'),(24,'sex_types','性别',1,'男',NULL,NULL,'2023-03-20 16:53:27'),(25,'sex_types','性别',2,'女',NULL,NULL,'2023-03-20 16:53:27'),(26,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-20 16:53:27'),(27,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-20 16:53:27');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'心理测评1',123,198,1,1,1,'2023-03-20 17:07:32'),(2,'123',123,250,1,2,2,'2023-03-20 17:45:26'),(3,'123',123,100,1,1,2,'2023-03-20 17:46:04'),(4,'123',123,0,1,1,2,'2023-03-20 17:46:04');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (1,1,4,25,'2023-03-20 17:27:47'),(2,1,3,25,'2023-03-20 17:27:47'),(3,1,2,25,'2023-03-20 17:27:47'),(4,1,1,123,'2023-03-20 17:27:47'),(5,2,4,5,'2023-03-20 17:45:32'),(6,2,3,122,'2023-03-20 17:45:32'),(7,2,2,123,'2023-03-20 17:45:33'),(8,3,4,25,'2023-03-20 17:46:18'),(9,3,3,50,'2023-03-20 17:46:18'),(10,3,2,25,'2023-03-20 17:46:18');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'题目名称1','[]','123','123',4,100,'2023-03-20 17:07:51'),(2,'题目名称2','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','123',3,100,'2023-03-20 17:08:00'),(3,'题目名称3','[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','A,B','123',2,100,'2023-03-20 17:08:32'),(4,'题目名称4','[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','A','1',1,100,'2023-03-20 17:09:09');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试学生',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1679305400525',1,1,100,'2023-03-20 17:43:21','2023-03-20 17:43:21');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '学生id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1679305400525',1,1,'123',25,'2023-03-20 17:43:21'),(2,'1679305400525',1,2,'A',25,'2023-03-20 17:43:21'),(3,'1679305400525',1,3,'A,B',25,'2023-03-20 17:43:21'),(4,'1679305400525',1,4,'A',25,'2023-03-20 17:43:21');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhixunshi_id` int(11) DEFAULT NULL COMMENT '咨询师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`zhixunshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',390,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',38,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',240,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',306,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',190,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',429,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',345,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',501,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',394,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',402,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',244,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',261,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',172,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',125,1,'2023-03-20 16:54:38','2023-03-20 16:54:38','2023-03-20 16:54:38'),(15,NULL,1,NULL,NULL,'123123',14,2,'2023-03-20 17:44:23',NULL,'2023-03-20 17:44:23');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-20 16:54:38','公告详情1','2023-03-20 16:54:38'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-20 16:54:38','公告详情2','2023-03-20 16:54:38'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-20 16:54:38','公告详情3','2023-03-20 16:54:38'),(4,'公告标题4',1,'upload/news4.jpg','2023-03-20 16:54:38','公告详情4','2023-03-20 16:54:38'),(5,'公告标题5',2,'upload/news5.jpg','2023-03-20 16:54:38','公告详情5','2023-03-20 16:54:38'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-20 16:54:38','公告详情6','2023-03-20 16:54:38'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-20 16:54:38','公告详情7','2023-03-20 16:54:38'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-20 16:54:38','公告详情8','2023-03-20 16:54:38'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-20 16:54:38','公告详情9','2023-03-20 16:54:38'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-20 16:54:38','公告详情10','2023-03-20 16:54:38'),(11,'公告标题11',3,'upload/news11.jpg','2023-03-20 16:54:38','公告详情11','2023-03-20 16:54:38'),(12,'公告标题12',3,'upload/news12.jpg','2023-03-20 16:54:38','公告详情12','2023-03-20 16:54:38'),(13,'公告标题13',2,'upload/news13.jpg','2023-03-20 16:54:38','公告详情13','2023-03-20 16:54:38'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-20 16:54:38','公告详情14','2023-03-20 16:54:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','q6haoxxv9r6zeq1k8233fnfox4kcs920','2023-03-20 17:06:42','2023-03-20 18:53:29'),(2,1,'a1','yonghu','用户','gk70jhrgwhk5m09r4iidzf2olxijq5e5','2023-03-20 17:33:01','2023-03-20 18:41:23'),(3,1,'a1','zhixunshi','咨询师','cv7obr5jrf9cgjlm5cgu3sj1sh7sfas4','2023-03-20 17:44:40','2023-03-20 18:44:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xinlijiankang` */

DROP TABLE IF EXISTS `xinlijiankang`;

CREATE TABLE `xinlijiankang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhixunshi_id` int(11) DEFAULT NULL COMMENT '咨询师',
  `xinlijiankang_name` varchar(200) DEFAULT NULL COMMENT '心理健康标题 Search111',
  `xinlijiankang_photo` varchar(200) DEFAULT NULL COMMENT '心理健康照片',
  `xinlijiankang_video` varchar(200) DEFAULT NULL COMMENT '心理健康视频',
  `xinlijiankang_types` int(11) DEFAULT NULL COMMENT '心理健康类型 Search111',
  `shuju_types` int(11) DEFAULT NULL COMMENT '数据类型 Search111',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `xinlijiankang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `xinlijiankang_content` text COMMENT '心理健康详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='心理健康';

/*Data for the table `xinlijiankang` */

insert  into `xinlijiankang`(`id`,`zhixunshi_id`,`xinlijiankang_name`,`xinlijiankang_photo`,`xinlijiankang_video`,`xinlijiankang_types`,`shuju_types`,`zan_number`,`cai_number`,`xinlijiankang_delete`,`xinlijiankang_content`,`create_time`) values (1,2,'心理健康标题1','upload/xinlijiankang1.jpg','upload/video.mp4',2,2,238,84,1,'心理健康详情1','2023-03-20 16:54:38'),(2,2,'心理健康标题2','upload/xinlijiankang2.jpg','upload/video.mp4',3,2,94,192,1,'心理健康详情2','2023-03-20 16:54:38'),(3,1,'心理健康标题3','upload/xinlijiankang3.jpg','upload/video.mp4',1,1,216,190,1,'心理健康详情3','2023-03-20 16:54:38'),(4,3,'心理健康标题4','upload/xinlijiankang4.jpg','upload/video.mp4',2,1,53,245,1,'心理健康详情4','2023-03-20 16:54:38'),(5,1,'心理健康标题5','upload/xinlijiankang5.jpg','upload/video.mp4',3,2,155,225,1,'心理健康详情5','2023-03-20 16:54:38'),(6,2,'心理健康标题6','upload/xinlijiankang6.jpg','upload/video.mp4',3,2,21,467,1,'心理健康详情6','2023-03-20 16:54:38'),(7,1,'心理健康标题7','upload/xinlijiankang7.jpg','upload/video.mp4',2,2,439,196,1,'心理健康详情7','2023-03-20 16:54:38'),(8,2,'心理健康标题8','upload/xinlijiankang8.jpg','upload/video.mp4',3,2,29,52,1,'心理健康详情8','2023-03-20 16:54:38'),(9,1,'心理健康标题9','upload/xinlijiankang9.jpg','upload/video.mp4',3,1,461,133,1,'心理健康详情9','2023-03-20 16:54:38'),(10,1,'心理健康标题10','upload/xinlijiankang10.jpg','upload/video.mp4',3,1,318,234,1,'心理健康详情10','2023-03-20 16:54:38'),(11,1,'心理健康标题11','upload/xinlijiankang11.jpg','upload/video.mp4',2,1,420,462,1,'<p>心理健康详情11</p>','2023-03-20 16:54:38'),(12,1,'心理健康标题12','upload/xinlijiankang12.jpg','upload/video.mp4',1,2,96,305,1,'心理健康详情12','2023-03-20 16:54:38'),(13,3,'心理健康标题13','upload/xinlijiankang13.jpg','upload/video.mp4',1,2,42,147,1,'心理健康详情13','2023-03-20 16:54:38'),(14,3,'心理健康标题14','upload/xinlijiankang14.jpg','upload/video.mp4',1,2,353,61,1,'心理健康详情14','2023-03-20 16:54:38');

/*Table structure for table `xinlijiankang_collection` */

DROP TABLE IF EXISTS `xinlijiankang_collection`;

CREATE TABLE `xinlijiankang_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinlijiankang_id` int(11) DEFAULT NULL COMMENT '心理健康',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinlijiankang_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='心理健康收藏';

/*Data for the table `xinlijiankang_collection` */

insert  into `xinlijiankang_collection`(`id`,`xinlijiankang_id`,`yonghu_id`,`xinlijiankang_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(2,2,3,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(3,3,2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(4,4,2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(5,5,1,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(6,6,1,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(7,7,3,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(8,8,2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(10,10,3,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(11,11,3,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(12,12,1,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(13,13,2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(14,14,2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(15,14,1,1,'2023-03-20 17:41:35','2023-03-20 17:41:35');

/*Table structure for table `xinlijiankang_liuyan` */

DROP TABLE IF EXISTS `xinlijiankang_liuyan`;

CREATE TABLE `xinlijiankang_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinlijiankang_id` int(11) DEFAULT NULL COMMENT '心理健康',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinlijiankang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='心理健康留言';

/*Data for the table `xinlijiankang_liuyan` */

insert  into `xinlijiankang_liuyan`(`id`,`xinlijiankang_id`,`yonghu_id`,`xinlijiankang_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-03-20 16:54:38','回复信息1','2023-03-20 16:54:38','2023-03-20 16:54:38'),(2,2,2,'留言内容2','2023-03-20 16:54:38','回复信息2','2023-03-20 16:54:38','2023-03-20 16:54:38'),(3,3,2,'留言内容3','2023-03-20 16:54:38','回复信息3','2023-03-20 16:54:38','2023-03-20 16:54:38'),(4,4,1,'留言内容4','2023-03-20 16:54:38','回复信息4','2023-03-20 16:54:38','2023-03-20 16:54:38'),(5,5,1,'留言内容5','2023-03-20 16:54:38','回复信息5','2023-03-20 16:54:38','2023-03-20 16:54:38'),(6,6,3,'留言内容6','2023-03-20 16:54:38','回复信息6','2023-03-20 16:54:38','2023-03-20 16:54:38'),(7,7,1,'留言内容7','2023-03-20 16:54:38','回复信息7','2023-03-20 16:54:38','2023-03-20 16:54:38'),(8,8,1,'留言内容8','2023-03-20 16:54:38','回复信息8','2023-03-20 16:54:38','2023-03-20 16:54:38'),(9,9,1,'留言内容9','2023-03-20 16:54:38','回复信息9','2023-03-20 16:54:38','2023-03-20 16:54:38'),(10,10,1,'留言内容10','2023-03-20 16:54:38','回复信息10','2023-03-20 16:54:38','2023-03-20 16:54:38'),(11,11,3,'留言内容11','2023-03-20 16:54:38','回复信息11','2023-03-20 16:54:38','2023-03-20 16:54:38'),(12,12,2,'留言内容12','2023-03-20 16:54:38','回复信息12','2023-03-20 16:54:38','2023-03-20 16:54:38'),(13,13,2,'留言内容13','2023-03-20 16:54:38','回复信息13','2023-03-20 16:54:38','2023-03-20 16:54:38'),(14,14,3,'留言内容14','2023-03-20 16:54:38','回复信息14','2023-03-20 16:54:38','2023-03-20 16:54:38');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'upload/yonghu1.jpg','410224199010102001','17703786901','1@qq.com',1,'2023-03-20 16:54:38'),(2,'a2','123456','用户姓名2',1,'upload/yonghu2.jpg','410224199010102002','17703786902','2@qq.com',1,'2023-03-20 16:54:38'),(3,'a3','123456','用户姓名3',2,'upload/yonghu3.jpg','410224199010102003','17703786903','3@qq.com',1,'2023-03-20 16:54:38');

/*Table structure for table `zhixunshi` */

DROP TABLE IF EXISTS `zhixunshi`;

CREATE TABLE `zhixunshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhixunshi_name` varchar(200) DEFAULT NULL COMMENT '咨询师姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `zhixunshi_photo` varchar(200) DEFAULT NULL COMMENT '咨询师头像',
  `zhixunshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `zhixunshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhixunshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `zhixunshi_congye` varchar(200) DEFAULT NULL COMMENT '从业时长',
  `zhixunshi_shanchang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `zhixunshi_content` text COMMENT '个人简介',
  `zhixunshi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='咨询师';

/*Data for the table `zhixunshi` */

insert  into `zhixunshi`(`id`,`username`,`password`,`zhixunshi_name`,`sex_types`,`zhixunshi_photo`,`zhixunshi_id_number`,`zhixunshi_phone`,`zhixunshi_email`,`zhixunshi_congye`,`zhixunshi_shanchang`,`zhixunshi_content`,`zhixunshi_delete`,`create_time`) values (1,'a1','123456','咨询师姓名1',1,'upload/zhixunshi1.jpg','410224199010102001','17703786901','1@qq.com','从业时长1','擅长1','<p>个人简介1</p>',1,'2023-03-20 16:54:38'),(2,'a2','123456','咨询师姓名2',2,'upload/zhixunshi2.jpg','410224199010102002','17703786902','2@qq.com','从业时长2','擅长2','个人简介2',1,'2023-03-20 16:54:38'),(3,'a3','123456','咨询师姓名3',2,'upload/zhixunshi3.jpg','410224199010102003','17703786903','3@qq.com','从业时长3','擅长3','个人简介3',1,'2023-03-20 16:54:38');

/*Table structure for table `zhixunshi_chat` */

DROP TABLE IF EXISTS `zhixunshi_chat`;

CREATE TABLE `zhixunshi_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `zhixunshi_id` int(11) DEFAULT NULL COMMENT '回答人',
  `zhixunshi_chat_issue_text` text COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `zhixunshi_chat_reply_text` text COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `zhixunshi_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='心理咨询';

/*Data for the table `zhixunshi_chat` */

insert  into `zhixunshi_chat`(`id`,`yonghu_id`,`zhixunshi_id`,`zhixunshi_chat_issue_text`,`issue_time`,`zhixunshi_chat_reply_text`,`reply_time`,`zhuangtai_types`,`zhixunshi_chat_types`,`insert_time`,`create_time`) values (1,1,3,'问题1','2023-03-20 16:54:38','回复1','2023-03-20 16:54:38',1,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(2,1,1,'问题2','2023-03-20 16:54:38','回复2','2023-03-20 16:54:38',2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(3,3,3,'问题3','2023-03-20 16:54:38','回复3','2023-03-20 16:54:38',1,2,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(4,3,3,'问题4','2023-03-20 16:54:38','回复4','2023-03-20 16:54:38',1,2,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(5,3,3,'问题5','2023-03-20 16:54:38','回复5','2023-03-20 16:54:38',1,2,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(6,2,1,'问题6','2023-03-20 16:54:38','回复6','2023-03-20 16:54:38',1,2,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(7,3,1,'问题7','2023-03-20 16:54:38','回复7','2023-03-20 16:54:38',2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(8,2,1,'问题8','2023-03-20 16:54:38','回复8','2023-03-20 16:54:38',2,2,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(9,1,3,'问题9','2023-03-20 16:54:38','回复9','2023-03-20 16:54:38',2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(10,2,2,'问题10','2023-03-20 16:54:38','回复10','2023-03-20 16:54:38',2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(11,3,3,'问题11','2023-03-20 16:54:38','回复11','2023-03-20 16:54:38',1,2,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(12,1,1,'问题12','2023-03-20 16:54:38','回复12','2023-03-20 16:54:38',2,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(13,3,2,'问题13','2023-03-20 16:54:38','回复13','2023-03-20 16:54:38',1,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(14,1,2,'问题14','2023-03-20 16:54:38','回复14','2023-03-20 16:54:38',1,1,'2023-03-20 16:54:38','2023-03-20 16:54:38'),(15,1,3,'询问问题1231231','2023-03-20 17:43:03',NULL,NULL,1,1,'2023-03-20 17:43:03','2023-03-20 17:43:03'),(16,1,1,NULL,NULL,'12312123','2023-03-20 17:44:54',NULL,2,'2023-03-20 17:44:54','2023-03-20 17:44:54');

/*Table structure for table `zhixunshi_yuyue` */

DROP TABLE IF EXISTS `zhixunshi_yuyue`;

CREATE TABLE `zhixunshi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhixunshi_id` int(11) DEFAULT NULL COMMENT '咨询师',
  `zhixunshi_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `zhixunshi_yuyue_text` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='咨询师预约';

/*Data for the table `zhixunshi_yuyue` */

insert  into `zhixunshi_yuyue`(`id`,`zhixunshi_id`,`zhixunshi_yuyue_time`,`zhixunshi_yuyue_text`,`insert_time`,`create_time`) values (1,2,'2023-03-20 16:54:38','备注1','2023-03-20 16:54:38','2023-03-20 16:54:38'),(2,2,'2023-03-20 16:54:38','备注2','2023-03-20 16:54:38','2023-03-20 16:54:38'),(3,3,'2023-03-20 16:54:38','备注3','2023-03-20 16:54:38','2023-03-20 16:54:38'),(4,1,'2023-03-20 16:54:38','备注4','2023-03-20 16:54:38','2023-03-20 16:54:38'),(5,2,'2023-03-20 16:54:38','备注5','2023-03-20 16:54:38','2023-03-20 16:54:38'),(6,2,'2023-03-20 16:54:38','备注6','2023-03-20 16:54:38','2023-03-20 16:54:38'),(7,1,'2023-03-20 16:54:38','备注7','2023-03-20 16:54:38','2023-03-20 16:54:38'),(8,1,'2023-03-20 16:54:38','备注8','2023-03-20 16:54:38','2023-03-20 16:54:38'),(9,3,'2023-03-20 16:54:38','备注9','2023-03-20 16:54:38','2023-03-20 16:54:38'),(10,3,'2023-03-20 16:54:38','备注10','2023-03-20 16:54:38','2023-03-20 16:54:38'),(11,3,'2023-03-20 16:54:38','备注11','2023-03-20 16:54:38','2023-03-20 16:54:38'),(12,1,'2023-03-20 16:54:38','备注12','2023-03-20 16:54:38','2023-03-20 16:54:38'),(14,3,'2023-03-20 16:54:38','备注14','2023-03-20 16:54:38','2023-03-20 16:54:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;