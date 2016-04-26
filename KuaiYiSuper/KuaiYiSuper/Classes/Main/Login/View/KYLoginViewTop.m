//
//  KYLoginViewTop.m
//  KuaiYiSuper
//
//  Created by WZZ on 16/4/26.
//  Copyright © 2016年 WZZ. All rights reserved.
//

#import "KYLoginViewTop.h"

@implementation KYLoginViewTop

+ (instancetype)loginViewTop {
    
    return KYLoadNib(@"KYLoginViewTop");
}

- (IBAction)dengLuBtn:(UIButton *)sender {
    
    if (self.loginBtnDidBlcok != nil) {
        
        self.loginBtnDidBlcok();
    }
}


- (IBAction)registBtnClick:(UIButton *)sender {
    
    if (self.registBtnDidBlcok != nil) {
        
        self.registBtnDidBlcok();
    }
}


@end
