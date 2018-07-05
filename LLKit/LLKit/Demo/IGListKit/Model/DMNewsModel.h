//
//  DMNewsModel.h
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMNewsModel : NSObject
@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *logo;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *authName;
@property (nonatomic, assign) NSTimeInterval createTime;
@property (nonatomic, copy) NSString *content;//带标签文本
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, assign) NSTimeInterval updateTime;
@property (nonatomic, assign) NSInteger viewTimes;
@property (nonatomic, copy) NSString *shareLink;
@property (nonatomic, copy) NSString *timeDescpt;
@end
