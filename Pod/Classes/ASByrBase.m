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

@property(strong, nonatomic) NSString *accessToken;

@end

@implementation ASByrBase


- (instancetype)initWithAccessToken:(NSString*)accessToken {
    self = [super init];
    if (self) {
        self.accessToken = accessToken ? accessToken : @"";
    }
    return self;
}



- (void)sendRequestWithUrl:(NSString *)urlStr
                    method:(NSString *)method
                    parameters:(id) parameters
                   success:(ASSuccessCallback)successCallback
                   failure:(ASFailureCallback)failureCallback{
    
    NSMutableDictionary *params = parameters ? [NSMutableDictionary dictionaryWithDictionary:parameters] : [NSMutableDictionary dictionary];
    [params setObject:self.accessToken forKey:@"oauth_token"];
    
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

- (void)sendRequestWithUrl:(NSString *)urlStr
                    method:(NSString *)method
                parameters:(id) parameters
                  delegate:(id) delegate
                  callback:(SEL) callback
                  reformer:(id) reformer
                reformFunc:(SEL) reformFunc{
    void (^successBlock)(NSURLSessionDataTask*, id) = ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSHTTPURLResponse *response = (NSHTTPURLResponse*)task.response;
        ASByrResponse *byrResponse = [[ASByrResponse alloc] init];
        byrResponse.statusCode = response.statusCode;
        byrResponse.response   = responseObject;
        if (reformer) {
            byrResponse = [reformer performSelector:reformFunc withObject:byrResponse];
        }
        [delegate performSelector:callback withObject:byrResponse];
    };
    
    void (^failureBlock)(NSURLSessionDataTask*, NSError*) = ^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSDictionary *json  = [NSJSONSerialization JSONObjectWithData:error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey] options:kNilOptions  error:nil];
        NSHTTPURLResponse *response = (NSHTTPURLResponse*)task.response;
        ASByrResponse *byrResponse = [[ASByrResponse alloc] init];
        byrResponse.statusCode = response.statusCode;
        byrResponse.response   = json;
        if (reformer) {
            byrResponse = [reformer performSelector:reformFunc withObject:byrResponse];
        }
        [delegate performSelector:callback withObject:byrResponse];
    };
    
    NSMutableDictionary *params = parameters ? [NSMutableDictionary dictionaryWithDictionary:parameters] : [NSMutableDictionary dictionary];
    [params setObject:self.accessToken forKey:@"oauth_token"];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:BYR_BASE_URL]];
    if ([method  isEqual: HTTP_GET]) {
        [manager GET:[NSString stringWithFormat:@"%@%@", urlStr, RETURN_FORMAT]
          parameters:params
            progress:nil
             success:successBlock
             failure:failureBlock];
    } else {
        [manager POST:[NSString stringWithFormat:@"%@%@", urlStr, RETURN_FORMAT]
           parameters:params
             progress:nil
              success:successBlock
              failure:failureBlock];
    }
    
}


@end
