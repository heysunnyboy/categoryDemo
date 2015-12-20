//
//  NSObject+tuozhan.m
//  CategoryDemo
//
//  Created by mac on 15/12/20.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "NSObject+tuozhan.h"
#import <objc/runtime.h>
@implementation NSObject (tuozhan)
@dynamic myColor;//告诉编译器不需要编译器生成get ,set 方法
const char myColorKey;
-(void)setMyColor:(UIColor *)myColor
{
    [self willChangeValueForKey:@"myColor"];//kvo 机制即将修改变量发送通知
    //1 源对象
    //2 关键字 唯一静态变量key associatedkey
    //3 关联的对象 sender
    //4 关键策略  OBJC_ASSOCIATION_RETAIN_NONATOMIC
    objc_setAssociatedObject(self, @selector(setMyColor:), myColor, OBJC_ASSOCIATION_RETAIN);
    //
    [self didChangeValueForKey:@"myColor"];//kvo 机制已修改变量发送通知
}
-(UIColor *)myColor
{
    return objc_getAssociatedObject(self, @selector(setMyColor:));
}
@end
