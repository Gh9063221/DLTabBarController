//
//  DLTabBarView.h
//  DLTabBarControllerDemo
//
//  Created by zht on 13-7-5.
//  Copyright (c) 2013年 zht. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TabBarViewDelegate <NSObject>

- (void)tabWasSelected:(NSInteger)index;

@end

@interface DLTabBarView : UIView

@property (assign, nonatomic) id<TabBarViewDelegate> delegate;
@property (retain, nonatomic) UIButton *selectedButton;

@end
