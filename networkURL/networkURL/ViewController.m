//
//  ViewController.m
//  networkURL
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)btn:(id)sender {
    _img.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[
    NSURL URLWithString:@"https://lh3.google.com/u/5/ogw/ADea4I6UW5E-Cv6MrdoHol9xpICxyE6K1clvnUDiqKY_=s192-c-mo"                                      ]]];
}
@end
