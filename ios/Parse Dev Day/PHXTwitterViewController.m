//
//  PHXTwitterViewController.m
//  PHXMobi Festival
//
//  Created by Kiran Mudiam on 9/11/14.
//  Copyright (c) 2014 Parse. All rights reserved.
//

#import "PHXTwitterViewController.h"


@implementation PHXTwitterViewController{
    
    __weak IBOutlet UIWebView *_twitterWebView;
    
    __weak IBOutlet UIBarButtonItem *backBarButton;
    __weak IBOutlet UIBarButtonItem *spacer1BarButton;
    __weak IBOutlet UIBarButtonItem *stopBarButton;
    __weak IBOutlet UIBarButtonItem *spacer2BarButton;
    __weak IBOutlet UIBarButtonItem *refreshBarButton;
    __weak IBOutlet UIBarButtonItem *spacer3BarButton;
    __weak IBOutlet UIBarButtonItem *fwdBarButton;

}
- (id)init {
    if (self = [super init]) {
        self.title = @"#phxmobi";
        self.tabBarItem.image = [UIImage imageNamed:@"498-twitter"];
        
    }
    return self;
}


-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSURLRequest *url =  [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://phxmobifestival.parseapp.com/twitter.html"]];
    [_twitterWebView loadRequest:url];
    self.toolbarItems = @[backBarButton,spacer1BarButton,stopBarButton,spacer2BarButton,refreshBarButton,spacer3BarButton,fwdBarButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
