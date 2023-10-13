# 数据库初始化

-- 创建库
create database if not exists tax_academy;

-- 切换库
use tax_academy;

-- 用户表
CREATE TABLE user
(
    id           bigint        NOT NULL AUTO_INCREMENT COMMENT 'id',
    userAccount  varchar(256)  NOT NULL COMMENT '账号',
    userPassword varchar(512)  NOT NULL COMMENT '密码',
    userName     varchar(256)  NULL     DEFAULT NULL COMMENT '用户昵称',
    userAvatar   varchar(1024) NULL     DEFAULT NULL COMMENT '用户头像',
    userProfile  varchar(512)  null comment '用户简介',
    userRole     varchar(256)  NOT NULL DEFAULT 'user' COMMENT 'user-普通用户 admin-管理员',
    gender       varchar(256)  NULL     DEFAULT NULL COMMENT '性别 男 女',
    phone        varchar(128)  NULL     DEFAULT NULL COMMENT '电话',
    email        varchar(512)  NULL     DEFAULT NULL COMMENT '邮箱',
    userStatus   int           NOT NULL DEFAULT 0 COMMENT '状态 0 - 正常 1-注销 2-封号',
    createTime   datetime      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updateTime   datetime      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    isDelete     tinyint       NOT NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (id) USING BTREE,
    INDEX idx_userAccount (userAccount) USING BTREE
) COLLATE = utf8mb4_unicode_ci COMMENT = '用户';
