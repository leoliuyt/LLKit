//
//  DMBannerModel.m
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "DMBannerModel.h"

@implementation DMBannerModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"_id"  : @"id",
             };
}

- (NSString *)content
{
    if (self.target.length <= 0) {
        return nil;
    }
    if ([self.target hasPrefix:@"http"] || [self.target hasPrefix:@"https"]) {
        return self.target;
    } else {
        NSArray *arr = [self.target componentsSeparatedByString:@"://"];
        if (arr.count > 0) {
            return arr[1];
        } else {
            return nil;
        }
    }
}
@end
