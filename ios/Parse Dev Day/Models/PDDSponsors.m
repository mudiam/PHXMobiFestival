//
//  PDDSponsors.m
//  PHXMobi Festival
//
//  Created by Kiran Mudiam on 9/3/15.
//  Copyright (c) 2015 Parse. All rights reserved.
//

#import "PDDSponsors.h"

#import <Parse/PFObject+Subclass.h>

@implementation PDDSponsors
@dynamic size;
@dynamic image;

+ (NSString *)parseClassName {
    return @"sponsors";
}

- (NSString *)size {
    return self.size;
}

+ (void)findAllInBackgroundWithBlock:(PFArrayResultBlock)resultBlock {
    
    PFQuery *query = [PDDSponsors query];

    [query setCachePolicy:kPFCachePolicyNetworkElseCache];
    [query findObjectsInBackgroundWithBlock:^(NSArray *sponsors, NSError *error)
     {
         NSLog( @"%@", sponsors);
     }];
}


@end