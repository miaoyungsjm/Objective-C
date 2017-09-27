//
//  Fraction.m
//  demo7_1
//
//  Created by ggz on 2017/9/23.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Fraction.h"

/*
 @implementation  实现（类的定义）
 用于描述数据，并实现在接口中声明的方法
 */
@implementation Fraction
//{
//    int numerator, denominator;
//    double test;
//}
@synthesize numerator, denominator, test;

-(void) print
{
    NSLog(@"\n%i/%i", numerator, denominator);
}
-(void) setNumerator:(int)n andDenominator:(int)d andTest:(double)t
{
    numerator = n;
    denominator = d;
    test = t;
}
-(void) setParameter:(int)n :(int)d :(double)t
{
    numerator = n;
    denominator = d;
    test = t;
}
@end
