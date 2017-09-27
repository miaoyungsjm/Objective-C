//
//  Fraction.m
//  test7_1
//
//  Created by ggz on 2017/9/25.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Fraction.h"

static int printTime;

@implementation Fraction

@synthesize numerator, denominator, result;

-(void) setParameter:(int)n :(int)d
{
    numerator = n;
    denominator = d;
    if (d == 0) {
        numerator = NAN;
        denominator = NAN;
    }else{
        [self reduce];
    }
}

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
    printTime++;
}

-(int) rePrintTime
{
    return printTime;
}

-(void) convertToNum
{
    result = (double)numerator / denominator;
    NSLog(@"%f", result);
}

-(Fraction *) add:(Fraction *)f
{
    Fraction *rFraction = [[Fraction alloc] init];
    
    rFraction.numerator = numerator * f.denominator + denominator * f.numerator;
    rFraction.denominator = denominator * f.denominator;
    
    [rFraction reduce];
    
    return rFraction;
}

-(Fraction *) subtract:(Fraction *)f
{
    Fraction *rFraction = [[Fraction alloc] init];
    
    rFraction.numerator = numerator * f.denominator - denominator * f.numerator;
    rFraction.denominator = denominator * f.denominator;
    
    [rFraction reduce];

    return rFraction;
}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *rFraction = [[Fraction alloc] init];
    
    rFraction.numerator = numerator * f.numerator;
    rFraction.denominator = denominator * f.denominator;
    
    [rFraction reduce];
    
    return rFraction;
}

-(Fraction *) divide:(Fraction *)f
{
    Fraction *rFraction = [[Fraction alloc] init];
    
    rFraction.numerator = numerator * f.denominator;
    rFraction.denominator = denominator * f.numerator;
    
    [rFraction reduce];
    
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
    
    [self print];
}

@end
