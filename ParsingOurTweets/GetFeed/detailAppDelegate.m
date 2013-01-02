//
//  detailAppDelegate.m
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import "detailAppDelegate.h"

@implementation detailAppDelegate

//To custumize TABBAR background and label color
-(void)changeUI{
//    UIImage *navImage = [[UIImage imageNamed:@"footer.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0) ];
//    
//    [[UINavigationBar appearance] setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
//    
//    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor, [UIFont fontWithName:@"Chalkboard SE" size:0.0], UITextAttributeFont, nil]];
//    
//    UIImage *toolImage = [[UIImage imageNamed:@"footer.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
//    
//    [[UITabBar appearance] setBackgroundImage:toolImage];
        [[UITabBarItem appearance] setTitleTextAttributes:@{ UITextAttributeTextColor : [UIColor blackColor] }
                                         forState:UIControlStateNormal];
        [[UITabBarItem appearance] setTitleTextAttributes:@{ UITextAttributeTextColor : [UIColor blueColor] }
                                         forState:UIControlStateHighlighted];
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    [self changeUI];
    enterviewController=[[EnterTweetIDViewController alloc]initWithNibName:@"EnterTweetIDViewController" bundle:nil];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    

  //  CGRect screenRect = [[UIScreen mainScreen] applicationFrame];

    enterviewController.view.frame=CGRectMake(0,20, screenWidth, screenHeight);
    [self.window addSubview:enterviewController.view];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
