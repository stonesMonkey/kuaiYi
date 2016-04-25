//
//  KYModuleCollectionViewCell.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYModuleCollectionViewCell.h"
#import "DownCellBtn.h"
#import "kymasterdownModel.h"
@interface KYModuleCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

@implementation KYModuleCollectionViewCell





- (void)setDownModel:(KYMasterDownModel *)downModel {
    
    _downModel = downModel;
    
    self.imageView.image = [UIImage imageNamed:downModel.icon];
    
    self.titleLabel.text = downModel.name;
}



@end
