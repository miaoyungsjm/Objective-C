//
//  Fraction.h
//  demo7_2
//
//  Created by ggz on 2017/9/24.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;
@property double result;

-(void) setNumerator:(int)n andDenominator:(int)d;
-(void) setParameter:(int)n :(int)d;
-(void) print;
-(double) convertToNum;
-(void) add:(Fraction *)f;
-(void) reduce;

@end
