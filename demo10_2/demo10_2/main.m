//
//  main.m
//  demo10_2
//
//  Created by ggz on 2017/10/12.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"对象初始化 和 静态变量 demo");
        
        Fraction *f1, *f2, *f3;
        f1 = [[Fraction allocF] init];
        f2 = [[Fraction allocF] init];
        f3 = [[Fraction allocF] initVar:1 :3];
        
        NSLog(@"Fraction 类实例化对象个数为：%i", [Fraction count]);
        
    }
    return 0;
}
