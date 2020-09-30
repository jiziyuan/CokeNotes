# Java基础

## 1、语言概述

软件：即一系列按照特定顺序组织的计算机数据和指令的集合。

分为：系统软件 和 应用软件	

-  系统软件：windows , mac os , linux ,unix,android,ios,....

- 应用软件：word ,ppt,画图板,...

人机交互方式：图形化界面 vs  命令行方式

应用程序 = 算法 + 数据结构



### 2、计算机语言的发展迭代史

第一代：机器语言

第二代：汇编语言

第三代：高级语言

- 向过程：C,Pascal、Fortran

- 面向对象：Java,JS,Python,Scala,...

### 3、ava语言版本迭代概述

- 1991年 Green项目，开发语言最初命名为Oak (橡树)
- 1994年，开发组意识到Oak 非常适合于互联网
- 1996年，发布JDK 1.0，约8.3万个网页应用Java技术来制作
- 1997年，发布JDK 1.1，JavaOne会议召开，创当时全球同类会议规模之最
- 1998年，发布JDK 1.2，同年发布企业平台J2EE
- 1999年，Java分成J2SE、J2EE和J2ME，JSP/Servlet技术诞生
- 2004年，发布里程碑式版本：JDK 1.5，为突出此版本的重要性，更名为JDK 5.0
- 2005年，J2SE -> JavaSE，J2EE -> JavaEE，J2ME -> JavaME
- 2009年，Oracle公司收购SUN，交易价格74亿美元
- 2011年，发布JDK 7.0
- 2014年，发布JDK 8.0，是继JDK 5.0以来变化最大的版本
- 2017年，发布JDK 9.0，最大限度实现模块化
- 2018年3月，发布JDK 10.0，版本号也称为18.3
- 2018年9月，发布JDK 11.0，版本号也称为18.9

### 4、Java语言应用的领域

- Java Web开发：后台开发
- 大数据开发：
- Android应用程序开发：客户端开发

### 5、Java语言的特点

 面向对象性：

- 两个要素：类、对象

- 三个特征：封装、继承、多态


健壮性：

- 去除了C语言中的指针 

- 自动的垃圾回收机制 -->仍然会出现内存溢出、内存泄漏

-  跨平台型：write once,run anywhere:一次编译，到处运行


功劳归功于：JVM

## 2、第一个Java程序



#### 1、开发体验——HelloWorld

1.1、编写

创建一个java源文件：HelloWorld.java

```java
class HelloChina{  
	public static void main(String[] args){    
		System.out.println("Hello,World!");  
	}
}
```

1.2、 编译：

```java
javac HelloWorld.java
```



1.3 、运行：

```java
java HelloChina
```

#### 2、总结第一个程序

2.1、 java程序编写-编译-运行的过程

​	编写：我们将编写的java代码保存在以".java"结尾的源文件中

​	编译：使用javac.exe命令编译我们的java源文件。

​	格式：javac 源文件名.java

​	运行：使用java.exe命令解释运行我们的字节码文件。 

​	格式：java 类名

2.2、在一个java源文件中可以声明多个class。但是，只能最多有一个类声明为public的。而且要求声明为public的类的类名必须与源文件名相同。

2.3、程序的入口是main()方法。格式是固定的。

2.4、输出语句：

​		System.out.println():先输出数据，然后换行

​		System.out.print():只输出数据

2.5、每一行执行语句都以";"结束。

2.6、编译的过程：编译以后，会生成一个或多个字节码文件。字节码文件的文件名与java源文件中的类名相同。



## 3、变量的使用(重点)



#### 1、变量的分类

1.1 按数据类型分类

**详细说明：**

**1.整型：**byte(1字节=8bit)、 short(2字节)、 int(4字节)、long(8字节)

-  byte范围：-128 ~ 127
-  声明long型变量，必须以"l"或"L"结尾
-  通常，定义整型变量时，使用int型。
- 整型的常量，默认类型是：int型

**2. 浮点型**：float(4字节) 、double(8字节)

-  浮点型，表示带小数点的数值
-  float表示数值的范围比long还大
-  定义float类型变量时，变量要以"f"或"F"结尾
-  通常，定义浮点型变量时，使用double型。
-  浮点型的常量，默认类型为：double

**3. 字符型：**char (1字符=2字节)

- 定义char型变量，通常使用一对'',内部只能写一个字符
- 表示方式：1.声明一个字符 2.转义字符 3.直接使用 Unicode 值来表示字符型常量

**4.布尔型**：boolean

- 只能取两个值之一：true 、 false
- 常常在条件判断、循环结构中使用

1.2 按声明的位置分类(了解)



#### 2、定义变量的格式：

数据类型 变量名 = 变量值;

数据类型 变量名;

变量名 = 变量值;



#### 3、变量使用的注意点：

-  变量必须先声明，后使用
-  变量都定义在其作用域内。在作用域内，它是有效的。换句话说，出了作用域，就失效了
-  同一个作用域内，不可以声明两个同名的变量



#### 4、基本数据类型变量间运算规则

4.1、涉及到的基本数据类型：

除了boolean之外的其他7种



4.2、自动类型转换(只涉及7种基本数据类型）

**结论：**当容量小的数据类型的变量与容量大的数据类型的变量做运算时，结果自动提升为容量大的数据类型。

​	byte 、char 、short --> int --> long --> float --> double 

​	特别的：当byte、char、short三种类型的变量做运算时，结果为int型

说明：此时的容量大小指的是，表示数的范围的大和小。比如：float容量要大于long的容量



4.3 、强制类型转换(只涉及7种基本数据类型）：自动类型提升运算的逆运算。

- 需要使用强转符：()
- 注意点：强制类型转换，可能导致精度损失。



4.4、 String与8种基本数据类型间的运算

- String属于引用数据类型,翻译为：字符串
- 声明String类型变量时，使用一对""
-  String可以和8种基本数据类型变量做运算，且运算只能是连接运算：+



4.5、 运算的结果仍然是String类型

避免：

String s = 123;//编译错误

String s1 = "123";

int i = (int)s1;//编译错误



## 4、流程控制



### 1、顺序结构：

程序从上到下执行。

```java
//分支结构：
if-else if - elses
witch-case
    
//循环结构：
forwhiledo-while
```



### 2、分支结构

```java
if-else条件判断结构
    
结构一：
if(条件表达式){
  执行表达式
}
结构二：二选一
if(条件表达式){
  执行表达式1
}else{
  执行表达式2
}
结构三：n选一
if(条件表达式){
  执行表达式1
}else if(条件表达式){
  执行表达式2
}else if(条件表达式){
  执行表达式3
}
...
else{
  执行表达式n
}

说明：
 else 结构是可选的。
 针对于条件表达式：
   > 如果多个条件表达式之间是“互斥”关系(或没有交集的关系),哪个判断和执行语句声明在上面还是下面，无所谓。
   > 如果多个条件表达式之间有交集的关系，需要根据实际情况，考虑清楚应该将哪个结构声明在上面。
   > 如果多个条件表达式之间有包含的关系，通常情况下，需要将范围小的声明在范围大的上面。否则，范围小的就没机会执行了。
 if-else结构是可以相互嵌套的。
 如果if-else结构中的执行语句只有一行时，对应的一对{}可以省略的。但是，不建议大家省略。
switch-case选择结构
switch(表达式){
case 常量1:
  执行语句1;
  //break;
case 常量2:
  执行语句2;
  //break;
...
default:
  执行语句n;
  //break;
}

```



### 3、说明：

-  根据switch表达式中的值，依次匹配各个case中的常量。一旦匹配成功，则进入相应case结构中，调用其执行语句。当调用完执行语句以后，则仍然继续向下执行其他case结构中的执行语句，直到遇到break关键字或此switch-case结构末尾结束为止。
-  break,可以使用在switch-case结构中，表示一旦执行到此关键字，就跳出switch-case结构
-  switch结构中的表达式，只能是如下的6种数据类型之一：
  - byte 、short、char、int、枚举类型(JDK5.0新增)、String类型(JDK7.0新增)

-  case 之后只能声明常量。不能声明范围。
- break关键字是可选的。
- default:相当于if-else结构中的else. 
- default结构是可选的，而且位置是灵活的。

- 如果switch-case结构中的多个case的执行语句相同，则可以考虑进行合并。
- break在switch-case中是可选的



### 4、循环结构

1.循环结构的四要素

-  初始化条件
-  循环条件 --->是boolean类型
-  循环体
-  迭代条件

说明：通常情况下，循环结束都是因为②中循环条件返回false了。



2、三种循环结构：

```java
for循环结构for(①;②;④){  ③}执行过程：① - ② - ③ - ④ - ② - ③ - ④ - ... - 
while循环结构①while(②){  ③;  ④;}
```

执行过程：① - ② - ③ - ④ - ② - ③ - ④ - ... - ②

说明：

写while循环千万小心不要丢了迭代条件。一旦丢了，就可能导致死循环！



**for和while循环总结：**

- 开发中，基本上我们都会从for、while中进行选择，实现循环结构。
- for循环和while循环是可以相互转换的！ 

-  区别：for循环和while循环的初始化条件部分的作用范围不同。
-  我们写程序，要避免出现死循环。

 do-while循环结构

```java
①

do{

	③;

	④;

}while(②);

执行过程：① - ③ - ④ - ② - ③ - ④ - ... - ②
```

说明：

- do-while循环至少会执行一次循环体！
- 开发中，使用for和while更多一些。较少使用do-while



3、“无限循环”结构: while(true) 或 for(;;)

总结：如何结束一个循环结构？

方式一：当循环条件是false时

方式二：在循环体中，执行break



4、嵌套循环

4.1、嵌套循环:将一个循环结构A声明在另一个循环结构B的循环体中,就构成了嵌套循环

 内层循环：循环结构A

 外层循环：循环结构B

4.2、说明：

-  内层循环结构遍历一遍，只相当于外层循环循环体执行了一次
-  假设外层循环需要执行m次，内层循环需要执行n次。此时内层循环的循环体一共执行了m * n次
-  外层循环控制行数，内层循环控制列数

```java
【典型练习】
    //练习一：
    /*
    ******
    ******
    ******
    ******
    */
    for(int j = 1;j <= 4;j++ ){
      for(int i = 1;i <= 6;i++){
        System.out.print('*');
      }
      System.out.println();
    }
    //练习二：
    /*      i(行号)    j(*的个数)
    *      1      1
    **      2      2
    ***      3      3
    ****    4      4
    *****    5      5
    */

    for(int i = 1;i <= 5;i++){//控制行数
      for(int j = 1;j <= i;j++){//控制列数
        System.out.print("*");
      
      }
      System.out.println();
    }
    //练习三：九九乘法表
    //练习四：100以内的质数
```



补充:衡量一个功能代码的优劣：

- 正确性
- 可读性
- 健壮性

5、高效率与低存储：时间复杂度 、空间复杂度 （衡量算法的好坏）

**如何理解流程控制的练习：**

- 流程控制结构的使用 + 算法逻辑





## 5、数组



### 1、数组的理解：

数组(Array)，是多个相同类型数据一定顺序排列的集合，并使用一个名字命名，并通过编号的方式对这些数据进行统一管理。

 

### 2、数组相关的概念：

- 数组名
- 元素
- 角标、下标、索引
- 数组的长度：元素的个数

 

### 3、数组的特点：

- 数组是序排列的
- 数组属于引用数据类型的变量。数组的元素，既可以是基本数据类型，也可以是引用数据类型
- 创建数组对象会在内存中开辟一整块连续的空间
- 数组的长度一旦确定，就不能修改。

 

### 4、数组的分类：

- 照维数：一维数组、二维数组、。。。
- 照数组元素的类型：基本数据类型元素的数组、引用数据类型元素的数组



### 5、数据结构：

- 数据与数据之间的逻辑关系：集合、一对一、一对多、多对多
- 数据的存储结构：

线性表：顺序表（比如：数组）、链表、栈、队列

树形结构：二叉树



#### 一维数组：

1、一维数组的声明与初始化

正确的方式：

```java
int num;//声明
    num = 10;//初始化
    int id = 1001;//声明 + 初始化
    
    int[] ids;//声明
    //1.1 静态初始化:数组的初始化和数组元素的赋值操作同时进行
    ids = new int[]{1001,1002,1003,1004};
    //1.2动态初始化:数组的初始化和数组元素的赋值操作分开进行
    String[] names = new String[5];

  int[] arr4 = {1,2,3,4,5};//类型推断
```

​	

错误的方式：

```java
//    int[] arr1 = new int[];
//    int[5] arr2 = new int[5];
//    int[] arr3 = new int[3]{1,2,3};
```



2、一维数组元素的引用：

通过角标的方式调用

```java
//数组的角标（或索引从0开始的，到数组的长度-1结束。
    names[0] = "王铭";
    names[1] = "王赫";
    names[2] = "张学良";
    names[3] = "孙居龙";
    names[4] = "王宏志";//charAt(0)
```

​	

3、数组的属性：

length

```java
System.out.println(names.length);//5
System.out.println(ids.length);
```



**说明：**

数组一旦初始化，其长度就是确定的。arr.length

数组长度一旦确定，就不可修改。



4、一维数组的遍历

```java
for(int i = 0;i < names.length;i++){
  System.out.println(names[i]);
}
```





5、一维数组元素的默认初始化值

数组元素是整型：0

- 数组元素是浮点型：0.0 
- 数组元素是char型：0或'\u0000'，而非'0'
- 数组元素是boolean型：false
- 数组元素是引用数据类型：null





#### 二维数组：

1、如何理解二维数组？

数组属于引用数据类型数组的元素也可以是引用数据类型一个一维数组A的元素如果还是一个一维数组类型的，则，此数组A称为二维数组。

2、二维数组的声明与初始化

```java
正确的方式：
int[] arr = new int[]{1,2,3};//一维数组
    //静态初始化
    int[][] arr1 = new int[][]{{1,2,3},{4,5},{6,7,8}};
    //动态初始化1
    String[][] arr2 = new String[3][2];
    //动态初始化2
    String[][] arr3 = new String[3][];
  //也是正确的写法：
    int[] arr4[] = new int[][]{{1,2,3},{4,5,9,10},{6,7,8}};
    int[] arr5[] = {{1,2,3},{4,5},{6,7,8}};//类型推断
错误的方式：
//    String[][] arr4 = new String[][4];
//    String[4][3] arr5 = new String[][];
//    int[][] arr6 = new int[4][3]{{1,2,3},{4,5},{6,7,8}};
```



3、如何调用二维数组元素:

```java
System.out.println(arr1[0][1]);//2
    System.out.println(arr2[1][1]);//null
    
    arr3[1] = new String[4];
    System.out.println(arr3[1][0]);
  System.out.println(arr3[0]);//
```



4、二维数组的属性：

```java
System.out.println(arr4.length);//3
    System.out.println(arr4[0].length);//3
    System.out.println(arr4[1].length);//4
```

​	

5、遍历二维数组元素：

```java
 for(int i = 0;i < arr4.length;i++){
      
      for(int j = 0;j < arr4[i].length;j++){
        System.out.print(arr4[i][j] + "  ");
      }
      System.out.println();
  }
  
```

​	

6、二维数组元素的默认初始化值

 规定：二维数组分为外层数组的元素，内层数组的元素

```java
int[][] arr = new int[4][3];
      外层元素：arr[0],arr[1]等
      内层元素：arr[0][0],arr[1][2]等
```



7、数组元素的默认初始化值 

针对于初始化方式一：比如：int[][] arr = new int[4][3];

- 外层元素的初始化值为：地址值
- 内层元素的初始化值为：与一维数组初始化情况相同

针对于初始化方式二：比如：int[][] arr = new int[4][];

- 外层元素的初始化值为：null
- 内层元素的初始化值为：不能调用，否则报错。





## 6、数组的常见算法



### 1、数组的创建与元素赋值：

​		杨辉三角（二维数组）、回形数（二维数组）、6个数，1-30之间随机生成且不重复。

### 2、针对于数值型的数组：

​		最大值、最小值、总和、平均数等

### 3、数组的赋值与复制

```java
int[] array1,array2;
array1 = new int[]{1,2,3,4};
```

3.1、赋值：

```java
array2 = array1;
```

如何理解：将array1保存的数组的地址值赋给了array2，使得array1和array2共同指向堆空间中的同一个数组实体。

3.2、复制：

```java
array2 = new int[array1.length];
for(int i = 0;i < array2.length;i++){
array2[i] = array1[i];
}
```

如何理解：我们通过new的方式，给array2在堆空间中新开辟了数组的空间。将array1数组中的元素值一个一个的赋值到array2数组中。



### 4、数组元素的反转

```java
 //方法一：
    for(int i = 0;i < arr.length / 2;i++){
      String temp = arr[i];
      arr[i] = arr[arr.length - i -1];
      arr[arr.length - i -1] = temp;
  }
    
    //方法二：
    for(int i = 0,j = arr.length - 1;i < j;i++,j--){
      String temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
  }
```



### 5、数组中指定元素的查找：

搜索、检索

5.1、线性查找：

  实现思路：通过遍历的方式，一个一个的数据进行比较、查找。

  适用性：具有普遍适用性。

5.2、二分法查找：

  实现思路：每次比较中间值，折半的方式检索。

  适用性：（前提：数组必须有序）



理解：

1、衡量排序算法的优劣：

  时间复杂度、空间复杂度、稳定性

2、排序的分类：内部排序 与 外部排序（需要借助于磁盘）

3、不同排序算法的时间复杂度

4、手写冒泡排序

```java
int[] arr = new int[]{43,32,76,-98,0,64,33,-21,32,99};   
    //冒泡排序
    for(int i = 0;i < arr.length - 1;i++){
      for(int j = 0;j < arr.length - 1 - i;j++){      
        if(arr[j] > arr[j + 1]){
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }     
      }      
    }
```

**数组的常见异常**

1、数组角标越界异常：==ArrayIndexOutOfBoundsException==

```java
int[] arr = new int[]{1,2,3,4,5};    
//    for(int i = 0;i <= arr.length;i++){
//      System.out.println(arr[i]);
//    }
    
//    System.out.println(arr[-2]);    
//    System.out.println("hello");
```

​		



2、空指针异常：==NullPointerException==

```java
 //情况一：
//    int[] arr1 = new int[]{1,2,3};
//    arr1 = null;
//    System.out.println(arr1[0]);
    

    //情况二：
//    int[][] arr2 = new int[4][];
//    System.out.println(arr2[0][0]);
    

    //情况：
    String[] arr3 = new String[]{"AA","BB","CC"};
    arr3[0] = null;
    System.out.println(arr3[0].toString());
```

小知识：一旦程序出现异常，未处理时，就终止执行。



Arrays工具类的使用

1、理解：

-  定义在java.util包下。
-  Arrays:提供了很多操作数组的方法。

2、使用：

```java
//1.boolean equals(int[] a,int[] b):判断两个数组是否相等。
    int[] arr1 = new int[]{1,2,3,4};
    int[] arr2 = new int[]{1,3,2,4};
    boolean isEquals = Arrays.equals(arr1, arr2);
    System.out.println(isEquals);
    
    //2.String toString(int[] a):输出数组信息。
    System.out.println(Arrays.toString(arr1));    
      
    //3.void fill(int[] a,int val):将指定值填充到数组之中。
    Arrays.fill(arr1,10);
    System.out.println(Arrays.toString(arr1));
    
    //4.void sort(int[] a):对数组进行排序。
    Arrays.sort(arr2);
    System.out.println(Arrays.toString(arr2));
    
    //5.int binarySearch(int[] a,int key)
    int[] arr3 = new int[]{-98,-34,2,34,54,66,79,105,210,333};
    int index = Arrays.binarySearch(arr3, 210);
    if(index >= 0){
      System.out.println(index);
    }else{
      System.out.println("未找到");
    }
```







​		



​		



























































































