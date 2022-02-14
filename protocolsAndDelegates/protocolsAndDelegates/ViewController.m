//
//  ViewController.m
//  protocolsAndDelegates
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtfullname,txtfirstname;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
//    runs before initial view is launched
    [txtfirstname resignFirstResponder];
}


- (void)setbgcolor:(nonnull UIColor *)bgcolor {
    txtfullname.backgroundColor = bgcolor;
}

- (void)setlastname:(nonnull NSString *)lastname {
    NSString *mainstr = [NSString stringWithFormat:@"%@ %@",
    txtfirstname.text,lastname
    ];
    txtfullname.text = mainstr;
}

- (void)settxtcolor:(nonnull UIColor *)txtcolor {
    txtfullname.textColor = txtcolor;

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *sec = [segue destinationViewController];
    sec.obj = self;
}

@end
