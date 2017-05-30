//
//  WTLoginVC.m
//  WeaveTime
//
//  Created by Cyril's Mac on 29/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTLoginVC.h"
#import "WTContainerVC.h"

@interface WTLoginVC ()

@property (nonatomic) BOOL isFirstLayout;

@end

@implementation WTLoginVC

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

}

#pragma mark Data & Variables

- (void)initVariables {
    self.isFirstLayout = YES;
}

#pragma mark - Buttons Actions -
#pragma mark Login

- (IBAction)loginBtnAction:(id)sender {
#ifdef DEBUG
    [self loadHome];
#endif
}

- (void)loadHome {
    WTContainerVC *containerVC = [WTContainerVC controller];
    [[UIApplication sharedApplication].keyWindow setRootViewController:containerVC];
}

#pragma mark - Protocols Implementations -

// UITableViewDelegate, UIScrollViewDelegate, UIAlertViewDelegate ... etc

#pragma mark - Generic -
#pragma mark Controller Instantiation

+ (WTLoginVC *)controller {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WTLoginVC"];
}

@end
