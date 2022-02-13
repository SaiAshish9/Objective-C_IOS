//
//  ViewController.h
//  heart
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btn_out;
- (IBAction)btn_act:(UIButton *)sender;

@end

