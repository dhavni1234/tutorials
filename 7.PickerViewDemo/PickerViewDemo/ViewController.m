//
//  ViewController.m
//  PickerViewDemo
//
//  Created by Bijendra Bhati on 17/11/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSArray *colors;
}
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController

#pragma mark ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    colors = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue",@"Yellow",@"Gray", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark IBActions

- (IBAction)getSelectedDate:(id)sender {
    
    
    NSLog(@"Selected Date is %@", self.datePicker.date);
}

#pragma mark PickerViewDataSource Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return colors.count;
    
}

#pragma mark PickerViewDelegate

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return colors[row];
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    
    NSLog(@"Selected Component is %@",colors[row]);
}

@end
