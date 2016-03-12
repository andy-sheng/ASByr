//
//  ASByrBoard.h
//  ASByr
//
//  Created by andy on 16/3/9.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"

@interface ASByrBoard : ASByrBase

/**
 *  <#Description#>
 *
 *  @param token byr accesstoken
 *
 *  @return void
 */
- (instancetype)initWithAccessToken:(NSString *)token;

- (void)fetchRootSectionsWithSuccessBlock:(ASSuccessCallback)success
                             failureBlock:(ASSuccessCallback)failure;

- (void)fetchSectionInfoWithName:(NSString*)name
                    successBlock:(ASSuccessCallback)success
                    failureBlock:(ASSuccessCallback)failure;

- (void)fetchBoardInfoWithName:(NSString*)name
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure;

- (void)fetchBoardInfoWithName:(NSString*)name
                          page:(NSInteger)page
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure;

- (void)fetchBoardInfoWithName:(NSString*)name
                          mode:(NSInteger)mode
                         count:(NSInteger)count
                          page:(NSInteger)page
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure;
@end
