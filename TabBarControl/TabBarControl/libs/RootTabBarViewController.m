//
//  RootTabBarViewController.m
//  TabBarControl
//
//  Created by 耿大帅 on 2018/1/5.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import "RootTabBarViewController.h"

#define kUIColorWithHex(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]

@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

#pragma mark - UIViewController Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化视图控件
    [self initViewControls];
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

#pragma mark - Init / Set View Controls and Data Methods

/**
 初始化视图控件
 */
- (void)initViewControls {
    NSMutableArray *imageArray = [[NSMutableArray alloc] initWithObjects:@"First", @"Second", nil];
    BOOL isFirst = YES;
    
    for (UITabBarItem *item in self.tabBar.items) {
        // 设置 TabBar Item 被选中图标的模式
        item.selectedImage = [[UIImage imageNamed:[imageArray firstObject]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [imageArray removeObjectAtIndex:0];
        
        // 设置 TabBar Item 被选中图标的字体颜色
        if (isFirst) {
            isFirst = NO;
            [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kUIColorWithHex(0x000000), NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
        } else {
            [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kUIColorWithHex(0x999999), NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
        }
    }
}

#pragma mark - UITabBarDelegate Methods

/**
 当选中了 TabBar 上的一个 Item 时触发的处理
 
 @param tabBar TabBar控件
 @param item 选中的 Item 控件
 */
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    // 设置 TabBar Item 默认的字体颜色
    for (UITabBarItem *item in self.tabBar.items) {
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kUIColorWithHex(0x999999), NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    }
    // 设置 TabBar 被选中 Item 的字体颜色
    [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:kUIColorWithHex(0x000000), NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
}

@end
