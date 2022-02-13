//
//  ViewController.m
//  gif
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize img;

- (void)viewDidLoad {
    [super viewDidLoad];
    img.animationImages = [
    [NSArray alloc]initWithObjects:
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    [UIImage imageNamed:@"gif.gif"],
    nil
    ];
    [img setAnimationRepeatCount:0];
    img.animationDuration = 2;
    [img startAnimating];
}


@end
