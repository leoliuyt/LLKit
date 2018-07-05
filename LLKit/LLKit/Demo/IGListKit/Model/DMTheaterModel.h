//
//  DMTheaterModel.h
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMTheaterModel : NSObject
@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *logo;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *roomName;//厅馆名称
@property (nonatomic, assign) NSInteger expense;//价钱
@property (nonatomic, copy) NSString *expenseDescpt;//（价格描述)
@property (nonatomic, copy) NSString *expenseUnit;//(单位描述)
@property (nonatomic, copy) NSString *seatingDescpt;//（座位数描述）
@property (nonatomic, assign) NSInteger seating;//座位数
@property (nonatomic, copy) NSString *regionName;//地区名
@property (nonatomic, assign) NSInteger regionId;//地区id
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, copy) NSString *address;//地址
@property (nonatomic, copy) NSString *coordinate;//坐标
@property (nonatomic, copy) NSString *pcode;//高德省份编码。即高德地图获取的pcode
@property (nonatomic, copy) NSString *citycode;//高德城市编码。即高德地图获取的citycode
@property (nonatomic, copy) NSString *adcode;//高德地区编码。即高德地图获取的adcode

@property (nonatomic, copy) NSString *linkman;//联系人名
@property (nonatomic, copy) NSString *linkTel;//联系人电话

@property (nonatomic, copy) NSString *desc;//简介
@property (nonatomic, copy) NSString *detailedIntroduce;//详细介绍

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, assign) NSTimeInterval createTime;
@property (nonatomic, assign) NSTimeInterval updateTime;

@property (nonatomic, assign) NSInteger viewTimes;
@property (nonatomic, copy) NSString *priceDiagram;//座位票区图
//@property (nonatomic, strong) NSArray<SCImageInfo *> *pictures;//剧场图片
@end
