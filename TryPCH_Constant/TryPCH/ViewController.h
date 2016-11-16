//https://www.tutorialspoint.com/objective_c/objective_c_preprocessors.htm
//http://stackoverflow.com/questions/11153156/define-vs-const-in-objective-c
//http://stackoverflow.com/questions/2845211/ios-prefix-pch-best-practices
//http://sugartin.info/2011/11/02/animation-on-uilable-for-blinking-textshadinginner-shadow-and-gradient-fill/
//  ViewController.h
//  TryPCH
//


#import <UIKit/UIKit.h>
#import "ConstantFile.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblAlert;
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
- (IBAction)btn1:(id)sender;
- (IBAction)btn2:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldNameOutlet;
@property (weak, nonatomic) IBOutlet UITextField *txtField2Outlet;
@property (weak, nonatomic) IBOutlet UIButton *btn1Outlet;
@property (weak, nonatomic) IBOutlet UIButton *btn2Outlet;
@property (weak, nonatomic) IBOutlet UIButton *btn3Outlet;




@end

