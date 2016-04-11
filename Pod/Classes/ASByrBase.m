//
//  ASByrBase.m
//  ASByr
//
//  Created by andy on 16/3/5.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"
#import "ASByrConfig.h"
#import "AFNetworking.h"

@interface ASByrBase()

@property(strong, nonatomic) ASByrToken *byrToken;

@end

@implementation ASByrBase


- (instancetype)initWithAccessToken:(NSString*)accessToken {
    self = [super init];
    if (self) {
        self.byrToken = [[ASByrToken alloc] initWithAccesssToken:accessToken ? accessToken : @""];
    }
    return self;
}

- (instancetype)initWithASByrToken:(ASByrToken*)token {
    self = [super init];
    if (self) {
        self.byrToken = token;
    }
    return self;
}

- (void)sendRequestWithUrl:(NSString *)urlStr
                    method:(NSString *)method
                    parameters:(id) parameters
                   success:(ASSuccessCallback)successCallback
                   failure:(ASFailureCallback)failureCallback{
    
    NSMutableDictionary *params = parameters ? [NSMutableDictionary dictionaryWithDictionary:parameters] : [NSMutableDictionary dictionary];
    [params setObject:self.byrToken.accessToken forKey:@"oauth_token"];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:BYR_BASE_URL]];
    if ([method  isEqual: HTTP_GET]) {
        
        [manager GET:[NSString stringWithFormat:@"%@%@", urlStr, RETURN_FORMAT] parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSHTTPURLResponse *response = (NSHTTPURLResponse*)task.response;
            successCallback(response.statusCode, responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSDictionary *json  = [NSJSONSerialization JSONObjectWithData:error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] options:kNilOptions  error:nil];
            NSHTTPURLResponse *response = (NSHTTPURLResponse*)task.response;
            failureCallback(response.statusCode, json);
        }];
    } else {
        
        [manager POST:[NSString stringWithFormat:@"%@%@", urlStr, RETURN_FORMAT] parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSHTTPURLResponse *response = (NSHTTPURLResponse*)task.response;
            successCallback(response.statusCode, responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSDictionary *json  = [NSJSONSerialization JSONObjectWithData:error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] options:kNilOptions  error:nil];
            NSHTTPURLResponse *response = (NSHTTPURLResponse*)task.response;
            failureCallback(response.statusCode, json);
        }];
    }
    
}


@end
