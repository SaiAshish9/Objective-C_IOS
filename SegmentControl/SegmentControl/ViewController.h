//
//  ViewController.h
//  SegmentControl
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segout;
- (IBAction)segact:(id)sender;

@end

