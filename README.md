ProjectObjectC13<br/>
9-1  && 9-2  属性的原理 以及点操作符的原理<br/>
一、属性的原理<br/>
我们首先定义一个类的属性age：<br/>
@property(nonatomic) int age;<br/>
//在property的属性的时候 <br/>
1、其实在内部大括号中 他帮我们生成了_age 但是由于是私有变量 所以只能内部使用<br<br/>>
{系统会替我们生成下面的代码<br/>
    int  _age;<br/>
}<br/>
2、另外 还声称了两个函数 getAge 和setAge 但是oc中 一般省略get  所以 就有两个函数 age和setAge<br/>
-(int) age;//这里他做的就是返回_age<br/>
-(void)setAge:(int)age;//这里他做的 就是 把age赋值给 _age  我们可以自己重写<br/>
 函数中可以直接使用_age 或者self.age来访问<br/>
 
 当然我们可以重写 get或者set方法  但是不能都重写  如果都重写会报错，因为系统认为如果都重写 那么就没有声明属性的意义<br/>
 所以要重写 可以重写get护着set中的一个 不可都重写了<br/>
 
 如果你想控制它的只读或者只能写 可以在property中加入 readonly或者writeonly 只写<br/>
 也就是他会只提供get或者set函数 <br/>
 @property(nonatomic,readonly)BOOL sex;//添加readonly 是只读  添加 writeonly 是只允许写 不能读
 
 比如NSArray数组，array里面有一个count 他就是只读 用户不能随意修改书写<br/>
 
 
 #二、点的操作符<br/>
点的操作符 不是属性的专有操作<br/>
他就是指示硬性调用set或者get方法<br/>
例如：<br/>
person.age=170;//相当于调用了setAge方法<br/>
int page=person.age;//相当于世调用了getAge函数 也就是 age函数<br/>
