//
//  CZLabel.m
//  A02-应用管理
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "CZLabel.h"

@implementation CZLabel

+ (void)showLabel:(UIView *)superView appName:(NSString *)appName
{
    UILabel *tipLabel = [[UILabel alloc] init];
    [superView addSubview:tipLabel];
    
    
    tipLabel.text = [NSString stringWithFormat:@"正在下载：%@",appName];
    
    //frame
    CGFloat tipW = 200;
    CGFloat tipH = 25;
    CGFloat tipX = (superView.frame.size.width - tipW)/2;
    CGFloat tipY = (superView.frame.size.height - tipH)/2;
    tipLabel.frame = CGRectMake(tipX, tipY, tipW, tipH);
    
    //属性
    tipLabel.textAlignment = NSTextAlignmentCenter;
    tipLabel.backgroundColor = [UIColor grayColor];
    //
    tipLabel.alpha = 0;
    //圆角
    tipLabel.layer.cornerRadius = 5;
    tipLabel.layer.masksToBounds = YES;
    
    
    [UIView animateWithDuration:1.0 animations:^{
        tipLabel.alpha = 0.8;
        
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0 delay:3.0 options:UIViewAnimationOptionCurveLinear animations:^{
            tipLabel.alpha = 0;
        } completion:^(BOOL finished) {
            [tipLabel removeFromSuperview];
        }];
    }];
}

@end
