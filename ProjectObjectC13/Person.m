//
//  Person.m
//  ProjectObjectC13
//
//  Created by lingdian on 17/8/28.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void) setData{
    //获取数据 他们是等价的
    int pAge=_age;
    pAge=self.age;
    pAge=[self age];
    
    printf("age:%d \n",pAge);
    
    
}

//另外 还声称了两个函数 getAge 和setAge 但是oc中 一般省略get  所以 就有两个函数 age和setAge
//-(int) age;//这里他做的就是返回_age
//-(void)setAge:(int)age;//这里他做的 就是 把age赋值给 _age  我们可以自己重写
//    //函数中可以直接使用_age 或者self.age来访问


//我们重写我们的方法  比如增加一个判断 不合理的输入 就崩溃掉
-(void)setAge:(int)page{
    if (page<=0||page>200) {
        assert(0);
    }
    //设置数据  他们是等价的  但是 在这里不能用self.age=page; [self setAge:page]; 因为这是死循环了
    _age=page;
//    self.age=page;
//    [self setAge:page];

}
-(void) setXxx:(float)f{
    printf("setXxx:%f\n",f);
}

-(float)xxx{
    return 3.1415;

}

@end
