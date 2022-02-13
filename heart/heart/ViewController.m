//
//  ViewController.m
//  heart
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btn_act:(UIButton *)sender {
    NSUInteger store = sender.tag;
    for(UIButton *btn in _btn_out){
        if(btn.tag<=store)
            [btn setTitle:@"❤️" forState:UIControlStateNormal];
        else
            [btn setTitle:@"♡" forState:UIControlStateNormal];
    }
}
@end
