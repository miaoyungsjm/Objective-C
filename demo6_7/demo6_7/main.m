//
//  main.m
//  demo6_7
//
//  Created by ggz on 2017/9/22.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char c;
        
        while (1) {
            NSLog(@"请输入一个字符：");
            scanf(" %c", &c);// %c 前面空了一个' '(字符)！
            
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')){
                NSLog(@"字母\n");
            } else if (c >= '0' && c <= '9'){
                NSLog(@"数字\n");
            } else {
                NSLog(@"字符\n");
            }
        }
        

    }
    return 0;
}
