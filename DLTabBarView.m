//
//  DLTabBarView.m
//  DLTabBarControllerDemo
//
//  Created by zht on 13-7-5.
//  Copyright (c) 2013年 zht. All rights reserved.
//



#import "DLTabBarView.h"

@implementation DLTabBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 1; i <= 5; i++) {
            NSString *imgName = [NSString stringWithFormat:@"tabbutton%d.png", i];
            [self addButtonAtIndex:i - 1
                        ButtonType:(UIButtonTypeCustom)
                         WithImage:[UIImage imageNamed:imgName]];
        }
    }
    return self;
}

- (void)addButtonAtIndex:(NSInteger)index
              ButtonType:(UIButtonType)type
               WithImage:(UIImage *)image {
    UIButton *button = [UIButton buttonWithType:type];
    if (index == 2) {
        button.frame = CGRectMake(WIDTH * index, 0,
                                  WIDTH, HIGH_BUTTON_HEIGHT);
    }
    else {
        button.frame = CGRectMake(WIDTH * index, HIGH_BUTTON_HEIGHT - NORMAL_HEIGHT,
                                  WIDTH, NORMAL_HEIGHT);
    }
    [button setImage:image forState:UIControlStateNormal];
    button.tag = index + 1;
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:(UIControlEventTouchUpInside)];
    [self addSubview:button];
}

- (void)buttonPressed:(id)sender {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(tabWasSelected:)]) {
        UIButton *button = (UIButton *)sender;
        NSInteger newTag = button.tag;
        if (self.selectedButton != nil) {
            NSInteger oldTag = self.selectedButton.tag;
            if (newTag == oldTag) { return;}
            NSString *imageName = [NSString stringWithFormat:@"tabbutton%d.png", oldTag];
            [self.selectedButton setImage:[UIImage imageNamed:imageName] forState:(UIControlStateNormal)];
            self.selectedButton = nil;
        }
        self.selectedButton = button;
        NSString *imageName = [NSString stringWithFormat:@"tabbutton%d_pressed.png", newTag];
        [self.selectedButton setImage:[UIImage imageNamed:imageName] forState:(UIControlStateNormal)];
        [self.delegate tabWasSelected:newTag - 1];
    }
}

@end
