//
//  EnterTweetIDViewController.h
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterTweetIDViewController : UIViewController<UITextFieldDelegate>
{
    NSString *idString;
    IBOutlet UITextField *tweetIDTextfield;
}
- (IBAction)SubmitTweetID:(id)sender;
@end
