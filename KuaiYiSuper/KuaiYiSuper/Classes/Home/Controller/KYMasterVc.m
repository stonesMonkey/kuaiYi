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
#import "KYLoginVc.h"
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
    // 添加右边按钮
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[self leftBarButton]];
    // 设定属性
    [self setupSubView];
    // 给每个属性赋值
    [self setupData];
}

#pragma mark - 添加子控件的方法
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

- (UIButton *)leftBarButton {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(leftBarButtonDidClick) forControlEvents:UIControlEventTouchDown];
    [btn setBackgroundImage:[UIImage imageNamed:@"l"] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 20, 13);
    return btn;
}

- (void)setupData {
    
    self.downView.downViewModels = self.modelDowns;
}

#pragma mark - action
- (void)leftBarButtonDidClick {
    
#warning 暂时用model来跳转控制器吧
    KYLoginVc *login = [[KYLoginVc alloc] init];
    login.view.backgroundColor = [UIColor whiteColor];
    [self presentViewController:login animated:YES completion:nil];
}

#pragma mark - set &get
- (NSArray *)modelDowns {
    
    if (_modelDowns == nil) {
        
        _modelDowns  = [KYMasterDownModel masterDownModels];
    }
    return _modelDowns;
}





@end
