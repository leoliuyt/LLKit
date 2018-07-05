//
//  DMEnrollModel.h
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMEnrollModel : NSObject
@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *logo;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *authName;
@property (nonatomic, assign) NSTimeInterval endTime;
@property (nonatomic, assign) NSTimeInterval updateTime;
@property (nonatomic, assign) NSTimeInterval createTime;

@property (nonatomic, copy) NSString *content;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, copy) NSString *entityType;
@property (nonatomic, assign) NSInteger viewTimes;
@property (nonatomic, assign) BOOL enrollReceiving;//报名中

@property (nonatomic, copy) NSString *shareLink;//分享链接
@property (nonatomic, assign) NSInteger orgOnly;//是否仅支持机构报名，1是，0否
@property (nonatomic, assign) NSInteger numberLimit;//最多报名个数

//展示字段
@property (nonatomic, copy) NSString *endTimeStr;
@property (nonatomic, copy) NSString *createTimeStr;
@property (nonatomic, copy) NSString *viewTimesStr;
@end
