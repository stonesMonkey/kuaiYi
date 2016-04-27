//
//  KYRegisterView.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYLoginView.h"

@interface KYLoginView()

@property (weak, nonatomic) IBOutlet UITextField *userTextField;

@property (weak, nonatomic) IBOutlet UITextField *passWordField;

@end

@implementation KYLoginView

+ (instancetype)registerView {
    
    return KYLoadNib(@"KYLoginView");
}

- (void)awakeFromNib {
    
    self.userTextField.leftView = KYLoadNib(@"LeftView");
    self.passWordField.leftView = KYLoadNib(@"LeftView");
    self.passWordField.leftViewMode = UITextFieldViewModeAlways;
    self.userTextField.leftViewMode = UITextFieldViewModeAlways;
}

- (UIImageView *)leftView {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"product_img_icon_xieyi.png"]];
    imageView.frame = CGRectMake(10, 0, 14, 15);
    return imageView;
}

#pragma mark - action

// 通过短信验证按钮
- (IBAction)noteBtnClick:(UIButton *)sender {
    
    
}

// 注册新账号按钮
- (IBAction)registBtn:(UIButton *)sender {
    
    
}

// 忘记密码按钮
- (IBAction)forgetPassWord:(UIButton *)sender {
    
    
}




@end
