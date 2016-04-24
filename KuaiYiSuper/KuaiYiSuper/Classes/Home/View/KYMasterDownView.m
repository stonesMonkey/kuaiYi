//
//  KYMasterDownView.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYMasterDownView.h"
#import "KYModuleCollectionView.h"
#import "KYModuleCollectionViewCell.h"
#import "KYModuleFlowLayout.h"
@interface KYMasterDownView()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet KYModuleCollectionView *moduleCollectionView;

@property (weak, nonatomic) IBOutlet KYModuleFlowLayout *moduleFlowLayout;


@end

@implementation KYMasterDownView

+ (instancetype)masterTopView {
    
    return KYLoadNib(@"KYMasterTopView");
}


- (void)awakeFromNib {
    
    // 设置 moduleFlowLayout 属性
    self.moduleFlowLayout.itemSize = CGSizeMake(KYScreenW / 3.0, KYScreenW / 3.0);
    
    // 设置 moduleCollectionView属性
    self.moduleCollectionView.delegate = self;
    self.moduleCollectionView.dataSource = self;
    [self.moduleCollectionView registerClass:[KYModuleCollectionViewCell class] forCellWithReuseIdentifier:KYModuleCollectionViewCellIdentifer];
}

#pragma mark - KYModuleCollection数据源方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    KYModuleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:KYModuleCollectionViewCellIdentifer forIndexPath:indexPath];
    cell.backgroundColor = KYRandomColor;
    
    return cell;
}


@end
