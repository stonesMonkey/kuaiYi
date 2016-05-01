//
//  KYLoginVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYUserVc.h"
#import "KYLoginViewTop.h"
#import "KYLoginVc.h"
#import "KYUserMessageVc.h"
@interface KYUserVc()<KYLoginVcDelegate>

@end

@implementation KYUserVc

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //
    [self setupSubView];
}

- (void)setupSubView {
    
    // 创建一个view
    KYLoginViewTop *top = [KYLoginViewTop loginViewTop];
    
    __weak KYUserVc *mySelf = self;
    // login Top的block
    [top setLoginBtnDidBlcok:^{
       
        // 跳转到登录界面
        KYLoginVc *loginVc = [[KYLoginVc alloc] init];
        loginVc.view.backgroundColor = [UIColor redColor];
        loginVc.delegate = self;
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVc];
        [mySelf presentViewController:nav animated:YES completion:nil];
    }];
    top.frame = CGRectMake(0, 0, KYScreenW, 100);
    [self.view addSubview:top];
}

- (void)loginVcChangeController:(KYLoginVc *)loginVc {
    
    KYUserMessageVc *userMessage = [[UIStoryboard storyboardWithName:@"KYUserMessageVc" bundle:nil] instantiateInitialViewController];
    
    [self presentViewController:userMessage animated:YES completion:nil];
}

@end
