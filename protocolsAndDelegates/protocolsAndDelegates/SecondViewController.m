//
//  SecondViewController.m
//  protocolsAndDelegates
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize txtlastname,obj;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
//    runs before initial view is launched
    [txtlastname resignFirstResponder];
    [self.obj setlastname:txtlastname.text];
}

- (IBAction)btndone:(id)sender {
    [txtlastname resignFirstResponder];
    [self.obj setlastname:txtlastname.text];
    [self.obj setbgcolor:[UIColor orangeColor]];
    [self.obj settxtcolor:[UIColor blackColor]];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
