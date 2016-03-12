//
//  ASByrBase.h
//  ASByr
//
//  Created by andy on 16/3/5.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ASByrToken.h"

typedef void (^ASSuccessCallback)(id result);
typedef void (^ASFailureCallback)(id result);

@interface ASByrBase : NSObject

- (instancetype)initWithAccessToken:(NSString*)accessToken;

- (void)sendRequestWithUrl:(NSString *) urlStr
                    method:(NSString *) method
                parameters:(id) parameters
                   success:(ASSuccessCallback) successCallback
                   failure:(ASFailureCallback) failureCallback;

@end
