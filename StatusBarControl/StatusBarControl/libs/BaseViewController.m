//
//  BaseViewController.m
//  StatusBarControl
//
//  Created by 耿大帅 on 2018/1/5.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark - UIViewController Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - StatusBar Methods

/**
 获取状态栏样式
 
 @return 状态栏样式
 */
- (UIStatusBarStyle)preferredStatusBarStyle {
    return _statusBarStyle;
}

/**
 设置状态栏的样式
 
 @param statusBarStyle 状态栏的样式
 */
- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle {
    _statusBarStyle = statusBarStyle;
    [self setNeedsStatusBarAppearanceUpdate];
}

/**
 获取状态栏是否隐藏的状态
 
 @return 状态栏是否隐藏的状态 YES:隐藏 NO:不隐藏
 */
- (BOOL)prefersStatusBarHidden {
    return _statusBarHidden;
}

/**
 设置状态栏是否隐藏
 
 @param statusBarHidden YES:隐藏 NO:不隐藏
 */
- (void)setStatusBarHidden:(BOOL)statusBarHidden {
    _statusBarHidden = statusBarHidden;
    [self setNeedsStatusBarAppearanceUpdate];
}

//- (void)setNeedsStatusBarAppearanceUpdate {
//}

@end
