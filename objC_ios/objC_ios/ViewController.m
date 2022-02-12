#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)login:(UIButton *)sender {
    self.view.backgroundColor = [UIColor whiteColor];
    
//  Playground
    
//  NSArray
//  NSArray *array = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",nil];
//  NSLog(@"%@",array);
//  NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4"];
//  [array addObject:@"5"];
//  [array insertObject:@"6",atIndex:0];
//  [array removeObject:@"1"];
//  [array removeObjectAtIndex:1];
//  [array removeLastObject];
//  [array removeAllObjects];
//  NSLog(@"%@",array);
    
//  NSString
//  NSString *s = @"1";
//  s = @"2";
//  NSLog("%@",s);
//  NSMutableString *s1 = [[NSMutableString alloc]initWithString@"abcd"];
//  [s1 appendString:@"1"];
//  [s1 insertString:@"1",atIndex:2];
//  [s1 replaceCharactersInRange:NSMakeRange(9,0),withString:@"Replace"];
//  [s1 deleteCharactersInRange:NSMakeRange(9,7)];
//  NSLog("%@",s);

//  NSDictionary
//  NSDictionary * d = [[NSDictionary alloc]initWithObjectsAndKeys:"@1","@2",nil];
//  NSLog("%@",d);
//  NSMutableDictionary * d1 = [[NSMutableDictionary
//  alloc]initWithObjectsAndKeys:"@1","@2",nil];
//  [d1 setObject:"@1" forKey:@"1"];
//  [d1 removeObjectForKey:"@1"];
//  NSLog("%@",d);
    
//  NSMutableArray *keys = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",nil];
//  NSMutableArray *values = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",nil];
//  NSMutableDictionary * d1 = [[NSMutableDictionary
//  alloc]initWithObjects:keys forKeys:values];
//  NSMutableArray *arr = [[NSArray alloc]initWithObjects:d1,d1,d1,d1,nil];
}
@end
