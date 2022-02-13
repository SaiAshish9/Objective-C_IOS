//
//  ViewController.m
//  animatedImage
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timer= [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(helper) userInfo:nil repeats:YES];
}

-(void) helper {
    _img.center = CGPointMake(_img.center.x, _img.center.y+5);
}

@end
