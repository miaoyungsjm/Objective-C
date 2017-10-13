//
//  main.m
//  demo10_3
//
//  Created by ggz on 2017/10/12.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 枚举数据类型
        enum month { january = 1, february, march, april, may,
            june, july, august, september, october, november, december };
        
        typedef enum month Month;   // typedef 语句
        Month testMonth;
        
        enum month currentMonth;
        int days;
        
        NSLog(@"枚举数据类型 demo");
        NSLog(@"请输入月份：");
        scanf("%i", &currentMonth);
        
        switch (currentMonth) {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
                
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
                
            case february:
                days = 28;
                break;
                
            default:
                days = 0;
                break;
        }
        
        if (currentMonth == february) {
            NSLog(@"有 %i 或 %i 天", days, days+1);
        } else {
            if (days != 0) {
                NSLog(@"有 %i 天", days);
            }
        }
        
    }
    return 0;
}
