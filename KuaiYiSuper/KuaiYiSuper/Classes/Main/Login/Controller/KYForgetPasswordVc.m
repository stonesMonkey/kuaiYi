//
//  KYForgetPasswordVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/1.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYForgetPasswordVc.h"

@interface KYForgetPasswordVc ()

@end

@implementation KYForgetPasswordVc

- (void)loadView {
    
    self.view = KYLoadNib(@"KYForGetPassWord");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"忘记密码";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[self setuoRightBtn]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (UIButton *)setuoRightBtn {
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [backBtn addTarget:self action:@selector(backBtnDidClick) forControlEvents:UIControlEventTouchDown];
    
    [backBtn setBackgroundImage:[UIImage imageNamed:@"nav_button_back_01"] forState:UIControlStateNormal];
    backBtn.backgroundColor = [UIColor orangeColor];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    
    return backBtn;
}


#pragma mark - action
- (void)backBtnDidClick {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
