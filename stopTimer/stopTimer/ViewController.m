//
//  ViewController.m
//  stopTimer
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblmin,lblmili,lblsec,strmin,strsec,strmili,strhistory,tableview,arrdata;

- (void)viewDidLoad {
    [super viewDidLoad];
    arrdata = [[NSMutableArray alloc]init];
    mili = 0;
    sec = 0;
    min = 0;
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    NSString *strdata = [arrdata objectAtIndex:indexPath.row];
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    label.text = strdata;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrdata.count;
}

- (IBAction)reset:(id)sender {
    [timer invalidate];
    lblmili.text = @"00";
    lblmin.text = @"00";
    lblsec.text = @"00";
    [arrdata removeAllObjects];
    [tableview reloadData];
}

- (IBAction)split:(id)sender {
    strhistory = [NSString stringWithFormat:@"%@:%@:%@",strmin,strsec,strmili];
    [arrdata addObject:strhistory];
    [tableview reloadData];
}

- (IBAction)stop:(id)sender {
    [timer invalidate];
}

- (IBAction)start:(id)sender {
    timer =[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(helpermethod) userInfo:nil repeats:YES];
}

-(void) helpermethod{
    mili +=1;
    if(mili==100){
        mili=0;
        sec+=1;
        if(sec==60){
            sec=0;
            min+=1;
        }
    }
   strmili =[NSString stringWithFormat:@"%i",mili];
   strmin =[NSString stringWithFormat:@"%i",min];
   strsec =[NSString stringWithFormat:@"%i",sec];
   lblmili.text = strmili;
   lblsec.text = strsec;
   lblmin.text = strmin;
}
@end
