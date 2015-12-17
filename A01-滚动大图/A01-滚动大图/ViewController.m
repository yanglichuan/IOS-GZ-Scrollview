//
//  ViewController.m
//  A01-滚动大图
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)gunClick;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.frame = self.view.frame;
    self.scrollView.backgroundColor = [UIColor redColor];
    
    
    self.scrollView.contentSize = CGSizeMake(1600, 1000);
    //设置内容的间距
    self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    //设置内容的偏移
    self.scrollView.contentOffset = CGPointMake(0, 0);
    
    //隐藏滚动条
    self.scrollView.showsHorizontalScrollIndicator = NO; //水平滚动条
    self.scrollView.showsVerticalScrollIndicator = NO; //纵向的滚动条
    //不启用弹簧效果
     self.scrollView.bounces = YES;
 
    
    
}

- (IBAction)gunClick {
    
    CGPoint offset =  self.scrollView.contentOffset;
    
   // offset.x += 50;
    
    //动画的方式设置偏移
    [self.scrollView setContentOffset:offset animated:YES];
    
//    [UIView animateWithDuration:1.0 animations:^{
//        self.scrollView.contentOffset = offset;
//    }];
    
}





@end
