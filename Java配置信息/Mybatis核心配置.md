

**mybatis-config.xml**

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>


    <!--引入外部配置文件-->
    <properties resource="db.properties"/>

    <!--设置日志实现-->
    <!-- 标准的日志工厂实现-->
    <!--value="STDOUT_LOGGING" -->
    <settings>
        <setting name="logImpl" value="STDOUT_LOGGING"/>
    </settings>

    <!--实体类别名-->
    <typeAliases>
        <package name="com.cokecoke.pojo"/>
    </typeAliases>

    <!--环境配置-->
    <environments default="development">
        <!--环境变量-->
        <environment id="development">
            <!--事务管理器-->
            <transactionManager type="JDBC"/>
            <!--数据源-->
            <dataSource type="POOLED">
                <property name="driver" value="${driver}"/>
                <property name="url" value="${url}"/>
                <property name="username" value="${username}"/>
                <property name="password" value="${password}"/>
            </dataSource>
        </environment>
    </environments>

    <!--每一个Mapper.xml都需要在Mybatis核心配置文件中配置-->
    <mappers>
        <mapper resource="com/cokecoke/dao/UserMapper.xml"/>
    </mappers>
</configuration>
```