//
//  main.m
//  demo6_10
//
//  Created by ggz on 2017/9/23.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"0 - 50 之间的素数：");
        
        int n,m;
        bool isPrime;
        
        for (n = 2; n <= 50; ++n) {
            isPrime = true;
            
            if (n > 2 && n % 2 == 0) continue;
            
            for (m = 2; m <= (n+1)/2; ++m) {
                if (n % m == 0) isPrime = false;
                
                if (isPrime == false) break;
            }
            
            if (isPrime) NSLog(@"%i", n);
        }
        
    }
    return 0;
}
