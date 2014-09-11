//
//  PHXMobiTalkRatingView.m
//  PHXMobi Festival
//
//  Created by Kiran Mudiam on 9/11/14.
//  Copyright (c) 2014 Parse. All rights reserved.
//

#import "PHXMobiTalkRatingView.h"
#import "DYRateView.h"
#import "PDDTalk.h"

@implementation PHXMobiTalkRatingView{
    
    __weak IBOutlet DYRateView *_dyrateView;
    __weak IBOutlet UITextView *_comments;
    
}

-(id) initWithCoder:(NSCoder *)aDecoder{
    if ((self = [super initWithCoder:aDecoder])){
    }
    return self;
}

-(void) awakeFromNib{
    _dyrateView.delegate = self;
    _dyrateView.editable = YES;
}

- (void)rateView:(DYRateView *)rateView changedToNewRate:(NSNumber *)rate{
    NSLog(@"RateViwe %f" ,rate.floatValue);
}

- (IBAction)rateItButtonPressed:(id)sender {
    PFObject *rating = [PFObject objectWithClassName:@"rating"];
    rating[@"talk"] = self.talk ;
    rating[@"starrting"] = [NSNumber numberWithFloat:_dyrateView.rate];
    rating[@"comments"] = _comments.text;
    [rating saveEventually];
}


@end
