//
//  secondViewController.m
//  CollectionView
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "secondViewController.h"
#import "ViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController
@synthesize strimg, image2 ;

- (void)viewDidLoad {
    [super viewDidLoad];
    image2.image = [UIImage imageNamed:strimg];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
