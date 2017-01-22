- 从mirrors安装
      sudo pip install web.py -i http://pypi.douban.com/simple
      vim ~/.pip/pip.conf
      [global]
      index-url = http://pypi.douban.com/simple

- [更多配置参见](http://www.pip-installer.org/en/latest/configuration.html)

- 来自知乎

```
作者：shonenada
链接：https://www.zhihu.com/question/20706333/answer/24927602
来源：知乎
著作权归作者所有，转载请联系作者获得授权。

对初学者来说，循序渐进是最重要的，我推荐学习 Flask（Welcome | Flask (A Python Microframework)）
Flask 很轻，花很少的成本就能够开发一个简单的网站。非常适合初学者学习。
Flask 框架学会以后，可以考虑学习插件的使用。例如使用 WTForm + Flask-WTForm 来验证表单数据，用 SQLAlchemy + Flask-SQLAlchemy 来对你的数据库进行控制。
BTW：果壳网基于 Flask 开发的。

另外也简单介绍下其他框架：
1. Django。如楼上所说，是一个全能型框架。目前 Django 的使用面还是很广的，有学习的价值，但是不建议初学者学习，因为要学习的东西太多了，一下子难以吸收会失去兴趣。当然，Django 的目的是为了让开发者能够 快速 地开发一个网站，它提供了很多模块，其中我最喜欢的就是 admin 模块，http://your.site.com/admin 就进入了网站的后台（内置的哦~）方便地对数据进行操作，等等。。。。因此，如果对 Django 熟悉的话，papapa 一下子就写好一个网站的原型了。
2. Tornado。传说中性能高高的框架。Tornado 是一个很好的框架，支持异步处理的功能，这是它的特点，其他框架不支持。另外一点是，Tornado 的设计似乎更注重 RESTful URL。但 Tornado 提供了网站基本需要使用的模块外，剩下的则需要开发者自己进行扩展。例如数据库操作，虽然内置了一个 database 的模块（后来独立出去了，现在叫做 torndb，bdarnell/torndb · GitHub）但是不支持 ORM，快速开发起来还是挺吃力的。如果需要 ORM 支持的话，还需要自己写一层将 SQLAlchemy 和 Tornado 联系起来，而且这里还有一个坑。
BTW：知乎就是基础 Tornado 开发的。
3. Bottle。Bottle 和 Flask 都属于轻量级的 Web 框架。但是 Bottle 似乎落寞了。我觉得跟他的 API 设计有关系。个人认为 Bottle 使用起来不那么顺手，因此也用得少。这里不做太多介绍。
4. web.py。也是很轻的一个框架，使用不多，也不做介绍。
5. web2py。我看楼上都没有对这个框架做介绍。这个框架是 Google 在 web.py 基础上二次开发而来的，兼容 GAE 。性能据说很高，曾经用他来做自己的主页，感觉也还不错。缺点同样是对扩展支持不太好，需要自己进行扩展。
6. Quixote。著名的 豆瓣 就是基于 Quixote 开发的。跟上面几个框架不同，Quixote 的路由会有些特别。另外 Quixote 的性能据说也好。
```
