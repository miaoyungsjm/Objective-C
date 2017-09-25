//
//  main.m
//  test7_1
//
//  Created by ggz on 2017/9/25.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *fraction_1 = [[Fraction alloc] init];
        [fraction_1 setParameter:1 :2];
        
        Fraction *fraction_2 = [[Fraction alloc] init];
        [fraction_2 setParameter:1 :3];
        
        Fraction *fraction_3;
        NSLog(@"%i/%i + %i/%i", fraction_1.numerator, fraction_1.denominator, fraction_2.numerator, fraction_2.denominator);
        fraction_3 = [fraction_1 add:fraction_2];
        NSLog(@"%i/%i - %i/%i", fraction_1.numerator, fraction_1.denominator, fraction_2.numerator, fraction_2.denominator);
        fraction_3 = [fraction_1 subtract:fraction_2];
        NSLog(@"%i/%i * %i/%i", fraction_1.numerator, fraction_1.denominator, fraction_2.numerator, fraction_2.denominator);
        fraction_3 = [fraction_1 multiply:fraction_2];
        NSLog(@"%i/%i / %i/%i", fraction_1.numerator, fraction_1.denominator, fraction_2.numerator, fraction_2.denominator);
        fraction_3 = [fraction_1 divide:fraction_2];
        [fraction_3 convertToNum];
        NSLog(@"printTime : %i", [fraction_3 rePrintTime]);
    }
    return 0;
}
