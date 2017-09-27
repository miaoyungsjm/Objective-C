//
//  Fraction.h
//  demo7_1
//
//  Created by ggz on 2017/9/23.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 @interface  接口
 用于描述类和方法
 */
@interface Fraction : NSObject

@property int numerator, denominator;
@property double test;

-(void) print;
-(void) setNumerator:(int)n andDenominator:(int)d andTest:(double)t;
-(void) setParameter:(int)n :(int)d :(double)t;
@end
