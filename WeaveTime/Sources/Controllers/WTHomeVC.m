//
//  WTHomeVC.m
//  WeaveTime
//
//  Created by Cyril's Mac on 30/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTHomeVC.h"

@import KYFloatingActionButton;

@interface WTHomeVC ()

@property (weak, nonatomic) IBOutlet KYButton *menuBtn;

@property (nonatomic) BOOL isFirstLayout;

@end

@implementation WTHomeVC

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
    [self initMenuBtn];
}

- (void)initMenuBtn {
//    self.menuBtn.kyDelegate = self;
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

#pragma mark - Protocols Implementations -

// UITableViewDelegate, UIScrollViewDelegate, UIAlertViewDelegate ... etc

#pragma mark - Generic -
#pragma mark Controller Instantiation

+ (WTHomeVC *)controller {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WTHomeVC"];
}

+ (WTHomeVC *)navigatedController {
    return [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"WTHomeNC"];
}

@end
