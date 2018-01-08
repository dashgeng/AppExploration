//
//  ActionDelegate.m
//  Delegation
//
//  Created by 耿大帅 on 2018/1/8.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import "ActionDelegate.h"

@implementation ActionDelegate
static BOOL isTrue = YES;

- (void)doSomething {
    if (isTrue) {
        isTrue = NO;
        if ([self.delegate respondsToSelector:@selector(successful:)]) {
            [self.delegate successful:@"执行成功"];
        }
    } else {
        isTrue = YES;
        if ([self.delegate respondsToSelector:@selector(failure:)]) {
            [self.delegate failure:@"没有成功"];
        }
    }
}

@end
