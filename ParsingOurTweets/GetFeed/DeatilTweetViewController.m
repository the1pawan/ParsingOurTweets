//
//  DeatilTweetViewController.m
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import "DeatilTweetViewController.h"
#import "EnterTweetIDViewController.h"
#import "ViewController.h"
@interface DeatilTweetViewController ()

@end

@implementation DeatilTweetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    name.text=detailObj.name;
    userName.text=detailObj.screen_name;
    tweet.text=detailObj.content;
    profilePic.image=detailObj.profilepic;
    tweetTime.text=detailObj.dateCreated;
    idString=detailObj.screen_name;
    // Do any additional setup after loading the view from its nib.
}

-(id)initWithObject:(Tweet*) showObj{
    if (self) {
        detailObj=showObj;
    }
    return self;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    if (item==tweetView) {
        ViewController *viewCntr=[[ViewController alloc]initWithID:idString];
        [self presentViewController:viewCntr animated:YES completion:nil];
    }
    else if (item==homeView) {
        EnterTweetIDViewController *searchViewCntr=[[EnterTweetIDViewController alloc]initWithNibName:@"EnterTweetIDViewController" bundle:nil];
        [self presentViewController:searchViewCntr animated:YES completion:nil];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
