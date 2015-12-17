//
//  CZPerson.h
//  A03-复习代理
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CZPerson;

//1 定义代理的协议
@protocol CZPersonDelegate <NSObject>

@optional
- (void)personFindHouse:(CZPerson *)person;

@end

@interface CZPerson : NSObject
@property (nonatomic,copy) NSString *name;
//2 定义代理属性
@property (nonatomic,weak) id<CZPersonDelegate> delegate;

- (void)zuFang;
@end
