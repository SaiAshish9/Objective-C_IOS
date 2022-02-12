//
//  ViewController.m
//  alert
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)alert:(id)sender {
  [self InformativeAlertWithmsg:@"Please check network connectivity"];
}

-(void) InformativeAlertWithmsg: (NSString * ) msg {
  UIAlertController * alertvc = [UIAlertController alertControllerWithTitle: @ "Security alert"
                                 message: msg preferredStyle: UIAlertControllerStyleAlert
                                ];
  UIAlertAction * action = [UIAlertAction actionWithTitle: @ "Dismiss"
                            style: UIAlertActionStyleDefault handler: ^ (UIAlertAction * _Nonnull action) {
                              NSLog(@ "Dismiss Tapped");
                            }
                           ];
  [alertvc addAction: action];
  [self presentViewController: alertvc animated: true completion: nil];
}

@end
