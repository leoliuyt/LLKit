//
//  NSMutableDictionary+LL.h
//  AttributeStringLink
//
//  Created by lbq on 2017/6/15.
//  Copyright © 2017年 lbq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableDictionary (LL)
//字体
- (NSMutableDictionary *(^)(UIFont *))ll_font;
- (NSMutableDictionary *(^)(CGFloat))ll_systemFontSize;
- (NSMutableDictionary *(^)(CGFloat))ll_boldSystemFontSize;

//颜色
- (NSMutableDictionary *(^)(UIColor *))ll_color;

//paragraph
- (NSMutableDictionary *(^)(NSParagraphStyle *))ll_paragraphStyle;
@end
