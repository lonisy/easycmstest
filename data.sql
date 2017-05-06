-- 数据库名称 easycms.rdb

-- 栏目表 -- 111
-- 内容表 article
-- 友情连接表 links
-- 广告表,轮播,单图, ads
-- 文件表,图片,文件 files
-- 网站参数配置表 web_options
-- 留言记录表 clent_message

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户表主键',
  `app_id` int(11) DEFAULT '0' COMMENT '应用ID',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(64) DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) DEFAULT '2' COMMENT '性别: 1=>男性, 0=>女性, 2=>未知',
  `age` int(2) DEFAULT '0' COMMENT '年龄',
  `wechat` varchar(64) DEFAULT '' COMMENT '微信号',
  `qq` varchar(20) DEFAULT '' COMMENT 'QQ号码',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱',
  `remark` varchar(200) DEFAULT '' COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态: 1=>正常, 9=>禁止登入',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_index_user_id` (`user_id`) USING BTREE,
  KEY `cate_index_app_id` (`app_id`),
  KEY `cate_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';