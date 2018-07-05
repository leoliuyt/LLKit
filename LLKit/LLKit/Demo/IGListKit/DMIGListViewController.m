//
//  DMIGListViewController.m
//  LLKit
//
//  Created by lbq on 2018/7/5.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "DMIGListViewController.h"
#import <IGListKit.h>
#import "DMNewsModel.h"
#import "DMTheaterModel.h"
#import "DMRepertoryModel.h"
#import "DMAdvertModel.h"
#import "DMBannerModel.h"
#import "DMEnrollModel.h"
#import "DMTalentModel.h"
#import "NSObject+YYModelExtension.h"

@interface DMIGListViewController ()<IGListAdapterDataSource>
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) IGListAdapter *adapter;
@property (nonatomic, strong) NSArray *data;

@property (nonatomic, copy) NSArray<DMNewsModel *> *infoList;
@property (nonatomic, copy) NSArray<DMNewsModel *> *infoLineList;
@property (nonatomic, copy) NSArray<DMNewsModel *> *infoColumList;
@property (nonatomic, copy) NSArray<DMRepertoryModel *> *repertoryList;
@property (nonatomic, copy) NSArray<DMTheaterModel *> *theaterList;
@property (nonatomic, copy) NSArray<DMTalentModel *> *talentList;
@property (nonatomic, copy) NSArray<DMEnrollModel *> *enrollList;
@property (nonatomic, copy) NSArray<DMBannerModel *> *bannerList;
@property (nonatomic, strong) DMAdvertModel *advert;
@end

@implementation DMIGListViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                             collectionViewLayout:[UICollectionViewFlowLayout new]];
    [self.view addSubview:self.collectionView];
    self.adapter = [[IGListAdapter alloc] initWithUpdater:[[IGListAdapterUpdater alloc] init]
                                           viewController:self];
    
    self.adapter.collectionView = self.collectionView;
    self.adapter.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.collectionView.frame = self.view.bounds;
}

- (void)loadData
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"home" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSError *error;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        NSLog(@"error  = %@",error.localizedDescription);
        return;
    }
    
    NSDictionary *dataDic = dic[@"data"];
    
    NSArray<NSDictionary *> *banners = dataDic[@"banners"];
    self.bannerList = [DMBannerModel yy_modelWithArray:banners];
    
    NSArray<NSDictionary *> *news = dataDic[@"newses"];
    self.infoList = [DMNewsModel yy_modelWithArray:news];
    
    NSArray<NSDictionary *> *newsLine = dataDic[@"newsesLine"];
    self.infoLineList = [DMNewsModel yy_modelWithArray:newsLine];
    
    NSArray<NSDictionary *> *newsColumn = dataDic[@"newsesColumn"];
    self.infoColumList = [DMNewsModel yy_modelWithArray:newsColumn];
    
    NSArray<NSDictionary *> *enrolls = dataDic[@"enrolls"];
    self.enrollList = [DMEnrollModel yy_modelWithArray:enrolls];
    
    NSArray<NSDictionary *> *repertorys = dataDic[@"repertorys"];
    self.repertoryList = [DMRepertoryModel yy_modelWithArray:repertorys];
    
    NSArray<NSDictionary *> *theaters = dataDic[@"theaters"];
    self.theaterList = [DMTheaterModel yy_modelWithArray:theaters];

    NSArray<NSDictionary *> *talents = dataDic[@"talents"];
    self.talentList = [DMTalentModel yy_modelWithArray:talents];
    
    NSDictionary *advert = dataDic[@"advert"];
    self.advert = [DMAdvertModel yy_modelWithDictionary:advert];
    
    self.data = @[
                  self.bannerList,
                  self.infoList,
                  self.infoLineList,
                  self.infoColumList,
                  self.enrollList,
                  self.repertoryList,
                  self.theaterList,
                  self.talentList,
                  self.advert
                  ];
}

#pragma mark - IGListAdapterDataSource

- (NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter {
    return self.data;
}

- (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object {
//    return [PostSectionController new];
    return nil;
}

- (UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter {
    return nil;
}

@end
