//
//  main.m
//  demo7_1
//
//  Created by ggz on 2017/9/23.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

// program
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];  // 分配内存存储空间
        myFraction = [myFraction init]; // 对象初始化
        
        [myFraction setNumerator: 1];   //消息表达式
        [myFraction setDenominator: 3];
        
        NSLog(@"\nThe value of myFraction is :");
        [myFraction print]; // 其他实例方法
        
    
        
        Fraction *myFraction_2 = [[Fraction alloc] init];
        // 等价于  Fraction *myFraction_3 = [Fraction new];
        
        // 点运算符通常用在属性上，用于设置或取得实例变量的值。其他实例方法是用消息表达式
//        [myFraction_2 setNumerator: 3];
//        [myFraction_2 setDenominator: 7];
        //  等价于
//        myFraction_2.numerator = 3;
//        myFraction_2.denominator = 7;
//        myFraction_2.result = 1.1;
        
        // 多参数方法
//        [myFraction_2 setNumerator:3 andDenominator:7 andTest:1.1];
        [myFraction_2 setParameter:3 :7 :1.1];  // 不带参数名方法
        
        NSLog(@"\nThe value of myFraction is : %i/%i", myFraction_2.numerator, myFraction_2.denominator);
        NSLog(@"%f", myFraction_2.test);
    }
    return 0;
}







