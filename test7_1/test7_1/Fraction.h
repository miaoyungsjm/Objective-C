//
//  Fraction.h
//  test7_1
//
//  Created by ggz on 2017/9/25.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;
@property double result;

-(void) setParameter:(int)n :(int)d;
-(void) print;
-(int) rePrintTime;
-(void) convertToNum;
-(Fraction *) add:(Fraction *)f;
-(Fraction *) subtract:(Fraction *)f;
-(Fraction *) multiply:(Fraction *)f;
-(Fraction *) divide:(Fraction *)f;
-(void) reduce;

@end
