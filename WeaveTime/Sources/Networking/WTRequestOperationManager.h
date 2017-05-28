//
//  WTRequestOperationManager.h
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface WTRequestOperationManager : AFHTTPRequestOperationManager

- (id)initWithBaseURL:(NSURL *)url;
- (void)useAccessToken:(NSString *)accessToken;

@end
