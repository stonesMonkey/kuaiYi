//
//  KYMasterDownModel.h
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/25.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYMasterDownModel : NSObject

@property(nonatomic,copy)NSString *name;

@property(nonatomic,copy)NSString *icon;

@property(nonatomic,strong)Class jumpClass;

- (instancetype)initWithDic:(NSDictionary *)dic;

+ (instancetype)masterDownModelWithDic:(NSDictionary *)dic;

+ (NSArray *)masterDownModels;

@end
