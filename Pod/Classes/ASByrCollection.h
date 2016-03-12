//
//  ASByrCollection.h
//  ASByr
//
//  Created by andy on 16/3/9.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"

@interface ASByrCollection : ASByrBase

- (instancetype)initWithAccessToken:(NSString *)token;

- (void)fetchCollectionsWithSuccessBlock:(ASSuccessCallback)success
                            failureBlock:(ASSuccessCallback)failure;

- (void)fetchCollectionsWithCount:(NSInteger)count
                             page:(NSInteger)page
                     successBlock:(ASSuccessCallback)success
                     failureBlock:(ASSuccessCallback)failure;

- (void)addCollectionWithBoard:(NSString*)board
                           aid:(NSString*)aid
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure;

- (void)deleteCollectionWithAid:(NSString*)aid
                   successBlock:(ASSuccessCallback)success
                   failureBlock:(ASSuccessCallback)failure;
@end
