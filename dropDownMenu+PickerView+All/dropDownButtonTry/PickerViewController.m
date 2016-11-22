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
    NSArray *colorArray;
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
    colorArray = [[NSArray alloc]initWithObjects:@"Red",@"Black",@"Blue",@"Green", nil];
    self.pickerView.hidden = YES;
    self.btnDoneOutlet.hidden = YES;
    currentArray = [[NSArray alloc]init];
    self.imageView.image = [UIImage imageNamed: @"noImage.jpg"];

    
    

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
    if (textField == self.textFieldTextColorOutlet) {
        currentArray = colorArray;
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
// For showing the picker view.
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
    [self ChangeColorOfText];
    NSLog(@"current selection:%@",self.textFieldTextColorOutlet.text);
    [self ChangeColorOfText];
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
   
   
    return [currentArray objectAtIndex:row];

}

-(void)ChangeColorOfText {
    if ([self.textFieldTextColorOutlet.text isEqualToString:@"Red"]){
        self.textFieldTextColorOutlet.textColor = [UIColor redColor];
        self.textFieldCityOutlet.textColor = [UIColor redColor];
        self.textFieldStateOutlet.textColor = [UIColor redColor];
        self.textFieldGenderOutlet.textColor = [UIColor redColor];
        self.textFieldCountryOutlet.textColor = [UIColor redColor];
        //self.controllerView.backgroundColor = [UIColor redColor];
        self.imageView.image = [UIImage imageNamed: @"red.jpg"];

        
    }
    else if ([self.textFieldTextColorOutlet.text isEqualToString:@"Green"]){
        self.textFieldTextColorOutlet.textColor = [UIColor greenColor];
        self.textFieldCityOutlet.textColor = [UIColor greenColor];
        self.textFieldStateOutlet.textColor = [UIColor greenColor];
        self.textFieldGenderOutlet.textColor = [UIColor greenColor];
        self.textFieldCountryOutlet.textColor = [UIColor greenColor];
        //self.controllerView.backgroundColor = [UIColor greenColor];
        self.imageView.image = [UIImage imageNamed: @"green.jpg"];


    }
    else if ([self.textFieldTextColorOutlet.text isEqualToString:@"Blue"]){
        self.textFieldTextColorOutlet.textColor = [UIColor blueColor];
        self.textFieldCityOutlet.textColor = [UIColor blueColor];
        self.textFieldStateOutlet.textColor = [UIColor blueColor];
        self.textFieldGenderOutlet.textColor = [UIColor blueColor];
        self.textFieldCountryOutlet.textColor = [UIColor blueColor];
        //self.controllerView.backgroundColor = [UIColor blueColor];
        self.imageView.image = [UIImage imageNamed: @"blue.jpg"];


    }

    else {
        self.textFieldTextColorOutlet.textColor = [UIColor blackColor];
        self.textFieldCityOutlet.textColor = [UIColor blackColor];
        self.textFieldStateOutlet.textColor = [UIColor blackColor];
        self.textFieldGenderOutlet.textColor = [UIColor blackColor];
        //self.textFieldCountryOutlet.textColor = [UIColor blackColor];
        self.imageView.image = [UIImage imageNamed: @"black.jpg"];

    }
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
