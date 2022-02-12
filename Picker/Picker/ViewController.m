//
//  ViewController.m
//  Picker
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize arrdata,arrdata1,txt1,txt2;

- (void)viewDidLoad {
    [super viewDidLoad];
    arrdata = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    arrdata1 = [[NSMutableArray alloc]initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f", nil];
    // Do any additional setup after loading the view.
}


- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component==0){
        return arrdata.count;
    }else if (component==1){
        return arrdata1.count;
    }
    return component;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component==0){
        return[arrdata objectAtIndex:row];
    }else if (component==1){
        return[arrdata1 objectAtIndex:row];
    }
    return 0;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(component==0){
        self.txt1.text = [arrdata objectAtIndex:row];
    }else if (component==1){
        self.txt2.text = [arrdata1 objectAtIndex:row];
    }
}

@end
