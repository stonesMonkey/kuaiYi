//
//  KYLoginVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYUserVc.h"
#import "KYLoginViewTop.h"
@implementation KYUserVc

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //
    [self setupSubView];
}

- (void)setupSubView {
    
    // 创建一个view
    KYLoginViewTop *top = [KYLoginViewTop loginViewTop];
    top.frame = CGRectMake(0, 0, KYScreenW, 100);
    [self.view addSubview:top];
}

@end
