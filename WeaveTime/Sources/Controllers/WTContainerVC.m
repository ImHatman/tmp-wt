//
//  WTContainerVC.m
//  WeaveTime
//
//  Created by Cyril's Mac on 29/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTContainerVC.h"
#import "WTHomeVC.h"

@interface WTContainerVC ()

@property (nonatomic) BOOL isFirstLayout;

@end

@implementation WTContainerVC

#pragma mark - Lifecycle -
#pragma mark IN

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initVariables];
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

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    if (self.isFirstLayout == YES) {
        [self initUI];
        self.isFirstLayout = NO;
    }
    [self.view layoutIfNeeded];
}

- (void)initUI {
    [self embedHomeVC];
}

- (void)embedHomeVC {
    UINavigationController *nc = [WTHomeVC navigatedController];
    nc.view.frame = self.controllersContainerView.bounds;
    
    [self addChildViewController:nc];
    [self.controllersContainerView addSubview:nc.view];
    [nc didMoveToParentViewController:self];
}

#pragma mark Data & Variables

- (void)initVariables {
    self.isFirstLayout = YES;
}

#pragma mark - Buttons Actions -

- (void)backBtnAction {
    if (self.isDisplayedModally == YES) {
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

#pragma mark - Generic -
#pragma mark Controller Instantiation

+ (WTContainerVC *)controller {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WTContainerVC"];
}

@end
