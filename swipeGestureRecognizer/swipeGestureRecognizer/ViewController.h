//
//  ViewController.h
//  swipeGestureRecognizer
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *llb1;
@property (strong, nonatomic) UISwipeGestureRecognizer *left;
@property (strong, nonatomic) UISwipeGestureRecognizer *right;
@property (strong, nonatomic) UISwipeGestureRecognizer *up;
@property (strong, nonatomic) UISwipeGestureRecognizer *down;

@end

