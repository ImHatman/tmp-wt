//
//  WTUserDefaultsManager.h
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTUser.h"

@interface WTUserDefaultsManager : NSObject

+ (WTUserDefaultsManager *)sharedManager;

#pragma mark - Access Token

- (NSString *)readAccessToken;
- (void)storeAccessToken:(NSString *)accessToken;
- (void)eraseAccessToken;
- (WTUser *)fetchStoredUser;

@end
