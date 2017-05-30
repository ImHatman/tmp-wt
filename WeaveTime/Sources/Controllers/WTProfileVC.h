//
//  WTProfileVC.h
//  WeaveTime
//
//  Created by Cyril's Mac on 30/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTProfileVC : UIViewController

#pragma mark - Properties -

@property (nonatomic) BOOL isDisplayedModally;

#pragma mark - Methods -

+ (WTProfileVC *)controller;
+ (UINavigationController *)navigatedController;

#pragma mark - Linked From Storyboard -
#pragma mark IBOutlets

#pragma mark IBActions

@end
