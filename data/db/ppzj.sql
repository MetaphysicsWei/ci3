/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : 127.0.0.1:3306
Source Database       : startblog

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-18 08:18:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '关于', 'ppzj', '##“诗画浙江”是浙江旅游的旅游品牌、宣传口号。浙江省大力弘扬“诗画浙江”品牌，力求全面建成中国最佳旅游目的地，提出浙江全省“大花园建设”的具体举措。');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章关键词',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT '博文seo描述',
  `imagelink` varchar(255) COLLATE utf8_unicode_ci DEFAULT '/static/img/f6.jpg',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(100) CHARACTER SET utf8 NOT NULL,
  `published_at` datetime NOT NULL,
  `pv` int(50) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('admin', '27', '高温席卷的夏天，不如去这些堪比童话仙境的小众森林里乘个凉！', '高温席卷的夏天，不如去这些堪比童话仙境的小众森林里乘个凉！', '近日接二连三的高温暴击  眼看着烧烤模式又将开启  何不去凉快的山间走走？  逶迤起伏的群山，云雾飘渺的天空  奔流而下的溪涧，凉爽清新的山风  任高温再是凶悍  浙游君只想带你守着这方岁月静好', 'http://img.tourzj.com/admin/media/c284e0a2-2ea0-4528-91b5-d713e1fa6f4e.jpg', '近日接二连三的高温暴击\r\n\r\n眼看着烧烤模式又将开启\r\n\r\n何不去凉快的山间走走？\r\n\r\n逶迤起伏的群山，云雾飘渺的天空\r\n\r\n奔流而下的溪涧，凉爽清新的山风\r\n\r\n任高温再是凶悍\r\n\r\n浙游君只想带你守着这方岁月静好', '5', '宁波', '2019-07-24 00:00:00', '3');
INSERT INTO `articles` VALUES ('admin', '28', '绍兴市鲁迅故里·沈园景区', '绍兴市鲁迅故里·沈园景区', '鲁迅故里，是鲁迅先生青少年时期生活过的故土，是绍兴市区保存最完好、最具文化内涵和水城经典风貌的历史街区。一条窄窄的青石板两边，一溜粉墙黛瓦、竹丝台门、花格木窗建筑，原汁原味的三味书屋、百草园、鲁迅故居、鲁迅祖居、周家新台门得以完整保护，长庆寺、土谷祠、静修庵、恒济当铺、咸亨酒店等鲁迅笔下遗迹穿插其间，寿家台门、朱家台门（鲁迅笔下风情园）、何家台门等一批老台门古韵犹存，鲁迅纪念馆建筑造型独特、展览手段新颖、陈列内容丰富。现在的鲁迅故里已成为一条独具江南风情、古城、文化的历史街区，成为一个原汁原味解读鲁迅作品、品味鲁迅笔下风物、立体感受鲁迅当年生活情境的真实场所，成为了绍兴的“镇城之宝”。', 'http://img.tourzj.com/admin/media/65d56900-e571-4899-970d-6a07ef254d8c.jpg', '鲁迅故里，是鲁迅先生青少年时期生活过的故土，是绍兴市区保存最完好、最具文化内涵和水城经典风貌的历史街区。一条窄窄的青石板两边，一溜粉墙黛瓦、竹丝台门、花格木窗建筑，原汁原味的三味书屋、百草园、鲁迅故居、鲁迅祖居、周家新台门得以完整保护，长庆寺、土谷祠、静修庵、恒济当铺、咸亨酒店等鲁迅笔下遗迹穿插其间，寿家台门、朱家台门（鲁迅笔下风情园）、何家台门等一批老台门古韵犹存，鲁迅纪念馆建筑造型独特、展览手段新颖、陈列内容丰富。现在的鲁迅故里已成为一条独具江南风情、古城、文化的历史街区，成为一个原汁原味解读鲁迅作品、品味鲁迅笔下风物、立体感受鲁迅当年生活情境的真实场所，成为了绍兴的“镇城之宝”。', '6', '绍兴', '2019-10-01 00:00:00', '4');
INSERT INTO `articles` VALUES ('admin', '29', '湖州太湖旅游度假区', '湖州太湖旅游度假区', '湖州太湖国家旅游度假区位于太湖南岸，是首批国家级旅游度假区，也是国家级水利风景区、浙江省生态旅游示范区。拥有地标性建筑月亮酒店、世界第九湾美誉的黄金湖岸、华东最大造浪池的哈啦水乐园、最具老上海风情的湖州影视城等。', 'http://img.tourzj.com/admin/media/63318d70-c930-4f02-b1e3-a3f9fcf94c37.jpg', '湖州太湖国家旅游度假区位于太湖南岸，是首批国家级旅游度假区，也是国家级水利风景区、浙江省生态旅游示范区。拥有地标性建筑月亮酒店、世界第九湾美誉的黄金湖岸、华东最大造浪池的哈啦水乐园、最具老上海风情的湖州影视城等。', '7', '湖州', '2019-07-02 00:00:00', '2');
INSERT INTO `articles` VALUES ('admin', '30', '嘉兴市南湖旅游区', '嘉兴市南湖旅游区', '南湖旅游区是一个集旅游观光、休闲娱乐、历史教育为一体的综合性历史文化景区景区占地面积约5.86平方公里，包含南湖核心区、月河历史街区、七一广场等。 南湖是浙江三大名湖之一，素以“轻烟拂渚，微风欲来”的迷人景色著称于世。1921年，中国共产党第一次全国代表大会在南湖的一艘画舫上完成最后的议程，庄严宣告中国共产党成立，从此，南湖成为了全国人民向往的革命圣地。', 'http://img.tourzj.com/admin/media/6d899677-b65d-4b51-bf3f-7578f33d70b2.jpg', '南湖旅游区是一个集旅游观光、休闲娱乐、历史教育为一体的综合性历史文化景区，景区占地面积约5.86平方公里，包含南湖核心区、月河历史街区、七一广场等。 南湖是浙江三大名湖之一，素以“轻烟拂渚，微风欲来”的迷人景色著称于世。1921年，中国共产党第一次全国代表大会在南湖的一艘画舫上完成最后的议程，庄严宣告中国共产党成立，从此，南湖成为了全国人民向往的革命圣地。', '10', '嘉兴', '2019-11-14 00:00:00', '5');
INSERT INTO `articles` VALUES ('admin', '25', '在温州这些民宿的泳池中，独揽夏日星光与清凉', '在温州这些民宿的泳池中，独揽夏日星光与清凉', '在炎炎夏日中，我能想到最浪漫的事，就是在民宿的泳池中，要么戏水嬉戏，要么慵懒到极致，躺在吊床上，静享一段悠闲的时光。  面对山林、田园、大海，这些带着泳池民宿，也许是你夏季最幸福的期待……在烟雨时节，不妨来温州这几座民宿，在泳池中把身心交给自然。       ', 'http://img.tourzj.com/admin/media/6a76b7f4-fb27-43e3-9735-30454984af8a.jpg', '在炎炎夏日中，我能想到最浪漫的事，就是在民宿的泳池中，要么戏水嬉戏，要么慵懒到极致，躺在吊床上，静享一段悠闲的时光。\r\n\r\n面对山林、田园、大海，这些带着泳池民宿，也许是你夏季最幸福的期待……在烟雨时节，不妨来温州这几座民宿，在泳池中把身心交给自然。       ', '4', '温州', '2019-11-11 00:00:00', '5');
INSERT INTO `articles` VALUES ('admin', '26', '良渚凭什么申遗成功？一眼5000年的古城，是一生必去的打卡地！', '良渚凭什么申遗成功？一眼5000年的古城，是一生必去的打卡地！', '2019年7月6日下午，联合国教科文组织大会主席的一记实槌，宣告了5000年文明的真实性！  浙江杭州良渚古城遗址，被正式列入《世界遗产名录》，中国以55处世界遗产的数量，位列世界遗产总数第一！', 'http://img.tourzj.com/admin/media/eecfd82f-74b4-4311-a023-e805d63f4172.jpg', '2019年7月6日下午，联合国教科文组织大会主席的一记实槌，宣告了5000年文明的真实性！  浙江杭州良渚古城遗址，被正式列入《世界遗产名录》，中国以55处世界遗产的数量，位列世界遗产总数第一！', '8', '杭州', '2019-08-05 00:00:00', '8');

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(50) unsigned NOT NULL,
  `tag_id` int(50) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('1', '1', '1');
INSERT INTO `article_tag` VALUES ('2', '1', '3');
INSERT INTO `article_tag` VALUES ('4', '1', '2');
INSERT INTO `article_tag` VALUES ('5', '1', '4');
INSERT INTO `article_tag` VALUES ('6', '2', '1');
INSERT INTO `article_tag` VALUES ('7', '2', '2');
INSERT INTO `article_tag` VALUES ('8', '2', '3');
INSERT INTO `article_tag` VALUES ('9', '3', '1');
INSERT INTO `article_tag` VALUES ('10', '1', '6');
INSERT INTO `article_tag` VALUES ('11', '7', '7');
INSERT INTO `article_tag` VALUES ('12', '7', '1');
INSERT INTO `article_tag` VALUES ('13', '7', '14');
INSERT INTO `article_tag` VALUES ('14', '0', '1');
INSERT INTO `article_tag` VALUES ('15', '0', '30');
INSERT INTO `article_tag` VALUES ('16', '8', '30');
INSERT INTO `article_tag` VALUES ('17', '9', '38');
INSERT INTO `article_tag` VALUES ('18', '9', '42');
INSERT INTO `article_tag` VALUES ('19', '9', '37');
INSERT INTO `article_tag` VALUES ('23', '10', '44');
INSERT INTO `article_tag` VALUES ('21', '11', '43');
INSERT INTO `article_tag` VALUES ('22', '11', '38');
INSERT INTO `article_tag` VALUES ('24', '12', '45');
INSERT INTO `article_tag` VALUES ('25', '13', '44');
INSERT INTO `article_tag` VALUES ('26', '12', '45');
INSERT INTO `article_tag` VALUES ('27', '15', '42');
INSERT INTO `article_tag` VALUES ('28', '16', '48');
INSERT INTO `article_tag` VALUES ('29', '17', '44');
INSERT INTO `article_tag` VALUES ('30', '18', '49');
INSERT INTO `article_tag` VALUES ('31', '19', '50');
INSERT INTO `article_tag` VALUES ('32', '20', '51');
INSERT INTO `article_tag` VALUES ('33', '21', '52');
INSERT INTO `article_tag` VALUES ('34', '22', '53');
INSERT INTO `article_tag` VALUES ('35', '23', '54');
INSERT INTO `article_tag` VALUES ('36', '1', '38');
INSERT INTO `article_tag` VALUES ('37', '1', '35');
INSERT INTO `article_tag` VALUES ('38', '1', '37');
INSERT INTO `article_tag` VALUES ('39', '2', '44');
INSERT INTO `article_tag` VALUES ('40', '24', '55');
INSERT INTO `article_tag` VALUES ('41', '25', '4');
INSERT INTO `article_tag` VALUES ('42', '26', '8');
INSERT INTO `article_tag` VALUES ('43', '27', '5');
INSERT INTO `article_tag` VALUES ('44', '28', '6');
INSERT INTO `article_tag` VALUES ('45', '29', '7');
INSERT INTO `article_tag` VALUES ('46', '30', '10');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `category_order` int(50) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('8', '杭州', '1');
INSERT INTO `category` VALUES ('4', '温州', '1');
INSERT INTO `category` VALUES ('5', '宁波', '1');
INSERT INTO `category` VALUES ('6', '绍兴', '1');
INSERT INTO `category` VALUES ('7', '湖州', '1');
INSERT INTO `category` VALUES ('10', '嘉兴', '1');
INSERT INTO `category` VALUES ('11', '金华', '1');
INSERT INTO `category` VALUES ('12', '衢州', '1');
INSERT INTO `category` VALUES ('13', '台州', '1');
INSERT INTO `category` VALUES ('14', '舟山', '1');
INSERT INTO `category` VALUES ('15', '丽水', '1');

-- ----------------------------
-- Table structure for friendship
-- ----------------------------
DROP TABLE IF EXISTS `friendship`;
CREATE TABLE `friendship` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `link_order` int(50) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendship
-- ----------------------------
INSERT INTO `friendship` VALUES ('1', '诗画浙江', 'http://www.tourzj.gov.cn/play/vdestination_zixun.aspx', '1');

-- ----------------------------
-- Table structure for siteinfo
-- ----------------------------
DROP TABLE IF EXISTS `siteinfo`;
CREATE TABLE `siteinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `statistic` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of siteinfo
-- ----------------------------
INSERT INTO `siteinfo` VALUES ('1', 'http://localhost/ci3/admin', '781053340@qq.com', '诗画浙江', '温州', '这是一款有关“诗画浙江”为主题的系统！！！', 'testtest');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tag_button_type` varchar(50) DEFAULT 'success',
  PRIMARY KEY (`id`,`tag_name`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('8', '杭州', 'warning');
INSERT INTO `tag` VALUES ('4', '温州', 'danger');
INSERT INTO `tag` VALUES ('5', '宁波', 'info');
INSERT INTO `tag` VALUES ('6', '绍兴', 'success');
INSERT INTO `tag` VALUES ('7', '湖州', 'danger');
INSERT INTO `tag` VALUES ('10', '嘉兴', 'danger');
INSERT INTO `tag` VALUES ('11', '金华', 'success');
INSERT INTO `tag` VALUES ('12', '衢州', 'info');
INSERT INTO `tag` VALUES ('13', '台州', 'warning');
INSERT INTO `tag` VALUES ('14', '舟山', 'danger');
INSERT INTO `tag` VALUES ('15', '丽水', 'info');
INSERT INTO `tag` VALUES ('55', '123', 'success');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'startblog', '2f780b5a7762af9c258076e913178715', 'assetsview@sina.cn');
