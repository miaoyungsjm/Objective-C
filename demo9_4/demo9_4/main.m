//
//  main.m
//  demo9_4
//
//  Created by ggz on 2017/10/9.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *f = [[Fraction alloc] init];
        
        @try{
            [f print];
            [f noSuchMethod];
        }
        @catch(NSException *exception){
            NSLog(@"\nCaught %@%@", [exception name], [exception reason]);
        }
        
        NSLog(@"Exception continues");
    }
    return 0;
}
