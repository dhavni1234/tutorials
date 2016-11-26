//
//  PickerDateController.m
//  dropDownButtonTry
//


#import "PickerDateController.h"

@interface PickerDateController ()
{
    //UIDatePicker *datePicker;
}

@end

@implementation PickerDateController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.btnDone.hidden = YES;
    self.pickerView.hidden = YES;
    [self.pickerView addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
        //Needed to prevent keyboard from opening
    [self.view endEditing:YES]; // Hide keyboard
    self.pickerView.hidden = NO;
    self.btnDone.hidden = NO;


    NSLog(@"Text field tapped");

    return NO;
}


- (void)datePickerChanged:(UIDatePicker *)datePicker
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //[dateFormatter setDateFormat:@"dd-MM-yyyy HH:mm"];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSString *strDate = [dateFormatter stringFromDate:datePicker.date];
    self.label.text = strDate;
    self.textFieldDate.text = strDate;
}
    

//- (IBAction)btnOnTextFieldDate:(id)sender {
//    self.pickerView.hidden = NO;
//
//}
- (IBAction)btnDoneAction:(id)sender {
    self.pickerView.hidden = YES;
    self.btnDone.hidden = YES;
}
@end
