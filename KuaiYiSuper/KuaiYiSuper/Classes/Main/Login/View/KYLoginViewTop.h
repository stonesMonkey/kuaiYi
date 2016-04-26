//
//  KYLoginViewTop.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KYLoginViewTop : UIView

@property(nonatomic,copy)void(^loginBtnDidBlcok)();

@property(nonatomic,copy)void(^registBtnDidBlcok)();

+ (instancetype)loginViewTop;

@end
