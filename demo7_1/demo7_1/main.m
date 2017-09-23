//
//  main.m
//  demo7_1
//
//  Created by ggz on 2017/9/23.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

// program
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];  // 分配内存存储空间
        myFraction = [myFraction init]; // 对象初始化
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        NSLog(@"\nThe value of myFraction is :");
        [myFraction print];
        
        
        
        Fraction *myFraction_2 = [[Fraction alloc] init];
        //        Fraction *myFraction_3 = [Fraction new];
        
        [myFraction_2 setNumerator: 3];
        [myFraction_2 setDenominator: 7];
        
        NSLog(@"\nThe value of myFraction is : %i/%i", [myFraction_2 getNumerator], [myFraction_2 getDenominator]);
        
    }
    return 0;
}
