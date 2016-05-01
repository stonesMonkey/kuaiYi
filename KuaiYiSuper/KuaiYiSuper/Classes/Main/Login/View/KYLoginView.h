//
//  KYRegisterView.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KYLoginView : UIView

// 短信验证码登录
@property(nonatomic,copy)void(^noteBtnClickBlock)();

// 注册新账号
@property(nonatomic,copy)void(^registBtnClickBlock)();

// 忘记密码
@property(nonatomic,copy)void(^forgetPassWordBlock)();

// 登录按钮
@property(nonatomic,copy)void(^loginBtnDidClickBlock)(NSString *userName,NSString *password);

+ (instancetype)registerView;

@end
