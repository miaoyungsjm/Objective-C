//
//  Rectangle.m
//  demo9_3
//
//  Created by ggz on 2017/10/9.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;    //  私有属性，需要在接口文件进行类的声明 - @class
}

@synthesize width, height;

-(void) setWidth:(int)w andHeight:(int)h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
}



-(void) setOrigin:(XYPoint *)pt
{
    origin = pt;
}

-(XYPoint *) origin
{
    return origin;
}

@end

