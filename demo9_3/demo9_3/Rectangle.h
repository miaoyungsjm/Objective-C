//
//  Rectangle.h
//  demo9_3
//
//  Created by ggz on 2017/10/9.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint; //  类的声明 - @class 。因为只是使用了该类对象的引用，并不需要调用此类的方法，所以无需使用 import

@interface Rectangle : NSObject

@property int width, height;

-(void) setWidth:(int)w andHeight:(int)h;
-(int) area;
-(int) perimeter;

-(void) setOrigin:(XYPoint *)pt;
-(XYPoint *) origin;

@end
