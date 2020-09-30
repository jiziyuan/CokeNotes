# 目录

- Java反射机制概述
- 理解Class类并获取Class实例
- 类的加载与ClassLoader
- 创建运行时类的对象
- 获取运行时类的完整结构
- 调用运行时类的指定结构



## **动态语言**

- 是一类在运行时可以改变其结构的语言：例如新的函数、对象、甚至代码可以被引进，已有的函数可以被删除或是其他结构上的变化。通俗点说就是运行是代码可以根据某些条件改变自身结构。
- 主要动态语言：Object-c、C#、JavaScript、PHP、Python等。



## **静态语言**

- 与动态语言相对应的，运行时结构不可变的语言就是静态语言。入Java、C、C++。
- Java不是动态语言，但是Java可以称之为“准动态语言”。即Java有一定的动态性，我们可以利用反射机制获得类似动态语言的特性。Java的动态性让编程的时候更加灵活！



## **Java Reflection**

- Refletion（反射）是Java被视为动态语言的关键，反射机制允许程序执行期间借助于Reflection API取得任何类的内部信息，并能直接操作任意对象的内部属性即方法。

> **Class c = Class.forName("java.lang.String")**

- 加载完类之后，在堆内存的方法区中就产生了一个Class类型的对象（一个类只有一个Class对象），这个对象就包含了完整的结构信息。我们可以通过这个对象看到类的结构。这个对象就像一面镜子吗，通过这个镜子看到类的结构，所以我们形象的称之为：反射！

> 正常方式：引入需要的“包类”名称 --> 通过new实例化 --> 取得实例化对象
>
> 反射方式： 实例化对象 --> getClass()方法 --> 得到完整的“包类”名称



# **Java反射机制研究及应用**

### **Java反射机制提供的功能**

- 在运行时判断任意一个对象所属的类
- 在运行时构造任意一个类的对象
- 在运行时判断任意一个所具有的成员变量和方法
- 在运行时获取泛型信息
- 在运行时调用任意一个对象的成员变量和方法
- 在运行时处理注解
- 生成动态代理

### **Java反射的有点和缺点**

- 优点
  - 可以实现动态创建对象和编译，体现出很大的灵活性

- 缺点
  - 对性能有影响。使用反射基本上是一种解释操作，我们可以告诉JVM，我们希望做什么并且满足我们的要求。这类操作总是慢于直接执行相同的操作。



### **反射相关的主要API**

- java.lang.Class:代表一个类
- java.lang.Method:代表类的方法
- java.lang.Fied:代表类的成员变量
- java.lang.reflect.Constructor:代表类的构造器



```java
//什么叫反射
public class test01 {

    public static void main(String[] args) throws ClassNotFoundException {
        //通过反射获取类的Class对象
        Class c1 = Class.forName("com.cokecoke.pojo.User");
        System.out.println(c1);

        Class c2 = Class.forName("com.cokecoke.pojo.User");
        Class c3 = Class.forName("com.cokecoke.pojo.User");
        Class c4 = Class.forName("com.cokecoke.pojo.User");
        Class c5 = Class.forName("com.cokecoke.pojo.User");

        //一个类在内存中只有一个Class对象
        //一个类被加载后，类的整个结构都会被封装在Class对象中
        System.out.println(c2.hashCode());
        System.out.println(c3.hashCode());
        System.out.println(c4.hashCode());
        System.out.println(c5.hashCode());
    }

}
```

结果：

![image-20200307170252084](Java%E5%8F%8D%E5%B0%84.assets/image-20200307170252084.png)





# 理解Class类并获取Class实例

## **Class类**

![image-20200307164520899](Java%E5%8F%8D%E5%B0%84.assets/image-20200307164520899.png)



对象照镜子后可以得到的信息：某个类的属性、方法和构造器、某个类到底实现了哪些接口。对于每个类而言JRE都为其保留一个不变的Class类型的对象。一个Class对象包含了特定某个结构（class/interface/enum/annotation/primitive type/void/[] )的有关信息。

- Class本身也是一个类
- Class对象只能有系统建立对象
- 一个加载的类在JVM中只会有一个Class实例
- 一个Class对象对应的是一个加载到JJVM中的一个 .class 文件
- 每个类的实例都会记得自己是由哪个Class实例所生成的
- 通过Class可以完整的得到一个类中的多有被加载的结构
- Class类是Reflection的根源，针对任何你想动态加载、运行的类，唯一获得相应的Class对象

## Class类的常用方法

![image-20200307165800407](Java%E5%8F%8D%E5%B0%84.assets/image-20200307165800407.png)



![image-20200307170543802](Java%E5%8F%8D%E5%B0%84.assets/image-20200307170543802.png)



```java
//测试class类的创建方式有哪些
public class test02 {

    public static void main(String[] args) throws ClassNotFoundException {
        Person person = new Student();
        System.out.println("这个人是："+person.name);

        //方式一：通过对象获取
        Class c1 = person.getClass();
        System.out.println(c1.hashCode());

        //方式二：forName获取
        Class c2 = Class.forName("com.cokecoke.demo.Student");
        System.out.println(c2.hashCode());

        //方式三：通过类名Class获得
        Class c3 = Student.class;
        System.out.println(c3.hashCode());

        //方式四：基本内置类型的的包装类都有一个Type属性
        Class c4 = Integer.TYPE;
        System.out.println(c4);

        //获得父类类型
        Class c5 = c1.getSuperclass();
        System.out.println(c5);
    }
}

class Person{

    public String name;

    public Person() {
    }

    public Person(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                '}';
    }
}

class Student extends Person{
    public Student(){
        this.name = "学生";
    }
}
class Teacher extends Person{
    public Teacher(){
        this.name = "老师";
    }
}
```

## **哪些类可以有Class对象？**

![image-20200307172335776](Java%E5%8F%8D%E5%B0%84.assets/image-20200307172335776.png)

```java
//所有类型的class
public class test03 {
    public static void main(String[] args) {
        Class c1 = Object.class;//类
        Class c2 = Comparable.class;//接口
        Class c3 = String[].class;//一维数组
        Class c4 = int[].class;//二维数组
        Class c5 = Override.class;//注解
        Class c6 = ElementType.class;//枚举
        Class c7 = Integer.class;//基本数据类型
        Class c8 = void.class;//void
        Class c9 = Class.class;//Class

        System.out.println(c1);
        System.out.println(c2);
        System.out.println(c3);
        System.out.println(c4);
        System.out.println(c5);
        System.out.println(c6);
        System.out.println(c7);
        System.out.println(c8);
        System.out.println(c9);


        //只要元素类型与维度一样，就是同一个Class
        int[] a = new int[10];
        int[] b = new int[100];
        System.out.println(a.getClass().hashCode());
        System.out.println(b.getClass().hashCode());

    }
}
```

# 类的加载与ClassLoader





## Java内存分析

![image-20200307174836232](Java%E5%8F%8D%E5%B0%84.assets/image-20200307174836232.png)

**了解：类的加载过程**

![image-20200307174916433](Java%E5%8F%8D%E5%B0%84.assets/image-20200307174916433.png)



**类的加载与ClassLoader的理解**

![image-20200307175019424](Java%E5%8F%8D%E5%B0%84.assets/image-20200307175019424.png)

```java
public class test04 {

    public static void main(String[] args) {
        A a = new A();
        System.out.println(A.m);
        /*
        1.加载到内存，会产生一个类对应Class对象
        2.链接，链接结束后m=0
        3.初始化
               <clinit>(){
                 System.out.println("A类静态代码块初始化");
                m = 300;
                m = 100;
        }

        */
    }
}

class A{

    static {
        System.out.println("A类静态代码块初始化");
        m = 300;
    }
    static int m = 100;

    public A(){
        System.out.println("A类的无参构造器初始化");
    }
}
```



![image-20200307180801120](Java%E5%8F%8D%E5%B0%84.assets/image-20200307180801120.png)

## 什么时候会发生类初始化？

![image-20200307180059309](Java%E5%8F%8D%E5%B0%84.assets/image-20200307180059309.png)

# 创建运行时类的对象

```java
//测试类什么时候会初始化
public class test05 {
    static {
        System.out.println("main类被加载");
    }

    public static void main(String[] args) throws ClassNotFoundException {
        //1.主动引用
        Son son = new Son();

        //2.反射也会产生主动引用
        Class a1 = Class.forName("com.cokecoke.demo.Son");

        //3.不会产生类的引用的方法
        System.out.println(Son.b);

        //4.只是开辟了一块空间不会加载类
        Son[] array = new Son[5];

        System.out.println(Son.M);
    }
}

class Father{
    static int b = 2;
    static {
        System.out.println("父类被加载");
    }
}
class Son extends Father{
    static {
        System.out.println("子类被加载");
    }
    static int m=100;
    static final int M=1;
}
```

<img src="Java%E5%8F%8D%E5%B0%84.assets/image-20200307181442774.png" alt="image-20200307181442774"  />





**类的加载器的作用**

![image-20200307181555613](Java%E5%8F%8D%E5%B0%84.assets/image-20200307181555613.png)

![image-20200307181722796](Java%E5%8F%8D%E5%B0%84.assets/image-20200307181722796.png)





```java
public class test06 {
    public static void main(String[] args) throws ClassNotFoundException {
        //获取系统类的加载器
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        System.out.println(systemClassLoader);

        //获取系统类加载器的父类加载器-->扩展类的加载器
        ClassLoader parent = systemClassLoader.getParent();
        System.out.println(parent);

        //获取扩展类加载器的父类加载器-->根加载器（C/C++）
        ClassLoader parent1 = parent.getParent();
        System.out.println(parent1);

        //测试当前类是哪个加载器加载的
        ClassLoader classLoader = Class.forName("com.cokecoke.demo.test06").getClassLoader();
        System.out.println(classLoader);

        //测试JDK内置的类是谁加载的
        ClassLoader classLoader1 = Class.forName("java.lang.Object").getClassLoader();
        System.out.println(classLoader1);

        //如何获取系统类加载器可以加载的路径
        System.out.println(System.getProperty("java.class.path"));

        //双亲委派机制
        //自己定义的类，自动加载的时候，会一级一级向上找包进行判断，如果有就使用系统内置的确保安全性
    }
}
```



# 获取运行时类的完整结构

通过反射获取运行时类的完整结构

Field、Method、Constructor、Superclass、interface、Annotation

- 实现的全部接口
- 所继承的父类
- 全部的构造器
- 全部的方法
- 全部的Field
- 注解



```java
public class test07 {
    public static void main(String[] args) throws ClassNotFoundException, NoSuchFieldException, NoSuchMethodException {
        Class<?> a1 = Class.forName("com.cokecoke.pojo.User");

        //获取类的名字
        System.out.println(a1.getName());//获取包名+类名
        System.out.println(a1.getSimpleName());//获取类名

        //获得类的属性
        Field[] fields = a1.getFields();//只能找到public属性

        fields = a1.getDeclaredFields();//找到全部的属性
        for (Field field : fields) {
            System.out.println(field);

        }
        //获取指定属性的值
        Field name = a1.getDeclaredField("name");
        System.out.println(name);

        //获得类的方法
        System.out.println("==================");
        Method[] methods = a1.getMethods();//获得本类及其父类的全部方法
        for (Method method : methods) {
            System.out.println("method"+methods);
        }

        Method[] declaredMethods = a1.getDeclaredMethods();//获得本来所有的方法
        for (Method declaredMethod : declaredMethods) {
            System.out.println("declaredMethods:"+declaredMethod);
        }

        System.out.println("===========================");

        //获得指定方法
        //重载，要传类型
        Method getName = a1.getMethod("getName", null);
        Method setName = a1.getMethod("setName", String.class);
        System.out.println(getName);
        System.out.println(setName);

        //获得指定的构造器
        Constructor<?>[] constructors = a1.getConstructors();//获得public级别的构造器
        for (Constructor<?> constructor : constructors) {
            System.out.println(constructor);
        }
        Constructor<?>[] declaredConstructors = a1.getDeclaredConstructors();//获得全部的构造器
        for (Constructor<?> declaredConstructor : declaredConstructors) {
            System.out.println(declaredConstructor);
        }

        //获得指定的构造器
        Constructor<?> declaredConstructor = a1.getDeclaredConstructor(String.class, int.class, int.class);
        System.out.println(declaredConstructor);


    }

}
```





有了Class对象，能做什么？





![image-20200307185550304](Java%E5%8F%8D%E5%B0%84.assets/image-20200307185550304.png)

# 动态创建对象的执行方法

```java
//动态的创建对象，通过反射
public class test08 {

    public static void main(String[] args) throws ClassNotFoundException, IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException, NoSuchFieldException {
        //获得Class对象
        Class<?> c1 = Class.forName("com.cokecoke.pojo.User");

        //构造一个对象
        //User user = (User) c1.newInstance();//本质是调用了无惨构造器
        //System.out.println(user);

        System.out.println("===================");
        //通过构造器创建对象
        Constructor constructor = c1.getDeclaredConstructor(String.class, int.class, int.class);
        User user2 = (User) constructor.newInstance("哈哈", 10, 20);
        System.out.println(user2);

        //通过反射调用普通方法
        User user3 = (User) c1.newInstance();
        //通过反射获取一个方法
        Method setName = c1.getDeclaredMethod("setName", String.class);
        //invoke：激活的意思
        //(对象，“方法值”)
        setName.invoke(user3,"奥特");
        System.out.println(user3.getName());


        System.out.println("=============================");
        //通过放射操作属性
        User user4 = (User) c1.newInstance();
        Field name = c1.getDeclaredField("name");

        //不能直接操作私有属性，我们需要关闭程序的安全监测，属性或方法的setAccessible(true)
        name.setAccessible(true);
        name.set(user4,"啦啦");
        System.out.println(user4.getName());
    }
}

```







**调用指定的方法**

![image-20200307192005074](Java%E5%8F%8D%E5%B0%84.assets/image-20200307192005074.png)

- **setAccessible**

![image-20200307192142442](Java%E5%8F%8D%E5%B0%84.assets/image-20200307192142442.png)





























