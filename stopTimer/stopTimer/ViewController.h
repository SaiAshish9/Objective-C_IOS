#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSTimer *timer;
    int mili,sec,min;
}

@property (strong, nonatomic) IBOutlet UILabel *lblmin;
@property (strong, nonatomic) IBOutlet UILabel *lblmili;
@property (strong, nonatomic) IBOutlet UILabel *lblsec;
- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)split:(id)sender;
- (IBAction)reset:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (strong,nonatomic) NSMutableArray *arrdata;
@property (strong,nonatomic) NSString *strmili;
@property (strong,nonatomic) NSString *strsec;
@property (strong,nonatomic) NSString *strmin;
@property (strong,nonatomic) NSString *strhistory;
@end
