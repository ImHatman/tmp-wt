//
//  WTRequestOperationManager.m
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import "WTRequestOperationManager.h"
#import "WTAPIClient.h"

@implementation WTRequestOperationManager

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    [self.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [self.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    self.responseSerializer = [AFJSONResponseSerializer serializer];
    [self useAccessToken:[[WTAPIClient sharedClient] accessToken]];
    
    return self;
}

- (void)useAccessToken:(NSString *)accessToken {
    NSLog(@"WeaveTime using Access Token : %@", accessToken);
    
    if (accessToken != nil && [accessToken isEmpty] == NO) {
        [self.requestSerializer setValue:[NSString stringWithFormat:@"OAuth2 %@", accessToken] forHTTPHeaderField:@"Authorization"];
    } else {
        [self.requestSerializer setValue:@"" forHTTPHeaderField:@"Authorization"];
    }
}

@end
