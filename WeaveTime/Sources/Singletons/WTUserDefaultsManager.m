//
//  WTUserDefaultsManager.m
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTUserDefaultsManager.h"

#define ACCESS_TOKEN_KEY @"accessToken"
#define FIRST_NAME_KEY @"firstName"
#define LAST_NAME_KEY @"lastName"

@implementation WTUserDefaultsManager

+ (WTUserDefaultsManager *)sharedManager {
    static WTUserDefaultsManager *sharedManager= nil;
    if (sharedManager == nil) {
        sharedManager = [[WTUserDefaultsManager alloc] init];
    }
    return sharedManager;
}

#pragma mark - Access Token

- (NSString *)readAccessToken {
    return [[NSUserDefaults standardUserDefaults] stringForKey:ACCESS_TOKEN_KEY];
}

- (void)storeAccessToken:(NSString *)accessToken {
    [[NSUserDefaults standardUserDefaults] setValue:accessToken forKey:ACCESS_TOKEN_KEY];
}

- (void)eraseAccessToken {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:ACCESS_TOKEN_KEY];
}

#pragma mark - User

- (WTUser *)fetchStoredUser {
    NSString *firstName = [self readFirstName];
    NSString *lastName = [self readLastName];
    NSString *accessToken = [self readAccessToken];
    
    if (firstName == nil || lastName == nil || accessToken == nil) {
        return nil;
    }
    
    WTUser *user = [WTUser new];
    user.firstName = firstName;
    user.lastName = lastName;
    user.accessToken = accessToken;
    
    return user;
}

- (NSString *)readFirstName {
    return [[NSUserDefaults standardUserDefaults] stringForKey:FIRST_NAME_KEY];
}

- (NSString *)readLastName {
    return [[NSUserDefaults standardUserDefaults] stringForKey:LAST_NAME_KEY];
}

@end
