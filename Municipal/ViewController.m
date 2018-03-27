//
//  ViewController.m
//  Municipal
//
//  Created by 安宁 on 2018/2/27.
//  Copyright © 2018年 安宁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    
    UIScrollView * sub = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    sub.backgroundColor = [UIColor blackColor];
    [sub setContentSize:CGSizeMake(1000, 1000)];
    sub.delegate = self ;
    [self.view addSubview:sub];
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    

        if (scrollView.contentOffset.y > 100)
        {
                [UIView animateWithDuration:1.5 animations:^{
                    
                    @try
                    {
                        self.view.subviews[0].alpha = 0 ;
                    }@catch(NSException * e)
                    {
                        
                    }
                } completion:^(BOOL finished) {
                
                    [NSTimer scheduledTimerWithTimeInterval:1 repeats:NO block:^(NSTimer * _Nonnull timer) {
                        @try
                        {
                            
                            [self.view.subviews[0] removeFromSuperview];
                        }@catch(NSException * e)
                        {
                            
                        }

                    }];

                    
                }];
                

        }
   

}


@end
