# edismax
```
+DisjunctionMaxQuery((category_info_1:化妆品^10.0 | text:化妆品 | short_name:化妆品^20.0))

FunctionQuery((log(product(DateDampingValueSouce(int(tag_id),long(is_new_tag_time)),float(real_30day_sales_amount))))^400.0)

Boolean Query
  +DisjunctionMaxQuery((category_info_1:化妆品^10.0 | text:化妆品 | short_name:化妆品^20.0))   =>文本关联度
    +
  FunctionQuery(log(float(real_30day_sales_amount)))                                        =>业务加权

0.46787712 = (MATCH)
  sum of: 0.37453213 = (MATCH)
      max of:
          0.007802753 = (MATCH) weight(text:化妆品 in 34730),
            product of: 0.049937617 =
              queryWeight(text:化妆品),
                product of: 1.0 = idf(docFreq=40243, maxDocs=216271)
                    0.049937617 = queryNorm 0.15625 = (MATCH) fieldWeight(text:化妆品 in 34730),
                      product of: 1.0 = tf(termFreq(text:化妆品)=3)
                        1.0 = idf(docFreq=40243, maxDocs=216271) 0.15625 = fieldNorm(field=text, doc=34730) 0.37453213 = (MATCH) weight(short_name:化妆品^20.0 in 34730),
                          product of: 0.99875236 = queryWeight(short_name:化妆品^20.0),
                            product of: 20.0 = boost 1.0 = idf(docFreq=3, maxDocs=216271) 0.049937617 = queryNorm 0.375 = (MATCH) fieldWeight(short_name:化妆品 in 34730),
                            product of: 1.0 = tf(termFreq(short_name:化妆品)=1) 1.0 = idf(docFreq=3, maxDocs=216271) 0.375 = fieldNorm(field=short_name, doc=34730)
      0.09334498 = (MATCH) FunctionQuery(log(float(real_30day_sales_amount))), product of: 1.8692317 = log(float(real_30day_sales_amount)=74.0) 1.0 = boost 0.049937617 = queryNorm

7.641411 = (MATCH) sum of: 3.9013766E-4 = (MATCH) max of: 3.9013766E-4 = (MATCH) weight(text:化妆品 in 26046), product of: 0.002496881 = queryWeight(text:化妆品), product of: 1.0 = idf(docFreq=40243, maxDocs=216271) 0.002496881 = queryNorm 0.15625 = (MATCH) fieldWeight(text:化妆品 in 26046), product of: 1.0 = tf(termFreq(text:化妆品)=1) 1.0 = idf(docFreq=40243, maxDocs=216271) 0.15625 = fieldNorm(field=text, doc=26046) 7.641021 = (MATCH) FunctionQuery(log(product(DateDampingValueSouce(int(tag_id),long(is_new_tag_time)),float(real_30day_sales_amount)))), product of: 7.650566 = log(product(DateDampingValueSouce(int(tag_id)=4,long(is_new_tag_time)=1469970000),float(real_30day_sales_amount)=1597379.1)) 400.0 = boost 0.002496881 = queryNorm
```
# ansj&马可夫模型
[马可夫模型参考](http://www.zhihu.com/question/20962240)
```
dict:
好贵
皮带
皮带表

stop words dict:
的

text:
好贵的皮带表

index:
好贵
皮带
皮带表

query:
皮带

消岐:
消岐字典
统计学
自然语言分析
ansj

他说的确实可行

他说的|确实|可行
他说|的确|实|可行

ansj基于自然语言分析的切记工具

主要使是通过词性标识完成切词

词性标注是通过隐马尔可夫模型完成的

隐马可夫模型主是要完成  输入一段文字,输出这段文字各个字的词性标注结果.

==========================================================
ansj在中文切词这个领域,(应该 )使用了中科院已经训练好的模型,这个模型能得够到词性之间的[转换概率],词性到字之间的[]发射概率]

```
