//
//  PHXInfoViewController.m
//  PHXMobi Festival
//
//  Created by Kiran Mudiam on 9/6/14.
//  Copyright (c) 2014 Parse. All rights reserved.
//

#import "PHXInfoViewController.h"
#import "PDDSponsors.h"

@interface PHXInfoViewController ()

@end

@implementation PHXInfoViewController

- (id)init {
    if (self = [super init]) {
        self.title = @"Sponsors";
        self.tabBarItem.image = [UIImage imageNamed:@"178-city"];
    }
    return self;
}

-(void) loadView{
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"BG"]];
    bgView.frame = view.bounds;
    bgView.contentMode = UIViewContentModeCenter;
    [view addSubview:bgView];
    
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:view.bounds];
    [backgroundImageView setImage:[UIImage imageNamed:@"Sponsors_v3.gif"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFit;
    [view addSubview:backgroundImageView];
    
    self.view = view;
}

@end
