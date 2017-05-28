//
//  WTSplashScreenVC.m
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTSplashScreenVC.h"
#import "WTUserManager.h"

@interface WTSplashScreenVC ()

@property (nonatomic) BOOL isFirstLayout;

@end

@implementation WTSplashScreenVC

#pragma mark - Lifecycle -
#pragma mark IN

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initVariables];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    if (self.isFirstLayout == YES) {
        [self initUI];
        self.isFirstLayout = NO;
    }
    [self.view layoutIfNeeded];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

#pragma mark OUT

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}

#pragma mark - Initialization -
#pragma mark UI

- (void)initUI {
    if ([[WTUserManager sharedManager] hasLoggedInAccount] == YES) {
        [self loadHomeScreen];
    } else {
        [self loadLoginScreen];
    }
}

- (void)loadHomeScreen {
    
}

- (void)loadLoginScreen {
    
}

#pragma mark Data & Variables

- (void)initVariables {
    self.isFirstLayout = YES;
}

#pragma mark - Generic -
#pragma mark Controller Instantiation

+ (WTSplashScreenVC *)controller {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WTSplashScreenVC"];
}

@end
