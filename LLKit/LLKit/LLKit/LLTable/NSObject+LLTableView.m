//
//  NSObject+LLTableView.m
//  LLKit
//
//  Created by leoliu on 2018/7/8.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "NSObject+LLTableView.h"
#import <objc/runtime.h>

@implementation NSObject (LLTableView)

- (void)setLl_cellType:(NSInteger)ll_cellType
{
    objc_setAssociatedObject(self, @selector(ll_cellType), @(ll_cellType), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSInteger)ll_cellType
{
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

@end
