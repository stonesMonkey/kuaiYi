//
//  KYFlowLayout.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYFlowLayout.h"

@interface KYFlowLayout()

@property(nonatomic,strong)NSMutableArray *mtbArr;

@end

@implementation KYFlowLayout

// 准备所有cell信息的时候调用
//- (void)prepareLayout {
//    
//    [super prepareLayout];
//    
//    // 方向设置
//    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    self.collectionView.pagingEnabled = YES;
//    [self.mtbArr removeAllObjects];
//    
//    NSInteger totalCount = [self.collectionView numberOfItemsInSection:0];
//    
//    //
//    CGFloat collectionViewWidth = self.collectionView.width;
//    CGFloat collectionViewHeight = self.collectionView.height;
//    KYLog(@"%lf",collectionViewHeight);
//    for (NSInteger index = 0; index < totalCount; index++) {
//        
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
//        UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
//        // 每个cell的frame值
//        attributes.frame = CGRectMake(collectionViewWidth * index, 0, KYScreenW,  collectionViewHeight);
//        [self.mtbArr addObject:attributes];
//    }
//}
//
//- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect; {
//    
//    [super layoutAttributesForElementsInRect:rect];
//    return self.mtbArr.copy;
//}
//
////  确定滚动的范围
//// 必须实现
//- (CGSize)collectionViewContentSize {
//    
//    [super collectionViewContentSize];
//    
//    return CGSizeMake(KYScreenW * 3, 0);
//}
//#pragma mark - set &get
//- (NSMutableArray *)mtbArr {
//    
//    if (_mtbArr == nil) {
//        
//        _mtbArr = [NSMutableArray array];
//    }
//    return _mtbArr;
//}

@end
