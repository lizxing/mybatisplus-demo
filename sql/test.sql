DROP TABLE IF EXISTS user;

CREATE TABLE user
(
	id BIGINT(20) NOT NULL COMMENT '主键ID',
	name VARCHAR(30) NULL DEFAULT NULL COMMENT '姓名',
	age INT(11) NULL DEFAULT NULL COMMENT '年龄',
	email VARCHAR(50) NULL DEFAULT NULL COMMENT '邮箱',
	version INT(11) NOT NULL DEFAULT 1 COMMENT '版本号',
	PRIMARY KEY (id)
);

DELETE FROM user;

INSERT INTO user (id, name, age, email) VALUES
(1, 'Jone', 18, 'test1@baomidou.com'),
(2, 'Jack', 20, 'test2@baomidou.com'),
(3, 'Tom', 28, 'test3@baomidou.com'),
(4, 'Sandy', 21, 'test4@baomidou.com'),
(5, 'Billie', 24, 'test5@baomidou.com');


-- 增加逻辑删除字段
ALTER TABLE `test`.`user`
ADD COLUMN `deleted` int(2) NOT NULL DEFAULT 0 COMMENT '逻辑删除（1：已删除 2：未删除）'

-- 增加记录数据创建时间和更新时间
ALTER TABLE `test`.`user`
ADD COLUMN `create_time` datetime(0) NULL COMMENT '创建时间' AFTER `deleted`,
ADD COLUMN `update_time` datetime(0) NULL COMMENT '更新时间' AFTER `create_time`;

-- 增加记录数据创建时间和更新时间（数据库自动填充）
ALTER TABLE `test`.`user`
ADD COLUMN `create_time` datetime(0) NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间' AFTER `deleted`,
ADD COLUMN `update_time` datetime(0) NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间' AFTER `create_time`;