# 软件开发实训--动态网站开发

## 一、课程介绍

### 课程前导

| 《网站制作技术》      | 《Java 程序设计》      |
| --------------------- | ---------------------- |
| 《Java Web 开发技术》 | 《移动互联网开发技术》 |
| 《数据库技术》        | 《项目管理》           |
| 《软件测试技术》      | 《静态网站开实训》     |



### 课程目标

- 掌握动态网站开发能力
- 了解项目开发实施的基本过程



### 训练内容

- HTML5 技术
  - HTML5、CSS3、JavaScript、jQuery、BootStrap、Vue.js 等
- Java Web 技术
  - SpringBoot、Spring、Spring JPA、SpringMVC 等



### 训练项目

==公司动态网站开发==

- 理由：简单，内筒主要以文章形式体现；适合初学者理解和训练软件开发能力。

- 任务：选定一个静态网站，应用 Java、HTML5 相关技术实现对用的动态网站。





## 二、网站开发项目任务

### 1、网站需求分析

#### 1.1、网站介绍

网站是网页的集合，囊括了图片、视频、文字等多媒体信息内筒，共享发布在互联网上的内筒集合

静态网站：内筒不可以实时修改，改变内容必须专业人员修改后重新发布

动态网站：内容可实时修改，无需专业人员即可改变内容无需重新发布网站



#### 1.2、网站分类

| 类型     | 名称                                 |
| -------- | ------------------------------------ |
| 购物网站 | 淘宝、京东、天猫等                   |
| 门户网站 | 腾讯、新浪、搜狐                     |
| 政府网站 | 教育部、各省教育厅                   |
| 教育网站 | 腾讯课堂、网易云课堂                 |
| 搜索网站 | 百度、搜狗、360 搜搜                 |
| 公司网站 | 用以宣传公司和发布公司新闻、通知的等 |



#### 1.3、参照网站图示

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111163521.png)

#### 1.4、网站需求

**网站需求从两个方形进行**

- 前端
  - 页面布局
  - 页面内容
  - 展示方式
- 后台

**参考网站**

- 页面布局：通常选择行列形式布局

- 显示内筒：包括导航菜单、LOGO、幻灯片、滚动内容、版权等

- 展示方式：包括文字、图片、幻灯片、滚动等



**前端界面总体布局图示**

- 页面整体分成三行：顶部行、页面内容行、底部行

- 页面内容总体宽度：768px

- 整体背景色：白

- 设计师根据总体需求设计界面



**后台页面组成**

- 登录页面、主页面
- 列表页面、表单页面

登录页面：后台使用必须先登录、根据用户名密码登录

主页面内容：

- 显示登录人账号或姓名
- 显示当前时间
- 管理菜单
  - 用户管理
  - 内容管理
  - 菜单管理
  - 分类管理
  - 站点设置

- 退出系统按钮或链接
- 系统其它提示信息



#### 1.5、环境要求

- 使用 Java8+开发
- 服务器用 Tomcat8
- 操作系统 Linux、Windows
- 数据库：MySQL、MariaDB



### **2、内容与分类功能分析**

内容信息包括

| 标题     | 标题图片     |
| -------- | ------------ |
| 发布者   | 发布时间     |
| 详细内容 | 内容分类     |
| 访问次数 | 最后修改时间 |
| 置顶标识 |              |

分类：分类名称、权重（用以排序），为了可扩展性，让分类支持多层级分类。

内容信息操作：内容信息查询（支持分页列表页面）、内容信息添加、修改、删除，分类的添加、修改、删除、查询



### **3、网站配置功能分析**

配置内容：LOGO、版权、备案、当前模板等作为网站的配置信息，数据要有类型，如文本、图片、HTML等

配置信息操作：查询、编辑



### **4、数据库结构分析**

- 用户
- 内容
- 分类
- 配置信息
- 菜单

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111163743.png)

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111163852.png)

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111163915.png)



### 5、网站模板约定

**后台模板设计中，需要约定的内容**

- 模板目录：`templates`

- 静态资源所在目录：`static`



**前台设计中，需要约定的内容**

- 使用`Vue.js`作为主要实现框架
- 所有请求以/c为虚拟或物理目录



**模板版中内容获取**

- 前台内容通过AJAX技术异步加载
- 静态内容可能来自后台，不要把内容固定到模板中



**模板中内容获取时的关键字**

- 菜单关键字：`menu`
- 内容关键字：`content`
- 幻灯片关键字：`slide`
- 滚动关键字：`scroll`
- 版权：`copyright`



**内容格式**

- 所有请求格式采用`JSON`格式



### 6、网站配置信息接口配置

- 数据请求方式`GET`
- 请求路径`/site`
- 返回数据`JSON`格式，参考：

```json
{site:{
logo:{svalue:’路径/文件名’,vtype:’image’},
‘copyright’:{svalue:’版权文本内容’,vtype:’html’}
‘icp’:{svalue:’备案号’,vtype:’text’}
‘template’:{svalue:’default’,vtype:’text’}
}}
```



### 7、导航菜单接口设计

- 请求方法`GET`
- 请求路径`/menu`
- 返回数据`JSON`格式，参考：

```json
[{
mid:´菜单编号´,name:´菜单名´,link:´
链接地址´,submenu:[{
mid:´菜单编号´,name:´菜单名´,link:´连接地址},{}]
},{}]
```



### 8、内容接口设计

**单内容接口**

- 请求方法`POST`
- 参数：内容`id（cid）`唯一标识一条内容信息
- 请求路径`/content`
- 返回数据类型`JSON`，参考：

```json
{cid:0,title:’’,timg:’’,content:’’,tid:’’,visitcount:0,
lastmodify:xxx,topflag:1,uid:1,cdate:xxx}
```



**首页内容接口**

- 获取首页发布内容，方法`GET`
- 请求路径`/hc`
- 参数：`flag`（标识）
- 返回格式`JSON`，参考：

```json
[{cid:0,title:’’,timg:’’,content:’’,tid:’’,visitcount:0,
lastmodify:xxx,topflag:1,uid:1,cdate:xxx},{},{}]
```



**分类接口**

- 依据分类获取内容，方法`GET`
- 参数：分类编号`tid`
- 请求路径`/contenttype`
- 返回参数`JSON` ，参考：

```json
[{cid:0,title:’’,cdate:xxx,weight:0,ti
  mg:’xxx’},{},{},…]
```



### 9、幻灯片接口设计

- 来自内容，请求方法`GET`
- 请求路径`/hc`
- 参数，`flag(标识)`
- 返回数据类型`JSON`，包括至少三个数据，参考：

```json
[{cid:0,title:’’,timg:’’}]
```



### 10、用户管理功能设计

网站用户只需要一个即可，但为了后期更好的扩展，用户管理功能包括用户查询列表、添加用户、编辑用户资料、删除用户资料、失效用户（不删除），但admin用户不可以删除，修改用户密码。

#### **页面布局**

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111171846.png)



#### **实体类设计**

- 类名：`User`，对应表名`users`

- 将所有数据设置为私有数据，且提供`getter/setter`方法。
- 为了提供两个对象的比较，实现`hashCode()`方法、`equals()`方法。
- 为了输出可实现`toString()`方法



#### **DAO设计**

- 接口名称：`UserRepository`
- 继承接口：`JpaRepository<User，Long>`

接口提供方法定义：

- 密码修改方法：`modifyPassword(String p)`
- 模糊查询方法：`findByKeyword(String keyword，Pageable p)`



#### **Service接口设计**

- 接口名：`UserService`

- 实现类：`UserServiceImpl`

方法包括增（save）删（delete）改（save）查（findXXX）、modifyPassword等相关方法



#### Controller设计

- 类名：`UserController`

- 包含方法：

```java
save(User u)
list(String keyword,Pageable p)
delete(User u)
delete All(List<User> users) --这些方法返回list页面
findById(long id) --返回编辑页面
modifyPassword(String p1, String p2) --返回修改密码页面
```



### 11、菜单管理功能设计

菜单是网站前端的主要导航，一个网站可能需要多个导航菜单，因此，菜单的第一级作为菜单的名称，从第二级开始为菜单的内容，格式参考如下：

#### 页面布局

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111174941.png)

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111175014.png)

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111175047.png)



#### **实体类设计**

- 类名：`Menu`，对应表名`menus`
- 将所有数据设置为私有数据，且提供`getter/setter`方法。
- 为了提供两个对象的比较，实现`hashCode()`方法、`equals()`方法。
- 为了输出可实现`toString()`方法



#### DAO设计

- 接口名称 `MenuRepository`
- 继承接口 `JpaRepository<Menu, Integer>`
- 方法 `orderMenus(int mid, int w)`
- `mid` 菜单编号
- `w` 菜单权重



#### Service接口设计

- 接口名 `MenuService`
- 实现类 `MenuServiceImpl`
- 方法包括增（save）删（delete）改（save）查（findXXX）、排序（order）等相关方法



#### Controller设计

- 类名：`MenuController`

- 包含方法：

```java
save(Menu u) --返回list页
List(String keyword) --返回list页
delete(int mid) --返回list页
```

- order(int mid, int w)



### 12、内容管理功能设计

- 网站以文章为主，内容管理主要对网站上的文章类内容进行增删改查，界面围绕查询列表页面进行添加、编辑、排序。
- 添加和编辑页面要求内容使用在线文本编辑器，可选择`Ueditor`编辑器。

#### 界面布局

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111180438.png)



#### 实体类设计

- 类名：`Content`，对应表名`contents`
- 为了提供两个对象的比较，实现`hashCode()`方法、`equals()`方法。
- 为了输出可实现`toString()`方法



#### DAO设计

- 接口名称`ContentRepository`
- 继承接口`JpaRepository<Content, Integer>`
- 方法 `orderContents(int cid, int w)`
- `cid` 内容编号
- `w` 内容权重
- 其它使用默认方法



#### Service接口设计

- 接口名 `ContentService`
- 实现类 `ContentServiceImpl`
- 方法包括增（save）删（delete）改（save）查（findXXX）、排序（order）等相关方法



#### Controller设计

- 类名：`ContentController`

- 包含方法：

```java
list(String keyword,Pageable p) --返回list页
save(Menu u) --返回list页
delete(int mid) --返回list页
```

- order(int mid, int w)



### 13、网站配置信息功能设计

网站配置信息，是网站中能够独立管理的内容，但被多个页面共享部分内容。如版权、LOGO、备案号等。

#### 网站配置布局

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201111181039.png)



#### 实体类设计

- 类名 `Site`，对应表名`sites`
- 将所有数据设置为私有数据，且提供`getter/setter`方法。
- 为了提供两个对象的比较，实现`hashCode()`方法、`equals()`方法。
- 为了输出可实现`toString()`方法



#### DAO设计

- 接口名称 `SiteRepository`
- 实现接口 `JpaRepository<Content, Integer>`



#### Service接口设计

- 接口名称 `SiteService`
- 实现接口 `SiteServiceImpl`
- 方法包括增（save）删（delete）改（save）查（findXXX）等相关方法。



#### Controller设计

- 类名：SiteController
- 包含方法：

```java
save(Site u) --返回list页
list() -- 返回list页
```




















## 三、总体设计



## 四、开发实施

## 五、网站整体测试

## 六、打包

## 七、安装



**重点和难点任务**

- 项目的开发实施是整个课程的重点，作为初学者，应该掌握的是软件开发中各个技术之间如何融合
- 写代码是一个软件开发初学者的基本功，也是整个课程的难点
- 整个课程解决初学者入手难的问题



















































