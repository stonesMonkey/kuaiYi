//
//  KYNavigationVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/24.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYNavigationVc.h"

@interface KYNavigationVc ()

@end

@implementation KYNavigationVc

+ (void)initialize {
    
    if (self == [KYNavigationVc class]) {
        
        UINavigationBar *navigationBar = [UINavigationBar appearance];
        navigationBar.tintColor = [UIColor whiteColor];
        navigationBar.barTintColor = [UIColor greenColor];
        NSMutableDictionary *navDict = [NSMutableDictionary dictionary];
        // 设置字体的字号
        navDict[NSFontAttributeName] = [UIFont systemFontOfSize:KYNavgationBarTitleFontSize];
        navDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
        [navigationBar setTitleTextAttributes:navDict];
        [navigationBar setBackgroundImage:[UIImage imageNamed:@"nav"] forBarMetrics:UIBarMetricsDefault];
        
        UIBarButtonItem *barBtnAppenceItem = [UIBarButtonItem appearance];
        NSMutableDictionary *mtbDict = [NSMutableDictionary dictionary];
        // 设置字体的字号
        mtbDict[NSFontAttributeName] = [UIFont systemFontOfSize:14];
        mtbDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
        
        [barBtnAppenceItem setTitleTextAttributes:mtbDict forState:UIControlStateNormal];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
