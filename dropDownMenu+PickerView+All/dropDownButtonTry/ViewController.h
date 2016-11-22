//
//  ViewController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl;
@property (weak, nonatomic) IBOutlet UIView *dropView;
- (IBAction)btnDropDown:(id)sender;
- (IBAction)btnMale:(id)sender;
- (IBAction)btnFemale:(id)sender;
- (IBAction)btnTransgender:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnDropDownOutlet;
@property (weak, nonatomic) IBOutlet UIButton *btnMaleOutlet;
@property (weak, nonatomic) IBOutlet UIButton *btnFemaleOutlet;
@property (weak, nonatomic) IBOutlet UIButton *btnTransgenderOutlet;



@end

