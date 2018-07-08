//
//  LLBindCellOption.m
//  LLKit
//
//  Created by leoliu on 2018/7/8.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "LLBindCellOption.h"
#import "NSObject+LLTableView.h"
@interface LLBindCellOption()
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, strong) NSMutableDictionary *registeredClasses;
@end
@implementation LLBindCellOption

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.registeredClasses = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (LLBindCellOption *)bindCell:(Class)cellClass model:(Class)modelClass identifier:(NSUInteger)aIdentifier
{
//    NSString *cellStr = NSStringFromClass(cellClass);
    NSString *modelStr = NSStringFromClass(modelClass);
    LLBindCellOption *op = [[LLBindCellOption alloc] init];
    op[(id <NSCopying>)modelClass] = cellClass;
    op.cellIdentifier = [NSString stringWithFormat:@"%@_%tu",modelStr,aIdentifier];
    return op;
}

+ (NSString *)identifierForModel:(id)aModel
{
    NSObject *obj = (NSObject *)aModel;
    if (obj.ll_cellType < 0) {
        return NSStringFromClass(obj.class);
    }
    return [NSString stringWithFormat:@"%@_%tu",NSStringFromClass(obj.class),obj.ll_cellType];
}

- (id)objectAtKeyedSubscript:(id <NSCopying>)key
{
    return self.registeredClasses[key];
}

- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key
{
    self.registeredClasses[key] = obj;
//    [self registerClass:(NSString *)key forCellWithReuseIdentifier:obj];
}

@end
