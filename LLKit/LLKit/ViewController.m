//
//  ViewController.m
//  LLKit
//
//  Created by leoliu on 2018/7/3.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "ViewController.h"
#import <IGListKit.h>
#import "LLTableViewModel.h"
#import "LLBindCellOption.h"
#import "DMNewsModel.h"
#import "DMNewsCell.h"

@interface ViewController ()

@property (nonatomic, strong) LLTableViewModel *viewModel;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    LLBindCellOption *bindOption = [LLBindCellOption bindCell:DMNewsCell.class model:DMNewsModel.class identifier:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (LLTableViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[LLTableViewModel alloc] init];
    }
    return _viewModel;
}

@end
