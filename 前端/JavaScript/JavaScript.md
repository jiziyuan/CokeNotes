# JavaScript

```javascript
// 弹出框
alert(...)
// 打浏览器的控制台打印变量
console.log(...)
// ES6语法，开启严格检查模式，必须写在首行
'use strict'
let i = 1;


```



# 数据类型

## 1.1、字符串

1、正常字符串使用单引号，或者双引号包裹

2、注意转译字符 \

```javascript
\'  // 字符串
\n  // 换行
\t  // tab
\u4e2d  \u### Unicode字符
\x41  // Ascll 字符


```

3、多行字符串编写

```javascript
 // tab 上面的``
var msg =
            `
            hello
            hehe
            lala
            zhangsan
            `
```

4、模板字符串

```javascript
let name = "zhangsan";
let age = 2;

let msg = `你好啊，${name},你今年${age}岁了`
```

5、字符串长度

```javascript
str.length
```

6、字符串的可变性，不可变

```javascript
var student = "student"
console.log(student.length)
7
console.log(student[0])
s
student[0] = 1
1
console.log(student)
student
```

7、大小写转换

```javascript
// 方法
student.toUpperCase() // 大写
student.toLowerCase() // 小写
```

8、student.indexOf('t')

9、subString

```javascript
[)
 student.subString(1) // 从第一个字符串截取到最后一个字符串
 student.subString(1,3)// [1,3)
```



## 1.2、数组

Array可以包含任意的数据类型

```javascript
let arr = [1,2,3,4,5] // 通过下标取值
arr[0]
arr[1] = 1
```

1、长度

```javascript
arr.length
```

注意：假如给arr.length赋值，数组大小就会发生变化，如果赋值过小，元素就会丢失

2、indexOf，通过元素获得下标索引

```javascript
arr.indexOf(2)
1
```

3、slice 截取Array的一部分，返回一个新的数组，类似String中subString

4、push(),pop()

```javascript
push // 从尾部插入元素
pop // 从尾部弹出一个元素
```

5、unshift(),shift()

```javascript
unshift // 从头部插入元素
shift // 从头部弹出一个元素
```

6、排序sort()

```javascript
arr = ["a","b","e","d","c"]
arr.sort()
(5) ["a", "b", "c", "d", "e"]
```

7、元素反转 reverse()

```javascript
arr = ["a","b","e","d","c"]
arr.reverse()
(5) ["e", "d", "c", "b", "a"]
```

8、concat() 不改变数组，追加数组元素

```javascript
arr = ["a","b","e","d","c"]
arr.concat("1","2","3")
(8) ["e", "d", "c", "b", "a", "1", "2", "3"]
```

9、连接符 join

打印拼接数组，使用特定的字符串连接

```javascript
arr = ["a","b","e","d","c"]
arr.join('-')
"e-d-c-b-a"
```

10、多维数组

```javascript
arr = [[1,2],[3,4],["5","6"]]
(3) [Array(2), Array(2), Array(2)]
arr[1][0]
3
```

## 1.3、对象

若干个键值对

```javascript
var 对象名 = {
    属性名：属性值，
    属性名：属性值，
    属性名：属性值
}

var person = {
    name:"zhangsan",
    age:3,
    email:"111111@aa.com"
}
```

javascript中的所有的键都是字符串，值都是任意对象！

1、对象赋值

```javascript
person.name = "erha"
```

2、使用一个不存在的对象属性，不会报错！ undefined

```javascript
person.haha
undefined
```

3、动态删减属性，通过delete删除对象的属性

```javascript
delete person.name
true
person
```

4、动态添加，直接给新的属性添加值即可

```javascript
person.haha = "haha"
"haha"
person
```

5、判断属性值是否在这个对象中！ xxx in xxx

```javascript
'age' in person
true
// 继承
'toString' in person
true
```



## 1.4、流程控制

if判断

```javascript
let age = 3;
if(age>3){
    alert("haha")
}else if(age<5){
    alert("gaga")
}else {
    alert("嘤嘤嘤")
}
```

循环，避免死循环

```javascript
let age = 3;
while (age<100){
    age = age+1;
    console.log(age)
}
```

for循环

```javascript
for (let i = 0; i <100 ; i++) {
    age = age+1;
    console.log(age)
}
```

forEach循环

```javascript
let age = [11,234,23,234,234,234];

age.forEach(function (value) {
    console.log(value)
})
```

for...in

```javascript
let age = [11,234,23,234,234,234];
// for(var index in object)
for (var num in age){
    if (age.hasOwnProperty(num)) {
        console.log(age[num])
    }
}
```

## 1.5、Map 和 Set

> ES6的新特性

map

```javascript
var map = new Map([['tom',100],['aa',44],['haha',99]])
var name = map.get('tom');
map.set('zhangsan',88);
console.log(name)

map.delete('tom')
console.log(map)
VM2293:1 Map(3) {"aa" => 44, "haha" => 99, "zhangsan" => 88}
```

set  无序不重复集合

```javascript
var set = new Set([3,3,1,1,2,2,2,]);
console.log(set)
Set(3) {3, 1, 2}

set.add(6); // 添加元素
set.delete(1);// 删除元素
console.log(set.has(3))// 是否包含某个元素
Set(2) {3, 2, 6}
```

## 1.6、iterator

遍历数组

```javascript
var arr = [1,2,5,6];
for (var x of arr) {
    console.log(x);
}
```

遍历map

```javascript
var map = new Map([["tom",23],["jack",55],["haha",89]])
for (var x of map) {
    console.log(x);
}
```

遍历set

```javascript
var set = new Set([1,2,2,3,3,1]);
for (var x of set) {
    console.log(x);
}
```

# 函数

## 1.1、定义函数

绝对值函数

```javascript
function abc(x){
    if (x > 3){
        return x;
    } else {
        return "小于3";
    }
}
```

一旦执行到return代表函数结束，返回结果！

如果没有执行return，函数执行完毕也会返回结果，结果就是undefined

> 定义方式二

```javascript
var abc = function(x){
    if (x > 3){
        return x;
    } else {
        return "小于3";
    }
}
```

function(x){...} 这是一个匿名函数，但是可以把结果赋值给abc，通过anc就可以调用函数！

> 调用函数

```javascript
abc(10) //10
abc(-10) //10
```

参数问题：javascript可以传任意参数，也可以不传递参数

参数进来是否存在问题？假设不存在参数，如何规避？

```javascript
var abc = function(x){
    //手动抛出异常来判断
    if(typeof x !== 'number'){
        throw 'Not a Number'
    }
    if (x > 3){
        return x;
    } else {
        return "小于3";
    }
}
```

> arguments

arguments 是一个js免费赠送的关键字

代表，传递进来的所有的参数，是一个数组！

```javascript
var abc = function(x){
    console.log("x==>"+x);
    for (let i = 0; i < arguments.length; i++) {
        console.log(arguments[i]);
    }

    if (x > 3){
        return x;
    } else {
        return "小于3";
    }
}
```

问题：arguments 包含所有的 参数，我们有时候想使用多余的参数进来进行附加操作，需要排除已有的参数

> rest

以前

```javascript
  if (arguments.length > 2) {
        for (let i = 0; i < arguments.length; i++) {
            console.log(arguments[i]);
        }
    }
```

ES6引入的新特性，获取除了已经定义的参数之外的所有参数~ …

现在

```javascript
function aaa(a,b,...rest){
    console.log("a:"+a);
    console.log("b:"+b);
    console.log(rest)
}
```

rest 参数只能写在最后面，必须用…标识



## 1.2、变量的作用域

在javascript中，var定义变量实际是由作用域的

假设在函数体中声明，则在函数体外不可以使用 （非要实现的话，后面可以研究一下闭包）

```javascript
function aa(){
    var x = 1;
    x= x + 1;
}
x = x + 2;
```

如果两个函数使用了相同的变量名，只要在函数内部就不冲突

```javascript
function a1(){
    var x = 1;
    x= x + 1;
}
function a2(){
    var x = 'A';
    x= x + 1;
}
```

内部函数可以访问外部函数的成员，反之则不行

```javascript
function a1(){
    var x = 1;
    
    // 内部函数可以访问外部函数的成员，反之则不行
    function a2(){
        var y = x + 1; // 2
    }
    
    var z = y + 1;  // y is not defined
}
```

假设，内部函数变量和外部函数的变量，重名

```javascript
function a1(){
    var x = 1;

    // 内部函数可以访问外部函数的成员，反之则不行
    function a2(){
        var x = 'A';
        console.log("inner"+x);
    }

    console.log('outh'+x);
    a2()
}
```

假设在javascript中函数查找变量从自身函数开始~，由“内”向“外”查找，假设外部存在这个同名的函数变量，则内部函数会屏蔽外部函数的变量。



> 提升变量的作用域

```javascript
function a1(){
    var x = "x" + y;
    console.log(x);
    var y = 'y';
}
```

结果：x undefined

说明： js执行引擎，自动提升y的声明，但是不会提升变量y的赋值；

```javascript
function a1(){
    var y;
    
    var x = "x" + y;
    console.log(x);
    y='y';
}
```

这个说明javascript建立之初就存在的特性，养成规范：所有变量定义都放在函数的头部，不要乱放，便于代码维护；

```javascript
function a1(){
    var x = 1,
        y = x + 1,
        z,i,a; // undefined
}
```

> 全局变量

```javascript
var x = 1;

function f(){
    console.log(x);
}
f();
console.log(x);
```

全局对象window

```javascript
var x = 1;

alert(x);
alert(window.x);// 默认所有的全局变量，都会自定绑定到window对象下；
```

alert() 这个函数本身也是一个window

```javascript
 var x = "xxx";

window.alert(x);
var old_alert = window.alert(x);// 默认所有的全局变量，都会自定绑定到window对象下；

//alert失效
window.alert(123);

//恢复
window.alert = old_alert;
```

javascript实际上只有一个全局作用域，任何变量（函数也可以视为变量），假设没有在函数作用范围内找到，就会向外查找，如果再全局作用域都没有找到，报错`RefrenceError`

> 规范

由于我们所有的全局变量都会绑定我们的window上，如果不同的js文件，使用了相同的全局变量，冲突，如何减少冲突?

```javascript
// 唯一全局变量
var app = {};

//定义全局变量
app.name = 'taobao';
app.add = function(a,b){
    return a + b;
}
```

把自己的代码全部放入自己定义的唯一空间名字中，降低冲突的问题



> 局部作用域 let

```javascript
function aa(){
    for (var i = 0; i < 100; i++) {
        console.log(i);
    }
    console.log(i + 1);// 问题？  i 出了这个作用域还可以使用
}
```

ES6 let 关键字，解决局部作用域冲突问题！

```javascript
function aa(){
    for (let i = 0; i < 100; i++) {
        console.log(i);
    }
    console.log(i + 1); // Uncaught ReferenceError: i is not defined
}
```

建议使用`let` 去定义局部作用域的变量；

> const

在ES6之前，怎么定义常量：只有用全部大写字母命名的变量就是常量；建议不要修改这样的值

```javascript
var PI = '3.14';

console.log(PI);
PI = '123';
console.log(PI);
```

在ES6引入了常量关键字`const`

```javascript
const PI = '3.14';

console.log(PI);
PI = '123'; // Uncaught TypeError: Assignment to constant variable.
```

## 1.3、方法

```javascript
var person = {
    name:"zhangsan",
    birth:1990,
    //方法
    age:function () {
        // 今年 - 出生年月
        var now = new Date().getFullYear();
        return now - this.birth;
    }
}
// 属性
person.name
//方法，一定要带
person.age()

```

this.代表什么？拆开上面的代码…

```javascript
function getAge() {
    var now = new Date().getFullYear();
    return now - this.birth;
}

var person = {
    name:"zhangsan",
    birth:1990,
    //方法
    age:getAge
}
```

this是无法指向的，是默认指向调用它的那个对象；

> apply

在js中可以控制this指向

```javascript
function getAge() {
    var now = new Date().getFullYear();
    return now - this.birth;
}

var person = {
    name:"zhangsan",
    birth:1990,
    //方法
    age:getAge
}
var person = {
    name:"lisi",
    birth:1990,
    //方法
    age:getAge
}

getAge.apply(person,[]);// this ,指向了person，参数为空
```

# 内部对象

## 1.1、Date

> 标准对象

```javascript
typeof 123
"number"
typeof '123'
"string"
typeof true
"boolean"
typeof NaN
"number"
typeof []
"object"
typeof {}
"object"
typeof Math.abs
"function"
typeof undefined
"undefined"
```

基本使用

```javascript
 var date = new Date();
        date.getFullYear();// 年
        date.getMonth();// 月
        date.getDate();// 日
        date.getDay();// 星期几
        date.getHours();// 时
        date.getMinutes();// 分
        date.getSeconds();//秒
        console.log(date)

date.getTime();// 时间戳
console.log(new date(1585902096239));//时间戳转为时间
```

转换

```javascript
date = new Date();
Fri Apr 03 2020 16:21:36 GMT+0800 (中国标准时间)
date.toLocaleString()
"2020/4/3 下午4:21:36"
date.toGMTString()
"Fri, 03 Apr 2020 08:21:36 GMT"
```

## 1.2、JSON

> JSON是什么？

- JSON是一种轻量级的数据交换格式。

- 简洁和清晰的层次结构使得 JSON 成为理想的数据交换语言。 

- 易于人阅读和编写，同时也易于机器解析和生成，并有效地提升网络传输效率。

在javascript 一切皆为对象，任何js支持的类型都可以用JSON来表示：

格式：

- 对象都用{}
- 数组都用[ ]
- 所有的键值对都用 key:value

json字符串和js对象的转换

```javascript
var user = {
    name:"haha",
    age:2,
    sex:'男'
}
//对象转化为json字符串
var UserJson = JSON.stringify(user);

//json字符串转化为对象 参数为json字符串
var JsonUser = JSON.parse('{"name":"haha","age":2,"sex":"男"}');
```

JSON和js对象的区别：

```javascript
var obj = {a:"h1",b:"h2"};
var json = '{"a":"h1","b":"h2"}';
```

## 1.3、Ajax

- 原生写法 xhr异步请求
- jQuery封装好的方法$(“#name”).ajax(“”)

```javascript
$(function(){
    $('#send').click(function(){
         $.ajax({
             type: "GET",
             url: "test.json",
             data: {username:$("#username").val(), content:$("#content").val()},
             dataType: "json",
             success: function(data){
                 $('#resText').empty();   //清空resText里面的所有内容
                 var html = ''; 
                 $.each(data, function(commentIndex, comment){
                     html += '<div class="comment"><h6>' + comment['username']
                         + ':</h6><p class="para"' + comment['content']
                         + '</p></div>';
                 });
                 $('#resText').html(html);
             }
         });
    });
});
```

- axios请求

# 面向对象编程

1.1、什么是面向对象？

javascript、java、c#、   面向对象；javascript有区别

- 类：模板
- 对象：具体的实例

```javascript
var Student = {
    name:"haha",
    age:2,
    sex:'男',
    run:function () {
        console.log(this.name+":run...")
    }
};

var xiaoming = {
    name:"xiaoming"
};

//小明原型是Student
xiaoming.__proto__ = Student;

var Bird = {
    fly:function () {
        console.log(this.name+":fly...")
    }
}

xiaoming.__proto__ = Bird;

```



> class关键字，是在ES6引入的

1、定义一个类，属性，方法

```javascript
//ES6
class Student{
    constructor(name){
        this.name = name;
    }

    hello(){
        alert('hello')
    }
}

var xiaoming = new Student("xiaoming");
```

2、继承

```javascript
//ES6
class Student{
    constructor(name){
        this.name = name;
    }

    hello(){
        alert('hello')
    }
}

class xiaoxuesheng extends Student{
    constructor(name,grade){
        super(name);
        this.grade = grade;
    }
    myGrade(){
        alert('我是一名小学生')
    }
}

var xiaoming = new Student("xiaoming");
var huahua = new xiaoxuesheng("huahua",2);
```



# 操作BOM对象（重点）

> 浏览器介绍

javascript诞生就是为了在浏览器中运行！

BOM：浏览器对象模型

- IE6~11
- Chrome
- Safari
- FireFox
- Opera

> window

window代表 浏览器窗口

```javascript
window.alert(1)
undefined
window.innerHeight
266
window.innerWidth
1536
window.outerHeight
824
window.outerWidth
1536
```

> Navigator

Navigtor 封装了浏览器的信息

```javascript
navigator.appName
"Netscape"
navigator.appVersion
"5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
navigator.userAgent
"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36"
navigator.platform
"Win32"
```

大多数时候，我们不会使用`navigator`对象，因为会被人修改

不建议使用这些属性来判断和写代码

> screen

代表屏幕的尺寸

```javascript
screen.width
1536
screen.height
864
```

> location(重要)

location 代表当前页面的URL信息

```javascript
location.host
"www.baidu.com"
location.href
"https://www.baidu.com/"
location.protocol
"https:"
reload: ƒ reload()
//设置新的地址
location.assign('https://www.cokecoke.top')
```



>document

document代表当前的页面，HTML DOM文档树

```javascript
document.title
"www.cokecoke.top"
document.title='可乐'
"可乐"
```

获取具体的文档树节点

```html
<dl id="app">
    <dt>Java</dt>
    <dt>JavaSE</dt>
    <dt>JavaEE</dt>
</dl>

<script>
    var dl = document.getElementById('app')
</script>
```

获取cookie

```javascript
document.cookie
"_uuid=C03ABDBD-E9E0-2C2E-5D0B-3D9A969F18B065654infoc; buvid3=EF8D9EBA-16CE-497F-92F3-4048A4AD4FEA53929infoc; sid=997jmvfd; DedeUserID=389590952;
```

劫持cookie原理

www.taobao.com

```javascript
<script src="aa.js"></script>
// 恶意人员：获取你的cookie上传到他的服务器
```

>history

history代表浏览器的历史记录

```javascript
history.back() // 前进
history.forward() // 后退
```

# 操作DOM对象（重点）

DOM：文档对象模型

- 更新DOM节点
- 遍历DOM节点
- 删除一个DOM节点
- 添加一个新的节点

要操作一个DOM节点，就必须要先获得这个DOM节点

> 获得Dom节点

```html
<div id="father">
    <h1>标题一</h1>
    <p id="p1">p1</p>
    <p class="p2">p2</p>
</div>


<script>
    // 对应css选择器
    var h1 = document.getElementsByTagName('h1');
    var p1 = document.getElementById('p1');
    var p2 = document.getElementsByClassName('p2');

    let father = document.getElementById('father');//获取父节点下所有子节点
    let firstChild = father.firstChild;// 获取第一个子节点
    let lastChild = father.lastChild;// 获取最后一个节点

</script>
```



> 更新节点

```html
<div id="1">
    <p>aaaa</p>
</div>

<script>
    let id1 = document.getElementById('1');
</script>
```

操作文本

- id1.innerText="123"` //修改文本的值
- id1.innerHTML=‘<strong>123<//strong>’

操作css

```javascript
id1.style.color = 'red'
"red"
id1.style.fontSize = '20px'
"20px"
id1.style.padding = '20px'
"20px"
```



>删除节点

删除节点步骤：先获取父节点，通过父节点删除子节点

```html
<div id="father">
    <h1>标题一</h1>
    <p id="p1">p1</p>
    <p class="p2">p2</p>
</div>


<script>
    var self = document.getElementById('p1');
    var father = p1.parentElement;//获取父节点	
    father.removeChild(self);
    
    //删除是一个动态的过程
    father.removeChild(father.children[0]);
    father.removeChild(father.children[1]);
    father.removeChild(father.children[2]);
</script>
```

注意：删除多个节点的时候，children是在时刻变化的，删除节点的时候一定要注意！

> 插入节点

我们获得了某个Dom节点，假设这个Dom节点是空的，我么通过innerHTML就可以增加一个元素了，但是这个Dom节点已经存在元素了，我们就不能这个操作了，会产生覆盖

追加

```html
<p id="js">JavaScript</p>
<div id="list">
    <p id="se">JavaSE</p>
    <p id="ee">JavaEE</p>
    <p id="me">JavaME</p>
</div>

<script>
    let js = document.getElementById('js');
    let list = document.getElementById('list');
    // 通过js 创建一个新的节点
   	
</script>
```

> 创建一个新的标签,实现插入

```html
<div id="list">
    <p id="se">JavaSE</p>
    <p id="ee">JavaEE</p>
    <p id="me">JavaME</p>
</div>

<script>
    let js = document.getElementById('js');
    let list = document.getElementById('list');
    let newP = document.createElement('p');
    newP.id = 'newP';
    newP.innerText = 'hello';
    list.appendChild(newP)
    
    var myScript = document.createElement('script');
    myScript.setAttribute('type','text/javascript');
    list.appendChild(myScript);
</script>
```

> insertBefore

```javascript
<script>
    let js = document.getElementById('js');
    let ee = document.getElementById('ee');
    let list = document.getElementById('list');
    // 要包含的节点insertBefore('新节点','被插入的节点')
    list.insertBefore(js,ee);
</script>
```



# 操作表单（验证）

> 表单是什么？ form  DOM 数

- 文本框
- 下拉框
- 单选框
- 单选框
- 隐藏框
- 密码框

> 获得要提交的信息

```html
<form action="post">
    <span>用户名：<input type="text" id="username"></span>

    <p>
        <span>性别：</span>
        <input type="radio" name="sex" value="man" id="boy">男
        <input type="radio" name="sex" value="women" id="girl">女

    </p>
</form>

<script>
    var inputText = document.getElementById('username');
    var boy = document.getElementById('boy');
    var girl = document.getElementById('girl');

    // 得到输入框的值
    inputText.value();
    // 修改输入框的值
    inputText.value = '123';

    
    // 对于单选框，多选框等固定值，boy.value 只能取到当前值
    boy.checked;//查看返回的结果，是否为true，如果为true，则别选中
    girl.checked = true;// 赋值
</script>
```



> 提交表单

```html
<form action="https://www.baidu.com/" method="post">
    <span>用户名：<input type="text" id="username" name="username"></span><br/>
    <span>密码：<input type="text" id="password" name="input-pwd"></span><br/>
    <button type="button" onclick="aaa()">提交</button>

    <input type="hidden" id="md5-password" name="password">
</form>


<script>
    function aaa() {
        var username = document.getElementById('username');
        var password = document.getElementById('input-pwd');
        var md5Pwd = document.getElementById('md5-password');

        console.log(username);
        console.log(password);
        console.log(md5Pwd);
        //加密
        md5Pwd.value = md5(password.value);
        console.log(md5Pwd.value);
        return true;
    }
</script>
```

>  选择器

```javascript
// 原生js，选择器少，麻烦不好记
// 标签
document.getElementById();
document.getElementsByTagName();
document.getElementsByClassName();

// jQuery
$('p').click();
$('#p1').click();
$('.class').click();

```

> 事件

鼠标事件、键盘事件、其他事件

```html
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/jquery-3.4.1.js"></script>
    <style>
        #divMove{
            width: 200px;
            height: 300px;
            border: 1px solid;
            border-color: red;
        }
    </style>
</head>
<body>

mouse:<span id="mouseMove"></span>
<div id="divMove">
    鼠标到这里来
</div>
<script>
    $(function () {
        $('#divMove').mousemove(function (e) {
            $('#mouseMove').text("x:"+e.pageX + "y:"+e.pageY)
        })
    })
</script>
</body>
</html>
```



> 操作Dom

节点文本操作

```javascript
$('#test-ul li[name=java]').text();// 获得值
$('#test-ul li[name=java]').text('设置值');// 设置值
$('#test-ul').html();// 获得值
$('#test-ul').html('<strong>123</strong>');// 获得值
```

css操作

```javascript
$('#test-ul li[name=java]').css({"color","red"});
```

元素的显示和隐藏：本质`display:none`

```javascript
$('#test-ul li[name=java]'),show();
$('#test-ul li[name=java]').hide();
```





