//
//  KYLoginVc.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KYLoginVc;
@protocol KYLoginVcDelegate <NSObject>

- (void)loginVcChangeController:(KYLoginVc *)loginVc;

@end

@interface KYLoginVc : UIViewController

@property(nonatomic,weak)id delegate;

@end
