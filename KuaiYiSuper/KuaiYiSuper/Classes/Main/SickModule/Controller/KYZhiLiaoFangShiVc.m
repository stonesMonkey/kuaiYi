//
//  ZhiLiaoFangShiVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/4.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYZhiLiaoFangShiVc.h"

@interface KYZhiLiaoFangShiVc ()

@property(nonatomic,strong)NSArray *zhiLiaoArr;

@end

@implementation KYZhiLiaoFangShiVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - tableViewDataSoure
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = self.zhiLiaoArr[indexPath.row];
    
    return cell;
}

#pragma mark - set &get
- (NSArray *)zhiLiaoArr {
    
    if (!_zhiLiaoArr) {
        
        _zhiLiaoArr = @[@"手术治疗", @"保守治疗",@"药物治疗"];
    }
    
    return _zhiLiaoArr;
}


@end
