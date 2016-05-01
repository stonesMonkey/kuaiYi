//
//  KYUser.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/1.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYUser : NSObject

// 用户名
@property(nonatomic,copy)NSString *userName;

// 密码
@property(nonatomic,copy)NSString *password;

+ (instancetype)shareUser;

@end
