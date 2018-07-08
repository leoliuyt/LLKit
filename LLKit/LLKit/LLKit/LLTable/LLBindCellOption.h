//
//  LLBindCellOption.h
//  LLKit
//
//  Created by leoliu on 2018/7/8.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LLBindCellOption : NSObject

+ (LLBindCellOption *)bindCell:(Class)cellClass model:(Class)modelClass identifier:(NSUInteger)aIdentifier;

+ (NSString *)identifierForModel:(id)aModel;
@end
