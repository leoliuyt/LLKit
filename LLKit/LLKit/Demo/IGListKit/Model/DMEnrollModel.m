//
//  DMEnrollModel.m
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "DMEnrollModel.h"

@implementation DMEnrollModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"_id"  : @"id",
             @"desc" : @"description"
             };
}

- (NSString *)viewTimesStr
{
    return [NSString stringWithFormat:@"阅读数:%tu",self.viewTimes];
}

//- (NSString *)endTimeStr
//{
//    return [@(self.endTime) timestampStringDataFormatter:@"yyyy年M月d日"];
//}
//
//- (NSString *)createTimeStr
//{
//    return [@(self.createTime) timestampStringDataFormatter:@"yyyy年M月d日"];
//}
@end
