//
//  NSObject+YYModelExtension.h
//  ArtStudio
//
//  Created by weijingyun on 2016/12/28.
//  Copyright © 2016年 kimziv. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel.h>

@interface NSObject (YYModelExtension)

// 通过aContent更新自己
- (void)yy_uploadContent:(id)aContent filter:(NSArray<NSString *> *)aFilter;
- (void)yy_uploadContent:(id)aContent;

// 取出部分属性生成新的模型
- (instancetype)yy_modelWithAttributes:(NSArray<NSString *> *)aAttributes;
- (NSDictionary *)yy_dictionaryWithAttributes:(NSArray<NSString *> *)aAttributes;
- (NSDictionary *)yy_dictionaryWithAttributes:(NSArray<NSString *> *)aAttributes mapping:(NSDictionary *)aDic;

+ (NSArray *)yy_modelWithArray:(NSArray<NSDictionary *> *)array completed:(void (^)(id aObject, NSDictionary *aDic))aCompletion;
+ (NSArray *)yy_modelWithArray:(NSArray <NSDictionary *> *)array;

@end
