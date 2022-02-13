//
//  ViewController.m
//  swipeGestureRecognizer
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize llb1,left,right,up,down;

- (void)viewDidLoad {
    [super viewDidLoad];
    left = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    right = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    up = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];
    down = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(helper:)];

    left.direction = UISwipeGestureRecognizerDirectionLeft;
    right.direction = UISwipeGestureRecognizerDirectionRight;
    up.direction = UISwipeGestureRecognizerDirectionUp;
    down.direction = UISwipeGestureRecognizerDirectionDown;
    
    
    [self.view addGestureRecognizer:left];
    [self.view addGestureRecognizer:right];
    [self.view addGestureRecognizer:up];
    [self.view addGestureRecognizer:down];
}

-(void) helper:(UISwipeGestureRecognizer *)sender{
    if(sender.direction==UISwipeGestureRecognizerDirectionLeft)
        llb1.text =@"Left";
    if(sender.direction==UISwipeGestureRecognizerDirectionRight)
        llb1.text =@"Right";
    if(sender.direction==UISwipeGestureRecognizerDirectionUp)
        llb1.text =@"Up";
    if(sender.direction==UISwipeGestureRecognizerDirectionDown)
        llb1.text =@"Down";
}

@end
