//
//  ASByrCollection.m
//  ASByr
//
//  Created by andy on 16/3/9.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrCollection.h"
#import "ASByrConfig.h"

@implementation ASByrCollection

- (instancetype)initWithAccessToken:(NSString *)token {
    self = [super initWithAccessToken:token];
    return self;
}

- (void)fetchCollectionsWithSuccessBlock:(ASSuccessCallback)success
                            failureBlock:(ASSuccessCallback)failure {
    [self fetchCollectionsWithCount:30 page:1 successBlock:success failureBlock:failure];
}

- (void)fetchCollectionsWithCount:(NSInteger)count
                             page:(NSInteger)page
                     successBlock:(ASSuccessCallback)success
                     failureBlock:(ASSuccessCallback)failure {
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    if (count > 0) {
        [parameters setObject:[@(count) stringValue] forKey:@"count"];
    }
    if (page > 0) {
        [parameters setObject:[@(page) stringValue] forKey:@"page"];
    }
    [self sendRequestWithUrl:BYR_COLLECTION_URL method:HTTP_GET parameters:parameters success:success failure:failure];
}

- (void)addCollectionWithBoard:(NSString *)board
                           aid:(NSString *)aid
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure {
    NSDictionary *parameters = [NSDictionary dictionaryWithObjectsAndKeys:board, @"board", aid, @"id", nil];
    
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/add", BYR_COLLECTION_URL] method:HTTP_POST parameters:parameters success:success failure:failure];
}

- (void)deleteCollectionWithAid:(NSString *)aid
                   successBlock:(ASSuccessCallback)success
                   failureBlock:(ASSuccessCallback)failure {
    NSDictionary *parameters = [NSDictionary dictionaryWithObject:aid forKey:@"id"];
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/delete", BYR_COLLECTION_URL] method:HTTP_POST parameters:parameters success:success failure:failure];
}
@end
