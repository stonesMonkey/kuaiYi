//
//  KYGongYiModule.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/1.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYGongYiModuleVc.h"

@interface KYGongYiModuleVc ()

@end

@implementation KYGongYiModuleVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.title = @"公益活动";
    
    // 添加左边按钮
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[self leftBarButton]];
    
}


- (UIButton *)leftBarButton {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(leftBarButtonDidClick) forControlEvents:UIControlEventTouchDown];
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_button_back_01"] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 44, 44);
    return btn;
}


#pragma mark - action
- (void)leftBarButtonDidClick {
    
#warning 暂时用model来跳转控制器吧
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
