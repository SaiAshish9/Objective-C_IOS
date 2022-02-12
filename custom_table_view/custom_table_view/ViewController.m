//
//  ViewController.m
//  custom_table_view
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController
//@synthesize arrdata;

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomCell *cell1 = [[CustomCell alloc]init];
    cell1.strimg= @"resume.png";
    cell1.strlb1= @"WildSter";
    cell1.strlb2= @"Organisation";
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"resume.png"]];
//    [self.view addSubview:imageView];
    _arrdata =[[NSMutableArray alloc]initWithObjects:cell1,cell1,cell1,cell1,cell1, nil];
    
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    CustomCell *maincell = [_arrdata objectAtIndex:indexPath.row];
    NSLog(@"%@",maincell.strimg);
    UIImageView *image1 = (UIImageView *)[cell viewWithTag:1];
    image1.image = [UIImage imageNamed:maincell.strimg];
    UILabel *lb1 = (UILabel *)[cell viewWithTag:2];
    lb1.text = maincell.strlb1;
    UILabel *lb2 = (UILabel *)[cell viewWithTag:3];
    lb2.text = maincell.strlb2;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrdata.count;
}

@end
