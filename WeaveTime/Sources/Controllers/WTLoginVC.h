//
//  WTLoginVC.h
//  WeaveTime
//
//  Created by Cyril's Mac on 29/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTLoginVC : UIViewController

#pragma mark - Properties -

@property (nonatomic) BOOL isDisplayedModally;

#pragma mark - Methods -

+ (WTLoginVC *)controller;

#pragma mark - Linked From Storyboard -
#pragma mark IBOutlets

#pragma mark IBActions

- (IBAction)loginBtnAction:(id)sender;

@end
