//
//  KYLoginVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYLoginVc.h"
#import "KYLoginView.h"
#import "KYNoteViewControler.h"
#import "KYForgetPasswordVc.h"
#import "KYRegisterVc.h"
#import "KYUserMessageVc.h"
@interface KYLoginVc ()

@end

@implementation KYLoginVc

- (void)loadView {
    
    
        
    KYLoginView *loginView = [KYLoginView registerView];
    loginView.noteBtnClickBlock = ^ {
        
        KYNoteViewControler *noteVc = [[KYNoteViewControler alloc] init];
        noteVc.view.backgroundColor = [UIColor blueColor];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:noteVc];
        [self presentViewController:nav animated:YES completion:nil];
    };
    
    loginView.forgetPassWordBlock = ^ {
      
        KYForgetPasswordVc *forGetVc = [[KYForgetPasswordVc alloc] init];
        forGetVc.view.backgroundColor = [UIColor blueColor];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:forGetVc];
        [self presentViewController:nav animated:YES completion:nil];
    };
    
    loginView.registBtnClickBlock = ^ {
      
        KYRegisterVc *registVc = [[KYRegisterVc alloc] init];
        registVc.view.backgroundColor = [UIColor blueColor];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:registVc];
        [self presentViewController:nav animated:YES completion:nil];
    };
    
    [loginView setLoginBtnDidClickBlock:^(NSString *userName, NSString *password) {
       
        // 判断账号密码是否正确
        BOOL loginSuccess = [self loginUserName:userName password:password];
        
        if (loginSuccess == YES) {
            
//            KYUserMessageVc *userMessage = [[UIStoryboard storyboardWithName:@"KYUserMessageVc" bundle:nil] instantiateInitialViewController];
            // 如果是YES跳转到登录界面
            
            // 保存用户账号密码
            //
            [self dismissViewControllerAnimated:YES completion:^{
                
                // 再push另外一个控制器
                if ([self.delegate respondsToSelector:@selector(loginVcChangeController:)]) {
                    
                    [self.delegate loginVcChangeController:self];
                }
            }];
        } else { // 账号密码错误
            
            [SVProgressHUD showErrorWithStatus:@"账号或者密码错误"];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                
                [SVProgressHUD dismiss];
            });
        }
    }];
    
    
    self.view = loginView;
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

- (BOOL)loginUserName:(NSString *)userName password:(NSString *)password {
    // 我靠，返回nil就不行。
    if (userName.length == 0 || password.length == 0) {
        
        [SVProgressHUD showErrorWithStatus:@"账号密码不能为空"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [SVProgressHUD dismiss];
        });
        
        return NO;
    }
    
    // 发送网络数据。这里就暂时不发送了直接为 11 22
    if([userName  isEqual:@"11"] && [password  isEqual:@"22"]) {
        
        return YES;
    }
    return NO;
}











@end
