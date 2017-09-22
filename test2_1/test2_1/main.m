//
//  main.m
//  test 2.1
//
//  Created by ggz on 2017/9/19.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int value1, value2, sum;
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        NSLog(@"\nsum = %i + %i : %i", value1, value2, sum);
        
        NSLog(@"\nsum + 5 : %i", sum + 5);
        NSLog(@"\nsum : %i", sum);
        
        NSLog(@"\nsum++ : %i", sum++);
        NSLog(@"\nsum : %i", sum);
        
    }
    return 0;
}
