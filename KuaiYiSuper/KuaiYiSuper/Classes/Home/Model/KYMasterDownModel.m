//
//  KYMasterDownModel.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/25.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYMasterDownModel.h"

@implementation KYMasterDownModel

- (instancetype)initWithDic:(NSDictionary *)dic {
    
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+ (instancetype)masterDownModelWithDic:(NSDictionary *)dic {
    
    return [[self alloc] initWithDic:dic];
}

// 因为不确定跳转哪个class所以先写一下unfine方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{};


+ (NSArray *)masterDownModels {
    
    NSArray *arr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"KYMasterDownModel.plist" ofType:nil]];
    NSMutableArray *mtbArr = [NSMutableArray array];
    for (NSDictionary *dic in arr) {
        
        KYMasterDownModel *model = [KYMasterDownModel masterDownModelWithDic:dic];
        [mtbArr addObject:model];
    }
    // 线程安全
    return mtbArr.copy;
}

#pragma mark - set &get


@end
