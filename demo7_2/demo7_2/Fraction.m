//
//  Fraction.m
//  demo7_2
//
//  Created by ggz on 2017/9/24.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Fraction.h"

static int printTime;   // static 关键字，静态变量


@implementation Fraction

@synthesize numerator, denominator, result;

-(void) setNumerator:(int)n andDenominator:(int)d
{
    numerator = n;
    denominator = d;
    if (d == 0) {
        numerator = NAN;
        denominator = NAN;
    }
}

-(void) setParameter:(int)n :(int)d
{
    numerator = n;
    denominator = d;
    if (d == 0) {
        numerator = NAN;
        denominator = NAN;
    }
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
    printTime++;
}

-(double) convertToNum
{
    result = (double)numerator / denominator;
    return result;
}

-(Fraction *) add:(Fraction *)f
{
    Fraction *rFraction = [[Fraction alloc] init];  // 方达中创建对象，并通过 return 返回一个对象的引用（地址），在 main 中赋给 rFraction
    
    rFraction.numerator = numerator * f.denominator + denominator * f.numerator;
    rFraction.denominator = denominator * f.denominator;
    
//    [r reduce];  // self 关键字，指当前对象
    [rFraction reduce];
    
    NSLog(@"%i/%i", rFraction.numerator, rFraction.denominator);
    
    return rFraction;
}

-(void) reduce
{
    // 局部变量 默认初始化为：nil
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}
@end
