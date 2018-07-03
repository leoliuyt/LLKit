//
//  NSMutableDictionary+LL.m
//  AttributeStringLink
//
//  Created by lbq on 2017/6/15.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import "NSMutableDictionary+LL.h"

@implementation NSMutableDictionary (LL)

- (NSMutableDictionary *(^)(UIFont *))ll_font {
    return ^id(UIFont *font) {
        [self setValue:font forKey:NSFontAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(CGFloat))ll_systemFontSize
{
    return ^id(CGFloat font) {
        [self setValue:[UIFont systemFontOfSize:font] forKey:NSFontAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(CGFloat))ll_boldSystemFontSize
{
    return ^id(CGFloat font) {
        [self setValue:[UIFont boldSystemFontOfSize:font] forKey:NSFontAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(UIColor *))ll_color
{
    return ^id(UIColor *color) {
        [self setValue:color forKey:NSForegroundColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary *(^)(NSParagraphStyle *))ll_paragraphStyle
{
    return ^id(NSParagraphStyle *paragraphStyle) {
        [self setValue:paragraphStyle forKey:NSParagraphStyleAttributeName];
        return self;
    };
}

@end
