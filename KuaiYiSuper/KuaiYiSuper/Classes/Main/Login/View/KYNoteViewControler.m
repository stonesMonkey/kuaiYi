//
//  KYNoteViewControler.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/27.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYNoteViewControler.h"

@interface KYNoteViewControler ()

@end

@implementation KYNoteViewControler

- (void)loadView {
    
    self.view = KYLoadNib(@"KYNoteView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"注册登录";
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
