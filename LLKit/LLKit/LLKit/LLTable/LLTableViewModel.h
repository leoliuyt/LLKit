//
//  LLTableViewModel.h
//  LLKit
//
//  Created by leoliu on 2018/7/7.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol LLTableViewModelDelegate<NSObject>

@end
@interface LLTableViewModel : NSObject<UITableViewDelegate, UITableViewDataSource>

//@property (nonatomic, strong) NSMutableArray<NSMutableArray*>* allContents;
@property (strong, readonly, nonatomic) NSArray *sections;

@property (weak, readwrite, nonatomic) UITableView *tableView;

@property (weak, readwrite, nonatomic) id<LLTableViewModelDelegate> delegate;

- (id)initWithTableView:(UITableView *)tableView delegate:(id<LLTableViewModelDelegate>)delegate;

- (id)initWithTableView:(UITableView *)tableView;

@end
