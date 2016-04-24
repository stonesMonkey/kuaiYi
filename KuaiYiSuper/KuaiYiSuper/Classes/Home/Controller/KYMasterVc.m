//
//  KYMasterVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYMasterVc.h"
#import "KYMasterTopView.h"
@interface KYMasterVc ()



@end

@implementation KYMasterVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = KYMasterVcTitle;
    
    [self setupSubView];
}

- (void)setupSubView {
    
    KYMasterTopView *topView = [KYMasterTopView masterTopView];
    [self.view addSubview:topView];
    
    // 添加约束
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.mas_equalTo(KYMasterTopViewHeight);
    }];
    
    
}





@end
