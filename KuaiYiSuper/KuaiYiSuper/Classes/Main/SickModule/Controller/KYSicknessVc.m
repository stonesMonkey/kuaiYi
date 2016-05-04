//
//  KYSicknessVc.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/5/1.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYSicknessVc.h"
#import "KYJiBingXiFenVc.h"
@interface KYSicknessVc ()

// 疾病细分
@property (weak, nonatomic) IBOutlet UIView *jiBingXiFen;

// 并发症选择
@property (weak, nonatomic) IBOutlet UIView *bingfaZhengXuanze;

// 治疗方式
@property (weak, nonatomic) IBOutlet UIView *zhiLiaoFangShi;

// 已确诊
@property (weak, nonatomic) IBOutlet UIButton *yiQueZhengBtn;

// 未确证按钮
@property (weak, nonatomic) IBOutlet UIButton *weiQueZheng;

// 接受者治疗
@property (weak, nonatomic) IBOutlet UIButton *jieShouGuo;

// 是否确证Label
@property (weak, nonatomic) IBOutlet UILabel *queZhengLabel;

// 未接受过
@property (weak, nonatomic) IBOutlet UIButton *weiJieShouBtn;

// 是否接受治疗Label
@property (weak, nonatomic) IBOutlet UILabel *jieShouZhiLiaoLabel;




@end

@implementation KYSicknessVc

+ (instancetype)sicknessVcWithName:(NSString *)sickName {
    
    KYSicknessVc * sickNameVc = [[UIStoryboard storyboardWithName:@"KYSicknessVc" bundle:nil] instantiateInitialViewController];
    sickNameVc.sickName = sickName;
    return sickNameVc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.title = self.sickName;
    
    // 添加左边按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[self leftBarButton]];
    
    // jiBingXiFen手势
    UITapGestureRecognizer *jiBingTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jiBinFenXiTap)];
    
    [self.jiBingXiFen addGestureRecognizer:jiBingTap];
    
    // 并发手势
    UITapGestureRecognizer *bingFaTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bingFaZhengXuanZeTap)];
    
    [self.bingfaZhengXuanze addGestureRecognizer:bingFaTap];
    
    // 治疗方式
    UITapGestureRecognizer *zhiLiaoFangShiTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(zhiLiaoFangShiTap)];
    
    [self.zhiLiaoFangShi addGestureRecognizer:zhiLiaoFangShiTap];
}


- (UIButton *)leftBarButton {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(leftBarButtonDidClick) forControlEvents:UIControlEventTouchDown];
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_button_back_01"] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 44, 44);
    return btn;
}
#pragma mark - 私有方法



#pragma mark - action

// 导航控制器左边按钮点击时间
- (void)leftBarButtonDidClick {
    
#warning 暂时用model来跳转控制器吧
    [self.navigationController popViewControllerAnimated:YES];
}

/**
 *  疾病分析View点击时间
 */
- (void)jiBinFenXiTap {
    
    UITableViewController *resultVc = [[UIViewController alloc] init];
    resultVc.view.backgroundColor = [UIColor purpleColor];
    
    UISearchController *viewVc = [[UISearchController alloc] initWithSearchResultsController:resultVc];
    viewVc.view.backgroundColor = [UIColor redColor];
    viewVc.title = @"疾病分析";
    [self.navigationController pushViewController:viewVc animated:YES];
    
//    UISearchController
    
}

/**
 *  并发症选择
 */
- (void)bingFaZhengXuanZeTap {
    
    UIViewController *viewVc = [[UIViewController alloc] init];
    viewVc.view.backgroundColor = [UIColor orangeColor];
    viewVc.title = @"并发症选择";
    [self.navigationController pushViewController:viewVc animated:YES];
}

/**
 *  治疗方式
 */
- (void)zhiLiaoFangShiTap {
    
    UIViewController *viewVc = [[UIViewController alloc] init];
    viewVc.view.backgroundColor = [UIColor purpleColor];
    viewVc.title = @"治疗方式";
    [self.navigationController pushViewController:viewVc animated:YES];
}

- (IBAction)yiQueZhengDidClick:(UIButton *)sender {
    
    self.yiQueZhengBtn.selected = YES;
    self.weiQueZheng.selected = NO;
    self.queZhengLabel.text = @"已确诊";
}

- (IBAction)weiQueZhengBtnDidClick:(UIButton *)sender {
    
    self.weiQueZheng.selected = YES;
    self.yiQueZhengBtn.selected = NO;
    self.queZhengLabel.text = @"未确诊";
}

- (IBAction)jieShouGuoBtnDidClick:(UIButton *)sender {
    
    self.jieShouGuo.selected = YES;
    self.weiJieShouBtn.selected = NO;
    self.jieShouZhiLiaoLabel.text = @"接受过治疗";
    self.zhiLiaoFangShi.hidden = NO;
}

- (IBAction)weiJieShouGuoDidClick:(UIButton *)sender {
    
    self.jieShouGuo.selected = NO;
    self.weiJieShouBtn.selected = YES;
    self.jieShouZhiLiaoLabel.text = @"未接受过治疗";
    self.zhiLiaoFangShi.hidden = YES;
}






@end
