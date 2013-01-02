//
//  ViewController.m
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import "ViewController.h"
#import "XMLParser.h"
#import "DeatilTweetViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize customImage = _customImage;
@synthesize tweetsTableView;

XMLParser *xmlParser;
UIImage	 *twitterLogo;
CGRect dateFrame;
UILabel *dateLabel;
CGRect contentFrame;
UILabel *contentLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(id)initWithID:(NSString*) findID{
    
    if (self) {
        // Custom initialization
        stringdata=findID;
        finalString = [stringdata stringByAppendingString:@".xml"];
        NSLog(@"%@",finalString);
    }
    return self;
}


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[xmlParser tweets] count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
	Tweet *currentTweet = [[xmlParser tweets] objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        UIImage	 *twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
        
        CGRect imageFrame = CGRectMake(2, 8, 40, 40);
        self.customImage = [[UIImageView alloc] initWithFrame:imageFrame];
        self.customImage.image = twitterLogo;
        self.customImage.tag=0010;
        [cell.contentView addSubview:self.customImage];
        
        CGRect contentFrame = CGRectMake(45, 2, 255, 30);
        UILabel *contentLabel = [[UILabel alloc] initWithFrame:contentFrame];
        contentLabel.tag = 0011;
        contentLabel.numberOfLines = 2;
        contentLabel.font = [UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:contentLabel];
        
        CGRect dateFrame = CGRectMake(45, 40, 255, 10);
        UILabel *dateLabel = [[UILabel alloc] initWithFrame:dateFrame];
        dateLabel.tag = 0012;
        dateLabel.font = [UIFont systemFontOfSize:10];
        [cell.contentView addSubview:dateLabel];
    }
	
	UILabel *contentLabel = (UILabel *)[cell.contentView viewWithTag:0011];
    contentLabel.text = [currentTweet content];
	
	UILabel *dateLabel = (UILabel *)[cell.contentView viewWithTag:0012];
    dateLabel.text = [currentTweet dateCreated];
	
    self.customImage =(UIImageView *)[cell.contentView viewWithTag:0010];
    self.customImage.image =(UIImage *)[currentTweet profilepic];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 55;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Tweet *currentTweet = [[xmlParser tweets] objectAtIndex:indexPath.row];
    DeatilTweetViewController *viewCntr=[[DeatilTweetViewController alloc]initWithObject:currentTweet];
    [self presentViewController:viewCntr animated:YES completion:nil];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *urldata=@"http://api.twitter.com/1/statuses/user_timeline/";
    NSString *finalUrl= [urldata stringByAppendingString:finalString];

    xmlParser = [[XMLParser alloc] loadXMLByURL:finalUrl];
    twitterLogo = [UIImage imageNamed:@"twitter-logo.png"];
    
    self.title = @"Tweets";
}


- (void)viewDidUnload
{
    [self setTweetsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (IBAction)BackToHomeScreen:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
