//
//  NSObject+LLTableView.h
//  LLKit
//
//  Created by leoliu on 2018/7/8.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LLTableView)

//用于区分相同模型对应的不同cell
@property (nonatomic, assign) NSInteger ll_cellType;
@end
