//
//  Square.h
//  demo8_3
//
//  Created by ggz on 2017/9/26.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@interface Square : Rectangle   //  继承 Rectangle 类

-(void) setSide:(int)s;
-(int) side;

@end
