//
//  main.m
//  demo4_1
//
//  Created by ggz on 2017/9/22.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int integerVar = 100;
        long int longIntVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'w';
        
        NSLog(@"integerVar = %i", integerVar);
        NSLog(@"longIntVar = %li", longIntVar);
        NSLog(@"floatingVar = %f", floatingVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        NSLog(@"charVar = %c", charVar);
        
    }
    return 0;
}
