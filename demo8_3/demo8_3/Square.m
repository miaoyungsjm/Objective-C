//
//  Square.m
//  demo8_3
//
//  Created by ggz on 2017/9/26.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    return [self width];    // width 属性是属于 Rectangle 类的私有属性，无法直接访问！需通过 width 方法取值
}

@end
