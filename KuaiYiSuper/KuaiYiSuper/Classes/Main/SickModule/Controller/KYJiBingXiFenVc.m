//
//  KYJiBingXiFenVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/4.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYJiBingXiFenVc.h"

@interface KYJiBingXiFenVc ()

@end

@implementation KYJiBingXiFenVc

#pragma mark - 声明周期
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[self leftBarButton]];
    
    UIButton *rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    rightBtn.backgroundColor = [UIColor purpleColor];
    [rightBtn setTitle:@"搜索" forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    
    [self setupSeachBar];
}

#pragma mark - private
- (void)setupSeachBar {
    
    UISearchBar *seacherBar = [[UISearchBar alloc] init];
    
    seacherBar.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 60, 44);
    seacherBar.backgroundColor = [UIColor orangeColor];
    self.navigationItem.titleView = seacherBar;
}

- (UIButton *)leftBarButton {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(leftBarButtonDidClick) forControlEvents:UIControlEventTouchDown];
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_button_back_01"] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 44, 44);
    return btn;
}
#pragma mark - event

// 导航控制器左边按钮点击时间
- (void)leftBarButtonDidClick {
    
#warning 暂时用model来跳转控制器吧
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - <#type#>



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
