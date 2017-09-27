//
//  main.m
//  demo5_3
//
//  Created by ggz on 2017/9/22.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int triangularNumber = 0;
        int n;
        
        NSLog(@"\n请输入要计算第几个三角数：");
        scanf("%i", &n);
        
        for(int i = 1; i <= n; ++i){
            triangularNumber += i;
            NSLog(@"\n%3i     %i", i, triangularNumber);
        }
        
        NSLog(@"\n第 %i 个三角数：%i", n, triangularNumber);
        
    }
    return 0;
}
