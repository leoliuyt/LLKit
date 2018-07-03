//
//  UIButton+LL.h
//  LLKit
//
//  Created by leoliu on 2018/7/3.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (LL)

@end

@interface UIButton (ExtHit)

//(0,-10,0,-10) //扩大了左右的点击区域
@property (nonatomic, assign) UIEdgeInsets ll_extEdageInsets;

@end
