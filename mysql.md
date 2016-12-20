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
  `new_db_name` varchar(80) NOT NULL DEFAULT '',
  `old_release` varchar(5) NOT NULL DEFAULT '',
  `new_release` varchar(5) NOT NULL DEFAULT '',
  `old_assembly` varchar(20) NOT NULL DEFAULT '',
  `new_assembly` varchar(20) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  PRIMARY KEY (`mapping_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=392 DEFAULT CHARSET=latin1;

LOAD DATA INFILE '/var/lib/mysql/import.csv' INTO TABLE starshop_order_detail CHARACTER SET utf8 FIELDS TERMINATED BY ',' ENCLOSED BY '"';

* 改表结构
```
alter table tablename add column columnType;
alter table t2 drop column c;
alter table infos change list list tinyint not null default '0';
```