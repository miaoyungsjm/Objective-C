//
//  main.m
//  demo9_3
//
//  Created by ggz on 2017/10/9.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Square *mySquare = [[Square alloc] init];
        
        
        // isMemberOfClass   对象是不是类的成员（实例）
        if ( [mySquare isMemberOfClass: [Square class]] == YES ) {
            NSLog(@"\nmySquare is a member of Square class");
        }
        if ( [mySquare isMemberOfClass: [Rectangle class]] == YES ) {
            NSLog(@"\nmySquare is a member of Rectangle class");
        }
        if ( [mySquare isMemberOfClass: [NSObject class]] == YES ) {
            NSLog(@"\nmySquare is a member of NSObject class");
        }
        
        
        // isKindOfClass   对象是不是类或子类的成员（实例）
        if ( [mySquare isKindOfClass: [Square class]] == YES ) {
            NSLog(@"\nmySquare is a kind of Square");
        }
        if ( [mySquare isKindOfClass: [Rectangle class]] == YES ) {
            NSLog(@"\nmySquare is a kind of Rectangle");
        }
        if ( [mySquare isKindOfClass: [NSObject class]] == YES ) {
            NSLog(@"\nmySquare is a kind of NSObject");
        }
        
        
        // respondsToSelector   对象是否能够响应 selector 所指定的方法
        if ( [mySquare respondsToSelector: @selector(setSide:)] == YES) {
            NSLog(@"\nmySquare responds to setSide: method");
        }
        if ( [mySquare respondsToSelector: @selector(setWidth:andHeight:)] == YES) {
            NSLog(@"\nmySquare responds to setWidth:andHeight: method");
        }
        if ( [Square respondsToSelector: @selector(alloc)] == YES) {
            NSLog(@"\nSquare class responds to alloc method");
        }
        
        
        // instancesRespondToSelector   指定的类实例是否能够响应 selector
        if ([Rectangle instancesRespondToSelector: @selector(setSide:)] == YES ) {
            NSLog(@"\nInstances of Rectangle respond to setSide: method");
        }
        if ([Square instancesRespondToSelector: @selector(setSide:)] == YES ) {
            NSLog(@"\nInstances of Square respond to setSide: method");
        }
        
        
        // isSubclassOfClass   对象是否是指定类的子类
        if ( [Square isSubclassOfClass: [Rectangle class]] == YES) {
             NSLog(@"\nSquare is a subclass of a rectangle");
        }
        
    }
    return 0;
}

