//
//  NSObject+YYModelExtension.m
//  ArtStudio
//
//  Created by weijingyun on 2016/12/28.
//  Copyright © 2016年 kimziv. All rights reserved.
//

#import "NSObject+YYModelExtension.h"

@implementation NSObject (YYModelExtension)

- (void)setValue:(id)value forUndefinedKey:(nonnull NSString *)key {

}

- (void)yy_uploadContent:(id)aContent {
    [self yy_uploadContent:aContent filter:nil];
}

- (void)yy_uploadContent:(id)aContent filter:(NSArray<NSString *> *)aFilter {
    
    if (aContent == nil) {
        return;
    }
    
    NSAssert([aContent isMemberOfClass:[self class]], @"类型必须相同");
    if (self == aContent) {
        return;
    }
    unsigned int outCount;
    Class infoClass = [self class];
    while (class_getSuperclass(infoClass) != nil) {
        
        objc_property_t *properties = class_copyPropertyList(infoClass, &outCount);
        for (NSInteger index = 0; index < outCount; index++) {
            NSString *tmpName = [NSString stringWithFormat:@"%s",property_getName(properties[index])];
            __block BOOL sync = YES;
            [aFilter enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                if ([obj isEqualToString:tmpName]) {
                    sync = NO;
                    *stop = YES;
                }
            }];
            if (sync) {
                NSObject *tmpValue = [aContent valueForKey:tmpName];
                [self setValue:tmpValue forKey:tmpName];
            }
        }
        if (properties) {
            free(properties);
        }
        
        infoClass = class_getSuperclass(infoClass);
    };

}

- (instancetype)yy_modelWithAttributes:(NSArray<NSString *> *)aAttributes {
    id model = [[[self class] alloc] init];
    [aAttributes enumerateObjectsUsingBlock:^(NSString * _Nonnull key, NSUInteger idx, BOOL * _Nonnull stop) {
        id value = [self valueForKey:key];
        [model setValue:value forKey:key];
    }];
    return model;
}

- (NSDictionary *)yy_dictionaryWithAttributes:(NSArray<NSString *> *)aAttributes {
    return [self yy_dictionaryWithAttributes:aAttributes mapping:nil];
}

- (NSDictionary *)yy_dictionaryWithAttributes:(NSArray<NSString *> *)aAttributes mapping:(NSDictionary *)aDic {
    
    NSMutableDictionary *dicM = [[NSMutableDictionary alloc] init];
    [aAttributes enumerateObjectsUsingBlock:^(NSString * _Nonnull key, NSUInteger idx, BOOL * _Nonnull stop) {
        id value = [self valueForKey:key];
        NSString *dickey = aDic[key];
        if (dickey.length > 0) {
            key = dickey;
        }
        dicM[key] = value;
    }];
    return [dicM copy];
}

+ (NSArray *)yy_modelWithArray:(NSArray<NSDictionary *> *)array {
    return [self yy_modelWithArray:array completed:nil];
}

+ (NSArray *)yy_modelWithArray:(NSArray<NSDictionary *> *)array completed:(void (^)(id aObject, NSDictionary *aDic))aCompletion {
    
    if (array == nil) {
        return nil;
    }
    
    if (![array isKindOfClass:[NSArray class]]) {
        NSAssert(NO, @"传入的不是数组，请检查");
        return nil;
    }
    
    NSMutableArray *arrayM = [[NSMutableArray alloc] init];
    [array enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSAssert([obj isKindOfClass:[NSDictionary class]], @"必须是字典类型");
        id model = [self yy_modelWithDictionary:obj];
        if (aCompletion) {
            aCompletion(model,obj);
        }
        if (model != nil) {
            [arrayM addObject:model];
        }
    }];
    return [arrayM copy];
}


@end
