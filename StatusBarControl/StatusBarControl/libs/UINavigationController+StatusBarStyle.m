//
//  UINavigationController+StatusBarStyle.m
//  StatusBarControl
//
//  Created by 耿大帅 on 2018/1/5.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import "UINavigationController+StatusBarStyle.h"

@implementation UINavigationController (StatusBarStyle)

- (UIViewController *)childViewControllerForStatusBarStyle {
    return self.visibleViewController;
}

- (UIViewController *)childViewControllerForStatusBarHidden {
    return self.visibleViewController;
}

@end
