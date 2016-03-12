//
//  ASByrArticle.h
//  ASByr
//
//  Created by andy on 16/3/6.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrBase.h"

@interface ASByrArticle : ASByrBase

- (ASByrArticle *)initWithAccessToken:(NSString *)token;

- (void)fetchArticleWithBoard:(NSString *)board
                          aid:(NSInteger)aid
                 successBlock:(ASSuccessCallback)success
                 failureBlock:(ASSuccessCallback)failure;

- (void)fetchArticleWithBoard:(NSString *)board
                          aid:(NSInteger)aid
                         mode:(NSString *)mode
                 successBlock:(ASSuccessCallback)success
                 failureBlock:(ASSuccessCallback)failure;

- (void)fetchThreadWithBoard:(NSString *)board
                         aid:(NSInteger)aid
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASFailureCallback)failure;

- (void)fetchThreadWithBoard:(NSString *)board
                         aid:(NSInteger)aid
                        page:(NSInteger)page
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASFailureCallback)failure;

- (void)fetchThreadWithBoard:(NSString *)board
                         aid:(NSInteger)aid
                          au:(NSString *)au
                       count:(NSInteger)count
                        page:(NSInteger)page
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASFailureCallback)failure;

- (void)postArticleWithBoard:(NSString *)board
                      title:(NSString *)title
                     content:(NSString *)content
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASFailureCallback)failure;

- (void)postArticleWithBoard:(NSString *)board
                      title:(NSString *)title
                    content:(NSString *)content
                        reid:(NSInteger)reid
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASFailureCallback)failure;

- (void)forwardArticleWithBoard:(NSString *)board
                            aid:(NSInteger)aid
                         target:(NSString*)target
                   successBlock:(ASSuccessCallback)success
                   failureBlock:(ASFailureCallback)failure;

- (void)forwardArticleWithBoard:(NSString *)board
                            aid:(NSInteger)aid
                         target:(NSString*)target
                        threads:(BOOL)threads
                         noref:(BOOL)noref
                          noatt:(BOOL)noatt
                         noansi:(BOOL)noansi
                           big5:(BOOL)big5
                   successBlock:(ASSuccessCallback)success
                   failureBlock:(ASFailureCallback)failure;

- (void)crossAticleWithBoard:(NSString *)board
                         aid:(NSInteger)aid
                      target:(NSString*)target
                successBlock:(ASSuccessCallback)success
                failureBlock:(ASFailureCallback)failure;

- (void)updateArticleWithBoard:(NSString*)board
                           aid:(NSInteger)aid
                         title:(NSString*)title
                       content:(NSString*)content
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASFailureCallback)failure;

- (void)deleteArticleWithBoard:(NSString*)board
                           aid:(NSInteger)aid
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASFailureCallback)failure;

@end
