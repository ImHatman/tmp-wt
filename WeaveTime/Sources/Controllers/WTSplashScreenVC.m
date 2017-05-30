//
//  WTSplashScreenVC.m
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTSplashScreenVC.h"
#import "WTUserManager.h"
#import "WTLoginVC.h"

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
    
    [self loadRelevantController];
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

}

- (void)loadRelevantController {
    BOOL hasAccount = [[WTUserManager sharedManager] hasLoggedInAccount];
    
#ifdef DEBUG
    hasAccount = NO;
#endif
    
    if (hasAccount == NO) {
        [self loadLoginScreen];
    } else {
        [self loadHomeScreen];
    }
}

- (void)loadLoginScreen {
    WTLoginVC *loginVC = [WTLoginVC controller];
    [self presentViewController:loginVC animated:NO completion:nil];
}

- (void)loadHomeScreen {
    
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
