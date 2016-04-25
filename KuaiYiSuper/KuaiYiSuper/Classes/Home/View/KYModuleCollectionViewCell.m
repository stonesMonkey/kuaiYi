//
//  KYModuleCollectionViewCell.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYModuleCollectionViewCell.h"

@interface KYModuleCollectionViewCell()

@property(nonatomic,weak)UIButton *btnView;

@end

@implementation KYModuleCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        [self setupSubView];
    }
    return self;
}

- (void)setupSubView {
    
    UIButton *btnView = [[UIButton alloc] init];
    
    [self.contentView addSubview:btnView];
    self.btnView = btnView;
    
    [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
      
        make.top.equalTo(self.contentView);
    }];
    
}


@end
