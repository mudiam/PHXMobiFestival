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
#import "UIColor+ParseDevDay.h"


@implementation PHXMobiTalkRatingView{
    
    __weak IBOutlet DYRateView *_dyrateView;
    __weak IBOutlet UITextView *_comments;
    __weak IBOutlet UILabel *_commentsLabel;
    
    BOOL _rated;
}

-(id) initWithCoder:(NSCoder *)aDecoder{
    if ((self = [super initWithCoder:aDecoder])){
    }
    return self;
}

-(void) awakeFromNib{
    _comments.delegate = self;
    _dyrateView.delegate = self;
    _dyrateView.editable = YES;
    _dyrateView.backgroundColor = [UIColor clearColor];
    _commentsLabel.textColor = [UIColor pddTextColor];
}

- (void)textViewDidChange:(UITextView *)textView{
    _rated = NO;
}


- (void)rateView:(DYRateView *)rateView changedToNewRate:(NSNumber *)rate{
    _rated = NO;
}

- (void)setRating:(PFObject *)rating
{
    _rating  = rating;
    _comments.text = rating[@"comments"];
    _dyrateView.rate = [rating[@"starrating"] floatValue];
}

- (IBAction)rateItButtonPressed:(id)sender
{
    if (_rated) {
        return;
    }
    

    _rated = true;
    
    PFObject *rating = _rating;
    
    if (!rating)
    {
        rating = [PFObject objectWithClassName:@"Rating"];
        rating[@"talk"] = self.talk;
    }
    
    rating[@"starrating"] = [NSNumber numberWithFloat:_dyrateView.rate];
    rating[@"comments"] = _comments.text;
    
    [rating saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
    {
        //[rating fetch];
        NSMutableDictionary *existing = [NSMutableDictionary dictionaryWithDictionary:[[NSUserDefaults standardUserDefaults] objectForKey:@"ratings"]];
        
        if (!existing){
            existing = [NSMutableDictionary dictionary];
        }
        
        if (![existing.allKeys containsObject:self.talk.objectId])
        {
            existing[self.talk.objectId] = rating.objectId;
            
            [[NSUserDefaults standardUserDefaults] setObject:existing forKey:@"ratings"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Great!" message:@"Thanks for rating this session." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [message show];
    }];
}


@end
