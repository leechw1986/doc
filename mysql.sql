-- Index
 ENGINE=TokuDB TokuDB是一个高性能、支持事务处理的MySQL和MariaDB的存储引擎。TokuDB的主要特点则是对高写压力的支持.
  TokuDB的核心是TokuKV,一个支持事务的KV Store；TokuKV之上封装了一层TokuDB Engine,提供MYSQL的接口访问.
-- ddl
mysql -h host -Pport -utest -ptest
UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing' WHERE LastName = 'Wilson'
create table xxx select * from xxxx;
delete from tablename;
<foreach collection="list" item="item" separator=";">
    UPDATE shipping_mapping
	   SET uid = #{item.uid},
		   shipping_no = #{item.shippingNo}
     WHERE order_id = #{item.orderId}
</foreach>
CREATE TABLE `mapping_session` (
  `mapping_session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_db_name` varchar(80) NOT NULL DEFAULT '',
  `decimal` decimal(32,31)
  `created` datetime NOT NULL,
  PRIMARY KEY (`mapping_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=latin1;

-- import
LOAD DATA INFILE '/var/lib/mysql/import.csv' INTO TABLE starshop_order_detail CHARACTER SET utf8 FIELDS TERMINATED BY ',' ENCLOSED BY '"';

-- 改表结构
```
alter table tablename add column columnType;
alter table t2 drop column c;
alter table infos change list list tinyint not null default '0';
```
-- round
  select round(itemSimilarity,1) val,count(1) from tempdb.itemCF_V3 group by round(itemSimilarity,1) ;

-- for filter
  CREATE TABLE `product`(
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `v3` int(1) NOT NULL DEFAULT 0,
    `price` int(10) NOT NULL DEFAULT 0,
    PRIMARY KEY(`id`)
  )ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;

  create table `config`(
    `id` int(10) unsigned not null AUTO_INCREMENT,
    `v3` int(1) not null default 0,
    `price` int(10) not null default 0,
    PRIMARY KEY(`id`)
  )ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;
