
//
//  WTUser.m
//  WeaveTime
//
//  Created by Cyril's Mac on 26/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTUser.h"

@implementation WTUser

- (BOOL)isLoggedIn {
    return (self.accessToken != nil && [self.accessToken isEmpty] == NO);
}

@end
