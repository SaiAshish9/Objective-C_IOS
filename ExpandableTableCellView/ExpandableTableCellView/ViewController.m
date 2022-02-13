//
//  ViewController.m
//  ExpandableTableCellView
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import "ViewController.h"
#import "Expanding Cell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize arrrow,arrfruit,arrtitle,tableview,selectedIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
    selectedIndex=-1;
    arrrow=[[NSMutableArray alloc]init];
    for(int i=0;i<=8;i++){
        NSString *string = [[NSString alloc]initWithFormat:@"Row %i",i];
        [arrrow addObject:string];
    }
    arrtitle = [[
                 NSMutableArray alloc
    ]initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i", nil];
    arrfruit = [[
                 NSMutableArray alloc
    ]initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i", nil];
    arrtitle = [[
                 NSMutableArray alloc
    ]initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    Expanding_Cell *cell = (Expanding_Cell *)[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"cell"];
    if(cell==nil){
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"Expanding Cell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.lblrow.text = arrrow[indexPath.row];
    cell.lblfruit.text = arrfruit[indexPath.row];
    cell.lblrowtitle.text = arrtitle[indexPath.row];
    int cal = (indexPath.row + 1) * 25;
    cell.lblcalcal.text =[NSString stringWithFormat:@"%i",cal];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrtitle.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(selectedIndex==indexPath.row) return 100;
    else return 44;;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(selectedIndex==indexPath.row){
        selectedIndex = -1;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    if(selectedIndex==-1){
        NSIndexPath *prev = [NSIndexPath indexPathForRow:selectedIndex inSection:0];
        selectedIndex = indexPath.row;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:prev] withRowAnimation:UITableViewRowAnimationFade];
    }
    selectedIndex = indexPath.row;
    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end
