//
//  main.m
//  demo 3.2
//
//  Created by ggz on 2017/9/21.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 @interface  接口
 用于描述类和方法
 */
@interface Fraction : NSObject
-(void) print;
-(void) setNumerator: (int)n;
-(void) setDenominator: (int)d;
-(int) getNumerator;
-(int) getDenominator;
@end


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
