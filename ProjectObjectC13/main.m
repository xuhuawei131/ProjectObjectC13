//
//  main.m
//  ProjectObjectC13  9-2

//  点的操作符 不是属性的专有操作
//  他就是指示硬性调用set或者get方法

//  property属性，只是在头文件的大括号中 声明了一个变量、同时 帮你写了属性对应的get和set 的方法

//  如果计算机提供的两个 set和get函数都重写了 这是会报错的
//  系统认为你自己重写了 就不需要系统帮你去创建了
//  如果你只是重写了其中的一个 是没问题的


//  Created by lingdian on 17/8/28.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Circle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* person=[Person new];
        person.age=170;//相当于调用了setAge方法
        int page=person.age;//相当于世调用了getAge函数 也就是 age函数
        [person setData];
        
        //
        person.xxx=100;// 对象的点 操作 就是一个语法糖 他就是硬性的去调用 person里面的setXxx 函数
        float pi=person.xxx;//这个语法糖 就是硬性的去调用person里面的 xxx函数
        printf("pi:%f\n",pi);
        
        Circle* circle=[Circle new];
        circle.r=25.7;
        printf("面积:%.3f \n",circle.s);
        
        circle.s=189;
        printf("半径:%.3f \n",circle.r);
        
    }
    return 0;
}
