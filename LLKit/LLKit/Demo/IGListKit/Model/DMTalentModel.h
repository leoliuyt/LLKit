//
//  DMTalentModel.h
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMTalentModel : NSObject
@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *logo;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *school;
@property (nonatomic, copy) NSString *desc;//个人介绍
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, copy) NSString *birthday;

@property (nonatomic, assign) NSInteger status;
@property (nonatomic, copy) NSString *authentication;

@property (nonatomic, copy) NSString *agency;//所属机构
@property (nonatomic, copy) NSString *linkman;
@property (nonatomic, copy) NSString *linkTel;

@property (nonatomic, copy) NSArray *classifyIds;//
@property (nonatomic, copy) NSArray *classifyNames;//
@property (nonatomic, copy) NSString *classifyNamesStr;//技能类型

@property (nonatomic, assign) NSTimeInterval createTime;
@property (nonatomic, assign) NSTimeInterval updateTime;

@property (nonatomic, copy) NSString *regionId;
@property (nonatomic, copy) NSString *regionName;

@property (nonatomic, assign) NSInteger height;
@property (nonatomic, assign) NSInteger weight;
@property (nonatomic, assign) NSInteger viewTimes;
//@property (nonatomic, strong) NSArray<SCImageInfo*> *pictures;
@property (nonatomic, copy) NSString *awardsDescpt;//获奖经历
@property (nonatomic, copy) NSString *worksDescpt;//个人作品

@property (nonatomic, copy) NSString *shareLink;//分享链接
@end
