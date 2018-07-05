//
//  DMAdvertModel.h
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMAdvertModel : NSObject
@property (nonatomic, copy) NSString *_id;
@property (nonatomic, copy) NSString *logo;
@property (nonatomic, assign) NSInteger status;
@property (nonatomic, copy) NSString *target;

@property (nonatomic, copy) NSString *content;
@end
