//
//  ASByrBoard.h
//  ASByr
//
//  Created by andy on 16/3/9.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"

@protocol ASByrBoardResponseDelegate <NSObject>

@optional

- (void)fetchBoardResponse:(ASByrResponse*) response;

@end

@protocol ASByrBoardResponseReformer <NSObject>

@optional

- (ASByrResponse*)reformBoardResponse:(ASByrResponse*) response;

@end

@interface ASByrBoard : ASByrBase

/**
 *  <#Description#>
 *
 *  @param token byr accesstoken
 *
 *  @return void
 */
@property(nonatomic, weak)id<ASByrBoardResponseDelegate> responseDelegate;

- (instancetype)initWithAccessToken:(NSString *)token;


- (void)fetchBoardWithReformer:(id<ASByrBoardResponseReformer>)reformer boardName:(NSString *)name;

- (void)fetchRootSectionsWithSuccessBlock:(ASSuccessCallback)success
                             failureBlock:(ASSuccessCallback)failure;

- (void)fetchSectionInfoWithName:(NSString*)name
                    successBlock:(ASSuccessCallback)success
                    failureBlock:(ASSuccessCallback)failure;

- (void)fetchBoardDetailInfoWithName:(NSString*)name
                        successBlock:(ASSuccessCallback)success
                        failureBlock:(ASSuccessCallback)failure;

- (void)fetchBoardMainInfoWithName:(NSString*)name
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
