//
//  BaseViewController.h
//  StatusBarControl
//
//  Created by 耿大帅 on 2018/1/5.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

/**
 状态栏样式
 */
@property (assign, nonatomic)   UIStatusBarStyle statusBarStyle;

/**
 状态栏隐藏状态
 */
@property (assign, nonatomic)   BOOL statusBarHidden;

@end
