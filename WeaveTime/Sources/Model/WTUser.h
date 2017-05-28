//
//  WTUser.h
//  WeaveTime
//
//  Created by Cyril's Mac on 26/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WTUser : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

@property (strong, nonatomic) NSURL *profilePictureURL;

@property (strong, nonatomic) NSString *accessToken;

- (BOOL)isLoggedIn;

@end
