//
//  NewPickerController.m
//  dropDownButtonTry
//


#import "NewPickerController.h"

@interface NewPickerController ()
{
    NSArray *genderArray;
    
}

@end

@implementation NewPickerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    genderArray = [[NSArray alloc]initWithObjects:@"Male",@"Female",@"Transgender", nil];
    self.pickerToolBar.hidden = YES;
    self.picker2.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [genderArray count];
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    [self.textField1 setText:[genderArray objectAtIndex:row]];
    NSLog(@"current selection:%@",self.textField1.text);
    }

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    
    return [genderArray objectAtIndex:row];
    
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    // do here everything you want
    NSLog(@"Pressed on TextField!");
    //self.pickerView.hidden = NO;
    //self.pickerToolBar.hidden = NO;
    //self.btnDoneOutlet.hidden = NO;
    
    [self.pickerView reloadAllComponents];
    
    //Needed to prevent keyboard from opening
    [self.view endEditing:YES]; // Hide keyboard
    NSLog(@"****current array**** %@",genderArray);
   
    self.pickerView.frame = CGRectMake(160, 240, 35, 10);
     [self.view addSubview:self.pickerView];
   /* CGRect viewFrame = self.view.frame;
    CGRect pickerHeight = self.pickerView.frame.size.height;//self.pickerView.frame.size.height;
    // assume you have an outlet called picker
    CGRect pickerFrame = CGRectMake(0.0, viewFrame.size.height-pickerHeight,
                                    viewFrame.size.width, pickerHeight);
    self.pickerView.frame = pickerFrame;*/
    
    self.pickerView.showsSelectionIndicator = YES;
    self.textField1.inputView = self.pickerView;
    
    
    return NO;
}
- (IBAction)pickerButtonAction:(id)sender {
    self.picker2.hidden = YES;
    self.pickerToolBar.hidden = YES;

}

//Method for the making changes like chamge in for and color of selected row.
//- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
//    UILabel* tView = (UILabel*)view;
//    if (!tView){
//        tView = [[UILabel alloc] init];
//        // Setup label properties - frame, font, colors etc
//        [tView setTextColor: [UIColor whiteColor]];
//        [tView setBackgroundColor:[UIColor clearColor]];
//
//    }
//    // Fill the label text here
//  
//    return tView;
//}
/*- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel *label = (UILabel*) view;
    if (label == nil)
    {
        label = [[UILabel alloc] init];
    }
    
    [label setText:@"Whatever"];
    
    // This part just colorizes everything, since you asked about that.
    
    [label setTextColor:[UIColor whiteColor]];
    [label setBackgroundColor:[UIColor blackColor]];
    CGSize rowSize = [pickerView rowSizeForComponent:component];
    CGRect labelRect = CGRectMake (0, 0, rowSize.width, rowSize.height);
    [label setFrame:labelRect];
    
    return label;
}*/

@end
