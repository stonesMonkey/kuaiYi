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
@interface KYMasterVc ()

//
@property(nonatomic,weak)KYMasterTopView *topView;

//
@property(nonatomic,weak)KYMasterDownView *downView;

@end

@implementation KYMasterVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = KYMasterVcTitle;
    
    [self setupSubView];
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





@end
