//
//  detailAppDelegate.h
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EnterTweetIDViewController.h"

@interface detailAppDelegate : UIResponder <UIApplicationDelegate>
{
    EnterTweetIDViewController *enterviewController;
}
@property (strong, nonatomic) UIWindow *window;

@end
