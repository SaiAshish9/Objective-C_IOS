//
//  ViewController.m
//  pdf
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *strpath = [[NSBundle mainBundle]pathForResource:@"pdf" ofType:@"pdf"];
    NSURL *url = [NSURL URLWithString:strpath];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [_webview loadRequest:request];
    [_webview setScalesPageToFit:YES];
}


@end
