//
//  ASByrUser.h
//  ASByr
//
//  Created by andy on 16/3/11.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"

@interface ASByrUser : ASByrBase

- (instancetype)initWithAccessToken:(NSString *)token;

- (void)fetchUserInfoWithSuccessBlock:(ASSuccessCallback)success
                         failureBlock:(ASSuccessCallback)failure;

- (void)fetchUserInfoWithUid:(NSString*)uid
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASSuccessCallback)failure;
@end
