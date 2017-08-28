//
//  Person.h
//  ProjectObjectC13
//  属性的本质
//  Created by lingdian on 17/8/28.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//{系统会替我们生成下面的代码
//    int  _age;
//}
@property(nonatomic) int age;//在property的属性的时候 其实在内部大括号中 他帮我们生成了_age 但是由于是私有变量 所以只能内部使用

@property(nonatomic,readonly)BOOL sex;//添加readonly 是只读  添加 writeonly 是只允许写 不能读
-(void) setData;
-(void) setXxx:(float)f;
-(float)xxx;
@end
