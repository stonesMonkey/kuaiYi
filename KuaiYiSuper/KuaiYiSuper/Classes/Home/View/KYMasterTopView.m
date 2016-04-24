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
    
#warning 这个数据稍后需要处理一下
    // 设置showFlow
    self.showFlow.itemSize = CGSizeMake(KYScreenW, 179.5);
    self.showFlow.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.showFlow.minimumLineSpacing = 0;
    self.showFlow.minimumInteritemSpacing = 0;
    
    // 设置collectionView
    self.showImageCollectionView.delegate = self;
    self.showImageCollectionView.dataSource = self;
    // 滚动方向
    self.showImageCollectionView.pagingEnabled = YES;
    self.showImageCollectionView.showsHorizontalScrollIndicator = NO;
    
    [self.showImageCollectionView registerClass:[KYShowCollectionViewCell class] forCellWithReuseIdentifier:KYShowCollectionViewCellIdentifier];
    
    dispatch_async(dispatch_get_main_queue(), ^{
       
        // 等线程有空滚动到最后到中间
        CGPoint point = CGPointMake(500 * KYScreenW, 0);
        [self.showImageCollectionView setContentOffset:point animated:NO];
    });
}

#pragma mark - collectionView数据源方法

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1000;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    KYShowCollectionViewCell *cell = [self.showImageCollectionView dequeueReusableCellWithReuseIdentifier:KYShowCollectionViewCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = KYRandomColor;

    return cell;
}

@end

