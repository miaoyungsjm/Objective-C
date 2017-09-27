//
//  main.m
//  demo8_3
//
//  Created by ggz on 2017/9/26.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *myRectangle = [[Rectangle alloc] init];
        [myRectangle setWidth:5 andHeight:8];
        NSLog(@"\nRectangle : w = %i  h = %i", myRectangle.width, myRectangle.height);
        NSLog(@"\nArea = %i  Perimeter = %i", [myRectangle area], [myRectangle perimeter]);
        
        //  继承的例子
        Square *mySquare = [[Square alloc] init];
        [mySquare setSide:5];
        NSLog(@"\nSquare : s = %i", [mySquare side]);
        NSLog(@"\nArea = %i  Perimeter = %i", [mySquare area], [mySquare perimeter]);
        
        //  类的声明 - @class 的例子
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        [myPoint setX:100 andY:100];
        [myRect setWidth:3 andHeight:7];
        [myRect setOrigin:myPoint];
        NSLog(@"\nRectangle : w = %i  h = %i", myRect.width, myRect.height);
        NSLog(@"\nOrigin at (%i,%i)", myRect.origin.x, myRect.origin.y);
        //  因为对象指针的地址相同！所以修改 myPoint 的值，矩形原点也会跟着修改
        [myPoint setX:50 andY:50];
        NSLog(@"\nOrigin at (%i,%i)", myRect.origin.x, myRect.origin.y);
        
    }
    return 0;
}
