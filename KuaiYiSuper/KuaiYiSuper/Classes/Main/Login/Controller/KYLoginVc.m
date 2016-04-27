//
//  KYLoginVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYLoginVc.h"
#import "KYLoginView.h"
@interface KYLoginVc ()

@end

@implementation KYLoginVc

- (void)loadView {
    
        
        self.view = [KYLoginView registerView];
        // 添加返回按钮
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_button_back_01"] style:UIBarButtonItemStylePlain target:self action:@selector(backBtnDidClick)];
    
    self.title = @"用户登录";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[self setuoRightBtn]];
}

- (UIButton *)setuoRightBtn {
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [backBtn addTarget:self action:@selector(backBtnDidClick) forControlEvents:UIControlEventTouchDown];
    
    [backBtn setBackgroundImage:[UIImage imageNamed:@"nav_button_back_01"] forState:UIControlStateNormal];
    backBtn.backgroundColor = [UIColor orangeColor];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    
    return backBtn;
}

- (void)backBtnDidClick {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}













@end
