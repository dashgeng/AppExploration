//
//  ViewController.m
//  Delegation
//
//  Created by 耿大帅 on 2018/1/8.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import "ViewController.h"
#import "ActionDelegate.h"

@interface ViewController ()<SomeingDelegate>

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


- (IBAction)didTapActionButton:(UIButton *)sender {
    ActionDelegate *action = [[ActionDelegate alloc] init];
    action.delegate = self;
    [action doSomething];
}


- (void)successful:(NSString *)message {
    self.contentLabel.text = [NSString stringWithFormat:@"正确结果: %@", message];
}

- (void)failure:(NSString *)errorMessage {
    self.contentLabel.text = [NSString stringWithFormat:@"错误结果: %@", errorMessage];
}

@end
