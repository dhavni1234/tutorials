//
//  StepperTryController.m
//  dropDownButtonTry
//


#import "StepperTryController.h"

@interface StepperTryController ()

@end

@implementation StepperTryController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblQuantity1.text = @"0";
    self.lblQuantity2.text = @"0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This is used for the real number increment.
- (IBAction)stepperQuantity1:(id)sender {
    self.lblQuantity1.text = [NSString stringWithFormat:@"%d",[[NSNumber numberWithDouble:[(UIStepper *)sender value]]intValue]];
}
// Another alternative way used for float values. (in this we replaced id -> UIStepper* and sender -> stepper.
- (IBAction)stepperQuantity2:(UIStepper *)stepper{
    self.lblQuantity2.text = [NSString stringWithFormat:@"%f",stepper.value];
}
@end
