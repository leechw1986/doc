Es note (version 2.4)
===========================
[参考文档](https://www.elastic.co/guide/en/elasticsearch/reference/current/_basic_concepts.html#_near_realtime_nrt)
# 概念
* NTR (near RealTime)
  ```
  近实时搜索,文档描述为:写入后一般1秒后可以进行查询
  ```

* cluster & node
  ```
  cluster 是 node 的集合
  规定每个集群必须有自己唯一的key
  cluster.name : unique key
  第个node应该有自己的key
  node.name : key
  ```
* Index
  ```
  描述一堆具有相同特征文档(document)
  唯一,必须小写
  ```
* Type
  ```
  logical category/partition of your index
  当两堆文档具有很多相似的字段时,可以将两类规为一个索引不同类型
  ```

* Document
  ```
  信息的基本单元,JSON格式,
