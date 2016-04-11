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


- (instancetype)initWithAccesssToken:(NSString *)accessToken {
    return [self initWithAccesssToken:accessToken refreshToken:nil expiresIn:0];
}

- (instancetype)initWithAccesssToken:(NSString *)accessToken
                        refreshToken:(NSString*)refreshToken
                           expiresIn:(NSInteger)expiresIn {
    self = [super init];
    self.accessToken = accessToken;
    self.refreshToken = refreshToken;
    self.expiresIn = expiresIn;
    
    return self;
}

- (instancetype)initFromStorage {
    self = [super init];
    if (self) {
        self.accessToken  = [[NSUserDefaults standardUserDefaults] objectForKey:ACCESS_TOKEN];
        self.refreshToken = [[NSUserDefaults standardUserDefaults] objectForKey:REFRESH_TOKEN];
        self.expiresIn    = [[NSUserDefaults standardUserDefaults] integerForKey:EXPIRES_IN];
    }
    return self;
}

- (void)saveToken {
    [[NSUserDefaults standardUserDefaults] setObject:self.accessToken forKey:ACCESS_TOKEN];
    [[NSUserDefaults standardUserDefaults] setInteger:self.expiresIn forKey:EXPIRES_IN];
    [[NSUserDefaults standardUserDefaults] setObject:self.refreshToken forKey:REFRESH_TOKEN];
}

- (BOOL)valid {
    if (self.accessToken) {
        return YES;
    }
    return NO;
}

@end
