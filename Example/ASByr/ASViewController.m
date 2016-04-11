//
//  ASViewController.m
//  ASByr
//
//  Created by andysheng on 03/12/2016.
//  Copyright (c) 2016 andysheng. All rights reserved.
//

#import "ASViewController.h"

#import "ASByrBase.h"
#import "ASByrArticle.h"
#import "ASByrAttachment.h"
#import "ASByrBlacklist.h"
#import "ASByrBoard.h"
#import "ASByrCollection.h"
#import "ASByrFav.h"
#import "ASByrMail.h"
#import "ASByrSearch.h"
#import "ASByrVote.h"
#import "ASByrWidget.h"

@interface ASViewController ()<ASByrWidgetResponseDelegate>

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ASByrArticle *byrArticle = [[ASByrArticle alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    
    //    [byrArticle postArticleWithBoard:@"StudentQuery" title:@"test" content:@"test" successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    //    [byrArticle deleteArticleWithBoard:@"StudentQuery" aid:5070 successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    //    [byrArticle fetchThreadWithBoard:@"Feeling" aid:2875487 successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    ASByrAttachment *byrAttachment = [[ASByrAttachment alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    
    //    [byrAttachment fetchAttachmentWithBoard:@"StudentQuery" aid:5070 successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    //    [byrAttachment deleteAttachmentWithBoard:@"StudentQuery" aid:5070 file:@"logo.gif" successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    //    [byrAttachment deleteAttachmentWithBoard:@"StudentQuery" file:@"logo.gif" successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    
    ASByrBlacklist *byrBlacklist = [[ASByrBlacklist alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrBlacklist fetchBlacklistWithSuccessBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrBlacklist addBlacklistWithUid:@"dss886" successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrBlacklist deleteBlacklistWithUid:@"dss886" successBlock:^(id result) {
    //        NSLog(@"%@",result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@",result);
    //    }];
    
    
    
    ASByrBoard *byrBoard = [[ASByrBoard alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrBoard fetchRootSectionsWithSuccessBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //         NSLog(@"%@", result);
    //    }];
    
    
    ASByrCollection *byrCollection = [[ASByrCollection alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrCollection fetchCollectionsWithSuccessBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrCollection deleteCollectionWithAid:[@(1723384) stringValue] successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrCollection addCollectionWithBoard:@"Friends" aid:[@(1723384) stringValue] successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    
    ASByrFav *byrFav = [[ASByrFav alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrFav fetchFavsWithLevel:0 successBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrFav addFavWithLevel:0 name:@"AcademicAffairs" dir:0 successBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrFav deleteFavWithLevel:0 name:@"AcademicAffairs" dir:0 successBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    ASByrMail *byrMail = [[ASByrMail alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrMail fetchInboxmailsWithSuccessBlock:^(id result){
    //        NSLog(@"%@", result);
    //    }failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrMail fetchMailInfoWithSuccessBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrMail fetchMailWithBox:ASByrMailInbox num:0 successBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrMail sendMailWithUid:@"andysheng" title:@"test2" content:@"test" signature:YES backup:YES successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrMail replyMailWithBox:ASByrMailInbox num:67 title:@"test2" content:@"test" signature:YES backup:YES successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrMail deleteMailWithBox:ASByrMailInbox num:68 successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    ASByrSearch *byrSearch = [[ASByrSearch alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrSearch searchBoardWithBoard:@"Feeling" successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //    [byrSearch searchThreadsWithBoard:@"Feeling" title1:@"" title2:nil titlen:nil author:nil day:-1 m:-1 a:-1 count:-1 page:1 successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //         NSLog(@"%@", result);
    //    }];
    ASByrVote *byrVote = [[ASByrVote alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
    //    [byrVote fetchVoteListWithCategory:ASByrVoteMe uid:nil successBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    //        [byrVote fetchVoteInfoWithVid:6315 successBlock:^(id result) {
    //           NSLog(@"%@", result);
    //        } failureBlock:^(id result) {
    //            NSLog(@"%@", result);
    //        }];
    //    [byrVote voteWithVid:6315 viids:@[@(37492)] isMulti:NO successBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
    
    ASByrWidget *byrWidget = [[ASByrWidget alloc] initWithAccessToken:@"69cd12db569c410e97eb32d60514d6c5"];
//    byrWidget.responseDelegate = self;
//    [byrWidget fetchTop10];
    //    [byrWidget fetchRecommendWithSuccessBlock:^(id result) {
    //       NSLog(@"%@", result);
    //    } failureBlock:^(id result) {
    //        NSLog(@"%@", result);
    //    }];
//    [byrWidget fetchSectionTopWithSectionNo:3 successBlock:^(id result) {
//        NSLog(@"%@", result);
//    } failureBlock:^(id result) {
//        NSLog(@"%@", result);
//    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)fetchTop10Response:(ASByrResponse *)response {
    NSLog(@"%ld", response.statusCode);
    NSLog(@"%@", response.response);
}
@end
