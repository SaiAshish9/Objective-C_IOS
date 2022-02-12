#import <UIKit/UIKit.h>

// ctl + click table view and drag to first option select datasource as well as delegate

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(strong, nonatomic) NSMutableArray *arrname;
@property(strong, nonatomic) NSMutableArray *arrsurname;

@end
