# Typora+GitHub+PicGo=免费图床工具

### 一、什么是图床

图床一般是指用来储存图片的服务器，图床工具，就是自动把本地图片转换成链接的一款工具，网络上有很多图床工具，就目前使用种类而言，PicGo 算得上一款比较优秀的图床工具。它是一款用 `Electron-vue` 开发的软件，可以支持微博，七牛云，腾讯云COS，又拍云，GitHub，阿里云OSS，SM.MS，imgur 等8种常用图床，功能强大，简单易用。



### 二、配置GitHub

我们这里使用GitHub来当做我们的图床工具

1. #### 登录GitHub，新建仓库（或者使用已有仓库）

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002001500.png"  />

2. #### 获取Token

* 进入设置Setting

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/token1.png"  />



* 选择开发者设置Developer setting，点击创建Generate new token

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/token2.png"  />

* 命名图床文件夹名称，赋予此仓库权限

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/token3.png"  />



* 点击Generate token创建token，请记住这个token，因为他只会显示一次。复制此token值后面设置PicGo要用。





### 三、下载PicGo

下载链接：[传送门](https://github.com/Molunerfinn/PicGo/releases)，下载最新版PicGo到本地macOS

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002000149.png"  />

安装完成

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002000443.png"  />

配置token

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002003133.png"  />



### 四、上传方式

1. 设置快捷键

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002003632.png"  />

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002003705.png"  />

2. 拖拽上传

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002003757.png"  />



3. 使用相册，可复制、修改链接、删除（不能删除GitHub上的图片，需要手动删除）

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002004336.png"  />



### 五、设置Typora

1. 打开Typora偏好设置，点击图像，把插入图片设置为：无特殊操作

<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002004640.png"  />

2. 使用刚刚设置的快捷键，把复制的图片上床的到GitHub

* QQ快速截屏：`Ctrl+Atl+A`
* 微信快速截屏：Atl+A
* 然后使用设置好的`Ctrl+shift+C`快捷键，直接通过PicGo将截图上床到GitHub
* PicGo上传成功会自动返回一串MD格式的链接，直接`Ctrl+V`粘贴使用

![](https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002005420.png)





<img src="https://cdn.jsdelivr.net/gh/wsqGIT/CokeNotes/images/20201002005647.png"  />

* 如果以上全部设置成功，那么恭喜你，以后使用的Typora写文发布时，再也不用担心图片的问题了。

* 如果你想多终端操作笔记写文的话，那就把你的整个笔记文件夹托管给GitHub，这样不光解决图片问题的同时还解决了多终端同步的问题。

  

> 每天进步一点点

