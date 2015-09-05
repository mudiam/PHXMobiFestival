//
//  PDDSponsors.h
//  PHXMobi Festival
//
//  Created by Kiran Mudiam on 9/3/15.
//  Copyright (c) 2015 Parse. All rights reserved.
//

#import <Parse/Parse.h>

@interface PDDSponsors : PFObject<PFSubclassing>
@property (strong, nonatomic) NSString *size;
@property (strong, nonatomic) PFFile *image;

+ (void)findAllInBackgroundWithBlock:(PFArrayResultBlock)resultBlock;

@end



