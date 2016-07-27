MEMCACHE
=======================

### 命令行

| Command | Description     |Example|
| :------------- | :------------- |:-------|
| get      | Reads a value       |get mykey|
|set|Set a key unconditionally|set mykey 0 60 5|
|add|Add a new key|add newkey 0 60 5|
|replace|Overwrite existing key|replace key 0 60 5|
|append|Append data to existing key|append key 0 60 15|
|prepend|Prepend data to existing key|prepend key 0 60 15|
|incr|Increments numerical key value by given number|incr mykey 2|
|decr|Decrements numerical key value by given number|decr mykey 5|
|delete|Deletes an existing key|delete mykey|
|flush_all|Invalidate specific items immediately|flush_all|
|flush_all|Invalidate all items in n seconds|flush_all 900|
|stats|Prints general statistics|stats|
|version|Prints server version.|version|
|verbosity|Increases log level|verbosity|
|quit|Terminate telnet session|quit|

> set
>> set [_key_] [_0 : 存_] [_timeout_] [_size_]

### LRU (Least Recently Used)
> [MEMCACHE LRU](http://www.lvtao.net/c/628.html)<br/>
> [Redis LRU](http://blog.csdn.net/wallwind/article/details/44906613)
