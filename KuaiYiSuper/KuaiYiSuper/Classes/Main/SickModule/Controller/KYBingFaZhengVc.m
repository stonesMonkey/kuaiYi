//
//  BingFaZhengVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/4.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYBingFaZhengVc.h"

@interface KYBingFaZhengVc ()

@property(nonatomic,strong)UILabel *titleLabel;

@end

@implementation KYBingFaZhengVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加子控件
    [self setupSubView];
    
}

#pragma mark - private
- (void)setupSubView {
    
    [self.view addSubview:self.titleLabel];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).with.offset(-30);
    }];
}



#pragma mark - set &get
- (UILabel *)titleLabel {
    
    if (!_titleLabel) {
        
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"没有搜索结果";
        _titleLabel.font = [UIFont systemFontOfSize:15];
        _titleLabel.textColor = [UIColor blackColor];
    }
    return _titleLabel;
}

@end
