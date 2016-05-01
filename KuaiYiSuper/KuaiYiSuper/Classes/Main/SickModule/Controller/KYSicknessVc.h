//
//  KYSicknessVc.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/1.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KYSicknessVc : UIViewController

+ (instancetype)sicknessVcWithName:(NSString *)sickName;

@property(nonatomic,copy)NSString *sickName;

@end
