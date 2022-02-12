//
//  ViewController.h
//  ui-slider
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *s1;
@property (weak, nonatomic) IBOutlet UISlider *s2;
@property (weak, nonatomic) IBOutlet UISlider *s3;

- (IBAction)slider:(UISlider *)sender;

@end
