//
//  main.m
//  test6_6
//
//  Created by ggz on 2017/9/23.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int num,temp;
        int i, j;
        
        NSLog(@"请输入一个整数：");
        scanf("%i", &num);
        if (num < 0) {
            num = -num;
        }
        
        for (i = 0, temp = num; temp > 0; ++i) {
            temp /= 10;
        }
        NSLog(@"这是一个 %i 位数", i);
        
        
        while (i > 0) {
            
            int m = 1;
            for(j = 1; j < i; ++j){
                m *= 10;
            }
            
            NSLog(@"%i",num / m % 10);
            switch (num / m % 10) {
                case 0:
                    NSLog(@"Zero");
                    break;
                case 1:
                    NSLog(@"One");
                    break;
                case 2:
                    NSLog(@"Twe");
                    break;
                case 3:
                    NSLog(@"Three");
                    break;
                case 4:
                    NSLog(@"Four");
                    break;
                case 5:
                    NSLog(@"Five");
                    break;
                case 6:
                    NSLog(@"Six");
                    break;
                case 7:
                    NSLog(@"Seven");
                    break;
                case 8:
                    NSLog(@"Eight");
                    break;
                case 9:
                    NSLog(@"Nine");
                    break;
                default:
                    break;
            }
            
            --i;
        }
        
    }
    return 0;
}
