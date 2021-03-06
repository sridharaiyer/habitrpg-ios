//
//  HRPGGGuidelinesViewController.m
//  Habitica
//
//  Created by Phillip Thelen on 18/05/15.
//  Copyright (c) 2015 Phillip Thelen. All rights reserved.
//

#import "HRPGGGuidelinesViewController.h"

@interface HRPGGGuidelinesViewController ()

@property UIWebView *webView;

@end

@implementation HRPGGGuidelinesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [self.view viewWithTag:1];
    NSURL *nsUrl = [NSURL URLWithString:@"https://habitica.com/static/community-guidelines"];
    NSURLRequest *request =
        [NSURLRequest requestWithURL:nsUrl
                         cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData
                     timeoutInterval:30];
    [self.webView loadRequest:request];
}

- (IBAction)dismissGuidelines:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
