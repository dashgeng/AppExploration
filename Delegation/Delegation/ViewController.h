//
//  ViewController.h
//  Delegation
//
//  Created by 耿大帅 on 2018/1/8.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

- (IBAction)didTapActionButton:(UIButton *)sender;
@end

