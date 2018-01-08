//
//  ActionDelegate.h
//  Delegation
//
//  Created by 耿大帅 on 2018/1/8.
//  Copyright © 2018年 DashGeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SomeingDelegate <NSObject>

- (void)successful:(NSString *) message;

@optional

- (void)failure:(NSString *) errorMessage;

@end

@interface ActionDelegate : NSObject

@property (nonatomic, weak) id<SomeingDelegate> delegate;

- (void)doSomething;

@end
