//
//  ViewController.m
//  API
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURLSessionConfiguration *defaultSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:defaultSessionConfiguration];
    NSURL *url = [NSURL URLWithString:@"https://api.github.com/users"];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];

    NSString *postParams = @"";
//    NSData *postData = [postParams dataUsingEncoding:NSUTF8StringEncoding];
    [urlRequest setHTTPMethod:@"GET"];
//    [urlRequest setHTTPBody:postData];
    NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithRequest:urlRequest completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if(data != nil)
        NSLog(@"Response %@",data);
        
        NSDictionary *results = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        //JSON Parsing....
        NSLog(@"Message %@",results);
//        NSDictionary *results = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
//        NSString *message = results[@"Message"];
    }];
    [dataTask resume];
}


@end
