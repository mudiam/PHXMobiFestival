//
//  PDDSpeakerView.m
//  Parse Dev Day
//
//  Copyright (c) 2013 Parse. All rights reserved.
//

#import "PDDSpeakerView.h"
#import "PDDSpeaker.h"
#import "PDDSpeakerButton.h"

#import "UIColor+ParseDevDay.h"
#import "UILabel+ParseDevDay.h"

#import <Parse/Parse.h>

@implementation PDDSpeakerView

- (id)initWithSpeaker:(PDDSpeaker *)speaker {
    if (self = [super initWithFrame:CGRectZero]) {
        self.alwaysBounceVertical = YES;

        UIView *contentView = [UIView new];
        contentView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:contentView];

        PDDSpeakerButton *speakerButton = [[PDDSpeakerButton alloc] initWithSpeaker:speaker];
        speakerButton.enabled = NO;
        [contentView addSubview:speakerButton];

        UILabel *bioLabel = [UILabel autolayoutLabel];
        bioLabel.preferredMaxLayoutWidth = 280;
        bioLabel.numberOfLines = 0;
        bioLabel.font = [UIFont systemFontOfSize:14];
        bioLabel.textColor = [UIColor pddTextColor];
        [contentView addSubview:bioLabel];

        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(contentView)]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(contentView)]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:contentView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];

        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[speakerButton]-20-[bioLabel]-(>=10)-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(speakerButton, bioLabel)]];
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[speakerButton]|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(speakerButton)]];
        [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[bioLabel]-|"
                                                                     options:0
                                                                     metrics:nil
                                                                       views:NSDictionaryOfVariableBindings(bioLabel)]];
        bioLabel.text = speaker.bio;
    }
    return self;
}

@end
