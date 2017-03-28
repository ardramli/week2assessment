//
//  WebViewController.m
//  Week2Assessment - Ard
//
//  Created by ardMac on 27/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "WebViewController.h"
#import "Products.h"
#import "ProductDetailViewController.h"


@interface WebViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
//@property (strong,nonatomic) NSString *productURL;//no need

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView.delegate = self;
   // [self.productURL isEqualToString:self.selectedURL.url]; //no need
    [self loadURL];
    // Do any additional setup after loading the view.
}

-(void)loadURL {
    
    //if airpods, show wiki page airpods
    
    NSURL *URL = [NSURL URLWithString:self.selectedURL.url];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    
    [self.webView loadRequest:request];
    
    //else if, apple watch, show wiki page apple watch
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}


@end
