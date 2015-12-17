//
//  ViewController.m
//  A05-图片轮播期
//
//  Created by Apple on 14/12/16.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int count = 5;
     CGSize size = self.scrollView.frame.size;
    //1 动态生成5个imageView
    for (int i = 0; i < count; i++) {
        //
        UIImageView *iconView = [[UIImageView alloc] init];
        [self.scrollView addSubview:iconView];
        
        NSString *imgName = [NSString stringWithFormat:@"img_%02d",i+1];
        iconView.image = [UIImage imageNamed:imgName];
        
       
        CGFloat x = i * size.width;
        //frame
        iconView.frame = CGRectMake(x, 0, size.width, size.height);
    }
    
    //2 设置滚动范围
    self.scrollView.contentSize = CGSizeMake(count * size.width, 0);
    
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    //3 设置分页
    self.scrollView.pagingEnabled = YES;
    
    //4 设置pageControl
    self.pageControl.numberOfPages = count;
    
    //5 设置scrollView的代理
    self.scrollView.delegate = self;
    
    //6 定时器
    NSTimer *timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    //消息循环
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    [runloop addTimer:timer forMode:NSDefaultRunLoopMode];
    
    //线程
    //同步  异步
    
    
}

- (void)nextImage
{
    //当前页码
    NSInteger page = self.pageControl.currentPage;
    
    if (page == self.pageControl.numberOfPages - 1) {
        page = 0;
    }else{
        page++;
    }

//    self.scrollView setContentOffset:<#(CGPoint)#> animated:<#(BOOL)#>
    
    CGFloat offsetX = page * self.scrollView.frame.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
    }];
    
}

#pragma mark - scrollView的代理方法
//正在滚动的时候
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //   (offset.x + 100/2)/100
    int page = (scrollView.contentOffset.x + scrollView.frame.size.width / 2)/ scrollView.frame.size.width;
    self.pageControl.currentPage = page;
}

@end
