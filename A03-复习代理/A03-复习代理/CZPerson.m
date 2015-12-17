//
//  CZPerson.m
//  A03-复习代理
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "CZPerson.h"

@implementation CZPerson
- (void)zuFang
{
    NSLog(@"%@--要租房",self.name);
    
    //3 调用代理的方法（通知） 给代理发送消息
    if([self.delegate respondsToSelector:@selector(personFindHouse:)])
    {
        [self.delegate personFindHouse:self];

    }
}



@end
