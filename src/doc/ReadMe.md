# 1.项目背景
通过这个简单的项目，提高自己的实际动手能力。这个项目中涉及到的能力有：mybatis的原生使用、mybatis结合数据源C3P0使用、mybatis的自测、分表分库zdal的使用。

工作两年了，涉及的只是面很宽，但是知识都不精通，而且各只是面彼此孤立着，最让人担忧的很多我都没有实际操练过。故此，下定决心从代码开始，多抄写多联系。

**1.    实践一下mybatis操作数据库库**
**2.    研究一下分库分表**

# 2.具体实践
## 2.1 使用mybatis
使用batis的流程已经熟悉了，下面简单梳理下：
1.  mybatis配置文件，主要内容：mysql配置信息、mapper location
2.  根据数据表，写entity；定义mapper接口；写mapper.xml
3.  写UT：加载mybatis配置文件、打开连接、请求Mapper接口实现类、调用接口方法完成测试。

补充：一定要把日志打开，即引用log4j依赖、添加log4f属性文件；
后序：掌握在spring下使用mybatis的流程。
## 2.2 mybatis配置数据源之C3P0连接池
起初我知道，要在mybatis配置数据源的地方，替换为C3P0连接池就好了。但是我没有配置过C3P0，
就找了一篇文章[MyBatis配置C3P0连接池](https://www.cnblogs.com/AuKing/p/8324427.html)，
按文操作，果然很简单的。

## 2.3 mybatis结合spring过来用
spring作为一个集成框架，被广为使用；把mybatis嵌入到spring中使用也在正常不过。其次也是为下一小结'mybatis结合xdal来完成分表分库'做准备

mybatis嵌入到spring中是很简单的。mybatis社区提供了SqlSessionFactoryBean这个'FactoryBean'，用于spring对mybatis的入口。

1.  配置
    1.  在`SqlSessionFactoryBean`中配置'configLocation'，'database'，'mapperLocation'；后两者从`mybatis-config`配置文件中挪移出来了。

2.  依赖引用
    1.  jar依赖引用时，首先要引入'spring-context'，提供spring上下文；其次是'mybatis-spring'，这是mybatis提供的spring入口；
    2.  再次就是'spring-jdbc'、'spring-tx'，这两者不引入会报一些'NoClassDefFoundError'；不太理解为什么要引入二者。
    3.  为进行spring单元测试，引入'spring-test'。

好，可以开始写测试了。测试内容很简单，从容器中获取Mapper接口实现类，调用接口方法，断言。

## 2.4 mybatis结合xdal分表分库
### 2.4.1 xdal背景
xdal的前身是阿里的zdal分表分库中间件；这是阿里早年12年推出的，不过好像15年之后就不在维护，而有推出了myCat什么的，带考究。zdal经过ximalaya商业化
团队的使用并优化，变身为了xdal。其中x就是ximalaya的前缀。

### 2.4.2 xdal作用原理
xdal分表分库中间件属于作用在'驱动层'的中间件，可以简单的认为它重写了一个JDBC驱动；它接收到SQL之后，会分析SQL，对于特定的表名，使用预先配置好的

'分库分表逻辑'，结合SQL中的参数值，解析出SQL真正要在哪个数据库哪张表上执行，同时xdal也就准备好了'物理数据库链接'进行SQL的执行。

在实际操作中不难发现：
1.  xdal维持了一个Map，其key为表名，其value为'分库分表规则'；当发现SQL中的表名是Map中的一个key时，开始运用其对应的'分库分表规则'了。
2.  分库分表规则='分库规则'+'分表规则'，两者缺一不可；表是按照后缀来区分的；数据库是按照数据库组成的一个以为数组来区分的，
比如备选库为{master_ali,master_tencent,master_xmly,...,master_some}，当通过参数解析出tbIndex=2时，那么分到了'master_xmly'这个库；

### 2.4.3 xdal特性介绍
行文逻辑中是需要有这一部分内容的，但是我对xdal不是很了解，只用到了它的基本功能，所以这一点暂时不提供。

## 2.5 mybatis结合sharding-jdbc实现分表分库
暂时失败：没有写出一个Demo来；sharding-jdbc的源码还没有编译成功

后续努力：分表分库一定会用到的，而xdal是非主流，所以一定要搞清楚sharding-jdbc的使用方法。

还差多少：主要难点是sharding-jdbc的spring配置。

## 2.6 总结分库分表
好文：
1.  [解读分库分表中间件Sharding-JDBC](https://blog.csdn.net/u4110122855/article/details/50670503)
    1.  垂直拆分和水平拆分；分表且分库的好处=1.增加数据存储量，2.高并发场景下分流
    2.  sharding-jdbc的作用原理：1.Jdbc规范重写，2.SQL接卸，3.SQL改写，4.SQL路由，5.SQL执行，6.结果归并
2.  [数据库中间件之分库分表](https://segmentfault.com/a/1190000017272697)
    1.  从理论上概述了'分表分库'中间件作用机理，编码层-框架层-驱动层-代理层-实现层
    2.  总结了代理层和驱动层的利弊。

## 2.7 总结
1.  sharding-jdbc还是要好好整出来一个demo才好。
2.  也可以多调一下sharding-jdbc的源码。
3.  sharding-jdbc有doc的，而且是中文的；而且源码我也调通了；以后有时间就可以好好的看了。



