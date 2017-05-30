//
//  WTEventsVC.h
//  WeaveTime
//
//  Created by Cyril's Mac on 30/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WTEventsVC : UIViewController

#pragma mark - Properties -

@property (nonatomic) BOOL isDisplayedModally;

#pragma mark - Methods -

+ (WTEventsVC *)controller;

#pragma mark - Linked From Storyboard -
#pragma mark IBOutlets

#pragma mark IBActions

@end
