//
//  ASByrToken.h
//  ASByr
//
//  Created by andy on 16/3/6.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASByrToken : NSObject

@property(strong, nonatomic) NSString *accessToken;
@property(strong, nonatomic) NSString *refreshToken;
@property(assign, nonatomic) NSInteger expiresIn;

- (ASByrToken *)initWithAccesssToken:(NSString *)accessToken
                        refreshToken:(NSString*)refreshToken
                           expiresIn:(NSInteger) expiresIn;

- (ASByrToken *)initWithAccesssToken:(NSString *)accessToken;

@end
