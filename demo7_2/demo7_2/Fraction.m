//
//  Fraction.m
//  demo7_2
//
//  Created by ggz on 2017/9/24.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator, result;

-(void) setNumerator:(int)n andDenominator:(int)d
{
    numerator = n;
    denominator = d;
}

-(void) setParameter:(int)n :(int)d
{
    numerator = n;
    denominator = d;
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    result = (double)numerator / denominator;
    return result;
}

-(void) add:(Fraction *)f
{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    NSLog(@"%i/%i", numerator, denominator);
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
    NSLog(@"%i/%i", numerator, denominator);
}
@end
