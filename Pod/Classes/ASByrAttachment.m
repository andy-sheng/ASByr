//
//  ASByrAttachment.m
//  ASByr
//
//  Created by andy on 16/3/8.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ASByrAttachment.h"

@implementation ASByrAttachment

- (ASByrAttachment*)initWithAccessToken:(NSString *)token {
    self = [super initWithAccessToken:token];
    return self;
}

- (void)fetchAttachmentWithBoard:(NSString *)board
                    successBlock:(ASSuccessCallback)success
                    failureBlock:(ASSuccessCallback)failure {
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/%@/", BYR_ATTACHMENT_URL, board] method:HTTP_GET parameters:nil success:success failure:failure];
    
}
- (void)fetchAttachmentWithBoard:(NSString *)board
                             aid:(NSInteger)aid
                    successBlock:(ASSuccessCallback)success
                    failureBlock:(ASSuccessCallback)failure {
    
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/%@/%ld", BYR_ATTACHMENT_URL, board, aid] method:HTTP_GET parameters:nil success:success failure:failure];
    
}

- (void)addAttachmentWithBoard:(NSString *)board
                          file:(NSString *)file
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure {
    
}

- (void)addAttachmentWithBoard:(NSString *)board
                           aid:(NSInteger)aid
                          file:(NSString *)file
                  successBlock:(ASSuccessCallback)success
                  failureBlock:(ASSuccessCallback)failure {
    
}

- (void)deleteAttachmentWithBoard:(NSString *)board
                             file:(NSString *)file
                     successBlock:(ASSuccessCallback)success
                     failureBlock:(ASSuccessCallback)failure {
    NSDictionary *parameters = [NSDictionary dictionaryWithObject:file forKey:@"name"];
    
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/%@/delete/", BYR_ATTACHMENT_URL, board] method:HTTP_POST parameters:parameters success:success failure:failure];
}

- (void)deleteAttachmentWithBoard:(NSString *)board
                              aid:(NSInteger)aid
                             file:(NSString *)file
                     successBlock:(ASSuccessCallback)success
                     failureBlock:(ASSuccessCallback)failure {
    
    NSDictionary *parameters = [NSDictionary dictionaryWithObject:file forKey:@"name"];
    
    [self sendRequestWithUrl:[NSString stringWithFormat:@"%@/%@/delete/%ld", BYR_ATTACHMENT_URL, board, aid] method:HTTP_POST parameters:parameters success:success failure:failure];
}
@end
