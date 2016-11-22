//
//  PickerDateTimeController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface PickerDateTimeController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDate;
@property (weak, nonatomic) IBOutlet UIDatePicker *pickerView;
//- (IBAction)btnOnTextFieldDate:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnDone;
- (IBAction)btnDoneAction:(id)sender;
@end
