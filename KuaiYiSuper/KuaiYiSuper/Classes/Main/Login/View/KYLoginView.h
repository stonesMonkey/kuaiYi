//
//  KYRegisterView.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KYLoginView : UIView

@property(nonatomic,copy)void(^noteBtnClickBlock)();

@property(nonatomic,copy)void(^registBtnClickBlock)();

@property(nonatomic,copy)void(^forgetPassWordBlock)();

+ (instancetype)registerView;

@end
