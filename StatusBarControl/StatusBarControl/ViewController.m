//
//  ViewController.m
//  StatusBarControl
//
//  Created by 耿大帅 on 2018/1/5.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 对iPhoneX横屏无效，横屏不显示状态栏(Status Bar)
- (IBAction)didTapStyleSegmentedControl:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        [self setStatusBarStyle:UIStatusBarStyleDefault];
    } else {
        [self setStatusBarStyle:UIStatusBarStyleLightContent];
    }
}

// TODO:对iPhoneX无效，竖屏无效(视图的安全区域不会上移)，横屏不显示状态栏(Status Bar)
- (IBAction)didTapHiddenSegmentedControl:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        [self setStatusBarHidden:NO];
    } else {
        [self setStatusBarHidden:YES];
    }
}

@end
