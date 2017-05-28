//
//  WTUserManager.m
//  WeaveTime
//
//  Created by Cyril's Mac on 26/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTUserManager.h"
#import "WTUserDefaultsManager.h"

@implementation WTUserManager

- (instancetype)init {
    self = [super init];
    if (self) {
        [self loadStoredUser];
    }
    return self;
}

- (void)loadStoredUser {
    self.user = [[WTUserDefaultsManager sharedManager] fetchStoredUser];
}

+ (WTUserManager *)sharedManager {
    static WTUserManager *sharedManager = nil;
    if (sharedManager == nil) {
        sharedManager = [[WTUserManager alloc] init];
    }
    return sharedManager;
}

- (BOOL)hasLoggedInAccount {
    return (self.user != nil && [self.user isLoggedIn]);
}

@end
