//
//  LLTableViewModel.m
//  LLKit
//
//  Created by leoliu on 2018/7/7.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "LLTableViewModel.h"
#import "LLBindCellOption.h"
@interface LLTableViewModel()
@property (nonatomic, strong) NSMutableArray <NSMutableArray *>*mutableSections;
@property (nonatomic, strong) NSMutableDictionary *mutableOptionDic;
@end
@implementation LLTableViewModel


- (id)init
{
    @throw [NSException exceptionWithName:NSGenericException reason:@"init not supported, use initWithTableView: instead." userInfo:nil];
    return nil;
}

- (id)initWithTableView:(UITableView *)tableView delegate:(id<LLTableViewModelDelegate>)delegate
{
    self = [self initWithTableView:tableView];
    if (!self){return nil;}
    
    self.delegate = delegate;
    
    return self;
}

- (id)initWithTableView:(UITableView *)tableView
{
    self = [super init];
    if (!self){return nil;}
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    self.tableView = tableView;
    self.mutableSections = [[NSMutableArray alloc] init];
    
    return self;
}

- (NSString *)getCellIdentifierAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *items = [self getItemsAtIndex:indexPath.section];
    if (items.count <= indexPath.row) {
        return nil;
    }
    id content = items[indexPath.row];
    NSString *identifier = [LLBindCellOption identifierForModel:content];
    return identifier;
}

//MARK: Section 处理
- (NSArray *)sections
{
    return self.mutableSections.copy;
}

- (void)setSection:(NSArray *)items atIndex:(NSInteger)aSection
{
    
}

- (void)addSection:(NSArray *)items atIndex:(NSInteger)aSection
{
    
}

- (NSMutableArray *)getItemsAtIndex:(NSInteger)aSection
{
    if (aSection > self.mutableSections.count) {
        NSAssert(YES, @"插入的aSection超出了现有的");
        return nil;
    }
    NSMutableArray* contents = nil;
    if ([self.mutableSections count] > aSection) {
        contents = [self.mutableSections objectAtIndex:aSection];
    } else {
        contents = [NSMutableArray array];
        [self.mutableSections addObject:contents];
    }
    return contents;
}

//MARK: UITableViewDelegate
// Variable height support

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}

//MARK: UITableDatasouce
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.mutableSections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.mutableSections.count <= section) {
        return 0;
    }
    return self.mutableSections[section].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [UITableViewCell new];
}
@end
