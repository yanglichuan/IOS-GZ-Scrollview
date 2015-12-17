//
//  ViewController.m
//  A02-喜马拉雅
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *lastView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //必须禁止自动布局
    self.scrollView.frame = self.view.frame;
    self.scrollView.backgroundColor = [UIColor redColor];
    
    
    CGFloat h = CGRectGetMaxY(self.lastView.frame) + 10;
    //设置滚动范围
    self.scrollView.contentSize = CGSizeMake(0, h);
    
    //
    self.scrollView.contentOffset = CGPointMake(0, -64);
    self.scrollView.contentInset = UIEdgeInsetsMake(64, 0, 44, 0);
}



@end
