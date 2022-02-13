//
//  ViewController.m
//  sidebar
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL isSideViewOpen;
}
@end

@implementation ViewController
@synthesize sidebar, sideview;

- (void)viewDidLoad {
    [super viewDidLoad];
    sidebar.backgroundColor = [UIColor systemGroupedBackgroundColor];
    sideview.hidden = YES;
    isSideViewOpen = false;
}


- (IBAction)btnmenu:(id)sender {
    sideview.hidden = NO;
    sidebar.hidden = NO;
    [self.view bringSubviewToFront:sideview];
    if(!isSideViewOpen){
        isSideViewOpen = true;
        [sideview setFrame:CGRectMake(0, 200, 0, 487)];
        [sidebar setFrame:CGRectMake(0, 200, 0, 479)];
        [UIView beginAnimations:@"TableAnimation" context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.2];
        [sideview setFrame:CGRectMake(0, 200, 293, 487)];
        [sideview setFrame:CGRectMake(0, 20, 285, 479)];
        [UIView commitAnimations];
    }else{
        isSideViewOpen = false;
        sideview.hidden = YES;
        sidebar.hidden = YES;
        [sideview setFrame:CGRectMake(0, 200,293, 487)];
        [sidebar setFrame:CGRectMake(0, 200, 285, 479)];
        [UIView beginAnimations:@"TableAnimation" context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.2];
        [sideview setFrame:CGRectMake(0, 200, 0, 487)];
        [sidebar setFrame:CGRectMake(0, 200, 0, 479)];
        [UIView commitAnimations];
    }
}
@end
