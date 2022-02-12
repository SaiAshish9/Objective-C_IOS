//
//  ViewController.h
//  custom_table_view
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(strong, nonatomic) NSMutableArray *arrdata;
@end

