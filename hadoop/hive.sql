-- hive sql

-- hive create table ddl
CREATE EXTERNAL TABLE `jmbi.tuanmei_products`(
  `product_id` bigint,
  `brand_label` string,
  `product_reports_number` int,
  `product_report_rating` double,
  `is_enabled_for_product_report` tinyint,
  `market_price` double,
  `real_30day_sales_amount` double)
COMMENT 'Imported by sqoop on 2016/09/07 00:37:18'
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '\u0001'
  LINES TERMINATED BY '\n'
STORED AS INPUTFORMAT
  'com.hadoop.mapred.DeprecatedLzoTextInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://bigdatacluster1/hiveweb/mysql.db/tuanmei_products'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false',
  'last_modified_by'='hive',
  'last_modified_time'='1481087580',
  'numFiles'='0',
  'numRows'='-1',
  'rawDataSize'='-1',
  'totalSize'='0',
  'transient_lastDdlTime'='1481087580')
