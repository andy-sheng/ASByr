//
//  ASByrOAth2.h
//  Pods
//
//  Created by andy on 16/4/8.
//
//

#import <Foundation/Foundation.h>
#import "ASByrToken.h"

@interface ASByrOAth2 : NSObject

@property(nonatomic, strong) NSURL * oathUrl;

- (instancetype)initWithAppkey:(NSString*)appkey
                   redirectUri:(NSURL*)url
                       appleId:(NSString*)appleId
                      bundleId:(NSString*)bundleId;

//- (NSDictionary*)parseRedirectUri:(NSString*)url;

- (BOOL)parseRedirectUri:(NSString*)url;

- (BOOL)test:(NSString*)url;

@end