//
//  ASByrWidget.m
//  ASByr
//
//  Created by andy on 16/3/11.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrWidget.h"
#import "ASByrConfig.h"

@implementation ASByrWidget

- (instancetype)initWithAccessToken:(NSString *)token {
    self = [super initWithAccessToken:token];
    return self;
}

- (void)fetchTop10WithSuccessBlock:(ASSuccessCallback)success
                      failureBlock:(ASSuccessCallback)failure {
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/topten", BYR_WIDGET_URL] method:HTTP_GET parameters:nil success:success failure:failure];
}

- (void)fetchRecommendWithSuccessBlock:(ASSuccessCallback)success
                          failureBlock:(ASSuccessCallback)failure {
   [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/recommend", BYR_WIDGET_URL] method:HTTP_GET parameters:nil success:success failure:failure];
}

- (void)fetchSectionTopWithSectionNo:(NSInteger)section
                      successBlock:(ASSuccessCallback)success
                      failureBlock:(ASSuccessCallback)failure {
   [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/section-%ld", BYR_WIDGET_URL, section] method:HTTP_GET parameters:nil success:success failure:failure];
}

@end
