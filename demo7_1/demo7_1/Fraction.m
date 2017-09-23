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
{
    int numerator;
    int denominator;
}
-(void) print
{
    NSLog(@"\n%i/%i", numerator, denominator);
}
-(void) setNumerator: (int)n
{
    numerator = n;
}
-(void) setDenominator: (int)d
{
    denominator = d;
}
-(int) getNumerator
{
    return numerator;
}
-(int) getDenominator
{
    return denominator;
}
@end
