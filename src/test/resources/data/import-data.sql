-- -----------------------------------------------------
-- 目录表测试数据
-- -----------------------------------------------------
INSERT INTO `CS_NODE` (`id`, `name`, `type`, `left_sibling`, `parent_id`, `display_order`) VALUES
(1, '小学三年级', 'NONE', 0, 0, 1),
(2, '英语', 'NONE', 0, 1, 5),
(3, '视频', 'MOVIE', 0, 2, 10),
(4, '其他', 'OTHER', 3, 2, 15),
(5, '小学四年级', 'NONE', 1, 0, 20),
(6, '英语', 'NONE', 0, 5, 25),
(7, '视频', 'MOVIE', 0, 6, 30),
(8, '其他', 'OTHER', 7, 6, 35),
(9, '小学五年级', 'NONE', 5, 0, 40),
(10, '英语', 'NONE', 0, 9, 45),
(11, '视频', 'MOVIE', 0, 10, 50),
(12, '其他', 'OTHER', 11, 10, 55);


-- -----------------------------------------------------
-- 目录邻接矩阵表测试数据
-- -----------------------------------------------------
INSERT INTO `CS_NODE_ADJ`(`c_id`, `p_id`, `p_len`) VALUES
(1, 1, 0),
(1, 0, 1),
(2, 2, 0),
(2, 1, 1),
(2, 0, 2),
(3, 3, 0),
(3, 0, 1),
(4, 4, 0),
(4, 2, 1),
(4, 1, 2),
(4, 0, 3),
(5, 5, 0),
(5, 3, 1),
(5, 0, 2),
(6, 6, 0),
(6, 1, 1),
(6, 0, 2),
(7, 7, 0),
(7, 1, 1),
(7, 0, 2);

-- -----------------------------------------------------
-- 文件表测试数据
-- -----------------------------------------------------
INSERT INTO `CS_FILE` (`id`, `node_id`, `custom_name`, `file_key`, `real_name`, `suffix`, `size`, `md5`, `CRC`, `download_count`, `shared`, `status`, `last_modified_date`, `created_date`, `deleted`) VALUES
(1, 2, 'aaa.jpg', 'ASKFAGERDFASDSDFAF', 'aaa.jpg', 'jpg', 10, 'ASDFASDFASDF', 'ASDFDF', 0, 1, 1, '2012-04-16 10:46:32', '1987-05-31 15:00:00', 0),
(2, 2, 'CCC.jpg', 'ASKFAGERDFASDSDFAF', 'aaa.jpg', 'jpg', 13, 'ASDFASDFASDF', 'ASDFAS', 0, 1, 1, '2012-04-16 10:46:32', '1987-05-31 15:00:00', 0);

-- -----------------------------------------------------
-- 用户测试数据
-- -----------------------------------------------------
INSERT INTO `CS_USER`(`id`, `group_id`, `email`, `username`, `password`, `salt`, `status`, `email_status`, `avatar_status`, `photo_url`, `time_offset`, `last_ip`, `last_time`, `last_act_time`, `last_modified_date`, `created_date`, `deleted`) VALUES
(1, 1, 'dreambt@qq.com', '纪柏涛', '691b14d79bf0fa2215f155235df5e670b64394cc', '7efbd59d9741d34f', 1, 1, 0, 'male.gif', '0800', 134744072, '1987-06-01 00:00:00', '1987-06-01 00:00:00', '2012-04-16 10:46:32', '1987-05-31 15:00:00', 0),
(2, 1, '826323891@qq.com', '董鹏飞', '691b14d79bf0fa2215f155235df5e670b64394cc', '7efbd59d9741d34f', 1, 0, 0, 'default.jpg', '0800', 134744072, '2012-04-16 18:47:40', '2012-04-16 18:47:40', '2012-04-16 11:22:07', '2012-04-16 10:47:44', 0),
(3, 1, 'zn@126.com', '张楠', '691b14d79bf0fa2215f155235df5e670b64394cc', '7efbd59d9741d34f', 1, 0, 0, 'default.jpg', '0800', 134744072, '2012-04-16 18:47:40', '2012-04-16 18:47:40', '2012-04-16 11:22:07', '2012-04-16 10:47:44', 1);


--
-- 转存表中的数据 `FTP_USER`
--
INSERT INTO `CS_FTP_USER` (`id`, `user_id`, `user_name`, `user_password`, `home_directory`, `enable_flag`, `write_permission`, `idle_time`, `upload_rate`, `download_rate`, `max_login_number`, `max_login_per_ip`, `deleted`, `last_modified_date`, `created_date`) VALUES
('1', '1', 'admin', '21232F297A57A5A743894A0E4A801FC3', '.', 1, 1, 0, 0, 0, 0, 0, 0, '2012-04-16 10:46:32', '1987-05-31 15:00:00'),
('2', '1', 'admin1', '21232F297A57A5A743894A0E4A801FC3', '.', 1, 1, 0, 0, 0, 0, 0, 1, '2012-04-16 10:46:32', '1987-05-31 15:00:00');

-- -----------------------------------------------------
-- 用户组测试数据
-- -----------------------------------------------------
INSERT INTO `CS_GROUP`(`id`, `group_name`) VALUES (1,'系统管理员');
INSERT INTO `CS_GROUP`(`id`, `group_name`) VALUES (2,'应用管理员');
INSERT INTO `CS_GROUP`(`id`, `group_name`) VALUES (3,'普通用户');


-- -----------------------------------------------------
-- 用户组权限测试数据
-- -----------------------------------------------------
INSERT INTO `CS_GROUP_PERMISSION` (`id`, `group_id`, `permission`) VALUES
(1, 1, 'app:create'),
(2, 1, 'app:update'),
(3, 1, 'app:save'),
(4, 1, 'app:list'),
(10, 2, 'user:create'),
(11, 2, 'user:update'),
(12, 2, 'user:save'),
(13, 2, 'user:list'),
(16, 2, 'group:create'),
(17, 2, 'group:update'),
(18, 2, 'group:save'),
(19, 2, 'group:list'),
(21, 2, 'file:create'),
(22, 2, 'file:update'),
(23, 2, 'file:save'),
(24, 2, 'file:list'),
(26, 2, 'node:create'),
(27, 2, 'node:update'),
(28, 2, 'node:save'),
(29, 2, 'node:list'),
(31, 2, 'ftpUser:create'),
(32, 2, 'ftpUser:update'),
(33, 2, 'ftpUser:save'),
(34, 2, 'ftpUser:list'),
(51, 3, 'user:update'),
(59, 3, 'group:list'),
(64, 3, 'file:list'),
(69, 3, 'node:list');
