//
//  Tweet.h
//  GetFeed
//
//  Created by Shreekant Pawar on 27/12/12.
//  Copyright (c) 2012 Shreekant Pawar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)NSString *screen_name;
@property (strong, nonatomic)NSString *content;
@property (strong, nonatomic)NSString *dateCreated;
@property (strong, nonatomic)UIImage *profilepic;
@end
