//
//  ViewController.m
//  SegmentControl
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize segout,img;
- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)segact:(id)sender {
    switch (self.segout.selectedSegmentIndex) {
        case 0:
            self.img.image = [UIImage imageNamed:@"profile-pic.jpeg"];
            break;
        case 1:
            self.img.image = [UIImage imageNamed:@"lambda-test.png"];
            break;
        case 2:
            self.img.image = [UIImage imageNamed:@"profile-pic.jpeg"];
            break;
        case 3:
            self.img.image = [UIImage imageNamed:@"lambda-test.png"];
            break;
        default:
            break;
    }
}
@end
