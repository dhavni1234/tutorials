//
//  StepperTryController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface StepperTryController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblQuantity1;
@property (weak, nonatomic) IBOutlet UILabel *lblQuantity2;
- (IBAction)stepperQuantity1:(UIStepper *)stepper;
- (IBAction)stepperQuantity2:(UIStepper *)stepper;

@end
