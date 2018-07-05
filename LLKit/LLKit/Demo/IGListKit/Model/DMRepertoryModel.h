//
//  DMRepertoryModel.h
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMRepertoryModel : NSObject
@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *logo;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *agency; //出品方
@property (nonatomic, assign) NSInteger expense;
@property (nonatomic, copy) NSString *expenseDescpt;//（价格描述)
@property (nonatomic, copy) NSString *expenseUnit;//(单位描述)
@property (nonatomic, assign) NSInteger peopleNum;
@property (nonatomic, copy) NSString *premiereTime;//首演日期，字符串形如：2017-10-12

@property (nonatomic, assign) NSInteger rounds;//已演场次
@property (nonatomic, assign) NSInteger status;//发布状态

@property (nonatomic, copy) NSString *awardsDescpt;
@property (nonatomic, copy) NSString *requirements;//技术要求

@property (nonatomic, assign) NSTimeInterval createTime;
@property (nonatomic, assign) NSTimeInterval updateTime;

@property (nonatomic, copy) NSString *classifyId;//项目类型，通过/classify/list接口获取
@property (nonatomic, copy) NSString *classifyName;

@property (nonatomic, copy) NSString *regionId;
@property (nonatomic, copy) NSString *regionName;

@property (nonatomic, copy) NSString *plot;//演出介绍
@property (nonatomic, assign) NSInteger seatingRequir;//适合剧场，这里取一个剧场规模范围的值就可以了，如剧场规模为小剧场(400人以内)，这里可以传值300，又如大剧场(800-1500人)，取值1000或1200可以

@property (nonatomic, copy) NSString *linkTel;
@property (nonatomic, copy) NSString *linkman;

@property (nonatomic, assign) NSInteger showLast;//演出时长

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, assign) NSInteger viewTimes;

//@property (nonatomic, copy) NSArray<SCImageInfo *> *pictures;
//@property (nonatomic, strong) NSArray<SCStaffInfo *> *staffs;

@property (nonatomic, copy) NSString *enabledMonth;//可演日期

@property (nonatomic, assign) NSTimeInterval performanceBeginDate;
@property (nonatomic, assign) NSTimeInterval performanceEndDate;

@property (nonatomic, copy) NSString *shareLink;//分享链接

//input
@property (nonatomic, copy) NSString *input_premiereTime;
@property (nonatomic, copy) NSString *input_performanceBeginDate;
@property (nonatomic, copy) NSString *input_performanceEndDate;
//格式化
@property (nonatomic, copy) NSString *createTimeStr;
@property (nonatomic, copy) NSString *premiereTimeStr;
@property (nonatomic, copy) NSString *performanceBeginDateStr;
@property (nonatomic, copy) NSString *performanceEndDateStr;

@property (nonatomic, copy) NSDate *performanceBeginDateDate;
@property (nonatomic, copy) NSDate *premiereTimeDate;
@property (nonatomic, copy) NSString *statusStr;//发布状态
@property (nonatomic, copy) NSString *seatingRequirStr;//适合剧场
@property (nonatomic, copy) NSString *enabledMonthStr;//可演日期
@end
