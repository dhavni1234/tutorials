//
//  PickerViewController.m
//  dropDownButtonTry
//


#import "PickerViewController.h"

@interface PickerViewController ()
{
    NSArray *genderArray;
    NSArray *cityArray;
    NSArray *stateArray;
    NSArray *countryArray;
    NSArray *currentArray;
    UITextField *currentTextField;
}

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    cityArray = [[NSArray alloc]initWithObjects:@"Delhi",@"Mumbai",@"Chennai",@"Jaipur", nil];
    genderArray = [[NSArray alloc]initWithObjects:@"Male",@"Female",@"Transgender", nil];
    stateArray = [[NSArray alloc]initWithObjects:@"Andhra Pradesh",@"Arunachal Pradesh",@"Assam",@"Bihar",@"Chhattisgarh",@"Goa",@"Gujarat",@"Haryana",@"Himachal Pradesh",@"Jammu & Kashmir",@"JJharkhand",@"Karnataka",@"Kerala",@"Madhya Pradesh",@"Maharashtra",@"Manipur",@"Meghalaya",@"Mizoram",@"Nagaland",@"Odisha (Orissa)",@"Punjab",@"Rajasthan",@"Sikkim",@"Tamil Nadu",@"Telangana",@"Tripura",@"Uttar Pradesh",@"Uttarakhand",@"West Bengal",nil];
    countryArray = [[NSArray alloc]initWithObjects:@"Afghanistan",@"Armenia",@"Azerbaijan", @"Bahrain",@"Bangladesh",@"Bhutan",@"Brunei",@"Cambodia",@"China",@"Cyprus",@"Georgia",@"India", @"Indonesia", nil];
    self.pickerView.hidden = YES;
    self.btnDoneOutlet.hidden = YES;
    currentArray = [[NSArray alloc]init];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
    self.pickerView.hidden = YES;
    self.btnDoneOutlet.hidden = YES;
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    currentTextField = textField;
    if (textField == self.textFieldGenderOutlet) {
        currentArray = genderArray;
    }
    if (textField == self.textFieldCityOutlet) {
        currentArray = cityArray;
    }
    if (textField == self.textFieldStateOutlet) {
        currentArray = stateArray;
    }
    if (textField == self.textFieldCountryOutlet) {
        currentArray = countryArray;
    }
    // do here everything you want
    NSLog(@"Pressed on TextField!");
    self.pickerView.hidden = NO;
    self.btnDoneOutlet.hidden = NO;
    
    [self.pickerView reloadAllComponents];
    
    //Needed to prevent keyboard from opening
    [self.view endEditing:YES]; // Hide keyboard
    NSLog(@"****current array**** %@",currentArray);
    return NO;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.pickerView.delegate=self;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [currentArray count];
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{

    [currentTextField setText:[currentArray objectAtIndex:row]];


}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [currentArray objectAtIndex:row];
}

- (IBAction)textFieldGenderAction:(id)sender {
//    self.pickerView.hidden = NO;
//    self.btnDoneOutlet.hidden = NO;

}

- (IBAction)btnDone:(id)sender {
    self.pickerView.hidden = YES;
    self.btnDoneOutlet.hidden = YES;
}

- (IBAction)textFieldCityAction:(id)sender {
}
- (IBAction)textFieldStateAction:(id)sender {
}
@end
