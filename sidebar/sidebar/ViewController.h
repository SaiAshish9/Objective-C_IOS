//
//  ViewController.h
//  sidebar
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
- (IBAction)btnmenu:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *sideview;
@property (weak, nonatomic) IBOutlet UITableView *sidebar;
@end

