//
//  NewPickerController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface NewPickerController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UIPickerView *picker2;
@property (weak, nonatomic) IBOutlet UIToolbar *pickerToolBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *pickerButton;
- (IBAction)pickerButtonAction:(id)sender;

@end
