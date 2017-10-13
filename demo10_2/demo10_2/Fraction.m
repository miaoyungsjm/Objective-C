//
//  Fraction.m
//  demo10_2
//
//  Created by ggz on 2017/10/12.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Fraction.h"

static int gCounter;    // 静态变量的声明

@implementation Fraction

@synthesize fenzi, fenmu;

// 类方法 - 关于静态变量的使用 对象个数的记录
+(Fraction *) allocF
{
    extern int gCounter;    // extern 声明，如果只是静态变量的使用则可注释，只是让人阅读明白
    ++gCounter;         // 记录对象个数
    return [Fraction alloc];
}

+(int) count            // 获取静态变量的方法
{
    extern int gCounter;
    return gCounter;
}


// 实例方法 - 关于重写对象初始化函数 init 的写法
-(instancetype) init                // 对象初始化 init 的重载。功能：主要方便用于子类的继承！！！
{
    return [self initVar:1 :1];     // 默认赋值
}

-(Fraction *) initVar:(int)fz :(int)fm          // 用于对象初始化的自定义实例化方法（自定义赋值）
{
    self = [super init];    // 关键点是：先调用 NSObject（父类）的 init 函数，然后对当前对象的属性重新赋值
    
    if (self) {
        // 初始化内容
        fenzi = fz;
        fenmu = fm;
    }
    
    return self;
}

@end
