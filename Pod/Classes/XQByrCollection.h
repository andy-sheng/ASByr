//
//  XQByrCollection.h
//  Pods
//
//  Created by lxq on 1/4/17.
//
//

#import <Foundation/Foundation.h>

@class XQByrUser;
@interface XQByrCollection : NSObject

@property (nonatomic, strong) XQByrUser *user;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSString* createdTime;

@property (nonatomic, assign) NSString* postTime;

@property (nonatomic, assign) NSString* num;

@property (nonatomic, assign) NSString* gid;

@property (nonatomic, copy) NSString *bname;

@end
