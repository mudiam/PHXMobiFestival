//
//  PHXMobiTalkRatingView.h
//  PHXMobi Festival
//
//  Created by Kiran Mudiam on 9/11/14.
//  Copyright (c) 2014 Parse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DYRateView.h"

@class PDDTalk;

@interface PHXMobiTalkRatingView : UIView <DYRateViewDelegate>
@property (nonatomic,strong) PDDTalk *talk;
@end
