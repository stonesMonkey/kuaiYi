//
//  KYNoteView.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/28.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYNoteView.h"

@interface KYNoteView()

@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextFiled;

@property (weak, nonatomic) IBOutlet UITextField *checkingTextFiled;


@end

@implementation KYNoteView

- (void)awakeFromNib {
    
    self.phoneNumberTextFiled.leftView = KYLoadNib(@"LeftView");
    self.checkingTextFiled.leftView = KYLoadNib(@"LeftView");
    self.phoneNumberTextFiled.leftViewMode = UITextFieldViewModeAlways;
    self.checkingTextFiled.leftViewMode = UITextFieldViewModeAlways;
}

@end
