//
//  PDDSlot.m
//  Parse Dev Day
//
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import "PDDSlot.h"

#import <Parse/PFObject+Subclass.h>

@implementation PDDSlot

@dynamic startTime;
@dynamic endTime;
@dynamic talks;
@dynamic visibility;

+ (NSString *)parseClassName {
    return @"Slot";
}

@end
