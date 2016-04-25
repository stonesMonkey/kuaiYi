//
//  KYMasterVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYMasterVc.h"
#import "KYMasterTopView.h"
#import "KYMasterDownView.h"
#import "KYMasterDownModel.h"
@interface KYMasterVc ()

//
@property(nonatomic,weak)KYMasterTopView *topView;

//
@property(nonatomic,weak)KYMasterDownView *downView;

//
@property(nonatomic,strong)NSArray *modelDowns;

@end

@implementation KYMasterVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = KYMasterVcTitle;
    
    // 设定属性
    [self setupSubView];
    // 给每个属性赋值
    [self setupData];
}

- (void)setupSubView {
    
    KYMasterTopView *topView = [KYMasterTopView masterTopView];
    KYMasterDownView *donwView = [KYMasterDownView masterDownView];
    [self.view addSubview:topView];
    [self.view addSubview:donwView];
    self.topView = topView;
    self.downView = donwView;
    // 添加约束
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.mas_equalTo(KYMasterTopViewHeight);
    }];
    // 添加约束
    [donwView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.top.equalTo(topView.mas_bottom);
        make.bottom.equalTo(self.view);
    }];
    
}

- (void)setupData {
    
    self.downView.downViewModels = self.modelDowns;
}

#pragma mark - set &get
- (NSArray *)modelDowns {
    
    if (_modelDowns == nil) {
        
        _modelDowns  = [KYMasterDownModel masterDownModels];
    }
    return _modelDowns;
}





@end
