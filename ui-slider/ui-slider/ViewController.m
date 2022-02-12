//
//  ViewController.m
//  ui-slider
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize s1,s2,s3;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)slider:(UISlider *)sender {
    self.view.backgroundColor = [UIColor colorWithRed:s1.value green:s2.value blue:s3.value alpha:1];
}
@end
