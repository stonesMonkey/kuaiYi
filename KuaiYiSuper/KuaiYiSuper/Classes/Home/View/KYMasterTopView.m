//
//  KYMasterTopView.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYMasterTopView.h"
#import "KYShowCollectionView.h"
#import "KYShowCollectionViewCell.h"
#import "KYFlowLayout.h"
@interface KYMasterTopView()<UICollectionViewDataSource,UICollectionViewDelegate>

// 天气图片
@property (weak, nonatomic) IBOutlet UIImageView *weatherImageView;

// 温度文本
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;

// 城市文本
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;

// 天气文本
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

// 温度文本
@property (weak, nonatomic) IBOutlet UILabel *centigradeLabel;

// 展示医生浏览器
@property (weak, nonatomic) IBOutlet KYShowCollectionView *showImageCollectionView;

// 展示医生浏览器的布局
@property (weak, nonatomic) IBOutlet KYFlowLayout *showFlow;

// page页面
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


@end

@implementation KYMasterTopView

+ (instancetype)masterTopView {
    
    return KYLoadNib(@"KYMasterTopView");
}

- (void)awakeFromNib {
    
    self.showImageCollectionView.delegate = self;
    self.showImageCollectionView.dataSource = self;
    
    [self.showImageCollectionView registerClass:[KYShowCollectionViewCell class] forCellWithReuseIdentifier:KYShowCollectionViewCellIdentifier];
    
    
}

#pragma mark - collectionView数据源方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    KYShowCollectionViewCell *cell = [self.showImageCollectionView dequeueReusableCellWithReuseIdentifier:KYShowCollectionViewCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = KYRandomColor;
    if (indexPath.row == 1) {
        
        cell.backgroundColor = [UIColor redColor];
    }
    
    return cell;
}

@end

