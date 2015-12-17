//
//  CZAppInfoView.h
//  A02-应用管理
//
//  Created by Apple on 14/12/12.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CZAppInfo, CZAppInfoView;

//1 定义代理协议
@protocol CZAppInfoViewDelegate <NSObject>

@optional
- (void)appInfoViewDidClickedDownload:(CZAppInfoView *)appInfoView;

@end



@interface CZAppInfoView : UIView

@property (nonatomic, strong) CZAppInfo *appInfo;

//2 定义代理属性
@property (nonatomic, weak) id<CZAppInfoViewDelegate> delegate;

+ (instancetype)appInfoView;


//- (void)setData;
@end
