//
//  UIFont+YYdd.m
//  runTimeTest
//
//  Created by zhangdaliang on 17/2/24.
//  Copyright © 2017年 yshow. All rights reserved.
//

#import "UIFont+YYdd.h"
#import <objc/runtime.h>

@implementation UIFont (YYdd)
+(void)reload{
    //获取替换后的类方法
    Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
    //获取替换前的类方法
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    
    
    //然后交换类方法
    method_exchangeImplementations(newMethod, method);
}


+(UIFont *)adjustFont:(CGFloat)fontSize{
    
    UIFont *newFont=[UIFont adjustFont:fontSize*10];
    return newFont;
}
@end
