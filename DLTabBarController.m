//
//  DLTabBarController.m
//  DLTabBarControllerDemo
//
//  Created by zht on 13-7-5.
//  Copyright (c) 2013年 zht. All rights reserved.
//



#import "DLTabBarController.h"

@interface DLTabBarController ()

@end

@implementation DLTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self hideAllTabBar];
    self.tBV = [[DLTabBarView alloc] initWithFrame:CGRectMake(0, SCREEN_HEIGHT - 20 - HIGH_BUTTON_HEIGHT, SCREEN_WIDTH, HIGH_BUTTON_HEIGHT)];
    self.tBV.delegate = self;

    [self.view addSubview:self.tBV];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)hideAllTabBar {
    for(UIView *view in self.view.subviews)
	{
		if([view isKindOfClass:[UITabBar class]])
		{
			view.hidden = YES;
			break;
		}
	}
}
#pragma mark - TabBarViewDelegate
- (void)tabWasSelected:(NSInteger)index {
    self.selectedIndex = index;
}
@end
