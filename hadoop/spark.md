SPARK 简介
===================

- 简介
  - 高效，分布式，内存计算，也有shuffle过程
  - 以RDD为基础，提供更多的＜算子＞（sort,loadkey之内）
  - spark context -> textFile("filepath") -> RDD

- RDD
  - 数据集合,分布式,并行计算
  - 容错性(自动重算)
  - 弹性,内存不足时放入磁盘
  - 宽依赖,窄依赖
    - 宽依赖: 父依赖和子依赖不是一对一关系,可能会出现shuffle的过程
    - 窄依赖: 一对一关系,直接的内存计算

- 流程
  - Client -> Master -> Nodes(workers)
  - 机制: local,standalone,yarn
  - 模式: client/cluster
    - cluster 任务交给Master处理直接取得结果
    - client 任务自己与各workers交互

- RDD数据源
  - Array(内存)
  - 文件
  - HDFS
  - HIVE SQL

- RDD 持久化
  - 一般使用: cache() -> MEMORY_AND_DISK

- 共享变量
  - 广播变量
  - 累加变量

- SPARK - SQL
  - 替换shark
  - schemaRDD -> DATAFRAME
  - DATAFRAME
    - 带了元数据信息的RDD
  - 实例:
    ```
    SQLContext.sql() => DataFrame
    ```
  - HIVEConetext

  - HIVE支持
  ```
  将hive-site.xml放入 -> spark/conf
  将mysql-connerctor 放入 spark/lib
  ```
  - 过程
    - SQL|HQL 接收SQL
    - SQLParse ->　unResolved Logical Pain 翻译
    - Analyzer 解析
    - Optimize 优化
    - 执行
