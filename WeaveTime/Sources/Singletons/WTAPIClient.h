//
//  WTAPIClient.h
//  WeaveTime
//
//  Created by Cyril's Mac on 25/05/17.
//  Copyright © 2017 Geoks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WTRequestOperationManager.h"

@protocol WTMapping <NSObject>

+ (NSDictionary *)mapping;

@optional
- (NSDictionary *)serialized;
- (void)deserializationDidEnd;

@end

@interface WTAPIClient : NSObject

@property (strong, nonatomic) NSString *accessToken;
@property (strong, nonatomic) WTRequestOperationManager *requestOperationManager;

+ (WTAPIClient *)sharedClient;
- (void)useAccessToken:(NSString *)accessToken;
- (void)disconnect;

@end
