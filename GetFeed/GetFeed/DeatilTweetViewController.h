//
//  DeatilTweetViewController.h
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tweet.h"

@interface DeatilTweetViewController : UIViewController<UITabBarDelegate>
{
    Tweet *detailObj;
    IBOutlet UILabel *name;
    IBOutlet UILabel *userName;
    IBOutlet UILabel *tweet;
    IBOutlet UIImageView *profilePic;
    IBOutlet UILabel *tweetTime;
    IBOutlet UITabBarItem *tweetView;
    IBOutlet UITabBarItem *homeView;
    NSString *idString;
}

-(id)initWithObject:(Tweet*) showObj;


@end
