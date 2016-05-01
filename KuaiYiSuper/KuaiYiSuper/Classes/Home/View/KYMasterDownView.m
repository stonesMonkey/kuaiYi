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
#import "KYMasterDownModel.h"
#import "KYModuleFlowLayout.h"
#import "KYSicknessVc.h"
typedef NS_ENUM(NSInteger, KYModule) {
    
    KYZhongLiuModule,
    KYXinXueGuanModule,
    KYShenJingKeModule,
    KYXueYeKeModule,
    KYGuKeModule,
    KYGongYiModuleVc
};
@interface KYMasterDownView()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet KYModuleCollectionView *moduleCollectionView;

@property (weak, nonatomic) IBOutlet KYModuleFlowLayout *moduleFlowLayout;


@end

@implementation KYMasterDownView

+ (instancetype)masterDownView {
    
    return KYLoadNib(@"KYMasterDownView");
}


- (void)awakeFromNib {
    
    // 设置 moduleFlowLayout 属性
    self.moduleFlowLayout.itemSize = CGSizeMake(KYScreenW / 3.0, KYScreenW / 3.0);
    self.moduleFlowLayout.minimumLineSpacing = 0;
    self.moduleFlowLayout.minimumInteritemSpacing = 0;
    
    // 设置 moduleCollectionView属性
    self.moduleCollectionView.delegate = self;
    self.moduleCollectionView.dataSource = self;
    self.moduleCollectionView.bounces = NO;
    self.moduleCollectionView.showsHorizontalScrollIndicator = NO;
    
    UINib *nib = [UINib nibWithNibName:@"KYModuleCollectionViewCell" bundle:nil];
    [self.moduleCollectionView registerNib:nib forCellWithReuseIdentifier:KYModuleCollectionViewCellIdentifer];
}

#pragma mark - KYModuleCollection数据源方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.downViewModels.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    KYModuleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:KYModuleCollectionViewCellIdentifer forIndexPath:indexPath];
    cell.backgroundColor = KYRandomColor;
    cell.downModel = self.downViewModels[indexPath.row];
    return cell;
}

#pragma mark - KYModuleCollection代理方法
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [self jumpSelectMudelWithModule:indexPath.row];
}

#pragma mark - 跳转控制器
- (void)jumpSelectMudelWithModule:(KYModule)module {
    
    NSString *vcStr = nil;
    NSString *str = nil;
    if (module != 5) { // 不是公益活动
        
        vcStr = @"KYSicknessVc";
        switch (module) {
            case  KYZhongLiuModule:
                str = @"肿瘤科";
                break;
            case KYXinXueGuanModule:
                str = @"心血管";
                break;
            case KYShenJingKeModule:
                str = @"神经科";
                break;
            case KYXueYeKeModule:
                str = @"血液科";
                break;
            case KYGuKeModule:
                str = @"骨科";
                break;
            default:
                break;
        }
        
    } else { // 跳转到工艺活动模块
        
        vcStr = @"KYGongYiModuleVc";
    }
    
     self.jumpSickModuleVc(vcStr,str);
}



#pragma mark - set &get
- (void)setDownViewModels:(NSArray *)downViewModels {
    
    _downViewModels = downViewModels;
    
    [self.moduleCollectionView reloadData];
}


@end
