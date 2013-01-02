//
//  ViewController.h
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLParser.h"
#import "Tweet.h"
@interface ViewController : UIViewController
{
    
    NSString *stringdata;
    NSString *finalString;
}

-(id)initWithID:(NSString*) findID;
- (IBAction)BackToHomeScreen:(id)sender;

@property (nonatomic, retain) UIImageView *customImage;
@property (weak, nonatomic) IBOutlet UITableView *tweetsTableView;

@end
