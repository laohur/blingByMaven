# Host: localhost  (Version 5.5.5-10.2.7-MariaDB-log)
# Date: 2018-05-10 16:21:39
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品类id',
  `intime` datetime DEFAULT NULL COMMENT '创建时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `status` int(11) DEFAULT 0 COMMENT '状态',
  `detail` text DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,NULL,NULL,'发夹',0,NULL),(2,NULL,NULL,'帽子',0,NULL),(3,NULL,NULL,'眼镜',0,NULL);

#
# Structure for table "client"
#

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL COMMENT '管理员id',
  `intime` datetime DEFAULT NULL COMMENT '插入时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobile` int(11) DEFAULT NULL COMMENT '手机',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `verified_time` datetime DEFAULT NULL COMMENT '有效时间',
  `dresser` varchar(100) DEFAULT NULL COMMENT '梳妆台商品model_id,amount;',
  `cart` varchar(100) DEFAULT NULL COMMENT '购物车商品model_id,amount;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "client"
#


#
# Structure for table "deliver"
#

DROP TABLE IF EXISTS `deliver`;
CREATE TABLE `deliver` (
  `deliver_id` int(11) NOT NULL COMMENT '物流id',
  `intime` datetime NOT NULL COMMENT '创建时间',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `shipping_id` int(11) NOT NULL COMMENT '快递单号',
  `address` varchar(50) NOT NULL COMMENT '收货地址',
  `reciver` varchar(10) NOT NULL COMMENT '收件人姓名',
  `phone` int(11) NOT NULL COMMENT '收件人联系方式',
  `status` varchar(10) NOT NULL COMMENT '快递状态'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "deliver"
#


#
# Structure for table "item"
#

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '种类id',
  `product_id` int(11) unsigned DEFAULT NULL COMMENT '模型id',
  `intime` datetime DEFAULT NULL COMMENT '创建时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `size` int(11) DEFAULT NULL COMMENT '大小号',
  `color` int(11) DEFAULT NULL COMMENT '颜色',
  `length` int(11) DEFAULT NULL COMMENT '长',
  `width` int(11) DEFAULT NULL COMMENT '宽',
  `height` int(11) DEFAULT NULL COMMENT '高',
  `heavy` int(11) DEFAULT NULL COMMENT '重',
  `price` int(11) DEFAULT NULL COMMENT '单价',
  `inventory` int(11) DEFAULT NULL COMMENT '库存',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `scaling` int(11) DEFAULT NULL COMMENT '默认缩放比例',
  `x` int(11) DEFAULT NULL COMMENT '默认中心位置x',
  `y` int(11) DEFAULT NULL COMMENT '默认中心位置y',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `image_id` int(11) DEFAULT NULL COMMENT 'url根据image_id生成',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# Data for table "item"
#

INSERT INTO `item` VALUES (1,NULL,'1899-12-30 05:00:00','1899-12-30 08:00:00',5,5,5,5,5,5,5,5,0,5,5,5,'黑发夹','漂亮的黑发夹',5);

#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `intime` datetime DEFAULT NULL COMMENT '创建时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `client_id` int(11) DEFAULT NULL COMMENT '用户id',
  `package` varchar(100) DEFAULT NULL COMMENT '订单商品',
  `amount` int(11) DEFAULT NULL COMMENT '总价',
  `payment_id` int(11) DEFAULT NULL COMMENT '支付状态',
  `shipping_id` int(11) DEFAULT NULL COMMENT '快递单号',
  `status` int(11) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "order"
#


#
# Structure for table "payment"
#

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `intime` datetime NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "payment"
#


#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `category_id` int(11) DEFAULT NULL COMMENT '品类id',
  `intime` datetime DEFAULT NULL COMMENT '创建时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `brand` varchar(20) DEFAULT NULL COMMENT '品牌',
  `count` int(11) DEFAULT NULL COMMENT '所含型号数',
  `tags` varchar(20) DEFAULT NULL COMMENT ';分割',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `detail` text DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "product"
#


#
# Structure for table "staff"
#

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `client_id` int(11) NOT NULL,
  `intime` datetime DEFAULT NULL COMMENT '插入时间',
  `ontime` datetime DEFAULT NULL COMMENT '修改时间',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobile` int(11) DEFAULT NULL COMMENT '手机',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `verify_time` datetime DEFAULT NULL COMMENT '有效时间',
  `roles` varchar(100) DEFAULT NULL COMMENT '拥有角色;分割',
  UNIQUE KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "staff"
#

