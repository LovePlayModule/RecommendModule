//
//  LpViewController.m
//  RecommendModule
//
//  Created by YunsChou on 08/07/2017.
//  Copyright (c) 2017 YunsChou. All rights reserved.
//

#import "LpViewController.h"
#import <RecommendModule/RecommendViewController.h>

#import <Network/HttpRequest.h>

@interface LpViewController ()

@end

@implementation LpViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [[HttpRequest sharedInstance] configBaseURL:@"https://i.play.163.com"];
    
    RecommendViewController *viewController = [[RecommendViewController alloc] init];
    [self addChildViewController:viewController];
    [self.view addSubview:viewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
