//
//  NewPickerController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface NewPickerController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate> {
    
    //IBOutlet UIToolbar *toolBar;
}

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) IBOutlet UIToolbar *toolBar;

@end
