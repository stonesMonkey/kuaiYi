//
//  KYUser.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/1.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYUser.h"

@implementation KYUser

+ (instancetype)shareUser {
    
    return [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        instance = [super allocWithZone:zone];
    });
    
    return instance;
}

@end
