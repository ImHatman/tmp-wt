//
//  WTContainerVC.h
//  WeaveTime
//
//  Created by Cyril's Mac on 29/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTContainerVC : UIViewController

#pragma mark - Properties -

@property (nonatomic) BOOL isDisplayedModally;

#pragma mark - Methods -

+ (WTContainerVC *)controller;

#pragma mark - Linked From Storyboard -
#pragma mark IBOutlets

@property (weak, nonatomic) IBOutlet UIView *controllersContainerView;

#pragma mark IBActions

@end
