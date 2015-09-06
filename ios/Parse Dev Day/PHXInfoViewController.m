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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init {
    if (self = [super init]) {
        self.title = @"Sponsors";
        self.tabBarItem.image = [UIImage imageNamed:@"178-city"];
    }
    return self;
}


-(void) loadView{
//    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
//    self.view = view;
//    self.view.backgroundColor = [UIColor whiteColor];

    //TODO: Get the spologo from the web.
    
    UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Sponsors"]];
    bgView.contentMode = UIViewContentModeScaleToFill;
    self.view = bgView;
    
    
   // [self refreshLogo];
}

//- (void)refreshLogo
//{
//    [PDDSponsors findAllInBackgroundWithBlock:^(NSArray *sponsors, NSError *error) {
//      
//    }];
//}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
