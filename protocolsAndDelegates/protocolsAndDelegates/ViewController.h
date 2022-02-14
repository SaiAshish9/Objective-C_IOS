//
//  ViewController.h
//  protocolsAndDelegates
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<ABC>

@property (weak, nonatomic) IBOutlet UITextField *txtfirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtfullname;

@end

