//
//  Circle.m
//  ProjectObjectC13
//  输入一个半径 就可以求出面积
//  输入一个面积 就可以求出半径
//  Created by lingdian on 17/8/28.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "Circle.h"

@implementation Circle
-(float)s{
    return 3.14*self.r*self.r;
}
-(void)setS:(float)s{
    self.r=sqrtf(s/3.14);
}
@end
