//
//  ASByrToken.m
//  ASByr
//
//  Created by andy on 16/3/6.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrToken.h"


@interface ASByrToken()

@end


@implementation ASByrToken


- (ASByrToken *)initWithAccesssToken:(NSString *)accessToken {
    return [self initWithAccesssToken:accessToken refreshToken:nil expiresIn:0];
}

- (ASByrToken *)initWithAccesssToken:(NSString *)accessToken
                        refreshToken:(NSString*)refreshToken
                           expiresIn:(NSInteger)expiresIn {
    self = [super init];
    self.accessToken = accessToken;
    self.refreshToken = refreshToken;
    self.expiresIn = expiresIn;
    
    return self;
}

@end
