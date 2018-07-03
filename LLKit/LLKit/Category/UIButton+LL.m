//
//  UIButton+LL.m
//  LLKit
//
//  Created by leoliu on 2018/7/3.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "UIButton+LL.h"
#import <objc/runtime.h>

@implementation UIButton (LL)

@end

@implementation UIButton (ExtHit)

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    if(UIEdgeInsetsEqualToEdgeInsets(self.ll_extEdageInsets, UIEdgeInsetsZero)) {
        return [super pointInside:point withEvent:event];
    }else{
        CGRect orignalFrame = self.bounds;
        CGRect extFrame = UIEdgeInsetsInsetRect(orignalFrame, self.ll_extEdageInsets);
        return CGRectContainsPoint(extFrame, point);
    }
}
- (void)setLl_extEdageInsets:(UIEdgeInsets)ll_extEdageInsets
{
    NSValue *value = [NSValue value:&ll_extEdageInsets withObjCType:@encode(UIEdgeInsets)];
    objc_setAssociatedObject(self, @selector(ll_extEdageInsets), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIEdgeInsets)ll_extEdageInsets
{
    NSValue *value = objc_getAssociatedObject(self, _cmd);
    UIEdgeInsets edgeInsets;
    [value getValue:&edgeInsets];
    return value ? edgeInsets:UIEdgeInsetsZero;
}
@end
