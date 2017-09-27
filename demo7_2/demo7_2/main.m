//
//  main.m
//  demo7_2
//
//  Created by ggz on 2017/9/24.
//  Copyright © 2017年 ggz. All rights reserved.
//

/*
 完整版在 test7_1
 */

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *fraction_1 = [[Fraction alloc] init];
        [fraction_1 setParameter:1 :4];
        [fraction_1 print];
        
        
        Fraction *fraction_2 = [[Fraction alloc] init];
        [fraction_2 setParameter:1 :2];
        [fraction_2 print];
        
        NSLog(@"\n%i/%i + %i/%i", fraction_1.numerator, fraction_1.denominator, fraction_2.numerator, fraction_2.denominator);
        
        Fraction *fraction_3;
        fraction_3 = [fraction_2 add:fraction_1];
        NSLog(@"%f", [fraction_3 convertToNum]);
        
        [fraction_1 print];
        [fraction_2 print];
        [fraction_3 print];
        
    }
    return 0;
}
