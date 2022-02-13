//
//  ViewController.m
//  navigationController
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btn:(id)sender {
    secondViewController *sec =[self.storyboard instantiateViewControllerWithIdentifier:@"sec"];
    [self.navigationController pushViewController: sec animated:YES];
}
@end
