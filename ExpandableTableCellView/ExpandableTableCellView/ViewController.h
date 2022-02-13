//
//  ViewController.h
//  ExpandableTableCellView
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (strong,nonatomic) NSMutableArray *arrrow;
@property (strong,nonatomic) NSMutableArray *arrtitle;
@property (strong,nonatomic) NSMutableArray *arrfruit;
@property int selectedIndex;
@end

