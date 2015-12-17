//
//  CZZJ.h
//  A03-复习代理
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CZPerson.h"

//使用代理的步骤
//1 让某个类遵守代理协议
//2 实现代理方法
//3 设置代理属性
@interface CZZJ : NSObject <CZPersonDelegate>

@end
