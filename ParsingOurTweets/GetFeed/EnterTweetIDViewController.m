//
//  EnterTweetIDViewController.m
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import "EnterTweetIDViewController.h"
#import "ViewController.h"
@interface EnterTweetIDViewController ()

@end

@implementation EnterTweetIDViewController

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
    tweetIDTextfield.text=@"";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    if (textField==tweetIDTextfield) {
        [tweetIDTextfield resignFirstResponder];
    }
    return YES;
    
}

- (IBAction)SubmitTweetID:(id)sender {
    
    idString=tweetIDTextfield.text;
    ViewController *viewCntr=[[ViewController alloc]initWithID:idString];
    [self presentViewController:viewCntr animated:YES completion:nil];
}
@end
