//
//  Fraction.h
//  demo10_2
//
//  Created by ggz on 2017/10/12.
//  Copyright © 2017年 ggz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int fenzi, fenmu;

+(Fraction *) allocF;
+(int) count;

-(instancetype) init;
-(Fraction *) initVar:(int)fz :(int)fm;

@end
