//
//  UILabel+YYdd.m
//  runTimeTest
//
//  Created by zhangdaliang on 17/2/24.
//  Copyright © 2017年 yshow. All rights reserved.
//

#import "UILabel+YYdd.h"

#import <objc/runtime.h>

@implementation UILabel (YYdd)

+(void)reloadLbColor
{
    Method newMethod = class_getInstanceMethod([self class], @selector(adjustLabelTextColor:));
    Method oldMethod = class_getInstanceMethod([self class], @selector(setTextColor:));
    method_exchangeImplementations(newMethod, oldMethod);
    
}
-(UILabel *)adjustLabelTextColor:(UIColor *)color
{
    [self adjustLabelTextColor:[UIColor redColor]];
    
    return self;
}
@end
