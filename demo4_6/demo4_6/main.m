//
//  main.m
//  demo4_6
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
        
        [calc setAccumulator: 100.0];
        [calc add: 200.];
        [calc divide: 15.0];
        [calc subtract: 10.0];
        [calc multiply: 5];
        
        NSLog(@"The result is %g",[calc getAccumulator]);
    }
    return 0;
}
