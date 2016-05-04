//
//  DownCellBtn.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/25.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYDownCellBtn.h"

@implementation KYDownCellBtn


- (void)layoutSubviews {
    
    [super layoutSubviews];
    
//    CGRect frame = self.frame;
    self.imageView.frame = CGRectMake(19, 14, 69, 69);
    
    self.titleLabel.center = CGPointMake(self.width / 2, 52);
    
    
}

@end
