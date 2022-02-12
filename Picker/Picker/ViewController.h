//
//  ViewController.h
//  Picker
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property(strong,nonatomic) NSMutableArray *arrdata;
@property(strong,nonatomic) NSMutableArray *arrdata1;
@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;

@end

