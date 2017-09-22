//
//  main.m
//  demo6_8
//
//  Created by ggz on 2017/9/22.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject
-(void) clear;
-(void) setAccumulator: (double) value;
-(double) getAccumulator;
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end


@implementation Calculator
{
    double accumulator;
}
-(void) clear
{
    accumulator = 0;
}
-(void) setAccumulator: (double) value
{
    accumulator = value;
}
-(double) getAccumulator{return accumulator;}
-(void) add: (double) value
{
    accumulator += value;
}
-(void) subtract: (double) value
{
    accumulator -= value;
}
-(void) multiply: (double) value
{
    accumulator *= value;
}
-(void) divide: (double) value
{
    accumulator /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *calc = [[Calculator alloc] init];
        double value1, value2;
        char operator;
        
        NSLog(@"请输入算术表达式：");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [calc setAccumulator: value1];
        
        switch (operator) {
            case '+':
                [calc add: value2];
                break;
            case '-':
                [calc subtract: value2];
                break;
            case '*':
                [calc multiply: value2];
                break;
            case '/':
                [calc divide: value2];
                break;
            default:
                NSLog(@"Unknown operator");
                break;
        }
        
        NSLog(@"%lf %c %lf = %g", value1, operator, value2, [calc getAccumulator]);
    }
    return 0;
}













