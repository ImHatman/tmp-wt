//
//  WTUserManager.h
//  WeaveTime
//
//  Created by Cyril's Mac on 26/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTUser.h"

@interface WTUserManager : NSObject

@property (strong, nonatomic) WTUser *user;

+ (WTUserManager *)sharedManager;
- (BOOL)hasLoggedInAccount;

@end
