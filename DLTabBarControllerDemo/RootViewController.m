//
//  RootViewController.m
//  DLTabBarControllerDemo
//
//  Created by zht on 13-7-5.
//  Copyright (c) 2013年 zht. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"
#import "FifthViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)dealloc {
    [_tBC release];
    [super dealloc];
}

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
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    self.tBC = [[[DLTabBarController alloc] init] autorelease];
    
    
    FirstViewController *fvc = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    SecondViewController *svc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    ThirdViewController *tvc = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    ForthViewController *forthvc = [[ForthViewController alloc] initWithNibName:@"ForthViewController" bundle:nil];
    FifthViewController *fifthvc = [[FifthViewController alloc] initWithNibName:@"FifthViewController" bundle:nil];
    
    self.tBC.viewControllers = @[fvc, svc, tvc, forthvc, fifthvc];
    self.tBC.view.frame = self.view.bounds;
    
    [self.view addSubview:self.tBC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
