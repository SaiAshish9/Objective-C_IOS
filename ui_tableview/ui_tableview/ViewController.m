//
//  ViewController.m
//  ui_tableview
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize arrname, arrsurname;

- (void)viewDidLoad {
    [super viewDidLoad];
    arrname = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"6",@"7",@"8", nil];
    arrsurname = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"6",@"7",@"8", nil];
    // Do any additional setup after loading the view.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [arrname objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [arrsurname objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrname.count;
}

@end
