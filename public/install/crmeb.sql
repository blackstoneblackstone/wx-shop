/*
 Navicat MySQL Data Transfer

 Source Server         : gitcrmeb
 Source Server Version : 50557
 Source Host           : 118.190.105.59
 Source Database       : gitcrmeb

 Target Server Version : 50557
 File Encoding         : utf-8

 Date: 09/26/2018 18:21:40 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `eb_article`
-- ----------------------------
DROP TABLE IF EXISTS `eb_article`;
CREATE TABLE `eb_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章管理ID',
  `cid` varchar(255) DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `author` varchar(255) DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '文章简介',
  `share_title` varchar(255) DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) DEFAULT NULL COMMENT '浏览次数',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '原文链接',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门(小程序)',
  `is_banner` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否轮播图(小程序)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章管理表';

-- ----------------------------
--  Records of `eb_article`
-- ----------------------------
BEGIN;
INSERT INTO `eb_article` VALUES ('1', '1', 'CRMEB微信公众号小程序用户管理+电商系统', 'honor', 'http://git.crmeb.net/uploads/7/20180926/5bab568069108.png', 'CRMEB 是基于Thinkphp5基础开发的以会员为中心的电商系统，开源版微信公众号商城和小程序商城数据同步，带积分、优惠券、秒杀、砍价、分销等功能，更是一套方便二次开发的商城框架（后台封装了独有快速创建表单功能，无需写表单页面、快速创建数据搜索和数据列表页、导出表格、系统权限配置控制每一个控制器方法、系统参数配置、数据字典、组合数据等）', null, null, '0', '0', '', '1', '1537955495', '0', '1', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `eb_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `eb_article_category`;
CREATE TABLE `eb_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章分类id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(255) NOT NULL COMMENT '文章分类标题',
  `intr` varchar(255) DEFAULT NULL COMMENT '文章分类简介',
  `image` varchar(255) NOT NULL COMMENT '文章分类图片',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1删除0未删除',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
--  Records of `eb_article_category`
-- ----------------------------
BEGIN;
INSERT INTO `eb_article_category` VALUES ('1', '0', '公司新闻', '公司新闻', '', '1', '0', '0', '1537955392', '0');
COMMIT;

-- ----------------------------
--  Table structure for `eb_article_content`
-- ----------------------------
DROP TABLE IF EXISTS `eb_article_content`;
CREATE TABLE `eb_article_content` (
  `nid` int(10) unsigned NOT NULL COMMENT '文章id',
  `content` text NOT NULL COMMENT '文章内容',
  UNIQUE KEY `nid` (`nid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章内容表';

-- ----------------------------
--  Records of `eb_article_content`
-- ----------------------------
BEGIN;
INSERT INTO `eb_article_content` VALUES ('1', '<h1 style=\"font-size: 2em; margin-bottom: 16px; font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; font-weight: 600; padding: 0em; min-height: 1rem; color: rgb(64, 72, 91); white-space: normal;\">CRMEB客户管理+电商管理系统</h1><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\"><a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><img src=\"https://img.shields.io/badge/OfficialWebsite-CRMEB-yellow.svg\" style=\"box-sizing: content-box; border-width: 0px; max-width: 100%; cursor: pointer;\"/>&nbsp;</a><a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><img src=\"https://img.shields.io/badge/Licence-MIT-green.svg?style=flat\" style=\"box-sizing: content-box; border-width: 0px; max-width: 100%; cursor: pointer;\"/>&nbsp;</a><a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><img src=\"https://img.shields.io/badge/Edition-2.5-blue.svg\" style=\"box-sizing: content-box; border-width: 0px; max-width: 100%; cursor: pointer;\"/>&nbsp;</a><a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><img src=\"https://img.shields.io/badge/download-59m-red.svg\" style=\"box-sizing: content-box; border-width: 0px; max-width: 100%; cursor: pointer;\"/></a></p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"本项目还在不断开发完善中如有建议或问题请在这里提出\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>本项目还在不断开发完善中,如有建议或问题请<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">在这里提出</a></h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">###如果对您有帮助，您可以点右上角 &quot;Star&quot; 支持一下 谢谢！</p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"项目介绍\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>项目介绍</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">基于ThinkPhp5.0+Vue+EasyWeChat 开发的一套CRMEB新零售商城系统</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB系统就是集客户关系管理+营销电商系统，能够真正帮助企业基于微信公众号、小程序、wap、pc、app等，实现会员管理、数据分析,精准营销的电子商务管理系统。可满足企业新零售、批发、分销、预约、O2O、多店等各种业务需求</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB的优势:快速积累客户、会员数据分析、智能转化客户、有效提高销售、会员维护；</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB二次开发：</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">1.本源码遵循MIT开源协议，系统采用TP5.0框架；</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">2.后台采用form-builder组件和后台多任务操作框架，方便快速开发增删改、封装layui.table 可快速开发数据列表页面、PHPExcel数据导出、数据库在线词典、日志小工具、系统参数配置、系统强大完善的权限控制、系统菜单配置、组合数据模型等这些都是为了方便二次开发而准备的；</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">3.前台vue封装了常用小工具，以及所有数据接口；</p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"技术亮点\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>技术亮点</h2><div class=\"white\" style=\"color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 25.6px; white-space: normal;\"><div class=\"highlight\" style=\"margin-bottom: 16px;\"><pre style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, &#39;Liberation Mono&#39;, &#39;Courier New&#39;, monospace; font-size: 13.6px; word-wrap: normal; padding: 16px; line-height: 1.45; border-radius: 3px; word-break: normal; tab-size: 4; background-color: rgb(246, 248, 250);\">    1.form-builder PHP快速生成表单；\n    2.前台Vue、RequireJS、node封装所有接口；\n    3.PHPExcel数据导出,导出表格更加美观,可视；\n    4.EasyWeChat部署微信开发,微信接入更加快捷,简单；\n    5.iview ui组件是HTML编写更加便捷；\n    6.后台多任务桌面化操作界面；\n    7.TP5.0+form-builder+layui.table自己封装快速二次开发；\n    8.一键安装</pre></div></div><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"功能\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>功能</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">1.商品: 能够对商品的状态分类管理 (出售中、待上架、库存中、已售馨、库存警戒、回收站)、添加产品、添加商品分类等功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">2.会员:站内会员的管理 (发放优惠劵、发通知、发图文消息、增加余额、会员行为详情)、站内通知 、微信端用户管理 (微信用 户的管理、分组、行为观察、添加标签) 等功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">3.营销:能够管理优惠的发放和制作、用户积分的统计使用情况、秒杀产品的管理等</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">4.财务:能够对用户的消费、充值、返佣的记录</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">5.订单:能够完成用户的订单管理(发货、订单详情、修改订单、订单备注、订单记录、订单退款) 、售后服务 (评论的回复与删除)</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">6.分销:后台有分销统计管理，分销可以设置人人分销和指定人分销，也可以自己稍微开发一下修改规则，例如下单后成为分销等</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">7.设置:能够完成管理员对网站的商品资料（添加大类、添加小类、商品添加、属性快速生成、商品审查）、商品交易（外理订单、发 货查询）、会员管理（会员审查）、操作管理（管理员添加、管理员审查、管理员退出）、系统配置、后台通知等功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">8.内容:管理文章分类 (添加分类、删除分类、修改分类) 、 管理文章</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">9.维护:查看系统日志、文件变动效验、刷新网站缓存、在线更新系统、清除数据等功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">10.强大的权限管理系统</p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"演示地址\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>演示地址</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">演示站后台:[<a href=\"http://undefined\" target=\"_blank\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">&nbsp;crmeb_v2.5&nbsp;</a>]<br/><a href=\"http://undefined\" target=\"_blank\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a><a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://demo25.crmeb.net</a>&nbsp;账号：demo 密码：crmeb.com</p><div style=\"color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 25.6px; white-space: normal;\"><table style=\"margin-top: 0px; margin-bottom: 16px; display: block; width: 942px; overflow: auto;\"><tbody><tr style=\"border-top-width: 1px; border-top-style: solid; border-top-color: rgb(198, 203, 209);\"><td style=\"padding: 6px 13px; border-color: rgb(223, 226, 229);\"><img src=\"https://images.gitee.com/uploads/images/2018/0828/182854_beba4aed_892944.png\" style=\"box-sizing: content-box; border-width: 0px; max-width: 100%; cursor: pointer;\"/><br/>公众号</td><td style=\"padding: 6px 13px; border-color: rgb(223, 226, 229);\"><img src=\"https://images.gitee.com/uploads/images/2018/0828/182909_cb2a5e64_892944.png\" style=\"box-sizing: content-box; border-width: 0px; max-width: 100%; cursor: pointer;\"/><br/>小程序</td></tr></tbody></table></div><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"付费版\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>付费版</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">淘宝超值版:</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB微信公众号v2.5版：除了以上功能还带砍价、拼团功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB微信小程序v2.5版：除了以上功能还带砍价、拼团功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB微信公众号小程序打通v2.5版：除了以上功能还带砍价、拼团功能 需要申请微信开放平台</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB微信公众号v2.0版：除了以上功能还带拼团功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">CRMEB微信小程序v2.0版：除了以上功能还带砍价、拼团功能</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">还有定制开发服务，例如：预约系统、O2O、付费阅读、多店版、多商家版</p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; padding: 0em; font-size: 1.25em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"详情-进入淘宝-\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>详情[<a href=\"http://undefined\" target=\"_blank\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">&nbsp;进入淘宝&nbsp;</a>]</h3><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">官网线下定制服务版：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://www.crmeb.com</a></p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"用法\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>用法</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">下载:</p><div class=\"white\" style=\"color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 25.6px; white-space: normal;\"><div class=\"highlight\" style=\"margin-bottom: 16px;\"><pre style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, &#39;Liberation Mono&#39;, &#39;Courier New&#39;, monospace; font-size: 13.6px; word-wrap: normal; padding: 16px; line-height: 1.45; border-radius: 3px; word-break: normal; tab-size: 4; background-color: rgb(246, 248, 250);\">Git clone https://gitee.com/ZhongBangKeJi/CRMEB.git\n或者\nGit clone https://github.com/sugar1569/CRMEB.git</pre></div></div><div class=\"white\" style=\"color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 25.6px; white-space: normal;\"><div class=\"highlight\" style=\"margin-bottom: 16px;\"><pre style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, &#39;Liberation Mono&#39;, &#39;Courier New&#39;, monospace; font-size: 13.6px; word-wrap: normal; padding: 16px; line-height: 1.45; border-radius: 3px; word-break: normal; tab-size: 4; background-color: rgb(246, 248, 250);\">文档地址:https://gitee.com/ZhongBangKeJi/CRMEB/wikis</pre></div></div><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"目录结构\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>目录结构</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">目录结构<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">查看</a>：</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">##问题反馈</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">在使用中有任何问题，请使用以下联系方式联系我们</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">QQ群: 116279623</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">Gitee:&nbsp;<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://gitee.com/ZhongBangKeJi/CRMEB/issues</a></p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; line-height: 1.25; margin: 24px 0em 16px; font-weight: 600; padding: 0em; font-size: 1.5em; color: rgb(64, 72, 91); white-space: normal;\"><a id=\"特别鸣谢\" class=\"anchor\" href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; float: left; padding-right: 4px; margin-left: -20px; line-height: 1; display: block; padding-left: 30px; position: absolute; top: 0px; left: 0px; bottom: 0px; outline: none; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"></a>特别鸣谢</h2><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">感谢以下的项目,排名不分先后</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">ThinkPHP：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://www.thinkphp.cn</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">Bootstrap：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://getbootstrap.com</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">jQuery：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://jquery.com</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">iView：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://www.iviewui.com</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">form-builder :&nbsp;<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://github.com/xaboy/form-builder（也是参与本项目开发的技术）</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">Vue：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://cn.vuejs.org/</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">font-awesome：&nbsp;<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://fontawesome.com/?from=io</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">animate：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://www.animate.co.jp/</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">requirejs：&nbsp;<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://requirejs.org/</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">umeditor：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://ueditor.baidu.com/website/umeditor.html</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">Php：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://www.php.net/</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">Mysql：<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://www.mysql.com/</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">微信公众号、微信小程序&nbsp;<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">https://mp.weixin.qq.com</a></p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">版权信息 CRMEB v2.3.* 遵循MIT开源协议发布，并提供免费使用。</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">本项目包含的第三方源码和二进制文件之版权信息另行标注。</p><p style=\"margin: 0px 0em 16px; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal;\">版权所有Copyright © 2017-2018 by CRMEB (<a href=\"http://undefined\" style=\"color: rgb(9, 94, 171); word-wrap: break-word; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">http://www.crmeb.com</a>)</p><p style=\"margin-top: 0px; margin-right: 0em; margin-left: 0em; line-height: 25.6px; word-break: break-word; color: rgb(64, 72, 91); font-family: -apple-system, BlinkMacSystemFont, &#39;Segoe UI&#39;, Helvetica, Arial, &#39;Apple Color Emoji&#39;, &#39;Segoe UI Emoji&#39;, &#39;Segoe UI Symbol&#39;, &#39;Liberation Sans&#39;, &#39;PingFang SC&#39;, &#39;Microsoft YaHei&#39;, &#39;Hiragino Sans GB&#39;, &#39;Wenquanyi Micro Hei&#39;, &#39;WenQuanYi Zen Hei&#39;, &#39;ST Heiti&#39;, SimHei, &#39;WenQuanYi Zen Hei Sharp&#39;, sans-serif; white-space: normal; margin-bottom: 0px !important;\">All rights reserved。</p><p><br/></p>');
COMMIT;

-- ----------------------------
--  Table structure for `eb_cache`
-- ----------------------------
DROP TABLE IF EXISTS `eb_cache`;
CREATE TABLE `eb_cache` (
  `key` varchar(32) NOT NULL,
  `result` text COMMENT '缓存数据',
  `add_time` int(10) DEFAULT NULL COMMENT '缓存时间',
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='记录缓存';

-- ----------------------------
--  Records of `eb_cache`
-- ----------------------------
BEGIN;
INSERT INTO `eb_cache` VALUES ('wechat_menus', '[{\"type\":\"view\",\"name\":\"\\u5546\\u57ce\\u9996\\u9875\",\"sub_button\":[],\"url\":\"http:\\/\\/shop.crmeb.net\\/wap\"},{\"type\":\"miniprogram\",\"name\":\"\\u5c0f\\u7a0b\\u5e8f\\u5546\\u57ce\",\"sub_button\":[],\"url\":\"pages\\/index\\/index\",\"appid\":\"wx7bc36cccc15e4be2\",\"pagepath\":\"pages\\/index\\/index\"},{\"type\":\"view\",\"name\":\"\\u4e2a\\u4eba\\u4e2d\\u5fc3\",\"sub_button\":[],\"url\":\"http:\\/\\/shop.crmeb.net\\/wap\\/my\\/index.html\"}]', '1532148956');
COMMIT;

-- ----------------------------
--  Table structure for `eb_express`
-- ----------------------------
DROP TABLE IF EXISTS `eb_express`;
CREATE TABLE `eb_express` (
  `id` mediumint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',
  `code` varchar(50) NOT NULL COMMENT '快递公司简称',
  `name` varchar(50) NOT NULL COMMENT '快递公司全称',
  `sort` int(11) NOT NULL COMMENT '排序',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COMMENT='快递公司表';

-- ----------------------------
--  Records of `eb_express`
-- ----------------------------
BEGIN;
INSERT INTO `eb_express` VALUES ('1', 'LIMINWL', '利民物流', '1', '1'), ('2', 'XINTIAN', '鑫天顺物流', '1', '1'), ('3', 'henglu', '恒路物流', '1', '1'), ('4', 'klwl', '康力物流', '1', '1'), ('5', 'meiguo', '美国快递', '1', '1'), ('6', 'a2u', 'A2U速递', '1', '1'), ('7', 'benteng', '奔腾物流', '1', '1'), ('8', 'ahdf', '德方物流', '1', '1'), ('9', 'timedg', '万家通', '1', '1'), ('10', 'ztong', '智通物流', '1', '1'), ('11', 'xindan', '新蛋物流', '1', '1'), ('12', 'bgpyghx', '挂号信', '1', '1'), ('13', 'XFHONG', '鑫飞鸿物流快递', '1', '1'), ('14', 'ALP', '阿里物流', '1', '1'), ('15', 'BFWL', '滨发物流', '1', '1'), ('16', 'SJWL', '宋军物流', '1', '1'), ('17', 'SHUNFAWL', '顺发物流', '1', '1'), ('18', 'TIANHEWL', '天河物流', '1', '1'), ('19', 'YBWL', '邮联物流', '1', '1'), ('20', 'SWHY', '盛旺货运', '1', '1'), ('21', 'TSWL', '汤氏物流', '1', '1'), ('22', 'YUANYUANWL', '圆圆物流', '1', '1'), ('23', 'BALIANGWL', '八梁物流', '1', '1'), ('24', 'ZGWL', '振刚物流', '1', '1'), ('25', 'JIAYU', '佳宇物流', '1', '1'), ('26', 'SHHX', '昊昕物流', '1', '1'), ('27', 'ande', '安得物流', '1', '1'), ('28', 'ppbyb', '贝邮宝', '1', '1'), ('29', 'dida', '递达快递', '1', '1'), ('30', 'jppost', '日本邮政', '1', '1'), ('31', 'intmail', '中国邮政', '96', '1'), ('32', 'HENGCHENGWL', '恒诚物流', '1', '1'), ('33', 'HENGFENGWL', '恒丰物流', '1', '1'), ('34', 'gdems', '广东ems快递', '1', '1'), ('35', 'xlyt', '祥龙运通', '1', '1'), ('36', 'gjbg', '国际包裹', '1', '1'), ('37', 'uex', 'UEX', '1', '1'), ('38', 'singpost', '新加坡邮政', '1', '1'), ('39', 'guangdongyouzhengwuliu', '广东邮政', '1', '1'), ('40', 'bht', 'BHT', '1', '1'), ('41', 'cces', 'CCES快递', '1', '1'), ('42', 'cloudexpress', 'CE易欧通国际速递', '1', '1'), ('43', 'dasu', '达速物流', '1', '1'), ('44', 'pfcexpress', '皇家物流', '1', '1'), ('45', 'hjs', '猴急送', '1', '1'), ('46', 'huilian', '辉联物流', '1', '1'), ('47', 'huanqiu', '环球速运', '1', '1'), ('48', 'huada', '华达快运', '1', '1'), ('49', 'htwd', '华通务达物流', '1', '1'), ('50', 'hipito', '海派通', '1', '1'), ('51', 'hqtd', '环球通达', '1', '1'), ('52', 'airgtc', '航空快递', '1', '1'), ('53', 'haoyoukuai', '好又快物流', '1', '1'), ('54', 'hanrun', '韩润物流', '1', '1'), ('55', 'ccd', '河南次晨达', '1', '1'), ('56', 'hfwuxi', '和丰同城', '1', '1'), ('57', 'Sky', '荷兰', '1', '1'), ('58', 'hongxun', '鸿讯物流', '1', '1'), ('59', 'hongjie', '宏捷国际物流', '1', '1'), ('60', 'httx56', '汇通天下物流', '1', '1'), ('61', 'lqht', '恒通快递', '1', '1'), ('62', 'jinguangsudikuaijian', '京广速递快件', '1', '1'), ('63', 'junfengguoji', '骏丰国际速递', '1', '1'), ('64', 'jiajiatong56', '佳家通', '1', '1'), ('65', 'jrypex', '吉日优派', '1', '1'), ('66', 'jinchengwuliu', '锦程国际物流', '1', '1'), ('67', 'jgwl', '景光物流', '1', '1'), ('68', 'pzhjst', '急顺通', '1', '1'), ('69', 'ruexp', '捷网俄全通', '1', '1'), ('70', 'jmjss', '金马甲', '1', '1'), ('71', 'lanhu', '蓝弧快递', '1', '1'), ('72', 'ltexp', '乐天速递', '1', '1'), ('73', 'lutong', '鲁通快运', '1', '1'), ('74', 'ledii', '乐递供应链', '1', '1'), ('75', 'lundao', '论道国际物流', '1', '1'), ('76', 'mailikuaidi', '麦力快递', '1', '1'), ('77', 'mchy', '木春货运', '1', '1'), ('78', 'meiquick', '美快国际物流', '1', '1'), ('79', 'valueway', '美通快递', '1', '1'), ('80', 'nuoyaao', '偌亚奥国际', '1', '1'), ('81', 'euasia', '欧亚专线', '1', '1'), ('82', 'pca', '澳大利亚PCA快递', '1', '1'), ('83', 'pingandatengfei', '平安达腾飞', '1', '1'), ('84', 'pjbest', '品骏快递', '1', '1'), ('85', 'qbexpress', '秦邦快运', '1', '1'), ('86', 'quanxintong', '全信通快递', '1', '1'), ('87', 'quansutong', '全速通国际快递', '1', '1'), ('88', 'qinyuan', '秦远物流', '1', '1'), ('89', 'qichen', '启辰国际物流', '1', '1'), ('90', 'quansu', '全速快运', '1', '1'), ('91', 'qzx56', '全之鑫物流', '1', '1'), ('92', 'qskdyxgs', '千顺快递', '1', '1'), ('93', 'runhengfeng', '全时速运', '1', '1'), ('94', 'rytsd', '日益通速递', '1', '1'), ('95', 'ruidaex', '瑞达国际速递', '1', '1'), ('96', 'shiyun', '世运快递', '1', '1'), ('97', 'sfift', '十方通物流', '1', '1'), ('98', 'stkd', '顺通快递', '1', '1'), ('99', 'bgn', '布谷鸟快递', '1', '1'), ('100', 'jiahuier', '佳惠尔快递', '1', '1'), ('101', 'pingyou', '小包', '1', '1'), ('102', 'yumeijie', '誉美捷快递', '1', '1'), ('103', 'meilong', '美龙快递', '1', '1'), ('104', 'guangtong', '广通速递', '1', '1'), ('105', 'STARS', '星晨急便', '1', '1'), ('106', 'NANHANG', '中国南方航空股份有限公司', '1', '1'), ('107', 'lanbiao', '蓝镖快递', '1', '1'), ('109', 'baotongda', '宝通达物流', '1', '1'), ('110', 'dashun', '大顺物流', '1', '1'), ('111', 'dada', '大达物流', '1', '1'), ('112', 'fangfangda', '方方达物流', '1', '1'), ('113', 'hebeijianhua', '河北建华物流', '1', '1'), ('114', 'haolaiyun', '好来运快递', '1', '1'), ('115', 'jinyue', '晋越快递', '1', '1'), ('116', 'kuaitao', '快淘快递', '1', '1'), ('117', 'peixing', '陪行物流', '1', '1'), ('118', 'hkpost', '香港邮政', '1', '1'), ('119', 'ytfh', '一统飞鸿快递', '1', '1'), ('120', 'zhongxinda', '中信达快递', '1', '1'), ('121', 'zhongtian', '中天快运', '1', '1'), ('122', 'zuochuan', '佐川急便', '1', '1'), ('123', 'chengguang', '程光快递', '1', '1'), ('124', 'cszx', '城市之星', '1', '1'), ('125', 'chuanzhi', '传志快递', '1', '1'), ('126', 'feibao', '飞豹快递', '1', '1'), ('127', 'huiqiang', '汇强快递', '1', '1'), ('128', 'lejiedi', '乐捷递', '1', '1'), ('129', 'lijisong', '成都立即送快递', '1', '1'), ('130', 'minbang', '民邦速递', '1', '1'), ('131', 'ocs', 'OCS国际快递', '1', '1'), ('132', 'santai', '三态速递', '1', '1'), ('133', 'saiaodi', '赛澳递', '1', '1'), ('134', 'jingdong', '京东快递', '1', '1'), ('135', 'zengyi', '增益快递', '1', '1'), ('136', 'fanyu', '凡宇速递', '1', '1'), ('137', 'fengda', '丰达快递', '1', '1'), ('138', 'coe', '东方快递', '1', '1'), ('139', 'ees', '百福东方快递', '1', '1'), ('140', 'disifang', '递四方速递', '1', '1'), ('141', 'rufeng', '如风达快递', '1', '1'), ('142', 'changtong', '长通物流', '1', '1'), ('143', 'chengshi100', '城市100快递', '1', '1'), ('144', 'feibang', '飞邦物流', '1', '1'), ('145', 'haosheng', '昊盛物流', '1', '1'), ('146', 'yinsu', '音速速运', '1', '1'), ('147', 'kuanrong', '宽容物流', '1', '1'), ('148', 'tongcheng', '通成物流', '1', '1'), ('149', 'tonghe', '通和天下物流', '1', '1'), ('150', 'zhima', '芝麻开门', '1', '1'), ('151', 'ririshun', '日日顺物流', '1', '1'), ('152', 'anxun', '安迅物流', '1', '1'), ('153', 'baiqian', '百千诚国际物流', '1', '1'), ('154', 'chukouyi', '出口易', '1', '1'), ('155', 'diantong', '店通快递', '1', '1'), ('156', 'dajin', '大金物流', '1', '1'), ('157', 'feite', '飞特物流', '1', '1'), ('159', 'gnxb', '国内小包', '1', '1'), ('160', 'huacheng', '华诚物流', '1', '1'), ('161', 'huahan', '华翰物流', '1', '1'), ('162', 'hengyu', '恒宇运通', '1', '1'), ('163', 'huahang', '华航快递', '1', '1'), ('164', 'jiuyi', '久易快递', '1', '1'), ('165', 'jiete', '捷特快递', '1', '1'), ('166', 'jingshi', '京世物流', '1', '1'), ('167', 'kuayue', '跨越快递', '1', '1'), ('168', 'mengsu', '蒙速快递', '1', '1'), ('169', 'nanbei', '南北快递', '1', '1'), ('171', 'pinganda', '平安达快递', '1', '1'), ('172', 'ruifeng', '瑞丰速递', '1', '1'), ('173', 'rongqing', '荣庆物流', '1', '1'), ('174', 'suijia', '穗佳物流', '1', '1'), ('175', 'simai', '思迈快递', '1', '1'), ('176', 'suteng', '速腾快递', '1', '1'), ('177', 'shengbang', '晟邦物流', '1', '1'), ('178', 'suchengzhaipei', '速呈宅配', '1', '1'), ('179', 'wuhuan', '五环速递', '1', '1'), ('180', 'xingchengzhaipei', '星程宅配', '1', '1'), ('181', 'yinjie', '顺捷丰达', '1', '1'), ('183', 'yanwen', '燕文物流', '1', '1'), ('184', 'zongxing', '纵行物流', '1', '1'), ('185', 'aae', 'AAE快递', '1', '1'), ('186', 'dhl', 'DHL快递', '1', '1'), ('187', 'feihu', '飞狐快递', '1', '1'), ('188', 'shunfeng', '顺丰速运', '92', '1'), ('189', 'spring', '春风物流', '1', '1'), ('190', 'yidatong', '易达通快递', '1', '1'), ('191', 'PEWKEE', '彪记快递', '1', '1'), ('192', 'PHOENIXEXP', '凤凰快递', '1', '1'), ('193', 'CNGLS', 'GLS快递', '1', '1'), ('194', 'BHTEXP', '华慧快递', '1', '1'), ('195', 'B2B', '卡行天下', '1', '1'), ('196', 'PEISI', '配思货运', '1', '1'), ('197', 'SUNDAPOST', '上大物流', '1', '1'), ('198', 'SUYUE', '苏粤货运', '1', '1'), ('199', 'F5XM', '伍圆速递', '1', '1'), ('200', 'GZWENJIE', '文捷航空速递', '1', '1'), ('201', 'yuancheng', '远成物流', '1', '1'), ('202', 'dpex', 'DPEX快递', '1', '1'), ('203', 'anjie', '安捷快递', '1', '1'), ('204', 'jldt', '嘉里大通', '1', '1'), ('205', 'yousu', '优速快递', '1', '1'), ('206', 'wanbo', '万博快递', '1', '1'), ('207', 'sure', '速尔物流', '1', '1'), ('208', 'sutong', '速通物流', '1', '1'), ('209', 'JUNCHUANWL', '骏川物流', '1', '1'), ('210', 'guada', '冠达快递', '1', '1'), ('211', 'dsu', 'D速快递', '1', '1'), ('212', 'LONGSHENWL', '龙胜物流', '1', '1'), ('213', 'abc', '爱彼西快递', '1', '1'), ('214', 'eyoubao', 'E邮宝', '1', '1'), ('215', 'aol', 'AOL快递', '1', '1'), ('216', 'jixianda', '急先达物流', '1', '1'), ('217', 'haihong', '山东海红快递', '1', '1'), ('218', 'feiyang', '飞洋快递', '1', '1'), ('219', 'rpx', 'RPX保时达', '1', '1'), ('220', 'zhaijisong', '宅急送', '1', '1'), ('221', 'tiantian', '天天快递', '99', '1'), ('222', 'yunwuliu', '云物流', '1', '1'), ('223', 'jiuye', '九曳供应链', '1', '1'), ('224', 'bsky', '百世快运', '1', '1'), ('225', 'higo', '黑狗物流', '1', '1'), ('226', 'arke', '方舟速递', '1', '1'), ('227', 'zwsy', '中外速运', '1', '1'), ('228', 'jxy', '吉祥邮', '1', '1'), ('229', 'aramex', 'Aramex', '1', '1'), ('230', 'guotong', '国通快递', '1', '1'), ('231', 'jiayi', '佳怡物流', '1', '1'), ('232', 'longbang', '龙邦快运', '1', '1'), ('233', 'minhang', '民航快递', '1', '1'), ('234', 'quanyi', '全一快递', '1', '1'), ('235', 'quanchen', '全晨快递', '1', '1'), ('236', 'usps', 'USPS快递', '1', '1'), ('237', 'xinbang', '新邦物流', '1', '1'), ('238', 'yuanzhi', '元智捷诚快递', '1', '1'), ('239', 'zhongyou', '中邮物流', '1', '1'), ('240', 'yuxin', '宇鑫物流', '1', '1'), ('241', 'cnpex', '中环快递', '1', '1'), ('242', 'shengfeng', '盛丰物流', '1', '1'), ('243', 'yuantong', '圆通速递', '97', '1'), ('244', 'jiayunmei', '加运美物流', '1', '1'), ('245', 'ywfex', '源伟丰快递', '1', '1'), ('246', 'xinfeng', '信丰物流', '1', '1'), ('247', 'wanxiang', '万象物流', '1', '1'), ('248', 'menduimen', '门对门', '1', '1'), ('249', 'mingliang', '明亮物流', '1', '1'), ('250', 'fengxingtianxia', '风行天下', '1', '1'), ('251', 'gongsuda', '共速达物流', '1', '1'), ('252', 'zhongtong', '中通快递', '100', '1'), ('253', 'quanritong', '全日通快递', '1', '1'), ('254', 'ems', 'EMS', '1', '1'), ('255', 'wanjia', '万家物流', '1', '1'), ('256', 'yuntong', '运通快递', '1', '1'), ('257', 'feikuaida', '飞快达物流', '1', '1'), ('258', 'haimeng', '海盟速递', '1', '1'), ('259', 'zhongsukuaidi', '中速快件', '1', '1'), ('260', 'yuefeng', '越丰快递', '1', '1'), ('261', 'shenghui', '盛辉物流', '1', '1'), ('262', 'datian', '大田物流', '1', '1'), ('263', 'quanjitong', '全际通快递', '1', '1'), ('264', 'longlangkuaidi', '隆浪快递', '1', '1'), ('265', 'neweggozzo', '新蛋奥硕物流', '1', '1'), ('266', 'shentong', '申通快递', '95', '1'), ('267', 'haiwaihuanqiu', '海外环球', '1', '1'), ('268', 'yad', '源安达快递', '1', '1'), ('269', 'jindawuliu', '金大物流', '1', '1'), ('270', 'sevendays', '七天连锁', '1', '1'), ('271', 'tnt', 'TNT快递', '1', '1'), ('272', 'huayu', '天地华宇物流', '1', '1'), ('273', 'lianhaotong', '联昊通快递', '1', '1'), ('274', 'nengda', '港中能达快递', '1', '1'), ('275', 'LBWL', '联邦物流', '1', '1'), ('276', 'ontrac', 'onTrac', '1', '1'), ('277', 'feihang', '原飞航快递', '1', '1'), ('278', 'bangsongwuliu', '邦送物流', '1', '1'), ('279', 'huaxialong', '华夏龙物流', '1', '1'), ('280', 'ztwy', '中天万运快递', '1', '1'), ('281', 'fkd', '飞康达物流', '1', '1'), ('282', 'anxinda', '安信达快递', '1', '1'), ('283', 'quanfeng', '全峰快递', '1', '1'), ('284', 'shengan', '圣安物流', '1', '1'), ('285', 'jiaji', '佳吉物流', '1', '1'), ('286', 'yunda', '韵达快运', '94', '1'), ('287', 'ups', 'UPS快递', '1', '1'), ('288', 'debang', '德邦物流', '1', '1'), ('289', 'yafeng', '亚风速递', '1', '1'), ('290', 'kuaijie', '快捷速递', '98', '1'), ('291', 'huitong', '百世快递', '93', '1'), ('293', 'aolau', 'AOL澳通速递', '1', '1'), ('294', 'anneng', '安能物流', '1', '1'), ('295', 'auexpress', '澳邮中国快运', '1', '1'), ('296', 'exfresh', '安鲜达', '1', '1'), ('297', 'bcwelt', 'BCWELT', '1', '1'), ('298', 'youzhengguonei', '挂号信', '1', '1'), ('299', 'xiaohongmao', '北青小红帽', '1', '1'), ('300', 'lbbk', '宝凯物流', '1', '1'), ('301', 'byht', '博源恒通', '1', '1'), ('302', 'idada', '百成大达物流', '1', '1'), ('303', 'baitengwuliu', '百腾物流', '1', '1'), ('304', 'birdex', '笨鸟海淘', '1', '1'), ('305', 'bsht', '百事亨通', '1', '1'), ('306', 'dayang', '大洋物流快递', '1', '1'), ('307', 'dechuangwuliu', '德创物流', '1', '1'), ('308', 'donghanwl', '东瀚物流', '1', '1'), ('309', 'dfpost', '达方物流', '1', '1'), ('310', 'dongjun', '东骏快捷物流', '1', '1'), ('311', 'dindon', '叮咚澳洲转运', '1', '1'), ('312', 'dazhong', '大众佐川急便', '1', '1'), ('313', 'decnlh', '德中快递', '1', '1'), ('314', 'dekuncn', '德坤供应链', '1', '1'), ('315', 'eshunda', '俄顺达', '1', '1'), ('316', 'ewe', 'EWE全球快递', '1', '1'), ('317', 'fedexuk', 'FedEx英国', '1', '1'), ('318', 'fox', 'FOX国际速递', '1', '1'), ('319', 'rufengda', '凡客如风达', '1', '1'), ('320', 'fandaguoji', '颿达国际快递', '1', '1'), ('321', 'hnfy', '飞鹰物流', '1', '1'), ('322', 'flysman', '飞力士物流', '1', '1'), ('323', 'sccod', '丰程物流', '1', '1'), ('324', 'farlogistis', '泛远国际物流', '1', '1'), ('325', 'gsm', 'GSM', '1', '1'), ('326', 'gaticn', 'GATI快递', '1', '1'), ('327', 'gts', 'GTS快递', '1', '1'), ('328', 'gangkuai', '港快速递', '1', '1'), ('329', 'gtsd', '高铁速递', '1', '1'), ('330', 'tiandihuayu', '华宇物流', '1', '1'), ('331', 'huangmajia', '黄马甲快递', '1', '1'), ('332', 'ucs', '合众速递', '1', '1'), ('333', 'huoban', '伙伴物流', '1', '1'), ('334', 'nedahm', '红马速递', '1', '1'), ('335', 'huiwen', '汇文配送', '1', '1'), ('336', 'nmhuahe', '华赫物流', '1', '1'), ('337', 'hangyu', '航宇快递', '1', '1'), ('338', 'minsheng', '闽盛物流', '1', '1'), ('339', 'riyu', '日昱物流', '1', '1'), ('340', 'sxhongmajia', '山西红马甲', '1', '1'), ('341', 'syjiahuier', '沈阳佳惠尔', '1', '1'), ('342', 'shlindao', '上海林道货运', '1', '1'), ('343', 'shunjiefengda', '顺捷丰达', '1', '1'), ('344', 'subida', '速必达物流', '1', '1'), ('345', 'bphchina', '速方国际物流', '1', '1'), ('346', 'sendtochina', '速递中国', '1', '1'), ('347', 'suning', '苏宁快递', '1', '1'), ('348', 'sihaiet', '四海快递', '1', '1'), ('349', 'tianzong', '天纵物流', '1', '1'), ('350', 'chinatzx', '同舟行物流', '1', '1'), ('351', 'nntengda', '腾达速递', '1', '1'), ('352', 'sd138', '泰国138', '1', '1'), ('353', 'tongdaxing', '通达兴物流', '1', '1'), ('354', 'tlky', '天联快运', '1', '1'), ('355', 'youshuwuliu', 'UC优速快递', '1', '1'), ('356', 'ueq', 'UEQ快递', '1', '1'), ('357', 'weitepai', '微特派快递', '1', '1'), ('358', 'wtdchina', '威时沛运', '1', '1'), ('359', 'wzhaunyun', '微转运', '1', '1'), ('360', 'gswtkd', '万通快递', '1', '1'), ('361', 'wotu', '渥途国际速运', '1', '1'), ('362', 'xiyoute', '希优特快递', '1', '1'), ('363', 'xilaikd', '喜来快递', '1', '1'), ('364', 'xsrd', '鑫世锐达', '1', '1'), ('365', 'xtb', '鑫通宝物流', '1', '1'), ('366', 'xintianjie', '信天捷快递', '1', '1'), ('367', 'xaetc', '西安胜峰', '1', '1'), ('368', 'xianfeng', '先锋快递', '1', '1'), ('369', 'sunspeedy', '新速航', '1', '1'), ('370', 'xipost', '西邮寄', '1', '1'), ('371', 'sinatone', '信联通', '1', '1'), ('372', 'sunjex', '新杰物流', '1', '1'), ('373', 'yundaexus', '韵达美国件', '1', '1'), ('374', 'yxwl', '宇鑫物流', '1', '1'), ('375', 'yitongda', '易通达', '1', '1'), ('376', 'yiqiguojiwuliu', '一柒物流', '1', '1'), ('377', 'yilingsuyun', '亿领速运', '1', '1'), ('378', 'yujiawuliu', '煜嘉物流', '1', '1'), ('379', 'gml', '英脉物流', '1', '1'), ('380', 'leopard', '云豹国际货运', '1', '1'), ('381', 'czwlyn', '云南中诚', '1', '1'), ('382', 'sdyoupei', '优配速运', '1', '1'), ('383', 'yongchang', '永昌物流', '1', '1'), ('384', 'yufeng', '御风速运', '1', '1'), ('385', 'yamaxunwuliu', '亚马逊物流', '1', '1'), ('386', 'yousutongda', '优速通达', '1', '1'), ('387', 'yishunhang', '亿顺航', '1', '1'), ('388', 'yongwangda', '永旺达快递', '1', '1'), ('389', 'ecmscn', '易满客', '1', '1'), ('390', 'yingchao', '英超物流', '1', '1'), ('391', 'edlogistics', '益递物流', '1', '1'), ('392', 'yyexpress', '远洋国际', '1', '1'), ('393', 'onehcang', '一号仓', '1', '1'), ('394', 'ycgky', '远成快运', '1', '1'), ('395', 'lineone', '一号线', '1', '1'), ('396', 'ypsd', '壹品速递', '1', '1'), ('397', 'vipexpress', '鹰运国际速递', '1', '1'), ('398', 'el56', '易联通达物流', '1', '1'), ('399', 'yyqc56', '一运全成物流', '1', '1'), ('400', 'zhongtie', '中铁快运', '1', '1'), ('401', 'ZTKY', '中铁物流', '1', '1'), ('402', 'zzjh', '郑州建华快递', '1', '1'), ('403', 'zhongruisudi', '中睿速递', '1', '1'), ('404', 'zhongwaiyun', '中外运速递', '1', '1'), ('405', 'zengyisudi', '增益速递', '1', '1'), ('406', 'sujievip', '郑州速捷', '1', '1'), ('407', 'zhichengtongda', '至诚通达快递', '1', '1'), ('408', 'zhdwl', '众辉达物流', '1', '1'), ('409', 'kuachangwuliu', '直邮易', '1', '1'), ('410', 'topspeedex', '中运全速', '1', '1'), ('411', 'otobv', '中欧快运', '1', '1'), ('412', 'zsky123', '准实快运', '1', '1'), ('413', 'donghong', '东红物流', '1', '1'), ('414', 'kuaiyouda', '快优达速递', '1', '1'), ('415', 'balunzhi', '巴伦支快递', '1', '1'), ('416', 'hutongwuliu', '户通物流', '1', '1'), ('417', 'xianchenglian', '西安城联速递', '1', '1'), ('418', 'youbijia', '邮必佳', '1', '1'), ('419', 'feiyuan', '飞远物流', '1', '1'), ('420', 'chengji', '城际速递', '1', '1'), ('421', 'huaqi', '华企快运', '1', '1'), ('422', 'yibang', '一邦快递', '1', '1'), ('423', 'citylink', 'CityLink快递', '1', '1'), ('424', 'meixi', '美西快递', '1', '1'), ('425', 'acs', 'ACS', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_routine_access_token`
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_access_token`;
CREATE TABLE `eb_routine_access_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '小程序access_token表ID',
  `access_token` varchar(256) NOT NULL COMMENT 'openid',
  `stop_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='小程序access_token表';

-- ----------------------------
--  Records of `eb_routine_access_token`
-- ----------------------------
BEGIN;
INSERT INTO `eb_routine_access_token` VALUES ('1', '12_BwfjO2SAOP1dtZLQUtKrHGC2pv_M1DD51LhyOroDqwUMS3JRonwgSkympBk6kYbHvEecjRBcGAGDG47PPL8R1voD9V3wwpoZ9_rhtvdSS9ku9ehU2jCmnCzmQ5CG7RKW2t4Z7A9aNvaFMBbsDVOaAFASKD', '1534306647');
COMMIT;

-- ----------------------------
--  Table structure for `eb_routine_form_id`
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_form_id`;
CREATE TABLE `eb_routine_form_id` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表单ID表ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户uid',
  `form_id` varchar(32) NOT NULL COMMENT '表单ID',
  `stop_time` int(11) unsigned DEFAULT NULL COMMENT '表单ID失效时间',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态1 未使用 2不能使用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='表单id表记录表';

-- ----------------------------
--  Table structure for `eb_routine_template`
-- ----------------------------
DROP TABLE IF EXISTS `eb_routine_template`;
CREATE TABLE `eb_routine_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='微信模板';

-- ----------------------------
--  Records of `eb_routine_template`
-- ----------------------------
BEGIN;
INSERT INTO `eb_routine_template` VALUES ('12', 'AT0177', '订单配送通知', '订单编号{{keyword1.DATA}}\n配送员{{keyword2.DATA}}\n联系电话{{keyword3.DATA}}\n配送时间{{keyword4.DATA}}\n备注{{keyword5.DATA}}', 'mCxm8mO_ZeETohNq7sFMlcf0vWdAnCJylKog71J68JM', '1534469109', '1'), ('13', 'AT0007', '订单发货提醒', '订单号{{keyword1.DATA}}\n快递公司{{keyword2.DATA}}\n快递单号{{keyword3.DATA}}\n发货时间{{keyword4.DATA}}\n备注{{keyword5.DATA}}', 'XQlyO_b3QocHBOrC69bfOCaOJq5kdKXQcdQtCO11sA0', '1534469928', '1'), ('14', 'AT0787', '退款成功通知', '订单号{{keyword1.DATA}}\n退款时间{{keyword2.DATA}}\n退款金额{{keyword3.DATA}}\n退款方式{{keyword4.DATA}}\n备注{{keyword5.DATA}}', 'gQi8X-wuOYAwdVRBXaJVwfAXQ0ngjMxYcYVS0GT1anI', '1534469993', '1'), ('15', 'AT0009', '订单支付成功通知', '单号{{keyword1.DATA}}\n下单时间{{keyword2.DATA}}\n订单状态{{keyword3.DATA}}\n支付金额{{keyword4.DATA}}\n支付方式{{keyword5.DATA}}', 'x5Jw630Rp63T34kv0Q43RaeVKtk5OFKDNkwcrwMp9FM', '1534470043', '1'), ('16', 'AT1173', '砍价成功通知', '商品名称{{keyword1.DATA}}\n砍价金额{{keyword2.DATA}}\n底价{{keyword3.DATA}}\n砍掉价格{{keyword4.DATA}}\n支付金额{{keyword5.DATA}}\n备注{{keyword6.DATA}}', 'FofE1ABYV1iXkNFIvEOUy4j5lInos20KCwIW6gyZ2nM', '1534470085', '1'), ('17', 'AT0036', '退款通知', '订单编号{{keyword1.DATA}}\n退款原因{{keyword2.DATA}}\n退款时间{{keyword3.DATA}}\n退款金额{{keyword4.DATA}}\n退款方式{{keyword5.DATA}}', 'JhmCRYO7ahP6nbCb6oO-BPYz8lIP2u9xs-CkZ63Z4HI', '1534470134', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_store_bargain`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_bargain`;
CREATE TABLE `eb_store_bargain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID',
  `product_id` int(11) unsigned NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) NOT NULL COMMENT '砍价活动名称',
  `image` varchar(150) NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) DEFAULT NULL COMMENT '单位名称',
  `stock` int(11) unsigned DEFAULT NULL COMMENT '库存',
  `sales` int(11) unsigned DEFAULT NULL COMMENT '销量',
  `images` varchar(1000) NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int(11) unsigned NOT NULL COMMENT '砍价开启时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int(11) unsigned DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text COMMENT '砍价详情',
  `give_integral` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) unsigned DEFAULT NULL COMMENT '邮费',
  `rule` text COMMENT '砍价规则',
  `look` int(11) unsigned DEFAULT '0' COMMENT '砍价产品浏览量',
  `share` int(11) unsigned DEFAULT '0' COMMENT '砍价产品分享量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='砍价表';

-- ----------------------------
--  Table structure for `eb_store_bargain_user`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_bargain_user`;
CREATE TABLE `eb_store_bargain_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '参与时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户参与砍价表';

-- ----------------------------
--  Table structure for `eb_store_bargain_user_help`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_bargain_user_help`;
CREATE TABLE `eb_store_bargain_user_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID',
  `uid` int(11) unsigned DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int(11) unsigned DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int(11) unsigned DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='砍价用户帮助表';

-- ----------------------------
--  Table structure for `eb_store_cart`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_cart`;
CREATE TABLE `eb_store_cart` (
  `id` bigint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(16) NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int(11) unsigned NOT NULL COMMENT '拼团id',
  `seckill_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '砍价id',
  PRIMARY KEY (`id`),
  KEY `user_id` (`uid`) USING BTREE,
  KEY `goods_id` (`product_id`) USING BTREE,
  KEY `uid` (`uid`,`is_pay`) USING BTREE,
  KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
--  Table structure for `eb_store_category`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_category`;
CREATE TABLE `eb_store_category` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID',
  `pid` mediumint(11) NOT NULL COMMENT '父id',
  `cate_name` varchar(100) NOT NULL COMMENT '分类名称',
  `sort` mediumint(11) NOT NULL COMMENT '排序',
  `pic` varchar(128) NOT NULL DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否推荐',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_base` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
--  Records of `eb_store_category`
-- ----------------------------
BEGIN;
INSERT INTO `eb_store_category` VALUES ('1', '0', '热门推荐', '0', '', '1', '1537955538'), ('2', '0', '数码产品', '0', '', '1', '1537955708'), ('3', '2', '手机', '0', '', '1', '1537955779');
COMMIT;

-- ----------------------------
--  Table structure for `eb_store_combination`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination`;
CREATE TABLE `eb_store_combination` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `mer_id` int(10) unsigned DEFAULT '0' COMMENT '商户id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(1000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `attr` varchar(255) NOT NULL COMMENT '活动属性',
  `people` int(2) unsigned NOT NULL COMMENT '参团人数',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `is_host` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `combination` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mer_use` tinyint(1) unsigned NOT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint(1) unsigned NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) unsigned NOT NULL COMMENT '邮费',
  `description` text NOT NULL COMMENT '拼团内容',
  `start_time` int(11) unsigned NOT NULL COMMENT '拼团开始时间',
  `stop_time` int(11) unsigned NOT NULL COMMENT '拼团结束时间',
  `cost` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '拼图产品成本',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团产品表';

-- ----------------------------
--  Table structure for `eb_store_combination_attr`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination_attr`;
CREATE TABLE `eb_store_combination_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
--  Table structure for `eb_store_combination_attr_result`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination_attr_result`;
CREATE TABLE `eb_store_combination_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

-- ----------------------------
--  Table structure for `eb_store_combination_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_combination_attr_value`;
CREATE TABLE `eb_store_combination_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- ----------------------------
--  Table structure for `eb_store_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon`;
CREATE TABLE `eb_store_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',
  `title` varchar(64) NOT NULL COMMENT '优惠券名称',
  `integral` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int(11) unsigned NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `state` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `coupon_time` (`coupon_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
--  Table structure for `eb_store_coupon_issue`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon_issue`;
CREATE TABLE `eb_store_coupon_issue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int(10) DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int(10) DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int(10) DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int(10) DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) DEFAULT NULL COMMENT '优惠券添加时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE,
  KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  KEY `remain_count` (`remain_count`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券前台领取表';

-- ----------------------------
--  Table structure for `eb_store_coupon_issue_user`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon_issue_user`;
CREATE TABLE `eb_store_coupon_issue_user` (
  `uid` int(10) DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int(10) DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int(10) DEFAULT NULL COMMENT '领取时间',
  UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券前台用户领取记录表';

-- ----------------------------
--  Table structure for `eb_store_coupon_user`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_coupon_user`;
CREATE TABLE `eb_store_coupon_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int(11) unsigned NOT NULL COMMENT '优惠券创建时间',
  `end_time` int(11) unsigned NOT NULL COMMENT '优惠券结束时间',
  `use_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `end_time` (`end_time`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_fail` (`is_fail`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券发放记录表';

-- ----------------------------
--  Table structure for `eb_store_order`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order`;
CREATE TABLE `eb_store_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_id` varchar(32) NOT NULL COMMENT '订单号',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `total_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int(11) unsigned DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) NOT NULL COMMENT '支付方式',
  `add_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',
  `refund_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int(11) unsigned DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_name` varchar(64) DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `combination_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `seckill_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int(11) unsigned DEFAULT '0' COMMENT '砍价id',
  `is_channel` tinyint(1) unsigned DEFAULT '0' COMMENT '支付渠道(0微信公众号1微信小程序)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  UNIQUE KEY `unique` (`unique`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pay_price` (`pay_price`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `pay_time` (`pay_time`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `coupon_id` (`coupon_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
--  Table structure for `eb_store_order_cart_info`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order_cart_info`;
CREATE TABLE `eb_store_order_cart_info` (
  `oid` int(11) unsigned NOT NULL COMMENT '订单id',
  `cart_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text NOT NULL COMMENT '购买东西的详细信息',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  KEY `cart_id` (`cart_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单购物详情表';

-- ----------------------------
--  Table structure for `eb_store_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_order_status`;
CREATE TABLE `eb_store_order_status` (
  `oid` int(10) unsigned NOT NULL COMMENT '订单id',
  `change_type` varchar(32) NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) NOT NULL COMMENT '操作备注',
  `change_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  KEY `oid` (`oid`) USING BTREE,
  KEY `change_type` (`change_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';

-- ----------------------------
--  Table structure for `eb_store_pink`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_pink`;
CREATE TABLE `eb_store_pink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `order_id` varchar(32) NOT NULL COMMENT '订单id 生成',
  `order_id_key` int(10) unsigned NOT NULL COMMENT '订单id  数据库',
  `total_num` int(10) unsigned NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '购买总金额',
  `cid` int(10) unsigned NOT NULL COMMENT '拼团产品id',
  `pid` int(10) unsigned NOT NULL COMMENT '产品id',
  `people` int(10) unsigned NOT NULL COMMENT '拼图总人数',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) NOT NULL,
  `k_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='拼团表';

-- ----------------------------
--  Table structure for `eb_store_product`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product`;
CREATE TABLE `eb_store_product` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `mer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(128) NOT NULL COMMENT '商品图片',
  `slider_image` varchar(512) NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) NOT NULL COMMENT '关键字',
  `cate_id` varchar(64) NOT NULL COMMENT '分类id',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) NOT NULL COMMENT '单位名',
  `sort` smallint(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `sales` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` mediumint(11) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `description` text NOT NULL COMMENT '产品描述',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) unsigned NOT NULL COMMENT '获得积分',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `is_seckill` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint(1) unsigned NOT NULL COMMENT '砍价状态 0未开启 1开启',
  `ficti` mediumint(11) DEFAULT '100' COMMENT '虚拟销量',
  `browse` int(11) DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_benefit` (`is_benefit`) USING BTREE,
  KEY `is_best` (`is_best`) USING BTREE,
  KEY `is_new` (`is_new`) USING BTREE,
  KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  KEY `price` (`price`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `sales` (`sales`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
--  Records of `eb_store_product`
-- ----------------------------
BEGIN;
INSERT INTO `eb_store_product` VALUES ('1', '0', 'http://doemo.net/public/uploads/0/20180821/5b7b784d35389.jpg', '[\"http:\\/\\/doemo.net\\/public\\/uploads\\/0\\/20180821\\/5b7b784d35389.jpg\"]', '测试测试', '测试测试测试测试测试测试', '测试测试', '', '10.00', '0.00', '10.00', '0.00', '件', '10', '10', '1', '1', '1', '1', '1', '1', '', '1534818410', '1', '0', '0', '0.00', '10.00', '0', '0', '1010', '0');
COMMIT;

-- ----------------------------
--  Table structure for `eb_store_product_attr`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_attr`;
CREATE TABLE `eb_store_product_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
--  Table structure for `eb_store_product_attr_result`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_attr_result`;
CREATE TABLE `eb_store_product_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性详情表';

-- ----------------------------
--  Table structure for `eb_store_product_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_attr_value`;
CREATE TABLE `eb_store_product_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- ----------------------------
--  Table structure for `eb_store_product_relation`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_relation`;
CREATE TABLE `eb_store_product_relation` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `type` varchar(32) NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  UNIQUE KEY `uid` (`uid`,`product_id`,`type`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品点赞和收藏表';

-- ----------------------------
--  Table structure for `eb_store_product_reply`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_product_reply`;
CREATE TABLE `eb_store_product_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `oid` int(11) NOT NULL COMMENT '订单ID',
  `unique` char(32) NOT NULL COMMENT '唯一id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) NOT NULL COMMENT '评论内容',
  `pics` text NOT NULL COMMENT '评论图片',
  `add_time` int(11) NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) NOT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int(11) NOT NULL COMMENT '管理员回复时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `parent_id` (`reply_type`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `product_score` (`product_score`) USING BTREE,
  KEY `service_score` (`service_score`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
--  Table structure for `eb_store_seckill`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill`;
CREATE TABLE `eb_store_seckill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id',
  `product_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `image` varchar(255) NOT NULL COMMENT '推荐图',
  `images` varchar(1000) NOT NULL COMMENT '轮播图',
  `title` varchar(255) NOT NULL COMMENT '活动标题',
  `info` varchar(255) NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) unsigned NOT NULL COMMENT '返多少积分',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `stock` int(10) unsigned NOT NULL COMMENT '库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text NOT NULL COMMENT '内容',
  `start_time` varchar(128) NOT NULL COMMENT '开始时间',
  `stop_time` varchar(128) NOT NULL COMMENT '结束时间',
  `add_time` varchar(128) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '产品状态',
  `is_postage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int(11) unsigned NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `start_time` (`start_time`,`stop_time`),
  KEY `is_del` (`is_del`),
  KEY `is_hot` (`is_hot`),
  KEY `is_show` (`status`),
  KEY `add_time` (`add_time`),
  KEY `sort` (`sort`),
  KEY `is_postage` (`is_postage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品秒杀产品表';

-- ----------------------------
--  Table structure for `eb_store_seckill_attr`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill_attr`;
CREATE TABLE `eb_store_seckill_attr` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) NOT NULL COMMENT '属性值',
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性表';

-- ----------------------------
--  Table structure for `eb_store_seckill_attr_result`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill_attr_result`;
CREATE TABLE `eb_store_seckill_attr_result` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `result` text NOT NULL COMMENT '商品属性参数',
  `change_time` int(10) unsigned NOT NULL COMMENT '上次修改时间',
  UNIQUE KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性详情表';

-- ----------------------------
--  Table structure for `eb_store_seckill_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_seckill_attr_value`;
CREATE TABLE `eb_store_seckill_attr_value` (
  `product_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int(10) unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) DEFAULT NULL COMMENT '图片',
  `unique` char(8) NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='秒杀商品属性值表';

-- ----------------------------
--  Table structure for `eb_store_service`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_service`;
CREATE TABLE `eb_store_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服id',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `uid` int(11) NOT NULL COMMENT '客服uid',
  `avatar` varchar(250) NOT NULL COMMENT '客服头像',
  `nickname` varchar(50) NOT NULL COMMENT '代理名称',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0隐藏1显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='客服表';

-- ----------------------------
--  Records of `eb_store_service`
-- ----------------------------
BEGIN;
INSERT INTO `eb_store_service` VALUES ('1', '0', '90', 'http://thirdwx.qlogo.cn/mmopen/LneiciaJhByic2MV0ocMFdPHJzlaWskqtgN5qCAojya1LHbjlhIHzWOBehN78WTuAqUjOnUUbSpJKpYJlaysap1HUpfzeQg0ugP/132', '天会亮、心会暖', '1528681446', '1'), ('9', '0', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCx03Y4hkSeVgQZGZLYDSQz6SZ7PDDNSLj3RxVPYqibMvW4cIOicPSSmA0xbrL9DY2RkunA1pulAs9g/132', '等风来，随风去', '1534312905', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_store_service_log`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_service_log`;
CREATE TABLE `eb_store_service_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服用户对话记录表ID',
  `mer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商户id',
  `msn` text NOT NULL COMMENT '消息内容',
  `uid` int(11) NOT NULL COMMENT '发送人uid',
  `to_uid` int(11) NOT NULL COMMENT '接收人uid',
  `add_time` int(11) NOT NULL COMMENT '发送时间',
  `type` tinyint(1) DEFAULT NULL COMMENT '是否已读（0：否；1：是；）',
  `remind` tinyint(1) DEFAULT NULL COMMENT '是否提醒过',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='客服用户对话记录表';

-- ----------------------------
--  Table structure for `eb_store_visit`
-- ----------------------------
DROP TABLE IF EXISTS `eb_store_visit`;
CREATE TABLE `eb_store_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '产品ID',
  `product_type` varchar(32) DEFAULT NULL COMMENT '产品类型',
  `cate_id` int(11) DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) DEFAULT NULL COMMENT '产品类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `count` int(11) DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) DEFAULT NULL COMMENT '备注描述',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='产品浏览分析表';

-- ----------------------------
--  Records of `eb_store_visit`
-- ----------------------------
BEGIN;
INSERT INTO `eb_store_visit` VALUES ('1', '0', 'product', '0', 'search', '1', '1', '0', '1535070682'), ('2', '0', 'product', '0', 'search', '1', '1', '0', '1537107012');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_admin`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_admin`;
CREATE TABLE `eb_system_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) unsigned DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '后台管理员添加时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员级别',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

-- ----------------------------
--  Records of `eb_system_admin`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_admin` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', 'admin', '1', '123.139.171.38', '1537922844', '1537082825', '0', '0', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_attachment`;
CREATE TABLE `eb_system_attachment` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '附件名称',
  `att_dir` varchar(200) NOT NULL COMMENT '附件路径',
  `satt_dir` varchar(200) DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) NOT NULL COMMENT '附件大小',
  `att_type` char(30) NOT NULL COMMENT '附件类型',
  `pid` int(10) NOT NULL COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int(11) NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='附件管理表';

-- ----------------------------
--  Records of `eb_system_attachment`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_attachment` VALUES ('41', '5bab568069108.png', '/uploads/7/20180926/5bab568069108.png', '', '9371', 'image/png', '7', '1537955456');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_attachment_category`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_attachment_category`;
CREATE TABLE `eb_system_attachment_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `enname` varchar(50) NOT NULL COMMENT '分类目录',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='附件分类表';

-- ----------------------------
--  Records of `eb_system_attachment_category`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_attachment_category` VALUES ('1', '0', '产品图片', 'product'), ('2', '0', '新闻图片', 'news'), ('3', '0', '配置图片', 'config'), ('4', '3', '首页导航', 'indexnav'), ('5', '3', '首页幻灯片', 'mynav'), ('6', '3', '其它配置图', 'footnav'), ('7', '2', '公司新闻', 'compay'), ('8', '1', '拼团产品图', ''), ('9', '1', '秒杀图片', ''), ('10', '1', '砍价产品图', ''), ('11', '1', '普通产品图片', '');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_config`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_config`;
CREATE TABLE `eb_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `menu_name` varchar(255) NOT NULL COMMENT '字段名称',
  `type` varchar(255) NOT NULL COMMENT '类型(文本框,单选按钮...)',
  `config_tab_id` int(10) unsigned NOT NULL COMMENT '配置分类id',
  `parameter` varchar(255) DEFAULT NULL COMMENT '规则 单选框和多选框',
  `upload_type` tinyint(1) unsigned DEFAULT NULL COMMENT '上传文件格式1单图2多图3文件',
  `required` varchar(255) DEFAULT NULL COMMENT '规则',
  `width` int(10) unsigned DEFAULT NULL COMMENT '多行文本框的宽度',
  `high` int(10) unsigned DEFAULT NULL COMMENT '多行文框的高度',
  `value` varchar(5000) DEFAULT NULL COMMENT '默认值',
  `info` varchar(255) NOT NULL COMMENT '配置名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '配置简介',
  `sort` int(10) unsigned NOT NULL COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL COMMENT '是否隐藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- ----------------------------
--  Records of `eb_system_config`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_config` VALUES ('1', 'site_name', 'text', '1', '', '0', 'required:true', '100', '0', '\"CRMEB\"', '网站名称', '网站名称', '0', '1'), ('2', 'site_url', 'text', '1', '', '0', 'required:true,url:true', '100', '0', '\"http:\\/\\/demo25.crmeb.net\"', '网站地址', '网站地址', '0', '1'), ('3', 'site_logo', 'upload', '1', '', '1', '', '0', '0', '\"\\/public\\/uploads\\/config\\/image\\/5b77c4c33fb1f.png\"', '后台LOGO', '左上角logo,建议尺寸[170*50]', '0', '1'), ('4', 'site_phone', 'text', '1', '', '0', '', '100', '0', '\"13679281569\"', '联系电话', '联系电话', '0', '1'), ('5', 'seo_title', 'text', '1', '', '0', 'required:true', '100', '0', '\"crmeb\\u7535\\u5546\\u7cfb\\u7edf\"', 'SEO标题', 'SEO标题', '0', '1'), ('6', 'site_email', 'text', '1', '', '0', 'email:true', '100', '0', '\"admin@xazbkj.com\"', '联系邮箱', '联系邮箱', '0', '1'), ('7', 'site_qq', 'text', '1', '', '0', 'qq:true', '100', '0', '\"98718401\"', '联系QQ', '联系QQ', '0', '1'), ('8', 'site_close', 'radio', '1', '0=开启\n1=PC端关闭\n2=WAP端关闭(含微信)\n3=全部关闭', '0', '', '0', '0', '\"2\"', '网站关闭', '网站后台、商家中心不受影响。关闭网站也可访问', '0', '1'), ('9', 'close_system', 'radio', '1', '0=开启\n1=关闭', '0', '', '0', '0', '\"0\"', '关闭后台', '关闭后台', '0', '2'), ('10', 'wechat_name', 'text', '2', '', '0', 'required:true', '100', '0', '\"CRMEB\"', '公众号名称', '公众号的名称', '0', '1'), ('11', 'wechat_id', 'text', '2', '', '0', 'required:true', '100', '0', '\"CRMEB\"', '微信号', '微信号', '0', '1'), ('12', 'wechat_sourceid', 'text', '2', '', '0', 'required:true', '100', '0', '\"\"', '公众号原始id', '公众号原始id', '0', '1'), ('13', 'wechat_appid', 'text', '2', '', '0', 'required:true', '100', '0', '\"\"', 'AppID', 'AppID', '0', '1'), ('14', 'wechat_appsecret', 'text', '2', '', '0', 'required:true', '100', '0', '\"\"', 'AppSecret', 'AppSecret', '0', '1'), ('15', 'wechat_token', 'text', '2', '', '0', 'required:true', '100', '0', '\"\"', '微信验证TOKEN', '微信验证TOKEN', '0', '1'), ('16', 'wechat_encode', 'radio', '2', '0=明文模式\n1=兼容模式\n2=安全模式', '0', '', '0', '0', '\"0\"', '消息加解密方式', '如需使用安全模式请在管理中心修改，仅限服务号和认证订阅号', '0', '1'), ('17', 'wechat_encodingaeskey', 'text', '2', '', '0', 'required:true', '100', '0', '\"\"', 'EncodingAESKey', '公众号消息加解密Key,在使用安全模式情况下要填写该值，请先在管理中心修改，然后填写该值，仅限服务号和认证订阅号', '0', '1'), ('18', 'wechat_share_img', 'upload', '3', '', '1', '', '0', '0', '\"\"', '微信分享图片', '若填写此图片地址，则分享网页出去时会分享此图片。可有效防止分享图片变形', '0', '1'), ('19', 'wechat_qrcode', 'upload', '2', '', '1', '', '0', '0', '\"\"', '公众号二维码', '您的公众号二维码', '0', '1'), ('20', 'wechat_type', 'radio', '2', '0=服务号\n1=订阅号', '0', '', '0', '0', '\"0\"', '公众号类型', '公众号的类型', '0', '1'), ('21', 'wechat_share_title', 'text', '3', '', '0', 'required:true', '100', '0', '\"\"', '微信分享标题', '微信分享标题', '0', '1'), ('22', 'wechat_share_synopsis', 'textarea', '3', '', '0', '', '100', '5', '\"\"', '微信分享简介', '微信分享简介', '0', '1'), ('23', 'pay_weixin_appid', 'text', '4', '', '0', '', '100', '0', '\"\"', 'Appid', '微信公众号身份的唯一标识。审核通过后，在微信发送的邮件中查看。', '0', '1'), ('24', 'pay_weixin_appsecret', 'text', '4', '', '0', '', '100', '0', '\"\"', 'Appsecret', 'JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看。', '0', '1'), ('25', 'pay_weixin_mchid', 'text', '4', '', '0', '', '100', '0', '\"\"', 'Mchid', '受理商ID，身份标识', '0', '1'), ('26', 'pay_weixin_client_cert', 'upload', '4', '', '3', '', '0', '0', '\"\"', '微信支付证书', '微信支付证书，在微信商家平台中可以下载！文件名一般为apiclient_cert.pem', '0', '1'), ('27', 'pay_weixin_client_key', 'upload', '4', '', '3', '', '0', '0', '\"\"', '微信支付证书密钥', '微信支付证书密钥，在微信商家平台中可以下载！文件名一般为apiclient_key.pem', '0', '1'), ('56', 'store_home_pink', 'upload', '5', '', '1', '', '0', '0', '\"\\/public\\/uploads\\/config\\/image\\/5abcad84e2a52.jpg\"', '首页拼团广告图', '首页拼团广告图', '0', '1'), ('28', 'pay_weixin_key', 'text', '4', '', '0', '', '100', '0', '\"\"', 'Key', '商户支付密钥Key。审核通过后，在微信发送的邮件中查看。', '0', '1'), ('29', 'pay_weixin_open', 'radio', '4', '1=开启\n0=关闭', '0', '', '0', '0', '\"1\"', '开启', '是否启用微信支付', '0', '1'), ('31', 'store_postage', 'text', '10', '', '0', 'number:true,min:0', '100', '0', '\"0\"', '邮费基础价', '商品邮费基础价格,最终金额为(基础价 + 商品1邮费 + 商品2邮费)', '0', '1'), ('32', 'store_free_postage', 'text', '5', '', '0', 'number:true,min:-1', '100', '0', '\"20\"', '满额包邮', '商城商品满多少金额即可包邮', '0', '1'), ('33', 'offline_postage', 'radio', '10', '0=不包邮\n1=包邮', '0', '', '0', '0', '\"1\"', '线下支付是否包邮', '用户选择线下支付时是否包邮', '0', '1'), ('34', 'integral_ratio', 'text', '11', '', '0', 'number:true', '100', '0', '\"0.01\"', '积分抵用比例', '积分抵用比例(1积分抵多少金额)', '0', '1'), ('35', 'site_service_phone', 'text', '1', '', '0', '', '100', '0', '\"400-8888794\"', '客服电话', '客服联系电话', '0', '1'), ('44', 'store_user_min_recharge', 'text', '5', '', '0', 'required:true,number:true,min:0', '100', '0', '\"0.01\"', '用户最低充值金额', '用户单次最低充值金额', '0', '0'), ('45', 'site_store_admin_uids', 'text', '5', '', '0', '', '100', '0', '\"4\"', '管理员用户ID', '管理员用户ID,用于接收商城订单提醒，到微信用户中查找编号，多个英文‘,’隔开', '0', '1'), ('46', 'system_express_app_code', 'text', '10', '', '0', '', '100', '0', '\"658da8789d89436699269f4aede6c868\"', '快递查询密钥', '阿里云快递查询接口密钥购买地址：https://market.aliyun.com/products/57126001/cmapi011120.html', '0', '1'), ('47', 'main_business', 'text', '2', '', '0', 'required:true', '100', '0', '\" IT\\u79d1\\u6280 \\u4e92\\u8054\\u7f51|\\u7535\\u5b50\\u5546\\u52a1\"', '微信模板消息_主营行业', '微信公众号模板消息中选择开通的主营行业', '0', '0'), ('48', 'vice_business', 'text', '2', '', '0', 'required:true', '100', '0', '\"IT\\u79d1\\u6280 IT\\u8f6f\\u4ef6\\u4e0e\\u670d\\u52a1 \"', '微信模板消息_副营行业', '微信公众号模板消息中选择开通的副营行业', '0', '0'), ('49', 'store_brokerage_ratio', 'text', '9', '', '0', 'required:true,min:0,max:100,number:true', '100', '0', '\"5\"', '一级返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', '5', '1'), ('50', 'wechat_first_sub_give_coupon', 'text', '12', '', '0', 'requred:true,digits:true,min:0', '100', '0', '\"\"', '首次关注赠送优惠券ID', '首次关注赠送优惠券ID,0为不赠送', '0', '1'), ('51', 'store_give_con_min_price', 'text', '12', '', '0', 'requred:true,digits:true,min:0', '100', '0', '\"0.01\"', '消费满多少赠送优惠券', '消费满多少赠送优惠券,0为不赠送', '0', '1'), ('52', 'store_order_give_coupon', 'text', '12', '', '0', 'requred:true,digits:true,min:0', '100', '0', '\"\"', '消费赠送优惠劵ID', '消费赠送优惠劵ID,0为不赠送', '0', '1'), ('53', 'user_extract_min_price', 'text', '9', '', '0', 'required:true,number:true,min:0', '100', '0', '\"200\"', '提现最低金额', '用户提现最低金额', '0', '1'), ('54', 'sx_sign_min_int', 'text', '11', '', '0', 'required:true,number:true,min:0', '100', '0', '\"1\"', '签到奖励最低积分', '签到奖励最低积分', '0', '1'), ('55', 'sx_sign_max_int', 'text', '11', '', '0', 'required:true,number:true,min:0', '100', '0', '\"5\"', '签到奖励最高积分', '签到奖励最高积分', '0', '1'), ('57', 'about_us', 'upload', '1', '', '1', '', '0', '0', '\"\\/public\\/uploads\\/config\\/image\\/5b77c4caa5e1d.png\"', '关于我们', '系统的标识', '0', '1'), ('61', 'api', 'text', '2', '', '0', '', '100', '0', '\"\\/wechat\\/index\\/serve\"', '接口地址', '微信接口例如：http://www.abc.com/wechat/index/serve', '0', '1'), ('58', 'replenishment_num', 'text', '5', '', '0', 'required:true,number:true,min:0', '100', '0', '\"20\"', '待补货数量', '产品待补货数量低于多少时，提示补货', '0', '1'), ('59', 'routine_appId', 'text', '7', '', '0', '', '100', '0', '\"\"', 'appId', '小程序appID', '0', '1'), ('60', 'routine_appsecret', 'text', '7', '', '0', '', '100', '0', '\"\"', 'AppSecret', '小程序AppSecret', '0', '1'), ('62', 'paydir', 'textarea', '4', '', '0', '', '100', '5', '\"\\/wap\\/my\\/\\r\\n\\/wap\\/my\\/order\\/uni\\/\\r\\n\\/wap\\/store\\/confirm_order\\/cartId\\/\"', '配置目录', '支付目录配置系统不调用提示作用', '0', '1'), ('73', 'routine_logo', 'upload', '7', '', '1', '', '0', '0', '\"\\/public\\/uploads\\/config\\/image\\/5b2c4491c05f2.jpg\"', '小程序logo', '小程序logo', '0', '1'), ('74', 'routine_name', 'text', '7', '', '0', '', '100', '0', '\"CRMEB\"', '小程序名称', '小程序名称', '0', '1'), ('76', 'routine_style', 'text', '7', '', '0', '', '100', '0', '\"#FFFFFF\"', '小程序风格', '小程序颜色', '0', '1'), ('77', 'store_stock', 'text', '5', '', '0', '', '100', '0', '\"1\"', '警戒库存', '警戒库存提醒值', '0', '1'), ('88', 'store_brokerage_statu', 'radio', '9', '1=指定分销\n2=人人分销', '0', '', '0', '0', '\"1\"', '分销模式', '人人分销默认每个人都可以分销，制定人分销后台制定人开启分销', '10', '1'), ('85', 'stor_reason', 'textarea', '5', '', '0', '', '100', '8', '\"\\u6536\\u8d27\\u5730\\u5740\\u586b\\u9519\\u4e86\\r\\n\\u4e0e\\u63cf\\u8ff0\\u4e0d\\u7b26\\r\\n\\u4fe1\\u606f\\u586b\\u9519\\u4e86\\uff0c\\u91cd\\u65b0\\u62cd\\r\\n\\u6536\\u5230\\u5546\\u54c1\\u635f\\u574f\\u4e86\\r\\n\\u672a\\u6309\\u9884\\u5b9a\\u65f6\\u95f4\\u53d1\\u8d27\\r\\n\\u5176\\u5b83\\u539f\\u56e0\"', '退货理由', '配置退货理由，一行一个理由', '0', '1'), ('87', 'store_brokerage_two', 'text', '9', '', '0', 'required:true,min:0,max:100,number:true', '100', '0', '\"3\"', '二级返佣比例', '订单交易成功后给上级返佣的比例0 - 100,例:5 = 反订单金额的5%', '4', '1'), ('89', 'pay_routine_appid', 'text', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Appid', '小程序Appid', '0', '1'), ('90', 'pay_routine_appsecret', 'text', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Appsecret', '小程序Appsecret', '0', '1'), ('91', 'pay_routine_mchid', 'text', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Mchid', '商户号', '0', '1'), ('92', 'pay_routine_key', 'text', '14', '', '0', 'required:true', '100', '0', '\"\"', 'Key', '商户key', '0', '1'), ('93', 'pay_routine_client_cert', 'upload', '14', '', '3', '', '0', '0', '\"\"', '小程序支付证书', '小程序支付证书', '0', '1'), ('94', 'pay_routine_client_key', 'upload', '14', '', '3', '', '0', '0', '\"\"', '小程序支付证书密钥', '小程序支付证书密钥', '0', '1'), ('95', 'log_cycle', 'text', '1', '', '0', '', '100', '0', '\"90\"', '系统日志', '系统日志保存时间单位天', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_config_tab`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_config_tab`;
CREATE TABLE `eb_system_config_tab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置分类id',
  `title` varchar(255) NOT NULL COMMENT '配置分类名称',
  `eng_title` varchar(255) NOT NULL COMMENT '配置分类英文名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '配置分类状态',
  `info` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '配置分类是否显示',
  `icon` varchar(30) DEFAULT NULL COMMENT '图标',
  `type` int(2) DEFAULT '0' COMMENT '配置类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='配置分类表';

-- ----------------------------
--  Records of `eb_system_config_tab`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_config_tab` VALUES ('1', '基础配置', 'basics', '1', '0', 'cog', '0'), ('2', '公众号配置', 'wechat', '1', '0', 'weixin', '1'), ('3', '公众号分享配置', 'wechat_share', '1', '0', 'whatsapp', '1'), ('4', '公众号支付配置', 'pay', '1', '0', 'jpy', '1'), ('5', '商城配置', 'store', '1', '0', 'shopping-cart', '0'), ('7', '小程序配置', 'routine', '1', '0', 'weixin', '2'), ('9', '分销配置', 'fenxiao', '1', '0', 'sitemap', '3'), ('10', '物流配置', 'express', '1', '0', 'motorcycle', '0'), ('11', '积分配置', 'point', '1', '0', 'powerpoint-o', '3'), ('12', '优惠券配置', 'coupon', '1', '0', 'heartbeat', '3'), ('14', '小程序支付配置', 'routine_pay', '1', '0', '', '2');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_file`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_file`;
CREATE TABLE `eb_system_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件对比ID',
  `cthash` char(32) NOT NULL COMMENT '文件内容',
  `filename` varchar(255) NOT NULL COMMENT '文价名称',
  `atime` char(12) NOT NULL COMMENT '上次访问时间',
  `mtime` char(12) NOT NULL COMMENT '上次修改时间',
  `ctime` char(12) NOT NULL COMMENT '上次改变时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1754 DEFAULT CHARSET=utf8 COMMENT='文件对比表';

-- ----------------------------
--  Table structure for `eb_system_group`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_group`;
CREATE TABLE `eb_system_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据ID',
  `name` varchar(50) NOT NULL COMMENT '数据组名称',
  `info` varchar(256) NOT NULL COMMENT '数据提示',
  `config_name` varchar(50) NOT NULL COMMENT '数据字段',
  `fields` text COMMENT '数据组字段以及类型（json数据）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_name` (`config_name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='组合数据表';

-- ----------------------------
--  Records of `eb_system_group`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_group` VALUES ('32', '个人中心菜单', '个人中心菜单设置', 'my_index_menu', '[{\"name\":\"\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u6807\",\"title\":\"icon\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"}]'), ('34', '商城首页banner', '商城首页banner设置', 'store_home_banner', '[{\"name\":\"\\u6807\\u9898\",\"title\":\"title\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u7247\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]'), ('35', '商城首页分类按钮', '商城首页分类按钮', 'store_home_menus', '[{\"name\":\"\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u6807\",\"title\":\"icon\",\"type\":\"upload\",\"param\":\"\"}]'), ('36', '商城首页滚动新闻', '商城首页滚动新闻', 'store_home_roll_news', '[{\"name\":\"\\u6eda\\u52a8\\u6587\\u5b57\",\"title\":\"info\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u70b9\\u51fb\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"}]'), ('37', '小程序首页猜你喜欢banner', '小程序首页猜你喜欢banner', 'routine_lovely', '[{\"name\":\"\\u56fe\\u7247\",\"title\":\"img\",\"type\":\"upload\",\"param\":\"\"}]'), ('47', '小程序商城首页分类按钮', '小程序商城首页分类按钮', 'routine_home_menus', '[{\"name\":\"\\u5206\\u7c7b\\u540d\\u79f0\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5206\\u7c7b\\u56fe\\u6807\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"},{\"name\":\"\\u8df3\\u8f6c\\u8def\\u5f84\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u5e95\\u90e8\\u83dc\\u5355\",\"title\":\"show\",\"type\":\"radio\",\"param\":\"\\u662f-\\u5426\"}]'), ('48', '小程序商城首页banner', '小程序商城首页banner', 'routine_home_banner', '[{\"name\":\"\\u6807\\u9898\",\"title\":\"name\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u94fe\\u63a5\",\"title\":\"url\",\"type\":\"input\",\"param\":\"\"},{\"name\":\"\\u56fe\\u7247\",\"title\":\"pic\",\"type\":\"upload\",\"param\":\"\"}]');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_group_data`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_group_data`;
CREATE TABLE `eb_system_group_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID',
  `gid` int(11) NOT NULL COMMENT '对应的数据组id',
  `value` text NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int(10) NOT NULL COMMENT '添加数据时间',
  `sort` int(11) NOT NULL COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='组合数据详情表';

-- ----------------------------
--  Records of `eb_system_group_data`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_group_data` VALUES ('52', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u79ef\\u5206\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/doemo.net\\/public\\/uploads\\/0\\/20180824\\/5b7f542607db7.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/integral.html\"}}', '1513846430', '1', '1'), ('53', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u4f18\\u60e0\\u5238\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/doemo.net\\/public\\/uploads\\/0\\/20180824\\/5b7f54262f2a8.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/coupon.html\"}}', '1513846448', '1', '1'), ('84', '34', '{\"title\":{\"type\":\"input\",\"value\":\"banner3\"},\"url\":{\"type\":\"input\",\"value\":\"#\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/11\\/20180817\\/5b7670c42f24b.jpg\"}}', '1522135667', '11', '1'), ('56', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u5df2\\u6536\\u85cf\\u5546\\u54c1\"},\"icon\":{\"type\":\"upload\",\"value\":\"\\/public\\/uploads\\/common\\/s_5abc57454d6c7.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/collect.html\"}}', '1513846605', '1', '1'), ('57', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u5730\\u5740\\u7ba1\\u7406\"},\"icon\":{\"type\":\"upload\",\"value\":\"\\/public\\/uploads\\/common\\/s_5abc574fc0570.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/address.html\"}}', '1513846618', '1', '1'), ('87', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6211\\u7684\\u4f59\\u989d\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/doemo.net\\/public\\/uploads\\/0\\/20180824\\/5b7f54257b159.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/balance.html\"}}', '1525330614', '1', '1'), ('67', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u804a\\u5929\\u8bb0\\u5f55\"},\"icon\":{\"type\":\"upload\",\"value\":\"\\/public\\/uploads\\/common\\/s_5abc576dba8a2.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/service\\/service_new.html\"}}', '1515570261', '1', '1'), ('68', '34', '{\"title\":{\"type\":\"input\",\"value\":\"banner1\"},\"url\":{\"type\":\"input\",\"value\":\"#\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2e4b6cf2.jpg\"}}', '1515984801', '10', '1'), ('69', '34', '{\"title\":{\"type\":\"input\",\"value\":\"banner2\"},\"url\":{\"type\":\"input\",\"value\":\"#\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2aaa33d8.jpg\"}}', '1515984809', '9', '2'), ('71', '35', '{\"name\":{\"type\":\"input\",\"value\":\"\\u780d\\u4ef7\\u6d3b\\u52a8\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/store\\/cut_list.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/0\\/20180809\\/5b6c0c5fdaae5.png\"}}', '1515985418', '1', '1'), ('72', '35', '{\"name\":{\"type\":\"input\",\"value\":\"\\u9886\\u5238\\u4e2d\\u5fc3\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/store\\/issue_coupon.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/0\\/20180809\\/5b6c0e995f6d4.png\"}}', '1515985426', '1', '1'), ('74', '35', '{\"name\":{\"type\":\"input\",\"value\":\"\\u6bcf\\u65e5\\u7b7e\\u5230\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/sign_in.html\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/0\\/20180809\\/5b6c0c5fe73e6.png\"}}', '1515985441', '1', '1'), ('80', '36', '{\"info\":{\"type\":\"input\",\"value\":\"CRMEB\\u7535\\u5546\\u7cfb\\u7edf V 2.5 \\u5373\\u5c06\\u4e0a\\u7ebf\\uff01\"},\"url\":{\"type\":\"input\",\"value\":\"#\"}}', '1515985907', '1', '1'), ('81', '36', '{\"info\":{\"type\":\"input\",\"value\":\"CRMEB\\u5546\\u57ce V 2.5 \\u5c0f\\u7a0b\\u5e8f\\u516c\\u4f17\\u53f7\\u6570\\u636e\\u540c\\u6b65\\uff01\"},\"url\":{\"type\":\"input\",\"value\":\"#\"}}', '1515985918', '1', '1'), ('107', '37', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/8\\/20180817\\/5b768dfd6189a.jpg\"}}', '1534496260', '0', '1'), ('88', '37', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2b0969d7.jpg\"}}', '1526699754', '2', '1'), ('89', '38', '{\"banner\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2436876e.jpg\"}}', '1527153599', '1', '1'), ('86', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u8054\\u7cfb\\u5ba2\\u670d\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/doemo.net\\/public\\/uploads\\/0\\/20180824\\/5b7f5424a1a59.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/index\\/about.html\"}}', '1522310836', '1', '1'), ('90', '34', '{\"title\":{\"type\":\"input\",\"value\":\"1\"},\"url\":{\"type\":\"input\",\"value\":\"#\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2a4445a8.jpg\"}}', '1527823558', '1', '2'), ('91', '37', '{\"img\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2deb5b20.jpg\"}}', '1528688012', '1', '1'), ('92', '32', '{\"name\":{\"type\":\"input\",\"value\":\"\\u63a8\\u5e7f\\u4f63\\u91d1\"},\"icon\":{\"type\":\"upload\",\"value\":\"http:\\/\\/doemo.net\\/public\\/uploads\\/0\\/20180824\\/5b7f54262f2a8.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/wap\\/my\\/user_pro.html\"}}', '1530688244', '1', '1'), ('99', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u5206\\u7c7b\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/0\\/20180808\\/5b6ab28559200.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/productSort\\/productSort\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u662f\"}}', '1533721963', '1', '1'), ('101', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u79d2\\u6740\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/0\\/20180808\\/5b6abda83dc2a.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/miao-list\\/miao-list\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u5426\"}}', '1533722037', '1', '1'), ('103', '48', '{\"name\":{\"type\":\"input\",\"value\":\"banenr1\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/miao-list\\/miao-list\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/editor\\/20180601\\/5b10b2d35dc37.jpg\"}}', '1533722245', '1', '1'), ('104', '48', '{\"name\":{\"type\":\"input\",\"value\":\"banenr2\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/pink-list\\/index\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/11\\/20180817\\/5b7670c42f24b.jpg\"}}', '1533722286', '10', '1'), ('105', '47', '{\"name\":{\"type\":\"input\",\"value\":\"\\u54a8\\u8be2\"},\"pic\":{\"type\":\"upload\",\"value\":\"http:\\/\\/shop.crmeb.net\\/public\\/uploads\\/0\\/20180809\\/5b6bedbcb2f17.png\"},\"url\":{\"type\":\"input\",\"value\":\"\\/pages\\/new-list\\/new-list\"},\"show\":{\"type\":\"radio\",\"value\":\"\\u5426\"}}', '1533797064', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_log`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_log`;
CREATE TABLE `eb_system_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员操作记录ID',
  `admin_id` int(10) unsigned NOT NULL COMMENT '管理员id',
  `admin_name` varchar(64) NOT NULL COMMENT '管理员姓名',
  `path` varchar(128) NOT NULL COMMENT '链接',
  `page` varchar(64) NOT NULL COMMENT '行为',
  `method` varchar(12) NOT NULL COMMENT '访问类型',
  `ip` varchar(16) NOT NULL COMMENT '登录IP',
  `type` varchar(32) NOT NULL COMMENT '类型',
  `add_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  `merchant_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8 COMMENT='管理员操作记录表';

-- ----------------------------
--  Table structure for `eb_system_menus`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_menus`;
CREATE TABLE `eb_system_menus` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `menu_name` varchar(32) NOT NULL DEFAULT '' COMMENT '按钮名',
  `module` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '模块名',
  `controller` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '控制器',
  `action` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '方法名',
  `params` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]' COMMENT '参数',
  `sort` tinyint(3) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '子管理员是否可用',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `access` (`access`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=378 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
--  Records of `eb_system_menus`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_menus` VALUES ('1', '289', '', '系统设置', 'admin', 'setting.systemConfig', 'index', '[]', '90', '1', '1'), ('2', '153', '', '权限规则', 'admin', 'setting.systemMenus', 'index', '{\"cate\":\"12\"}', '7', '1', '1'), ('4', '153', '', '管理员列表', 'admin', 'setting.systemAdmin', 'index', '[]', '9', '1', '1'), ('6', '1', '', '系统配置', 'admin', 'setting.systemConfig', 'index', '{\"tab_id\":\"1\"}', '1', '1', '1'), ('7', '1', '', '配置分类', 'admin', 'setting.systemConfigTab', 'index', '[]', '1', '1', '1'), ('8', '153', '', '身份管理', 'admin', 'setting.systemRole', 'index', '[]', '10', '1', '1'), ('9', '1', '', '组合数据', 'admin', 'setting.systemGroup', 'index', '[]', '1', '1', '1'), ('11', '0', 'wechat', '公众号', 'admin', 'wechat.wechat', 'index', '[]', '91', '1', '1'), ('12', '354', '', '微信关注回复', 'admin', 'wechat.reply', 'index', '{\"key\":\"subscribe\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u914d\\u7f6e\\u9ed8\\u8ba4\\u56de\\u590d\"}', '86', '1', '1'), ('17', '360', '', '微信菜单', 'admin', 'wechat.menus', 'index', '[]', '95', '1', '1'), ('286', '0', 'paper-plane', '营销', 'admin', '', '', '[]', '105', '1', '1'), ('19', '11', '', '图文管理', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', '60', '1', '1'), ('21', '0', 'magic', '维护', 'admin', 'system.system', '', '[]', '1', '1', '1'), ('23', '0', 'laptop', '商品', 'admin', 'store.store', 'index', '[]', '110', '1', '1'), ('24', '23', '', '商品管理', 'admin', 'store.storeProduct', 'index', '{\"type\":\"1\"}', '100', '1', '1'), ('25', '23', '', '商品分类', 'admin', 'store.storeCategory', 'index', '[]', '1', '1', '1'), ('26', '285', '', '订单管理', 'admin', 'order.storeOrder', 'index', '[]', '1', '1', '1'), ('30', '354', '', '关键字回复', 'admin', 'wechat.reply', 'keyword', '[]', '85', '1', '1'), ('31', '354', '', '无效关键词回复', 'admin', 'wechat.reply', 'index', '{\"key\":\"default\",\"title\":\"\\u7f16\\u8f91\\u65e0\\u6548\\u5173\\u952e\\u5b57\\u9ed8\\u8ba4\\u56de\\u590d\"}', '84', '1', '1'), ('33', '284', '', '附加权限', 'admin', 'article.articleCategory', '', '[]', '0', '0', '1'), ('34', '33', '', '添加文章分类', 'admin', 'article.articleCategory', 'create', '[]', '0', '0', '1'), ('35', '33', '', '编辑文章分类', 'admin', 'article.articleCategory', 'edit', '[]', '0', '0', '1'), ('36', '33', '', '删除文章分类', 'admin', 'article.articleCategory', 'delete', '[]', '0', '0', '1'), ('37', '31', '', '附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1'), ('38', '283', '', '附加权限', 'admin', 'article.article', '', '[]', '0', '0', '1'), ('39', '38', '', '添加文章', 'admin', 'article. article', 'create', '[]', '0', '0', '1'), ('40', '38', '', '编辑文章', 'admin', 'article. article', 'add_new', '[]', '0', '0', '1'), ('41', '38', '', '删除文章', 'admin', 'article. article', 'delete', '[]', '0', '0', '1'), ('42', '19', '', '附加权限', 'admin', 'wechat.wechatNewsCategory', '', '[]', '0', '0', '1'), ('43', '42', '', '添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'create', '[]', '0', '0', '1'), ('44', '42', '', '编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'edit', '[]', '0', '0', '1'), ('45', '42', '', '删除图文消息', 'admin', 'wechat.wechatNewsCategory', 'delete', '[]', '0', '0', '1'), ('46', '7', '', '配置分类附加权限', 'admin', 'setting.systemConfigTab', '', '[]', '0', '0', '1'), ('47', '46', '', '添加配置分类', 'admin', 'setting.systemConfigTab', 'create', '[]', '0', '0', '1'), ('48', '46', '', '添加配置', 'admin', 'setting.systemConfig', 'create', '[]', '0', '0', '1'), ('49', '46', '', '编辑配置分类', 'admin', 'setting.systemConfigTab', 'edit', '[]', '0', '0', '1'), ('50', '46', '', '删除配置分类', 'admin', 'setting.systemConfigTab', 'delete', '[]', '0', '0', '1'), ('51', '46', '', '查看子字段', 'admin', 'system.systemConfigTab', 'sonConfigTab', '[]', '0', '0', '1'), ('52', '9', '', '组合数据附加权限', 'admin', 'system.systemGroup', '', '[]', '0', '0', '1'), ('53', '52', '', '添加数据', 'admin', 'system.systemGroupData', 'create', '[]', '0', '0', '1'), ('54', '52', '', '编辑数据', 'admin', 'system.systemGroupData', 'edit', '[]', '0', '0', '1'), ('55', '52', '', '删除数据', 'admin', 'system.systemGroupData', 'delete', '[]', '0', '0', '1'), ('56', '52', '', '数据列表', 'admin', 'system.systemGroupData', 'index', '[]', '0', '0', '1'), ('57', '52', '', '添加数据组', 'admin', 'system.systemGroup', 'create', '[]', '0', '0', '1'), ('58', '52', '', '删除数据组', 'admin', 'system.systemGroup', 'delete', '[]', '0', '0', '1'), ('59', '4', '', '管理员列表附加权限', 'admin', 'system.systemAdmin', '', '[]', '0', '0', '1'), ('60', '59', '', '添加管理员', 'admin', 'system.systemAdmin', 'create', '[]', '0', '0', '1'), ('61', '59', '', '编辑管理员', 'admin', 'system.systemAdmin', 'edit', '[]', '0', '0', '1'), ('62', '59', '', '删除管理员', 'admin', 'system.systemAdmin', 'delete', '[]', '0', '0', '1'), ('63', '8', '', '身份管理附加权限', 'admin', 'system.systemRole', '', '[]', '0', '0', '1'), ('64', '63', '', '添加身份', 'admin', 'system.systemRole', 'create', '[]', '0', '0', '1'), ('65', '63', '', '修改身份', 'admin', 'system.systemRole', 'edit', '[]', '0', '0', '1'), ('66', '63', '', '删除身份', 'admin', 'system.systemRole', 'delete', '[]', '0', '0', '1'), ('67', '8', '', '身份管理展示页', 'admin', 'system.systemRole', 'index', '[]', '0', '0', '1'), ('68', '4', '', '管理员列表展示页', 'admin', 'system.systemAdmin', 'index', '[]', '0', '0', '1'), ('69', '7', '', '配置分类展示页', 'admin', 'setting.systemConfigTab', 'index', '[]', '0', '0', '1'), ('70', '9', '', '组合数据展示页', 'admin', 'system.systemGroup', 'index', '[]', '0', '0', '1'), ('71', '284', '', '文章分类管理展示页', 'admin', 'article.articleCategory', 'index', '[]', '0', '0', '1'), ('72', '283', '', '文章管理展示页', 'admin', 'article.article', 'index', '[]', '0', '0', '1'), ('73', '19', '', '图文消息展示页', 'admin', 'wechat.wechatNewsCategory', 'index', '[]', '0', '0', '1'), ('74', '2', '', '菜单管理附加权限', 'admin', 'system.systemMenus', '', '[]', '0', '0', '1'), ('75', '74', '', '添加菜单', 'admin', 'system.systemMenus', 'create', '[]', '0', '0', '1'), ('76', '74', '', '编辑菜单', 'admin', 'system.systemMenus', 'edit', '[]', '0', '0', '1'), ('77', '74', '', '删除菜单', 'admin', 'system.systemMenus', 'delete', '[]', '0', '0', '1'), ('78', '2', '', '菜单管理展示页', 'admin', 'system.systemMenus', 'index', '[]', '0', '0', '1'), ('352', '148', '', '优惠券配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"12\"}', '0', '1', '1'), ('80', '0', 'leanpub', '内容', 'admin', 'wechat.wechatNews', 'index', '[]', '90', '1', '1'), ('82', '151', '', '微信用户管理', 'admin', 'user', 'list', '[]', '5', '1', '1'), ('84', '82', '', '用户标签', 'admin', 'wechat.wechatUser', 'tag', '[]', '0', '1', '1'), ('89', '30', '', '关键字回复附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1'), ('90', '89', '', '添加关键字', 'admin', 'wechat.reply', 'add_keyword', '[]', '0', '0', '1'), ('91', '89', '', '修改关键字', 'admin', 'wechat.reply', 'info_keyword', '[]', '0', '0', '1'), ('92', '89', '', '删除关键字', 'admin', 'wechat.reply', 'delete', '[]', '0', '0', '1'), ('93', '30', '', '关键字回复展示页', 'admin', 'wechat.reply', 'keyword', '[]', '0', '0', '1'), ('94', '31', '', '无效关键词回复展示页', 'admin', 'wechat.reply', 'index', '[]', '0', '0', '1'), ('95', '31', '', '无效关键词回复附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1'), ('96', '95', '', '无效关键词回复提交按钮', 'admin', 'wechat.reply', 'save', '{\"key\":\"default\",\"title\":\"编辑无效关键字默认回复\"}', '0', '0', '1'), ('97', '12', '', '微信关注回复展示页', 'admin', 'wechat.reply', 'index', '[]', '0', '0', '1'), ('98', '12', '', '微信关注回复附加权限', 'admin', 'wechat.reply', '', '[]', '0', '0', '1'), ('99', '98', '', '微信关注回复提交按钮', 'admin', 'wechat.reply', 'save', '{\"key\":\"subscribe\",\"title\":\"编辑无配置默认回复\"}', '0', '0', '1'), ('100', '74', '', '添加提交菜单', 'admin', 'system.systemMenus', 'save', '[]', '0', '0', '1'), ('101', '74', '', '编辑提交菜单', 'admin', 'system.systemMenus', 'update', '[]', '0', '1', '1'), ('102', '59', '', '提交添加管理员', 'admin', 'system.systemAdmin', 'save', '[]', '0', '0', '1'), ('103', '59', '', '提交修改管理员', 'admin', 'system.systemAdmin', 'update', '[]', '0', '0', '1'), ('104', '63', '', '提交添加身份', 'admin', 'system.systemRole', 'save', '[]', '0', '0', '1'), ('105', '63', '', '提交修改身份', 'admin', 'system.systemRole', 'update', '[]', '0', '0', '1'), ('106', '46', '', '提交添加配置分类', 'admin', 'setting.systemConfigTab', 'save', '[]', '0', '0', '1'), ('107', '46', '', '提交修改配置分类', 'admin', 'setting.systemConfigTab', 'update', '[]', '0', '0', '1'), ('108', '46', '', '提交添加配置列表', 'admin', 'setting.systemConfig', 'save', '[]', '0', '0', '1'), ('109', '52', '', '提交添加数据组', 'admin', 'system.systemGroup', 'save', '[]', '0', '0', '1'), ('110', '52', '', '提交修改数据组', 'admin', 'system.systemGroup', 'update', '[]', '0', '0', '1'), ('111', '52', '', '提交添加数据', 'admin', 'system.systemGroupData', 'save', '[]', '0', '0', '1'), ('112', '52', '', '提交修改数据', 'admin', 'system.systemGroupData', 'update', '[]', '0', '0', '1'), ('113', '33', '', '提交添加文章分类', 'admin', 'article.articleCategory', 'save', '[]', '0', '0', '1'), ('114', '33', '', '提交添加文章分类', 'admin', 'article.articleCategory', 'update', '[]', '0', '0', '1'), ('115', '42', '', '提交添加图文消息', 'admin', 'wechat.wechatNewsCategory', 'save', '[]', '0', '0', '1'), ('116', '42', '', '提交编辑图文消息', 'admin', 'wechat.wechatNewsCategory', 'update', '[]', '0', '0', '1'), ('117', '6', '', '配置列表附加权限', 'admin', 'setting.systemConfig', '', '[]', '0', '0', '1'), ('118', '6', '', '配置列表展示页', 'admin', 'setting.systemConfig', 'index', '[]', '0', '0', '1'), ('119', '117', '', '提交保存配置列表', 'admin', 'setting.systemConfig', 'save_basics', '[]', '0', '0', '1'), ('123', '89', '', '提交添加关键字', 'admin', 'wechat.reply', 'save_keyword', '{\"dis\":\"1\"}', '0', '0', '1'), ('124', '89', '', '提交修改关键字', 'admin', 'wechat.reply', 'save_keyword', '{\"dis\":\"2\"}', '0', '0', '1'), ('126', '17', '', '微信菜单展示页', 'admin', 'wechat.menus', 'index', '[]', '0', '0', '1'), ('127', '17', '', '微信菜单附加权限', 'admin', 'wechat.menus', '', '[]', '0', '0', '1'), ('128', '127', '', '提交微信菜单按钮', 'admin', 'wechat.menus', 'save', '{\"dis\":\"1\"}', '0', '0', '1'), ('129', '82', '', '用户行为纪录', 'admin', 'wechat.wechatMessage', 'index', '[]', '0', '1', '1'), ('130', '21', '', '系统日志', 'admin', 'system.systemLog', 'index', '[]', '5', '1', '1'), ('131', '130', '', '管理员操作记录展示页', 'admin', 'system.systemLog', 'index', '[]', '0', '0', '1'), ('132', '129', '', '微信用户行为纪录展示页', 'admin', 'wechat.wechatMessage', 'index', '[]', '0', '0', '1'), ('133', '82', '', '微信用户', 'admin', 'wechat.wechatUser', 'index', '[]', '1', '1', '1'), ('134', '133', '', '微信用户展示页', 'admin', 'wechat.wechatUser', 'index', '[]', '0', '0', '1'), ('241', '273', '', '限时秒杀', 'admin', 'ump.storeSeckill', 'index', '[]', '0', '1', '1'), ('137', '135', '', '添加通知模板', 'admin', 'system.systemNotice', 'create', '[]', '0', '0', '1'), ('138', '135', '', '编辑通知模板', 'admin', 'system.systemNotice', 'edit', '[]', '0', '0', '1'), ('139', '135', '', '删除辑通知模板', 'admin', 'system.systemNotice', 'delete', '[]', '0', '0', '1'), ('140', '135', '', '提交编辑辑通知模板', 'admin', 'system.systemNotice', 'update', '[]', '0', '0', '1'), ('141', '135', '', '提交添加辑通知模板', 'admin', 'system.systemNotice', 'save', '[]', '0', '0', '1'), ('142', '25', '', '产品分类展示页', 'admin', 'store.storeCategory', 'index', '[]', '0', '0', '1'), ('143', '25', '', '产品分类附加权限', 'admin', 'store.storeCategory', '', '[]', '0', '0', '1'), ('144', '117', '', '获取配置列表上传文件的名称', 'admin', 'setting.systemConfig', 'getimagename', '[]', '0', '0', '1'), ('145', '117', '', '配置列表上传文件', 'admin', 'setting.systemConfig', 'view_upload', '[]', '0', '0', '1'), ('146', '24', '', '产品管理展示页', 'admin', 'store.storeProduct', 'index', '[]', '0', '0', '1'), ('147', '24', '', '产品管理附加权限', 'admin', 'store.storeProduct', '', '[]', '0', '0', '1'), ('148', '286', '', '优惠券', '', '', '', '[]', '10', '1', '1'), ('149', '148', '', '优惠券制作', 'admin', 'ump.storeCoupon', 'index', '[]', '5', '1', '1'), ('150', '148', '', '会员领取记录', 'admin', 'ump.storeCouponUser', 'index', '[]', '1', '1', '1'), ('151', '0', 'user', '会员', 'admin', 'user.userList', 'list', '[]', '107', '1', '1'), ('153', '289', '', '管理权限', 'admin', 'setting.systemAdmin', '', '[]', '100', '1', '1'), ('155', '154', '', '商户产品展示页', 'admin', 'store.storeMerchant', 'index', '[]', '0', '0', '1'), ('156', '154', '', '商户产品附加权限', 'admin', 'store.storeMerchant', '', '[]', '0', '0', '1'), ('158', '157', '', '商户文章管理展示页', 'admin', 'wechat.wechatNews', 'merchantIndex', '[]', '0', '0', '1'), ('159', '157', '', '商户文章管理附加权限', 'admin', 'wechat.wechatNews', '', '[]', '0', '0', '1'), ('170', '290', '', '评论管理', 'admin', 'store.storeProductReply', '', '[]', '0', '1', '1'), ('173', '21', '', '文件校验', 'admin', 'system.system_file', 'index', '[]', '1', '1', '1'), ('174', '360', '', '微信模板消息', 'admin', 'wechat.wechatTemplate', 'index', '[]', '1', '1', '1'), ('175', '11', '', '客服管理', 'admin', 'wechat.storeService', 'index', '[]', '70', '1', '1'), ('176', '151', '', '站内通知', 'admin', 'user.user_notice', 'index', '[]', '8', '1', '1'), ('177', '151', '', '会员管理', 'admin', 'user.user', 'index', '[]', '10', '1', '1'), ('179', '307', '', '充值记录', 'admin', 'finance.userRecharge', 'index', '[]', '1', '1', '1'), ('190', '26', '', '订单管理展示页', 'admin', 'store.storeOrder', 'index', '[]', '0', '0', '1'), ('191', '26', '', '订单管理附加权限', 'admin', 'store.storeOrder', '', '[]', '0', '0', '1'), ('192', '191', '', '订单管理去发货', 'admin', 'store.storeOrder', 'deliver_goods', '[]', '0', '0', '1'), ('193', '191', '', '订单管理备注', 'admin', 'store.storeOrder', 'remark', '[]', '0', '0', '1'), ('194', '191', '', '订单管理去送货', 'admin', 'store.storeOrder', 'delivery', '[]', '0', '0', '1'), ('195', '191', '', '订单管理已收货', 'admin', 'store.storeOrder', 'take_delivery', '[]', '0', '0', '1'), ('196', '191', '', '订单管理退款', 'admin', 'store.storeOrder', 'refund_y', '[]', '0', '0', '1'), ('197', '191', '', '订单管理修改订单', 'admin', 'store.storeOrder', 'edit', '[]', '0', '0', '1'), ('198', '191', '', '订单管理修改订单提交', 'admin', 'store.storeOrder', 'update', '[]', '0', '0', '1'), ('199', '191', '', '订单管理退积分', 'admin', 'store.storeOrder', 'integral_back', '[]', '0', '0', '1'), ('200', '191', '', '订单管理退积分提交', 'admin', 'store.storeOrder', 'updateIntegralBack', '[]', '0', '0', '1'), ('201', '191', '', '订单管理立即支付', 'admin', 'store.storeOrder', 'offline', '[]', '0', '0', '1'), ('202', '191', '', '订单管理退款原因', 'admin', 'store.storeOrder', 'refund_n', '[]', '0', '0', '1'), ('203', '191', '', '订单管理退款原因提交', 'admin', 'store.storeOrder', 'updateRefundN', '[]', '0', '0', '1'), ('204', '191', '', '订单管理修改配送信息', 'admin', 'store.storeOrder', 'distribution', '[]', '0', '0', '1'), ('205', '191', '', '订单管理修改配送信息提交', 'admin', 'store.storeOrder', 'updateDistribution', '[]', '0', '0', '1'), ('206', '191', '', '订单管理退款提交', 'admin', 'store.storeOrder', 'updateRefundY', '[]', '0', '0', '1'), ('207', '191', '', '订单管理去发货提交', 'admin', 'store.storeOrder', 'updateDeliveryGoods', '[]', '0', '0', '1'), ('208', '191', '', '订单管理去送货提交', 'admin', 'store.storeOrder', 'updateDelivery', '[]', '0', '0', '1'), ('209', '175', '', '客服管理展示页', 'admin', 'store.storeService', 'index', '[]', '0', '0', '1'), ('210', '175', '', '客服管理附加权限', 'admin', 'store.storeService', '', '[]', '0', '0', '1'), ('211', '210', '', '客服管理添加', 'admin', 'store.storeService', 'create', '[]', '0', '0', '1'), ('212', '210', '', '客服管理添加提交', 'admin', 'store.storeService', 'save', '[]', '0', '0', '1'), ('213', '210', '', '客服管理编辑', 'admin', 'store.storeService', 'edit', '[]', '0', '0', '1'), ('214', '210', '', '客服管理编辑提交', 'admin', 'store.storeService', 'update', '[]', '0', '0', '1'), ('215', '210', '', '客服管理删除', 'admin', 'store.storeService', 'delete', '[]', '0', '0', '1'), ('216', '179', '', '用户充值记录展示页', 'admin', 'user.userRecharge', 'index', '[]', '0', '0', '1'), ('217', '179', '', '用户充值记录附加权限', 'admin', 'user.userRecharge', '', '[]', '0', '0', '1'), ('218', '217', '', '用户充值记录退款', 'admin', 'user.userRecharge', 'edit', '[]', '0', '0', '1'), ('219', '217', '', '用户充值记录退款提交', 'admin', 'user.userRecharge', 'updaterefundy', '[]', '0', '0', '1'), ('220', '180', '', '预售卡管理批量修改预售卡金额', 'admin', 'presell.presellCard', 'batch_price', '[]', '0', '0', '1'), ('221', '180', '', '预售卡管理批量修改预售卡金额提交', 'admin', 'presell.presellCard', 'savebatch', '[]', '0', '0', '1'), ('222', '210', '', '客服管理聊天记录查询', 'admin', 'store.storeService', 'chat_user', '[]', '0', '0', '1'), ('223', '210', '', '客服管理聊天记录查询详情', 'admin', 'store.storeService', 'chat_list', '[]', '0', '0', '1'), ('224', '170', '', '评论管理展示页', 'admin', 'store.storeProductReply', 'index', '[]', '0', '0', '1'), ('225', '170', '', '评论管理附加权限', 'admin', 'store.storeProductReply', '', '[]', '0', '0', '1'), ('226', '225', '', '评论管理回复评论', 'admin', 'store.storeProductReply', 'set_reply', '[]', '0', '0', '1'), ('227', '225', '', '评论管理修改回复评论', 'admin', 'store.storeProductReply', 'edit_reply', '[]', '0', '0', '1'), ('228', '225', '', '评论管理删除评论', 'admin', 'store.storeProductReply', 'delete', '[]', '0', '0', '1'), ('229', '149', '', '优惠券管理展示页', 'admin', 'store.storeCoupon', 'index', '[]', '0', '0', '1'), ('230', '149', '', '优惠券管理附加权限', 'admin', 'store.storeCoupon', '', '[]', '0', '0', '1'), ('231', '230', '', '优惠券管理添加', 'admin', 'store.storeCoupon', 'create', '[]', '0', '0', '1'), ('232', '230', '', '优惠券管理添加提交', 'admin', 'store.storeCoupon', 'save', '[]', '0', '0', '1'), ('233', '230', '', '优惠券管理删除', 'admin', 'store.storeCoupon', 'delete', '[]', '0', '0', '1'), ('234', '230', '', '优惠券管理立即失效', 'admin', 'store.storeCoupon', 'status', '[]', '0', '0', '1'), ('235', '148', '', '已发布管理', 'admin', 'ump.storeCouponIssue', 'index', '[]', '3', '1', '1'), ('236', '82', '', '用户分组', 'admin', 'wechat.wechatUser', 'group', '[]', '0', '1', '1'), ('237', '21', '', '刷新缓存', 'admin', 'system.clear', 'index', '[]', '0', '1', '1'), ('239', '306', '', '提现申请', 'admin', 'finance.user_extract', 'index', '[]', '0', '1', '1'), ('351', '349', '', '积分日志', 'admin', 'ump.userPoint', 'index', '[]', '0', '1', '1'), ('244', '294', '', '财务报表', 'admin', 'record.storeStatistics', 'index', '[]', '0', '1', '1'), ('245', '293', '', '商品统计', 'admin', 'store.storeProduct', 'statistics', '[]', '0', '0', '1'), ('246', '295', '', '用户统计', 'admin', 'user.user', 'user_analysis', '[]', '0', '1', '1'), ('247', '153', '', '个人资料', 'admin', 'setting.systemAdmin', 'admininfo', '[]', '0', '0', '1'), ('248', '247', '', '个人资料附加权限', 'admin', 'system.systemAdmin', '', '[]', '0', '0', '1'), ('249', '248', '', '个人资料提交保存', 'admin', 'system.systemAdmin', 'setAdminInfo', '[]', '0', '0', '1'), ('250', '247', '', '个人资料展示页', 'admin', 'system.systemAdmin', 'admininfo', '[]', '0', '0', '1'), ('251', '293', '', '订单统计', 'admin', 'order.storeOrder', 'orderchart', '[]', '0', '1', '1'), ('252', '21', '', '在线更新', 'admin', 'system.system_upgradeclient', 'index', '[]', '0', '1', '1'), ('253', '259', '', '添加更新包', 'admin', 'server.server_upgrade', 'add_upgrade', '[]', '0', '0', '1'), ('255', '1', '', '后台通知', 'admin', 'setting.systemNotice', 'index', '[]', '0', '1', '1'), ('256', '0', 'cloud', '服务器端', 'admin', 'upgrade', 'index', '[]', '-100', '0', '1'), ('257', '258', '', 'IP白名单', 'admin', 'server.server_upgrade', 'ip_hteb_list', '[]', '0', '0', '1'), ('258', '256', '', '站点管理', 'admin', 'server.server_upgrade', 'index', '[]', '0', '1', '1'), ('259', '256', '', '版本管理', 'admin', 'server.server_upgrade', 'versionlist', '[]', '0', '1', '1'), ('260', '256', '', '升级日志', 'admin', 'server.server_upgrade', 'upgrade_log', '[]', '0', '1', '1'), ('261', '147', '', '编辑产品', 'admin', 'store.storeproduct', 'edit', '[]', '0', '0', '1'), ('262', '147', '', '添加产品', 'admin', 'store.storeproduct', 'create', '[]', '0', '0', '1'), ('263', '147', '', '编辑产品详情', 'admin', 'store.storeproduct', 'edit_content', '[]', '0', '0', '1'), ('264', '147', '', '开启秒杀', 'admin', 'store.storeproduct', 'seckill', '[]', '0', '0', '1'), ('265', '147', '', '开启秒杀', 'admin', 'store.store_product', 'bargain', '[]', '0', '0', '1'), ('266', '147', '', '产品编辑属性', 'admin', 'store.storeproduct', 'attr', '[]', '0', '0', '1'), ('267', '360', '', '公众号接口配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"2\"}', '100', '1', '1'), ('269', '0', 'cubes', '小程序', 'admin', 'setting.system', '', '[]', '92', '1', '1'), ('270', '269', '', '小程序配置', 'admin', 'setting.systemConfig', 'index_alone', '{\"type\":\"2\",\"tab_id\":\"7\"}', '0', '1', '1'), ('273', '286', '', '秒杀管理', 'admin', '', '', '[]', '0', '1', '1'), ('293', '288', '', '交易数据', 'admin', '', '', '[]', '100', '1', '1'), ('276', '21', '', '附件管理', 'admin', 'widget.images', 'index', '[]', '0', '0', '1'), ('278', '21', '', '清除数据', 'admin', 'system.system_cleardata', 'index', '[]', '0', '1', '1'), ('363', '362', '', '上传图片', 'admin', 'widget.images', 'upload', '[]', '0', '1', '1'), ('364', '362', '', '删除图片', 'admin', 'widget.images', 'delete', '[]', '0', '1', '1'), ('362', '276', '', '附加权限', '', '', '', '[]', '0', '1', '1'), ('285', '0', 'building-o', '订单', 'admin', '', '', '[]', '109', '1', '1'), ('283', '80', '', '文章管理', 'admin', 'article.article', 'index', '[]', '0', '1', '1'), ('284', '80', '', '文章分类', 'admin', 'article.article_category', 'index', '[]', '0', '1', '1'), ('287', '0', 'money', '财务', 'admin', '', '', '[]', '103', '1', '1'), ('288', '0', 'line-chart', '数据', 'admin', '', '', '[]', '100', '0', '1'), ('289', '0', 'gear', '设置', 'admin', '', '', '[]', '90', '1', '1'), ('290', '285', '', '售后服务', 'admin', '', '', '[]', '0', '1', '1'), ('353', '337', '', '分销配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"9\"}', '0', '1', '1'), ('306', '287', '', '财务操作', 'admin', '', '', '[]', '100', '1', '1'), ('307', '287', '', '财务记录', 'admin', '', '', '[]', '50', '1', '1'), ('308', '287', '', '佣金记录', 'admin', '', '', '[]', '0', '1', '1'), ('372', '269', '', '首页幻灯片', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"48\"}', '0', '1', '1'), ('312', '307', '', '资金监控', 'admin', 'finance.finance', 'bill', '[]', '0', '1', '1'), ('313', '308', '', '佣金记录', 'admin', 'finance.finance', 'commission_list', '[]', '0', '1', '1'), ('329', '285', '', '营销订单', 'admin', 'user', 'user', '[]', '0', '0', '1'), ('371', '337', '', '分销员管理', 'admin', 'agent.agentManage', 'index', '[]', '0', '1', '1'), ('354', '11', '', '自动回复', '', '', '', '[]', '80', '1', '1'), ('334', '329', '', '秒杀订单', 'admin', 'user', '', '[]', '0', '0', '1'), ('335', '329', '', '积分兑换', 'admin', 'user', '', '[]', '0', '0', '1'), ('336', '151', '', '会员等级', 'admin', 'user.user', 'group', '[]', '0', '0', '1'), ('337', '0', 'users', '分销', 'admin', 'user', 'user', '[]', '106', '1', '1'), ('349', '286', '', '积分', 'admin', 'userPoint', 'index', '[]', '0', '1', '1'), ('350', '349', '', '积分配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"3\",\"tab_id\":\"11\"}', '0', '1', '1'), ('355', '11', '', '页面设置', '', '', '', '[]', '90', '1', '1'), ('356', '355', '', '个人中心菜单', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"32\"}', '0', '1', '1'), ('357', '355', '', '商城首页banner', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"34\"}', '0', '1', '1'), ('358', '355', '', '商城首页分类按钮', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"35\"}', '0', '1', '1'), ('359', '355', '', '商城首页滚动新闻', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"36\"}', '0', '1', '1'), ('360', '11', '', '公众号配置', '', '', '', '[]', '100', '1', '1'), ('361', '360', '', '公众号支付配置', 'admin', 'setting.systemConfig', 'index', '{\"type\":\"1\",\"tab_id\":\"4\"}', '0', '1', '1'), ('365', '362', '', '附件管理', 'admin', 'widget.images', 'index', '[]', '0', '1', '1'), ('369', '143', '', '添加产品分类', 'admin', 'store.storeCategory', 'create', '[]', '0', '0', '1'), ('370', '143', '', '编辑产品分类', 'admin', 'store.storeCategory', 'edit', '[]', '0', '0', '1'), ('373', '269', '', '首页导航按钮', 'admin', 'setting.system_group_data', 'index', '{\"gid\":\"47\"}', '0', '1', '1'), ('374', '295', '', '分销会员业务', 'admin', 'record.record', 'user_distribution_chart', '[]', '0', '1', '1'), ('375', '269', '', '小程序支付配置', 'admin', 'setting.systemConfig', 'index_alone', '{\"type\":\"2\",\"tab_id\":\"14\"}', '0', '1', '1'), ('376', '269', '', '小程序模板消息', 'admin', 'routine.routineTemplate', 'index', '[]', '0', '1', '1'), ('377', '21', '', '数据库维护', 'admin', 'system.system_databackup', 'index', '[]', '0', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_notice`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_notice`;
CREATE TABLE `eb_system_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知模板id',
  `title` varchar(64) NOT NULL COMMENT '通知标题',
  `type` varchar(64) NOT NULL COMMENT '通知类型',
  `icon` varchar(16) NOT NULL COMMENT '图标',
  `url` varchar(64) NOT NULL COMMENT '链接',
  `table_title` varchar(256) NOT NULL COMMENT '通知数据',
  `template` varchar(64) NOT NULL COMMENT '通知模板',
  `push_admin` varchar(128) NOT NULL COMMENT '通知管理员id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知模板表';

-- ----------------------------
--  Records of `eb_system_notice`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_notice` VALUES ('5', '用户关注通知', 'user_sub', 'user-plus', '', '[{\"title\":\"openid\",\"key\":\"openid\"},{\"title\":\"\\u5fae\\u4fe1\\u6635\\u79f0\",\"key\":\"nickname\"},{\"title\":\"\\u5173\\u6ce8\\u4e8b\\u4ef6\",\"key\":\"add_time\"}]', '有%u个新用户关注了公众号', '1', '1'), ('7', '新订单提醒', '订单提醒', 'building-o', '', '[{\"title\":\"\\u8ba2\\u5355\\u53f7\",\"key\":\"key1\"}]', '新订单提醒', '1', '1'), ('9', '测试通知中 ', '测试', 'buysellads', '', '[{\"title\":\"\\u8ba2\\u5355\\u53f7\",\"key\":\"key1\"}]', '测试', '20', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_notice_admin`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_notice_admin`;
CREATE TABLE `eb_system_notice_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知记录ID',
  `notice_type` varchar(64) NOT NULL COMMENT '通知类型',
  `admin_id` smallint(5) unsigned NOT NULL COMMENT '通知的管理员',
  `link_id` int(10) unsigned NOT NULL COMMENT '关联ID',
  `table_data` text NOT NULL COMMENT '通知的数据',
  `is_click` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_visit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `visit_time` int(11) NOT NULL COMMENT '访问时间',
  `add_time` int(10) unsigned NOT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`,`notice_type`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_visit` (`is_visit`) USING BTREE,
  KEY `is_click` (`is_click`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知记录表';

-- ----------------------------
--  Records of `eb_system_notice_admin`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_notice_admin` VALUES ('7', 'user_sub', '1', '2', '{\"openid\":2,\"nickname\":123,\"change_time\":1512444900}', '0', '1', '1512525411', '1512444900'), ('8', 'user_sub', '2', '2', '{\"openid\":2,\"nickname\":123,\"change_time\":1512444900}', '0', '1', '1512459748', '1512444901'), ('9', 'user_sub', '1', '2', '{\"openid\":2,\"nickname\":123,\"change_time\":1512454840}', '0', '1', '1512525411', '1512454840'), ('10', 'user_sub', '2', '2', '{\"openid\":2,\"nickname\":123,\"change_time\":1512454840}', '0', '1', '1512459748', '1512454840');
COMMIT;

-- ----------------------------
--  Table structure for `eb_system_role`
-- ----------------------------
DROP TABLE IF EXISTS `eb_system_role`;
CREATE TABLE `eb_system_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '身份管理id',
  `role_name` varchar(32) NOT NULL COMMENT '身份管理名称',
  `rules` text NOT NULL COMMENT '身份管理权限(menus_id)',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='身份管理表';

-- ----------------------------
--  Records of `eb_system_role`
-- ----------------------------
BEGIN;
INSERT INTO `eb_system_role` VALUES ('1', '超级管理员', '85,86,11,174,17,127,128,126,80,32,71,33,36,35,34,113,114,19,73,42,43,44,45,115,116,18,72,38,41,40,39,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,240,238,148,150,149,229,230,234,233,232,231,235,175,210,223,222,215,214,213,212,211,209,170,225,228,227,226,224,160,162,161,26,190,191,192,193,194,206,195,205,204,203,202,201,200,199,198,197,207,208,196,25,142,143,24,147,146,21,237,130,131,22,136,135,139,138,137,140,141,1,173,5,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,51,50,49,48,47,108,107,106,6,118,117,145,144,119,2,74,75,76,101,100,77,78,153,4,59,62,61,60,103,102,68,8,63,64,65,66,105,104,67,151,177,176,239,179,217,219,218,216,82,129,132,133,134,236,84', '0', '1'), ('15', '子管理员', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,241,240,238,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,236,84,133,134,129,132,18,72,38,39,40,41,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,1,2,78,74,101,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,173,237,130,131,0', '2', '1'), ('10', '客服', '23,241,240,238,148,150,149,229,230,231,234,233,232,235,26,191,197,196,195,194,193,192,198,207,206,205,204,203,202,201,200,208,199,190,175,209,210,223,222,215,214,213,212,211,170,225,228,227,226,224,25,142,143,24,146,147,151,177,176,239,179,217,219,218,216,82,133,134,129,132,236,84', '1', '1'), ('14', '演示账号', '146,142,26,191,195,194,193,192,196,197,198,208,207,206,205,204,203,202,201,200,199,190,290,170,224,225,228,227,226,177,176,82,133,134,236,84,129,132,337,371,353,149,229,230,232,233,234,231,235,150,273,241,238,306,239,179,216,217,218,219,245,244,246,269,376,375,373,270,372,17,126,127,128,174,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,215,214,222,223,213,212,211,209,19,73,42,45,44,43,116,115,8,67,63,104,66,65,64,105,4,68,59,103,102,62,61,60,78,101,250,70,56,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,80,284,71,33,36,35,34,114,113,283,72,38,41,40,39,173,237,130,131,365,24,25,285,151,0,148,286,272,287,307,293,294,295,360,11,153,2,74,247,9,52,1,21,362', '1', '1'), ('16', '三级身份', '11,174,17,127,128,126,80,32,33,36,35,34,113,114,71,19,42,45,44,43,116,115,73,79,31,37,95,96,94,30,89,124,123,90,91,92,93,12,98,99,97,23,148,149,230,234,233,232,231,229,150,235,175,210,212,211,213,214,223,222,215,209,170,225,228,227,226,224,26,191,198,192,202,193,203,201,200,194,199,196,197,195,208,207,206,205,204,190,25,142,143,24,146,147,241,240,238,151,179,217,219,218,216,177,176,239,82,133,134,129,132,236,84,18,38,39,40,41,72,153,8,67,63,66,65,64,105,104,4,59,60,61,62,103,102,68,247,250,243,246,245,244,9,52,58,57,56,55,54,53,111,110,109,112,70,5,7,69,46,51,50,49,48,47,108,107,106,6,118,117,144,145,119,21,130,131,173,237,0,1', '3', '1'), ('17', 'boss', '11,174,17,126,127,128,19,42,43,44,45,115,116,73,79,31,37,94,95,96,30,93,89,123,124,90,91,92,12,97,98,99,23,241,240,238,148,149,230,234,233,232,231,229,150,235,170,225,228,227,226,224,175,210,212,211,213,214,223,222,215,209,25,143,142,24,147,146,26,191,197,196,195,194,202,198,192,200,203,201,199,193,208,207,206,205,204,190,151,176,177,239,179,217,219,218,216,80,32,71,33,34,35,36,113,114,18,72,38,39,40,41,0', '2', '1'), ('18', '管理员', '23,24,323,328,324,325,326,327,147,261,262,266,265,264,263,146,25,143,370,369,142,285,26,191,194,193,192,195,196,208,207,206,205,204,203,202,201,200,199,198,197,190,329,335,334,333,290,170,225,226,227,228,224,151,177,176,82,133,134,236,84,129,132,336,337,371,339,353,286,148,149,229,230,234,231,232,233,235,150,352,349,351,350,273,241,272,238,271,254,366,368,367,287,306,239,307,179,216,217,218,219,312,308,313,288,293,251,245,340,341,296,318,317,316,315,314,294,244,302,301,300,295,246,305,304,303,297,321,320,319,355,359,358,357,356,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,212,213,214,215,222,223,211,209,19,73,42,45,44,43,116,115,283,72,38,41,40,39,284,71,33,36,35,34,114,113,8,67,63,104,66,65,64,105,68,103,102,61,2,78,74,77,76,75,101,100,247,248,249,250,1,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,255,269,270,21,130,131,173,252,237,278,276,362,365,364,363,258,257,260,0,11,80,153,4,59,289,256', '1', '1'), ('19', '公司内部', '23,24,323,328,324,325,326,327,147,261,262,263,266,265,264,146,25,143,370,369,142,285,26,191,195,194,193,192,196,197,208,207,206,205,204,203,202,201,200,199,198,190,329,335,334,333,290,170,224,225,228,227,226,177,176,82,133,134,236,84,129,132,337,371,353,286,148,149,229,230,231,232,233,234,235,150,352,349,351,350,273,241,272,238,271,254,366,368,367,306,239,179,216,217,218,219,340,341,296,318,317,316,315,314,302,301,300,246,305,304,303,297,321,320,319,270,11,360,267,17,126,127,128,174,361,355,359,358,357,356,354,12,98,99,97,30,89,92,91,90,123,124,93,31,95,96,94,37,175,210,213,214,215,222,223,212,211,209,19,73,42,45,44,43,116,115,289,153,8,67,63,104,66,65,64,105,4,68,59,103,102,62,61,60,2,78,74,77,76,75,101,100,247,250,248,249,1,9,70,52,58,57,56,55,54,53,112,111,110,109,7,69,46,47,48,49,51,50,108,107,106,6,118,117,145,144,119,255,283,72,38,41,40,39,284,71,33,36,35,34,114,113,130,131,173,252,237,276,362,365,364,363,0,151,287,307,293,288,294,295,269,80,21', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_user`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user`;
CREATE TABLE `eb_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account` varchar(32) NOT NULL COMMENT '用户账号',
  `pwd` varchar(32) NOT NULL COMMENT '用户密码',
  `nickname` varchar(16) NOT NULL COMMENT '用户昵称',
  `avatar` varchar(256) NOT NULL COMMENT '用户头像',
  `phone` char(15) NOT NULL COMMENT '手机号码',
  `add_time` int(11) unsigned NOT NULL COMMENT '添加时间',
  `add_ip` varchar(16) NOT NULL COMMENT '添加ip',
  `last_time` int(11) unsigned NOT NULL COMMENT '最后一次登录时间',
  `last_ip` varchar(16) NOT NULL COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推广元id',
  `user_type` varchar(32) NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为推广员',
  `pay_count` int(11) unsigned DEFAULT '0' COMMENT '用户购买次数',
  PRIMARY KEY (`uid`),
  KEY `account` (`account`) USING BTREE,
  KEY `spreaduid` (`spread_uid`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_promoter` (`is_promoter`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
--  Records of `eb_user`
-- ----------------------------
BEGIN;
INSERT INTO `eb_user` VALUES ('1', 'crmeb', 'e10adc3949ba59abbe56e057f20f883e', '等风来，随风去', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBaQPPnbg52bgibia1CZDruib1RwibHbBbnfxH1MUwbyz3G0Xub1LNX0ib5RFd7nZvo88gzHwib0OPibyfZQ/132', '', '1528859304', '140.207.54.80', '1537085102', '123.139.92.219', '0.00', '0.00', '1', '0', '0', 'wechat', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `eb_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_address`;
CREATE TABLE `eb_user_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(16) NOT NULL COMMENT '收货人电话',
  `province` varchar(64) NOT NULL COMMENT '收货人所在省',
  `city` varchar(64) NOT NULL COMMENT '收货人所在市',
  `district` varchar(64) NOT NULL COMMENT '收货人所在区',
  `detail` varchar(256) NOT NULL COMMENT '收货人详细地址',
  `post_code` int(10) unsigned NOT NULL COMMENT '邮编',
  `longitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `is_default` (`is_default`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户地址表';

-- ----------------------------
--  Table structure for `eb_user_bill`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_bill`;
CREATE TABLE `eb_user_bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账单id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) NOT NULL COMMENT '账单标题',
  `category` varchar(64) NOT NULL COMMENT '明细种类',
  `type` varchar(64) NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) NOT NULL COMMENT '备注',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效',
  PRIMARY KEY (`id`),
  KEY `openid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pm` (`pm`) USING BTREE,
  KEY `type` (`category`,`type`,`link_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户账单表';

-- ----------------------------
--  Table structure for `eb_user_enter`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_enter`;
CREATE TABLE `eb_user_enter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商户申请ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `province` varchar(32) NOT NULL COMMENT '商户所在省',
  `city` varchar(32) NOT NULL COMMENT '商户所在市',
  `district` varchar(32) NOT NULL COMMENT '商户所在区',
  `address` varchar(256) NOT NULL COMMENT '商户详细地址',
  `merchant_name` varchar(256) NOT NULL COMMENT '商户名称',
  `link_user` varchar(32) NOT NULL,
  `link_tel` varchar(16) NOT NULL COMMENT '商户电话',
  `charter` varchar(512) NOT NULL COMMENT '商户证书',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `apply_time` int(10) unsigned NOT NULL COMMENT '审核时间',
  `success_time` int(11) NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) NOT NULL COMMENT '未通过原因',
  `fail_time` int(10) unsigned NOT NULL COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  KEY `province` (`province`,`city`,`district`) USING BTREE,
  KEY `is_lock` (`is_lock`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商户申请表';

-- ----------------------------
--  Table structure for `eb_user_extract`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_extract`;
CREATE TABLE `eb_user_extract` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) DEFAULT NULL,
  `balance` decimal(8,2) unsigned DEFAULT '0.00',
  `fail_msg` varchar(128) DEFAULT NULL COMMENT '无效原因',
  `fail_time` int(10) unsigned DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`),
  KEY `extract_type` (`extract_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `fail_time` (`fail_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户提现表';

-- ----------------------------
--  Table structure for `eb_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_group`;
CREATE TABLE `eb_user_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) DEFAULT NULL COMMENT '用户分组名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户分组表';

-- ----------------------------
--  Table structure for `eb_user_notice`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_notice`;
CREATE TABLE `eb_user_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` text NOT NULL COMMENT '接收消息的用户id（类型：json数据）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '消息通知类型（1：系统消息；2：用户通知）',
  `user` varchar(20) NOT NULL DEFAULT '' COMMENT '发送人',
  `title` varchar(20) NOT NULL COMMENT '通知消息的标题信息',
  `content` varchar(500) NOT NULL COMMENT '通知消息的内容',
  `add_time` int(11) NOT NULL COMMENT '通知消息发送的时间',
  `is_send` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发送（0：未发送；1：已发送）',
  `send_time` int(11) NOT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户通知表';

-- ----------------------------
--  Table structure for `eb_user_notice_see`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_notice_see`;
CREATE TABLE `eb_user_notice_see` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NOT NULL COMMENT '查看的通知id',
  `uid` int(11) NOT NULL COMMENT '查看通知的用户id',
  `add_time` int(11) NOT NULL COMMENT '查看通知的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='用户通知发送记录表';

-- ----------------------------
--  Table structure for `eb_user_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `eb_user_recharge`;
CREATE TABLE `eb_user_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '充值用户UID',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `recharge_type` varchar(32) DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int(10) DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int(12) DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) unsigned NOT NULL COMMENT '退款金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `recharge_type` (`recharge_type`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户充值表';

-- ----------------------------
--  Table structure for `eb_wechat_media`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_media`;
CREATE TABLE `eb_wechat_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id',
  `type` varchar(16) NOT NULL COMMENT '回复类型',
  `path` varchar(128) NOT NULL COMMENT '文件路径',
  `media_id` varchar(64) NOT NULL COMMENT '微信服务器返回的id',
  `url` varchar(256) NOT NULL COMMENT '地址',
  `temporary` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  KEY `type_2` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='微信回复表';

-- ----------------------------
--  Records of `eb_wechat_media`
-- ----------------------------
BEGIN;
INSERT INTO `eb_wechat_media` VALUES ('12', 'image', '/public/uploads/wechat/image/5b042ca618139.jpg', '6sFx6PzPF2v_Lv4FGOMzzwcwmM2wuoA63ZMSxiN-7DY', 'http://mmbiz.qpic.cn/mmbiz_jpg/xVkDhuiaGm78WOdUXuPE1oYLnU4J0LCEiaSuLhwwSrfdyINspibXsllaj8rOMSs5estAv0qhGuGniaqhb6HftecPuw/0?wx_fmt=jpeg', '0', '1527000231');
COMMIT;

-- ----------------------------
--  Table structure for `eb_wechat_message`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_message`;
CREATE TABLE `eb_wechat_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户行为记录id',
  `openid` varchar(32) NOT NULL COMMENT '用户openid',
  `type` varchar(32) NOT NULL COMMENT '操作类型',
  `result` varchar(512) NOT NULL COMMENT '操作详细记录',
  `add_time` int(10) unsigned NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户行为记录表';

-- ----------------------------
--  Table structure for `eb_wechat_news_category`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_news_category`;
CREATE TABLE `eb_wechat_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息管理ID',
  `cate_name` varchar(255) NOT NULL COMMENT '图文名称',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `new_id` varchar(255) NOT NULL COMMENT '文章id',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图文消息管理表';

-- ----------------------------
--  Table structure for `eb_wechat_qrcode`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_qrcode`;
CREATE TABLE `eb_wechat_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信二维码ID',
  `third_type` varchar(32) NOT NULL COMMENT '二维码类型',
  `third_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `ticket` varchar(255) NOT NULL COMMENT '二维码参数',
  `expire_seconds` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `url` varchar(255) NOT NULL COMMENT '微信访问url',
  `qrcode_url` varchar(255) NOT NULL COMMENT '微信二维码url',
  `scan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被扫的次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `third_type` (`third_type`,`third_id`) USING BTREE,
  KEY `ticket` (`ticket`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='微信二维码管理表';

-- ----------------------------
--  Table structure for `eb_wechat_reply`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_reply`;
CREATE TABLE `eb_wechat_reply` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id',
  `key` varchar(64) NOT NULL COMMENT '关键字',
  `type` varchar(32) NOT NULL COMMENT '回复类型',
  `data` text NOT NULL COMMENT '回复数据',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `hide` (`hide`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='微信关键字回复表';

-- ----------------------------
--  Table structure for `eb_wechat_template`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_template`;
CREATE TABLE `eb_wechat_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) NOT NULL COMMENT '模板编号',
  `name` char(100) NOT NULL COMMENT '模板名',
  `content` varchar(1000) NOT NULL COMMENT '回复内容',
  `tempid` char(100) DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) NOT NULL COMMENT '添加时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='微信模板';

-- ----------------------------
--  Records of `eb_wechat_template`
-- ----------------------------
BEGIN;
INSERT INTO `eb_wechat_template` VALUES ('3', 'OPENTM200565259', '订单发货提醒', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'RRsyuuWpCo81xCtfG-5qYnXXoeSQHY4mTVav0zzaZsM', '1515052638', '1'), ('4', 'OPENTM413386489', '订单收货通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单状态：{{keyword2.DATA}}\n收货时间：{{keyword3.DATA}}\n商品详情：{{keyword4.DATA}}\n{{remark.DATA}}', 'caAhoWioDb2A8Ew1bTr4GTe6mdsDoM4kjp9XV5BC8hg', '1515052765', '1'), ('5', 'OPENTM410119152', '退款进度通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n订单金额：{{keyword2.DATA}}\n下单时间：{{keyword3.DATA}}\n{{remark.DATA}}', '-WH6gUzezKnX9OTam9VrQEVyNWfr1bUhT6FRuBMotZw', '1515053049', '1'), ('6', 'OPENTM405847076', '帐户资金变动提醒', '{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'dTNjE5QY6FzXyH0jbXEkNeNTgFQeMxdvqZRvDBqgatE', '1515053127', '1'), ('7', 'OPENTM207707249', '订单发货提醒', '\n{{first.DATA}}\n商品明细：{{keyword1.DATA}}\n下单时间：{{keyword2.DATA}}\n配送地址：{{keyword3.DATA}}\n配送人：{{keyword4.DATA}}\n联系电话：{{keyword5.DATA}}\n{{remark.DATA}}', 'hC9PFuxOKq6u5kNZyl6VdHGgAuA6h5I3ztpuDk1ioAk', '1515053313', '1'), ('8', 'OPENTM408237350', '服务进度提醒', '{{first.DATA}}\n服务类型：{{keyword1.DATA}}\n服务状态：{{keyword2.DATA}}\n服务时间：{{keyword3.DATA}}\n{{remark.DATA}}', '6Q7lusUXhX7HKcevHlEvMDC2qMuF2Yxtq52VTFNoNwg', '1515483915', '1'), ('9', 'OPENTM204431262', '客服通知提醒', '{{first.DATA}}\n客户名称：{{keyword1.DATA}}\n客服类型：{{keyword2.DATA}}\n提醒内容：{{keyword3.DATA}}\n通知时间：{{keyword4.DATA}}\n{{remark.DATA}}', '6xvvsrYPGyTbYPPecVI1WihNpvWSAUsW1vBWGwL8Je0', '1515484354', '1'), ('10', 'OPENTM407456411', '拼团成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n团购商品：{{keyword2.DATA}}\n{{remark.DATA}}', '8EI_FJ-h1UbIBYSXEm5BnV345fQs9s1eiELwlMUnbhk', '1520063823', '1'), ('11', 'OPENTM401113750', '拼团失败通知', '{{first.DATA}}\n拼团商品：{{keyword1.DATA}}\n商品金额：{{keyword2.DATA}}\n退款金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'BdO4l8H2p7OK8_f7Cx8DOqpE3D-mjDvjNdMeS05u2lI', '1520064059', '1'), ('12', 'OPENTM205213550', '订单生成通知', '{{first.DATA}}\n时间：{{keyword1.DATA}}\n商品名称：{{keyword2.DATA}}\n订单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'EY3j42ql2S6TBz5yK14iVjZqh4OSDOParZ9F_6e-56Q', '1528966701', '1'), ('13', 'OPENTM207791277', '订单支付成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n支付金额：{{keyword2.DATA}}\n{{remark.DATA}}', 'UL7rLuzUIlYHNx5X_whUaAHWZWMmhZL35pUnJHgz8eI', '1528966759', '1');
COMMIT;

-- ----------------------------
--  Table structure for `eb_wechat_user`
-- ----------------------------
DROP TABLE IF EXISTS `eb_wechat_user`;
CREATE TABLE `eb_wechat_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信用户id',
  `unionid` varchar(30) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(64) NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) NOT NULL COMMENT '用户头像',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint(5) unsigned DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint(3) unsigned DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int(10) unsigned DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `stair` int(11) unsigned DEFAULT NULL COMMENT '一级推荐人',
  `second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int(11) DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int(11) unsigned DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` int(11) unsigned DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) DEFAULT 'wechat' COMMENT '用户类型',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `openid` (`openid`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `subscribe` (`subscribe`) USING BTREE,
  KEY `unionid` (`unionid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信用户表';

-- ----------------------------
--  Records of `eb_wechat_user`
-- ----------------------------
BEGIN;
INSERT INTO `eb_wechat_user` VALUES ('1', '', 'odbx_0X9rjARwCMUY6xqvJBMuWA8', '', '等风来，随风去', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBaQPPnbg52bgibia1CZDruib1RwibHbBbnfxH1MUwbyz3G0Xub1LNX0ib5RFd7nZvo88gzHwib0OPibyfZQ/132', '1', '', 'zh_CN', '杜兰戈', '墨西哥', '', '0', '', '1', '1528858386', '1528859304', '0', '0', '0', '0', '0', '', 'wechat');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
