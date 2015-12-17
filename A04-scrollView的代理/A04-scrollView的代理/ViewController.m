//
//  ViewController.m
//  A04-scrollView的代理
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
//2 遵守代理协议
@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = self.imageView.frame.size;
    
    //1 设置scrollview的代理对象
    self.scrollView.delegate = self;
    
    
    //设置缩放的比例
    self.scrollView.maximumZoomScale = 3;
    self.scrollView.minimumZoomScale = 0.3;
}

//3 实现代理方法
#pragma mark - scrollview的代理方法
//开始拖拽的时候调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@" scrollViewWillBeginDragging");
}
//结束拖拽的时候调用
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@" scrollViewDidEndDragging");

}
//正在滚动的时候
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@" scrollViewDidScroll");

}
//返回要缩放的view
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

@end
