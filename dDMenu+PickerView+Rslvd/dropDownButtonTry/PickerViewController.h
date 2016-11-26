//
//  PickerViewController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textFieldGenderOutlet;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
- (IBAction)textFieldGenderAction:(id)sender;
- (IBAction)btnDone:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnDoneOutlet;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCityOutlet;
- (IBAction)textFieldCityAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldStateOutlet;
- (IBAction)textFieldStateAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCountryOutlet;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTextColorOutlet;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFieldCollectionAll;
@property (strong, nonatomic) IBOutlet UIView *controllerView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;



@end
