//
//  ASByrBoard.m
//  ASByr
//
//  Created by andy on 16/3/9.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBoard.h"
#import "ASByrConfig.h"

@implementation ASByrBoard

- (instancetype)initWithAccessToken:(NSString *)token {
    self = [super initWithAccessToken:token];
    return self;
}

- (void)fetchSectionInfoWithName:(NSString *)name
                    successBlock:(ASSuccessCallback)success
                    failureBlock:(ASSuccessCallback)failure {
    NSDictionary *parameters = [NSDictionary dictionaryWithObject:name forKey:@"name"];
    
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/%@", BYR_SECTION_URL, name] method:HTTP_GET parameters:parameters success:success failure:failure];
}

- (void)fetchRootSectionsWithSuccessBlock:(ASSuccessCallback)success
                             failureBlock:(ASSuccessCallback)failure {
    [self sendRequestWithUrl:BYR_SECTION_URL method:HTTP_GET parameters:nil success:success failure:failure];
}

- (void)fetchBoardInfoWithName:(NSString *)name
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure {
    [self fetchBoardInfoWithName:name mode:0 count:30 page:1 successBlock:success failureBlock:failure];
}

- (void)fetchBoardInfoWithName:(NSString *)name
                          page:(NSInteger)page
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure {
    [self fetchBoardInfoWithName:name page:page successBlock:success failureBlock:failure];
}

- (void)fetchBoardInfoWithName:(NSString *)name
                          mode:(NSInteger)mode
                         count:(NSInteger)count
                          page:(NSInteger)page
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure {
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    if (mode >= 0) {
        [parameters setObject:[@(mode) stringValue] forKey:@"mode"];
    }
    if (count > 0) {
        [parameters setObject:[@(count) stringValue] forKey:@"count"];
    }
    if (page > 0) {
        [parameters setObject:[@(page) stringValue] forKey:@"page"];
    }
    
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/%@", BYR_BOARD_URL, name] method:HTTP_GET parameters:parameters success:success failure:failure];
}
@end
