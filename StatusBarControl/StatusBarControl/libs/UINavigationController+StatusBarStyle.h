//
//  UINavigationController+StatusBarStyle.h
//  StatusBarControl
//
//  Created by 耿大帅 on 2018/1/5.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (StatusBarStyle)

- (UIViewController *)childViewControllerForStatusBarStyle;
- (UIViewController *)childViewControllerForStatusBarHidden;

@end
