//
//  ASByrWidget.h
//  ASByr
//
//  Created by andy on 16/3/11.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"

@interface ASByrWidget : ASByrBase

- (instancetype)initWithAccessToken:(NSString *)token;

- (void)fetchTop10WithSuccessBlock:(ASSuccessCallback)success
                      failureBlock:(ASSuccessCallback)failure;

- (void)fetchRecommendWithSuccessBlock:(ASSuccessCallback)success
                          failureBlock:(ASSuccessCallback)failure;

- (void)fetchSectionTopWithSectionNo:(NSInteger)section
                        successBlock:(ASSuccessCallback)success
                        failureBlock:(ASSuccessCallback)failure;


@end
