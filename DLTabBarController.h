//
//  DLTabBarController.h
//  DLTabBarControllerDemo
//
//  Created by zht on 13-7-5.
//  Copyright (c) 2013年 zht. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLTabBarView.h"

@interface DLTabBarController : UITabBarController <TabBarViewDelegate>

@property (retain, nonatomic) DLTabBarView *tBV;

@end
