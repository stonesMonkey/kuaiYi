//
//  KYConst.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//


#import <UIKit/UIKit.h>
// 屏幕的bounds、宽度和高度
#define KYScreenW [UIScreen mainScreen].bounds.size.width
#define KYScreenH [UIScreen mainScreen].bounds.size.height
#define KYScreenBounds [UIScreen mainScreen].bounds

// iphone6 / 6s 的宽度
#define KYDefineWidth 375.0
// ihpone6 / 6s 的高度
#define KYDefineHeight 667.0

// 以6为参展比例，其他设备按照比例缩减
#define KYDeviceScale  KYScreenW / KYDefineWidth


// 主页名称
UIKIT_EXTERN NSString * const KYMasterVcTitle;
// 主页topView的高度
//UIKIT_EXTERN CGFloat const KYMasterTopViewHeight;
// 导航栏中间标题大小
UIKIT_EXTERN CGFloat const KYNavgationBarTitleFontSize;
// 主页总高度
UIKIT_EXTERN CGFloat const KYMasterTopViewHeight;
// 主页上显示天气信息高度
UIKIT_EXTERN CGFloat const KYMasterTopMessageHeight;

// 主页图片浏览器cell的重用标识符
UIKIT_EXTERN NSString * const KYShowCollectionViewCellIdentifier;
UIKIT_EXTERN NSString * const KYModuleCollectionViewCellIdentifer;


