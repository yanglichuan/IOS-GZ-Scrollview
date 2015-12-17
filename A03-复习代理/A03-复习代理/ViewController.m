//
//  ViewController.m
//  A03-复习代理
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "CZPerson.h"
#import "CZZJ.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CZZJ *zj = [[CZZJ alloc] init];
    
    CZPerson *p1 = [[CZPerson alloc] init];
    
    p1.name = @"德山";
    //3 设置代理属性
    p1.delegate = zj;
    
    [p1 zuFang];
    
}


@end
