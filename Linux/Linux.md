

# Linux安装、搭建、部署、命令

## 一、安装linux

### 1、镜像下载

- 官网下载链接：[http://isoredirect.centos.org/centos/7/isos/x86_64/](http://isoredirect.centos.org/centos/7.4.1708/isos/x86_64/)
- 阿里云站点：http://mirrors.aliyun.com/centos/7/isos/x86_64/

  <img src="Linux.assets/image-20200723183241938.png" alt="image-20200723183241938" style="zoom: 67%;" />

```markdown
# 各个版本的ISO镜像文件说明：
CentOS-7-x86_64-DVD-2003.iso               标准安装版（推荐）
CentOS-7-x86_64-Everything-2003.iso        完整版，集成所有软件（以用来补充系统的软件或者填充本地镜像）
CentOS-7-x86_64-LiveGNOME-2003.iso         GNOME桌面版  
CentOS-7-x86_64-LiveKDE-2003.iso           KDE桌面版  
CentOS-7-x86_64-Minimal-2003.iso           精简版，自带的软件最少
CentOS-7-x86_64-NetInstall-2003.iso        网络安装版（从网络安装或者救援系统）
```



### 2、安装镜像

[VMware Workstation Pro 15.1.0 官方版+激活密钥](https://cloud.tencent.com/developer/article/1430711)

**VMware Workstation** 产品允许用户将 Linux、Windows 等多个操作系统作为虚拟机在单台 PC 上运行。用户可以在虚拟机上重现服务器、桌面和平板电脑环境，无需重新启动即可跨不同操作系统同时运行应用。Workstation 还提供隔离的安全环境，用于评估新的操作系统（如 Windows 10）、测试软件应用和补丁程序以及参考体系结构。

2.1、创建新的虚拟机

<img src="Linux.assets/image-20200723183947315.png" alt="image-20200723183947315" style="zoom: 67%;" />



<img src="Linux.assets/image-20200727230425654.png" alt="image-20200727230425654" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230449515.png" alt="image-20200727230449515" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230509580.png" alt="image-20200727230509580" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230523946.png" alt="image-20200727230523946" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230616198.png" alt="image-20200727230616198" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230630404.png" alt="image-20200727230630404" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230646799.png" alt="image-20200727230646799" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230659093.png" alt="image-20200727230659093" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230711166.png" alt="image-20200727230711166" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230722696.png" alt="image-20200727230722696" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230733129.png" alt="image-20200727230733129" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230747611.png" alt="image-20200727230747611" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230801690.png" alt="image-20200727230801690" style="zoom:67%;" />



<img src="Linux.assets/image-20200727230824013.png" alt="image-20200727230824013" style="zoom:67%;" />





<img src="Linux.assets/image-20200723185920182.png" alt="image-20200723185920182" style="zoom:67%;" />



- 启动安装

<img src="Linux.assets/image-20200723190637840.png" alt="image-20200723190637840" style="zoom:67%;" />



<img src="Linux.assets/image-20200723190748755.png" alt="image-20200723190748755" style="zoom: 67%;" />

- 点击继续，设置日期时间

<img src="Linux.assets/image-20200723190829109.png" alt="image-20200723190829109" style="zoom:67%;" />

<img src="Linux.assets/image-20200723190904372.png" alt="image-20200723190904372" style="zoom:67%;" />

- 选择最小安装

<img src="Linux.assets/image-20200723191010058.png" alt="image-20200723191010058" style="zoom:67%;" />

<img src="Linux.assets/image-20200723191113765.png" alt="image-20200723191113765" style="zoom:67%;" />

<img src="Linux.assets/image-20200723191150141.png" alt="image-20200723191150141" style="zoom:67%;" />

- 开始安装，设置密码及用户

<img src="Linux.assets/image-20200723191239168.png" alt="image-20200723191239168" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191321357.png" alt="image-20200723191321357" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191425829.png" alt="image-20200723191425829" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191321357.png" alt="image-20200723191321357" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191425829.png" alt="image-20200723191425829" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191321357.png" alt="image-20200723191321357" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191425829.png" alt="image-20200723191425829" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191321357.png" alt="image-20200723191321357" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191425829.png" alt="image-20200723191425829" style="zoom:67%;" />





<img src="Linux.assets/image-20200723191321357.png" alt="image-20200723191321357" style="zoom:67%;" />



<img src="Linux.assets/image-20200723191425829.png" alt="image-20200723191425829" style="zoom:67%;" />





- 等待安装完成重启即可

<img src="Linux.assets/image-20200723191939017.png" alt="image-20200723191939017" style="zoom:67%;" />



### 3、安装vim编辑器

```shell
1、首先使用命令查看相关的是不是安装了vim
rpm -qa|grep vim
出现如下的命令：vim-minimal-7.4.160-1.el7.x86_64

2、yum install vim
```



### 4、安装net-tools

```shell
yum install net-tools
```



### 5、安装wget

```shell
1、rpm 安装
rpm 下载源地址：http://mirrors.163.com/centos/6.2/os/x86_64/Packages/
下载wget的RPM包：http://mirrors.163.com/centos/6.2/os/x86_64/Packages/wget-1.12-1.4.el6.x86_64.rpm

rpm ivh wget-1.12-1.4.el6.x86_64.rpm 安装即可。
如果客户端用的是SecureCRT,linux下没装rzsz 包时，rz无法上传文件怎么办？我想到的是安装另一个SSH客户端：SSH Secure Shell。然后传到服务器上安装，这个比较费劲，所以推荐用第二种方法，不过如果yum包也没有安装的话，那就只能用这种方法了。

2、yum安装
yum -y install wget
```



### 6、设置静态ip

```shell
#切换用户权限
su root
#自动分配用户ip
dhclient
#查看分配的ip地址
ifconfig
#修改网卡设置静态IP
vim /etc/sysconfig/network-scripts/ifcfg-ens33
```

![image-20200722180009016](Linux.assets/image-20200722180009016.png)

```shell
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens33
UUID=a632a7a2-7689-4a12-a922-2ae0e902e873
DEVICE=ens33
ONBOOT=yes
IPADDR=172.20.10.5
NETMASK=255.255.255.0
GATEWWAY=172.20.10.1
DNS1=119.29.29.29
```

```shell
#重启网卡
systemctl restart network.service
```







## 二、安装jdk8

1、新建/usr/local目录下新建java文件夹

```shell
cd /usr/local/
mkdir java
```

> 用xftp将包传到/root/package目录下

2、解压到/usr/local/java/

```shell
cd /root/package/
tar -zxvf jdk-8u211-linux-x64.tar.gz -C /usr/local/java/
```

3、修改环境变量

```shell
vi /etc/profile
```

<img src="Linux.assets/image-20200730223322116.png" alt="image-20200730223322116" style="zoom: 67%;" />

```java
JAVA_HOME=/usr/local/java/jdk1.8.0_211/
CLASSPATH=$JAVA_HOME/lib/
PATH=$PATH:$JAVA_HOME/bin
export PATH JAVA_HOME CLASSPATH
```

4、重载配置

```shell
source /etc/profile
```

5、查看jdk版本

```shell
java -version
```





























































## 三、安装MySQL5.7

下载地址：https://downloads.mysql.com/archives/community/

### 1、yum安装

```shell
#1.进入到要存放安装包的位置
cd /date/mysql
 
#2.查看系统中是否已安装 MySQL 服务，以下提供两种方式：
rpm -qa | grep mysqlyum list installed | grep mysql
 
#3.如果已安装则删除 MySQL 及其依赖的包：
yum -y remove mysql-libs.x86_64

#4.下载 mysql57-community-release-el7-8.noarch.rpm 的 YUM 源：
wget http://repo.mysql.com/mysql57-community-release-el7-8.noarch.rpm
 
#5.安装 mysql57-community-release-el7-8.noarch.rpm：
rpm -ivh mysql57-community-release-el7-8.noarch.rpm
安装完后，得到如下两个包：

mysql-community.repo
mysql-community-source.repo
 

#6.安装 MySQL，出现提示的话，一路 Y 到底
yum install mysql-server

安装完毕后，启动mysql
systemctl start mysqld

然后在  /var/log/mysqld.log 文件中会自动生成一个随机的密码，我们需要先取得这个随机密码，以用于登录 MySQL 服务端：

  cat /var/log/mysqld.log | grep password
将会返回如下内容，末尾字符串就是密码，把它复制下来：

A temporary password is generated for root@localhost: hilX0U!9i3_6
 

#7.登录到 MySQL 服务端并更新用户 root 的密码：
注意：由于 MySQL5.7 采用了密码强度验证插件 validate_password，故此我们需要设置一个有一定强度的密码；

mysql -u root -p
hilX0U!9i3_6
然后更改密码

mysql> alter user 'root'@'localhost' identified by 'Hellomysqlxx!@#$';
Query OK, 0 rows affected (0.00 sec)
mysql> ALTER USER 'root'@'localhost' PASSWORD EXPIRE NEVER;
Query OK, 0 rows affected (0.00 sec)

设置用户 root 可以在任意 IP 下被访问：
grant all privileges on *.* to root@"%" identified by "new password";

设置用户 root 可以在本地被访问：
grant all privileges on *.* to root@"localhost" identified by "new password";

刷新权限使之生效：
flush privileges;
OK，输入 exit 后用新密码再次登录看看吧！

注意：如果用远程工具还是连接不上，试试用  iptables -F    命令来清除防火墙中链中的规则

#8.MySQL控制命令：启动、停止、重启、查看状态
复制代码

service mysqld start
service mysqld stop
service mysqld restart
service mysqld status
systemctl start mysqld
复制代码


#9.设置 MySQL 的字符集为 UTF-8：
打开 /etc 目录下的 my.cnf 文件（此文件是 MySQL 的主配置文件）：

vim /etc/my.cnf
在 [mysqld] 前添加如下代码：

[client]
default-character-set=utf8
在 [mysqld] 后添加如下代码：

character_set_server=utf8
重启mysql后 再登录，看看字符集，6个utf8就算OK

show variables like '%character%';
 

#10.查看指定的数据库中指定数据表的字符集，如查看 mysql 数据库中 servers 表的字符集：

show table status from mysql like '%servers%';
查看指定数据库中指定表的全部列的字符集，如查看 mysql 数据库中 servers 表的全部的列的字符集：

show full columns from servers;
 

#11. 忘记密码时，可用如下方法重置：
service mysqld stop
mysqld_safe --user=root --skip-grant-tables --skip-networking &mysql -u root
进入MySQL后

use mysql;
update user set password=password("new_password") where user="root"; 
flush privileges;
 

#12.一些文件的存放目录
配置文件

vim /etc/my.cnf
存放数据库文件的目录

cd /var/lib/mysql
日志记录文件

vim /var/log/ mysqld.log
服务启动脚本

/usr/lib/systemd/system/mysqld.service
socket文件

/var/run/mysqld/mysqld.pid

13.MySQL 采用的 TCP/IP 协议传输数据，默认端口号为 3306，我们可以通过如下命令查看：

netstat -anp
```

### 2、源码安装

1、卸载老版本MySQL，查找并删除mysql有关的文件

```shell
find / -name mysql
rm -rf 上边查找到的路径，多个路径用空格隔开
#或者下边一条命令即可
find / -name mysql|xargs rm -r
```

2、在安装包存放目录下执行命令解压文件：

```shell
tar -xvf mysql-5.7.30-linux-glibc2.12-x86_64.tar.gz
```

3、删除安装包，重命名解压后的文件到指定文件夹

```shell
rm -f mysql-5.7.30-linux-glibc2.12-x86_64.tar.gz
mv mysql-5.7.30-linux-glibc2.12-x86_64 mysql /usr/local/
```

4、创建mysql用户组和用户并修改权限

```shell
groupadd mysql
useradd -r -g mysql mysql
```

5、创建数据目录并赋予权限

```shell
mkdir -p  /data/mysql              #创建目录
chown mysql:mysql -R /data/mysql   #赋予权限
```

7、配置my.cnf

```shell
vim /etc/my.cnf
```

内容：

```shell
[mysqld]
bind-address=0.0.0.0
port=3306
user=mysql
basedir=/usr/local/mysql
datadir=/data/mysql
socket=/tmp/mysql.sock
log-error=/data/mysql/mysql.err
pid-file=/data/mysql/mysql.pid
#character config
character_set_server=utf8mb4
symbolic-links=0
explicit_defaults_for_timestamp=true
```

8、初始化数据库

```shell
# 进入mysql的bin目录
cd /usr/local/mysql/bin/

# 初始化
./mysqld --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql/ --datadir=/data/mysql/ --user=mysql --initialize

#  查看密码（记住初始化密码）
cat /data/mysql/mysql.err

```

9、启动mysql，并更改root 密码

```shell
# 先将mysql.server放置到/etc/init.d/mysql中
cp /usr/local/mysql/support-files/mysql.server /etc/init.d/mysql

# 启动
service mysql start
# 查看是否启动
ps -ef|grep mysql

```

10、修改密码

```shell
# 使用之前生成的初始化密码登录数据库
./mysql -u root -p   #bin目录下

# 修改新密码
SET PASSWORD = PASSWORD('123456');
ALTER USER 'root'@'localhost' PASSWORD EXPIRE NEVER;
FLUSH PRIVILEGES;  #刷新权限
```



### 3、数据库远程连接报错

**MySQL 错误2003 10060 "Unknown error"**

<img src="Linux.assets/image-20200727205903279.png" alt="image-20200727205903279" style="zoom:50%;" />

1、登录数据库，执行下面命令

```shell
use mysql                                            #访问mysql库
update user set host = '%' where user = 'root';      #使root能再任何host访问
FLUSH PRIVILEGES;                                    #刷新
```

执行quit;退出数据库,执行以下命令打开防火墙端口3306

```shell
firewall-cmd --zone=public --add-port=3306/tcp --permanent
```

重启防火墙并查看是否生效

```shell
firewall-cmd --reload		#重启firewall
firewall-cmd --list-ports	#查看已经开放的端口
```

<img src="Linux.assets/image-20200727210001833.png" alt="image-20200727210001833" style="zoom:50%;" />







## 四、安装redis

下载地址：http://download.redis.io/releases/redis-5.0.4.tar.gz

### 1、yum安装

1、检查是否有redis yum 源

```
yum install redis
```

2、下载fedora的epel仓库

```
yum install epel-release
```

3、安装redis数据库

```
yum install redis
```

4、安装完毕后，使用下面的命令启动redis服务

```
# 启动redis
service redis start
# 停止redis
service redis stop
# 查看redis运行状态
service redis status
# 查看redis进程
ps -ef | grep redis
```

5、设置redis为开机自动启动

```
chkconfig redis on
```

6、进入redis服务

```
# 进入本机redis
redis-cli
# 列出所有key
keys *
``
- 防火墙开放相应端口
```

7、开启6379

```shell
/sbin/iptables -I INPUT -p tcp --dport 6379 -j ACCEPT
```

8、开启6380

```shell
/sbin/iptables -I INPUT -p tcp --dport 6380 -j ACCEPT
```

9、保存

```shell
/etc/rc.d/init.d/iptables save
```

10、centos 7下执行

```shell
service iptables save
```

11、修改redis默认端口和密码

打开配置文件

```
vi /etc/redis.conf
```

修改默认端口，查找 port 6379 修改为相应端口即可

修改默认密码，查找 requirepass foobared 将 foobared 修改为你的密码

12、使用配置文件启动 redis

```
redis-server /etc/redis.conf &
```

13、使用端口登录

```
redis-cli -h 127.0.0.1 -p 6179
```

此时再输入命令则会报错

输入刚才输入的密码

```
auth 111
```

14、停止redis

```
redis-cli -h 127.0.0.1 -p 6179
shutdown
```

15、 进程号杀掉redis

```
ps -ef | grep redis
kill -9 XXX
```

16、**使用redis desktop manager远程连接redis**

可参考window环境下安装Redis及可视化工具Redis Desktop Manager

如果长时间连接不上，可能有两种可能性

```
1、bind了127.0.01：只允许在本机连接redis
2、protected-mode设置了yes（使用redis desktop manager工具需要配置，其余不用）
```

**解决办法：**

```
# 打开redis配置文件
vi /etc/redis.conf
# 找到 bind 127.0.0.1 将其注释
# 找到 protected-mode yes 将其改为
protected-mode no
```

重启redis

```
service redis stop
service redis start
```

通过进程号查看软件安装目录

```shell
ps -ef|grep redis

ls -l /proc/xxxx/cwd
```



### 2、源码安装

1、下载安装包

```shell
wget http://download.redis.io/releases/redis-5.0.4.tar.gz
```

把redis-5.0.4.tar.gz上传到 /usr/local

2、安装gcc环境

```shell
#查看系统是否自带gcc环境
rpm -qa | grep gcc

#安装gcc
yum -y install gcc gcc-c++
```

3、解压redis压缩包

```shell
cd /usr/local
tar -zvxf redis-5.0.4.tar.gz
```

4、把解压的redis源码文件移动到/usr/local/data/目录下

```shell
mv /usr/local/redis-5.0.4  /usr/local/data/
```

5、进入到 /usr/local/data/src目录下输入make命令进行源码的编译

```shell
# 打开redis文件夹，开始编译
cd /usr/local/data/src
make
```

6、安装redis到指定目录

```shell
make install PREFIX=/usr/local/redis
```

7、建立一个文件夹用来处方自定义的redis.conf 文件

```shell
mkdir /etc/redis/
```

8、把 /usr/local/data/redis.conf 复制到 /etc/redis/下

```shell
cp  /usr/local/data/redis.conf   /etc/redis/
```

9、修改 /etc/redis/redis.conf 配置文件

```shell
vim  /etc/redis/redis.conf 
```

10、配置内容

```shell
bind 0.0.0.0
protected-mode no
port 6379
tcp-backlog 511
timeout 0
tcp-keepalive 300
daemonize yes
supervised no
pidfile /var/run/redis_6379.pid
loglevel notice
logfile /var/log/redis/redis_master.log
databases 16
always-show-logo yes
save 900 1
save 300 10
save 60 10000
stop-writes-on-bgsave-error yes
rdbcompression yes
rdbchecksum yes
dbfilename dump.rdb
dir /var/log/redis_data
replica-serve-stale-data yes
replica-read-only yes
repl-diskless-sync no
repl-diskless-sync-delay 5
repl-disable-tcp-nodelay no
replica-priority 100
maxmemory 10000000kb
lazyfree-lazy-eviction no
lazyfree-lazy-expire no
lazyfree-lazy-server-del no
replica-lazy-flush no
appendonly yes
appendfilename "appendonly.aof"
appendfsync everysec
no-appendfsync-on-rewrite no
auto-aof-rewrite-percentage 100
auto-aof-rewrite-min-size 64mb
aof-load-truncated yes
aof-use-rdb-preamble yes
lua-time-limit 5000
slowlog-log-slower-than 10000
slowlog-max-len 128
latency-monitor-threshold 0
notify-keyspace-events ""
hash-max-ziplist-entries 512
hash-max-ziplist-value 64
list-max-ziplist-size -2
list-compress-depth 0
set-max-intset-entries 512
zset-max-ziplist-entries 128
zset-max-ziplist-value 64
hll-sparse-max-bytes 3000
stream-node-max-bytes 4096
stream-node-max-entries 100
activerehashing yes
client-output-buffer-limit normal 0 0 0
client-output-buffer-limit replica 256mb 64mb 60
client-output-buffer-limit pubsub 32mb 8mb 60
hz 10 
dynamic-hz yes
aof-rewrite-incremental-fsync yes
rdb-save-incremental-fsync yes
```

11.配置文件中有的路径需要建立相应目录

```shell
mkdir  /var/log/redis/

mkdir  /var/log/redis_data
```

12、开始运行redis

```shell
/usr/local/redis/bin/redis-server  /etc/redis/redis.conf 
```

13、检测后台进程是否存在

```shell
ps -ef |grep redis
```

14、使用客户端可以进行测试

```shell
/usr/local/redis/bin/redis-cli
```

15、关闭redis

```shell
redis-cli shutdown
```

16、强制关闭*redis

```shell
kill -9  PID
```

>  (你的进程**ID**,通过这个命令进行查询**ps -ef |grep redis** )



### 3、redis远程连接异常

执行以下命令打开防火墙6379端口

```shell
firewall-cmd --zone=public --add-port=6379/tcp --permanent
```

重启防火墙并查看是否生效

```shell
firewall-cmd --reload		#重启firewall
firewall-cmd --list-ports	#查看已经开放的端口
```

<img src="Linux.assets/image-20200728105934099.png" alt="image-20200728105934099" style="zoom:67%;" />







## 五、安装Nginx

下载地址：http://nginx.org/download/

### 1、yum安装

1、安装所需环境

GCC——GNU编译器集合

```shell
yum install gcc
```
PCRE pcre-devel 安装

```shell
yum install -y pcre pcre-devel
```
 zlib 安装

```shell
yum install -y zlib zlib-devel
```

OpenSSL 安装

```shell
yum install -y openssl openssl-devel
```

2、在usr/local目录下新建nginx文件夹

```shell
cd /usr/local
mkdir nginx
```

3、进入nginx文件夹，使用`wget`命令下载nginx的tar包

```shell
cd /usr/local/nginx
wget -c https://nginx.org/download/nginx-1.9.9.tar.gz
```

4、解压tar并编译参数

```shell
tar -xvf nginx-1.9.9.tar.gz
./configure
```

5、编译安装

```shell
make
make install
```



6、nginx配置文件是在

```shell
vi /usr/local/nginx/conf/nginx.conf
```

- 自定义配置

```shell
user www www;
worker_processes 2; #设置值和CPU核心数一致
error_log /usr/local/nginx/logs/nginx_error.log crit; #日志位置和日志级别
pid /usr/local/nginx/nginx.pid;
#Specifies the value for maximum file descriptors that can be opened by this process.
worker_rlimit_nofile 65535;
events
{
  use epoll;
  worker_connections 65535;
}
http
{
  include mime.types;
  default_type application/octet-stream;
  log_format main  '$remote_addr - $remote_user [$time_local] "$request" '
               '$status $body_bytes_sent "$http_referer" '
               '"$http_user_agent" $http_x_forwarded_for';
  
#charset gb2312;
     
  server_names_hash_bucket_size 128;
  client_header_buffer_size 32k;
  large_client_header_buffers 4 32k;
  client_max_body_size 8m;
     
  sendfile on;
  tcp_nopush on;
  keepalive_timeout 60;
  tcp_nodelay on;
  fastcgi_connect_timeout 300;
  fastcgi_send_timeout 300;
  fastcgi_read_timeout 300;
  fastcgi_buffer_size 64k;
  fastcgi_buffers 4 64k;
  fastcgi_busy_buffers_size 128k;
  fastcgi_temp_file_write_size 128k;
  gzip on; 
  gzip_min_length 1k;
  gzip_buffers 4 16k;
  gzip_http_version 1.0;
  gzip_comp_level 2;
  gzip_types text/plain application/x-javascript text/css application/xml;
  gzip_vary on;
 
  #limit_zone crawler $binary_remote_addr 10m;
 #下面是server虚拟主机的配置
 server
  {
    listen 80;#监听端口
    server_name localhost;#域名
    index index.html index.htm index.php;
    root /usr/local/nginx/html;#站点目录
      location ~ .*\.(php|php5)?$
    {
      #fastcgi_pass unix:/tmp/php-cgi.sock;
      fastcgi_pass 127.0.0.1:9000;
      fastcgi_index index.php;
      include fastcgi.conf;
    }
    location ~ .*\.(gif|jpg|jpeg|png|bmp|swf|ico)$
    {
      expires 30d;
  # access_log off;
    }
    location ~ .*\.(js|css)?$
    {
      expires 15d;
   # access_log off;
    }
    access_log off;
  }

}
```

修改nginx.conf后不重启生效

```shell
./nginx -s reload
```

7、启动nginx

```shell
cd /usr/local/nginx/sbin
sudo ./nginx
```

8、关闭

```shell
./nginx -s quit
```

9、开机自启动（即在`rc.local`增加启动代码就可以了）

```shell
vi /etc/rc.local
#增加内容
/usr/local/nginx/sbin/nginx 
```

设置执行权限

```shell
chmod 755 rc.local
```



查询nginx进程：

```shell
ps aux|grep nginx
```

查询nginx.conf是否正确

```shell
/usr/local/nginx/sbin/nginx -t
```









### 2、源码安装

1、添加Nginx的源

```shell
sudo rpm -Uvh 
```

> http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

2、安装Nginx

```shell
sudo yum install -y nginx
```

3、启动Nginx并设置开机自动运行

```shell
sudo systemctl start nginx.service

sudo systemctl enable nginx.service
```

4、nginx常见命令

```markdown
# 查看nginx版本
nginx –v

# 访问nginx
curl -i localhost
```

5、开启80端口













## 六、安装activemq

1、新建/usr/local目录下新建activemq文件夹

```shell
cd /usr/local/
mkdir activemq
```

> 用xftp将activemq传到/usr/local目录下

3、解压到/usr/local/activemq/

```shell
tar -zxvf apache-activemq-5.14.5-bin.tar.gz
mv /usr/local/apache-activemq-5.14.5 /usr/local/activemq/
```

4、启动activemq

```shell
cd /usr/local/activemq/bin/
./activemq start 
```

<img src="Linux.assets/image-20200803102648374.png" alt="image-20200803102648374" style="zoom:67%;" />

5、查看activemq进程

```shell
ps -ef| grep activemq
```

6、防火墙添加8161端口

```shell
firewall-cmd --zone=public --add-port=8161/tcp --permanent
```

7、重启防火墙并查看是否生效

```shell
firewall-cmd --reload		#重启firewall
firewall-cmd --list-ports	#查看已经开放的端口
```

8、验证是否成功

> http://172.20.10.11:8161/admin/ （访问虚拟机IP）

<img src="Linux.assets/image-20200803102955256.png" alt="image-20200803102955256" style="zoom:67%;" />



### activemq设置为开机启动项

1、在/etc/init.d目录下面 创建一个activemq文件

```shell
cd /etc/init.d/
touch activemq
```

<img src="Linux.assets/image-20200803104247639.png" alt="image-20200803104247639" style="zoom:67%;" />



2、编辑activemq文件，JAVA_HOME CATALINA_HOME为软件安装路径

```shell
vi activemq
```

```shell
#!/bin/sh
#
# /etc/init.d/activemq
# chkconfig: 345 63 37
# description: activemq servlet container.
# processname: activemq
# Source function library.
#. /etc/init.d/functions
# source networking configuration.
#. /etc/sysconfig/network
export JAVA_HOME=/usr/local/java/jdk1.8.0_211
export ACTIVEMQ_HOME=/usr/local/activemq
case $1 in
    start)
        sh $ACTIVEMQ_HOME/bin/activemq start
    ;;
    stop)
        sh $ACTIVEMQ_HOME/bin/activemq stop
    ;;
    status)
        sh $ACTIVEMQ_HOME/bin/activemq status
    ;;
    restart)
        sh $ACTIVEMQ_HOME/bin/activemq stop
        sleep 1
        sh $ACTIVEMQ_HOME/bin/activemq start
    ;;

```

3、给文件赋权

```shell
chmod  +x activemq 
```

4、设置为开机启动

```shell
chkconfig activemq on
```

5、常用操作

```markdown
# 关闭开机启动：
chkconfig activemq off

# 启动activemq：
service activemq start

# 关闭activemq：
service activemq stop

# 查看activemq状态：
service activemq status

# 重启activemq：
service activemq restart

# 测试开机启动：
Reboot
```























## 七、常见命令

### Linux 关机

```shell
sync 将数据由内存同步到硬盘中。

shutdown 关机指令，你可以man shutdown 来看一下帮助文档。例如你可以运行如下命令关机：

shutdown –h 10 ‘This server will shutdown after 10 mins’ 这个命令告诉大家，计算机将在10分钟后关机，并且会显示在登陆用户的当前屏幕中。

shutdown –h now 立马关机

shutdown –h 20:25 系统会在今天20:25关机

shutdown –h +10 十分钟后关机

shutdown –r now 系统立马重启

shutdown –r +10 系统十分钟后重启

reboot 就是重启，等同于 shutdown –r now

halt 关闭系统，等同于shutdown –h now 和 poweroff
```



### Linux 系统目录结构

```shell
/bin：
bin是Binary的缩写, 这个目录存放着最经常使用的命令。

/boot：
这里存放的是启动Linux时使用的一些核心文件，包括一些连接文件以及镜像文件。

/dev ：
dev是Device(设备)的缩写, 该目录下存放的是Linux的外部设备，在Linux中访问设备的方式和访问文件的方式是相同的。

/etc：
这个目录用来存放所有的系统管理所需要的配置文件和子目录。

/home：
用户的主目录，在Linux中，每个用户都有一个自己的目录，一般该目录名是以用户的账号命名的。

/lib：
这个目录里存放着系统最基本的动态连接共享库，其作用类似于Windows里的DLL文件。几乎所有的应用程序都需要用到这些共享库。

/lost+found：
这个目录一般情况下是空的，当系统非法关机后，这里就存放了一些文件。

/media：
linux 系统会自动识别一些设备，例如U盘、光驱等等，当识别后，linux会把识别的设备挂载到这个目录下。

/mnt：
系统提供该目录是为了让用户临时挂载别的文件系统的，我们可以将光驱挂载在/mnt/上，然后进入该目录就可以查看光驱里的内容了。

/opt：
 这是给主机额外安装软件所摆放的目录。比如你安装一个ORACLE数据库则就可以放到这个目录下。默认是空的。

/proc：
这个目录是一个虚拟的目录，它是系统内存的映射，我们可以通过直接访问这个目录来获取系统信息。
这个目录的内容不在硬盘上而是在内存里，我们也可以直接修改里面的某些文件，比如可以通过下面的命令来屏蔽主机的ping命令，使别人无法ping你的机器：

echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all
/root：
该目录为系统管理员，也称作超级权限者的用户主目录。

/sbin：
s就是Super User的意思，这里存放的是系统管理员使用的系统管理程序。

/selinux：
 这个目录是Redhat/CentOS所特有的目录，Selinux是一个安全机制，类似于windows的防火墙，但是这套机制比较复杂，这个目录就是存放selinux相关的文件的。

/srv：
 该目录存放一些服务启动之后需要提取的数据。

/sys：

 这是linux2.6内核的一个很大的变化。该目录下安装了2.6内核中新出现的一个文件系统 sysfs 。

sysfs文件系统集成了下面3种文件系统的信息：针对进程信息的proc文件系统、针对设备的devfs文件系统以及针对伪终端的devpts文件系统。
该文件系统是内核设备树的一个直观反映。

当一个内核对象被创建的时候，对应的文件和目录也在内核对象子系统中被创建。

/tmp：
这个目录是用来存放一些临时文件的。

/usr：
 这是一个非常重要的目录，用户的很多应用程序和文件都放在这个目录下，类似于windows下的program files目录。

/usr/bin：
系统用户使用的应用程序。

/usr/sbin：
超级用户使用的比较高级的管理程序和系统守护程序。

/usr/src：
内核源代码默认的放置目录。

/var：
这个目录中存放着在不断扩充着的东西，我们习惯将那些经常被修改的目录放在这个目录下。包括各种日志文件。

/run：
是一个临时文件系统，存储系统启动以来的信息。当系统重启时，这个目录下的文件应该被删掉或清除。如果你的系统上有 /var/run 目录，应该让它指向 run。
```



### linux虚拟机ssh服务

```shell
#1.查看ssh服务的状态
sudo service sshd status
如果出现
Loaded: error (Reason: No such file or directory)
提示的话，说名没有安装ssh服务，按照第二步：安装ssh服务。
如果出现
Active: inactive (dead)
说明已经安装了ssh服务，但是没有开启。按照第三步：开启ssh服务。

#2.安装ssh服务
sudo apt-get install op4enssh-server

#3.开启ssh服务
sudo service sshd start

```



## 八、常见问题

> 确认虚拟机网络配置无误，防火墙关闭，端口正常，宿主机与虚拟机相互ping通，能ping通百度，Xshell突然死活连接不上的情况极大可能是IP冲突，==请更换IP==

### 1、xshell 连接不上linux

删除现存的ssh秘钥

```shell
 rm -rf /etc/ssh/ssh*key 
```

重启ssh服务，会自动生成秘钥（centos7可以）

```shell
service sshd restart
```

### 2、Linux关闭防火墙命令

下面是red hat/CentOs7关闭防火墙的命令

2.1、查看防火状态

```shell
systemctl status firewalld

service  iptables status
```

2.2、暂时关闭防火墙

```shell
systemctl stop firewalld

service  iptables stop
```

2.3、永久关闭防火墙

```shell
systemctl disable firewalld

chkconfig iptables off
```

2.4、重启防火墙

```shell
systemctl enable firewalld

service iptables restart
```

2.5、永久关闭后重启

```shell
chkconfig iptables on
```



### 3、检查端口是否开启

```shell
#首先要进入root权限，输入命令： 
ss -lnt
```





### 4、mysql设置

1、设置时区	

```shell
vi /etc/my.cnf 

default-time_zone = '+8:00'    #在[mysqld]区域中加上
```

2、在数据库中先查询select @@sql_mode;

```shell
#将查询结果去掉ONLY_FULL_GROUP_BY去掉之后,在vi /etc/my.cnf中设置添加
sql_mode=STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION
```

3、修改完之后重启mysql

```shell
service mysqld restart
```





### 5、设置Centos同步时间

```shell
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

yum -y install ntp

/usr/sbin/ntpdate cn.pool.ntp.org

echo "* 4 * * * /usr/sbin/ntpdate cn.pool.ntp.org > /dev/null 2>&1" >> /var/spool/cron/root

systemctl restart crond.service

systemctl enable ntpd
```





### 6、 设置代理服务

1、设置全局代理方法如下

修改 /etc/profile 文件,添加下面内容:

```http
 http_proxy=http://username:password@yourproxy:8080/
 ftp_proxy=http://username:password@yourproxy:8080/
 export http_proxy
 export ftp_proxy
```

 如果没有密码限制,则以上内容可以修改为以下内容:

```http
 http_proxy=http://yourproxy:8080/
 ftp_proxy=http://yourproxy:8080/
 export http_proxy
 export ftp_proxy
```


若只针对某个用户而言,则修改 ~/.bash_profile 文件,添加相同内容;

修改完成后注销重新登录即可，或者执行命令`source /etc/profile`

 

对于 yum 的代理，还要另外设置 /etc/yum.conf 文件，添加以下代码:

```http
proxy=http://username:password@yourproxy:8080/
```

若无密码限制,则为以下方式

```http
proxy=http://yourproxy:8080/
```


 这样yum的操作就通过代理了





### 7、离线安装gcc  基础环境

1、将gcc离线安装包上传到虚拟机

2、执行安装命令

```shell
rpm -ivh *.rpm --nodeps –force
```





### 8、离线安装perl

1、下载安装包

> http://search.cpan.org/CPAN/authors/id/S/SH/SHAY/perl-5.26.1.tar.gz

2、解压安装包 

```shell
tar -zxvf perl-5.26.1.tar.gz -C /user/local/mysql
```

3、进入文件目录

```shell
cd /user/local/mysql/perl-5.26.1/

./Configure -des -Dprefix=/user/local/perl/
```

4、编译并检测

```shell
make && make test
```

5、安装

```shell
make install
```

6、验证

```shell
perl –v
```





### 9、离线安装net-tools

1、将net-tools离线安装包上传到虚拟机

2、执行安装命令

```shell
rpm -ivh net-tools-2.0-0.24.20131004git.el7.x86_64.rpm
```



 

### 10、linux修改linux文件后需要重新启动linux

```shell
#问题1：service nginx restart 发现有错
ps -ef | grep linux 查找linux的进程，kill -9 结束进程

#再次重新加载linux.conf文件   
/usr/sbin/linux -c /etc/linux/linux.conf
```

































































