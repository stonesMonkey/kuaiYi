//
//  KYMasterDownView.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KYMasterDownView : UIView

+ (instancetype)masterDownView;

// 跳转控制器
@property(nonatomic,copy)void(^jumpSickModuleVc)(NSString *classStr,NSString *sickName);

@property(nonatomic,strong)NSArray *downViewModels;

@end
