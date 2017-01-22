# record some interesting code

#### python decorator
```
def aspect(func):
    def fucn_new(self): # define a new method for replace
        before
        table = func(self)
        after
        return table

    return fucn_new
```

#### python 变量作用域
```
python能够改变变量作用域的代码段是def、class、lamda.
if/elif/else、try/except/finally、for/while 不能改变.
```

#### python list comprehension
```
numbers = range(10)
size = len(numbers)
evens = []
i = 0
while i < size:
if i % 2 == 0:
evens.append(i)
i += 1
evens
-------
[i for i in range(10) if i % 2 == 0]
```

#### with 
