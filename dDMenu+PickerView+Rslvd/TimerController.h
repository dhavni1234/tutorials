//
//  TimerController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface TimerController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIDatePicker *timer;
@property (weak, nonatomic) IBOutlet UIButton *btnStart;
- (IBAction)btnStartAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *controllerView;



@end
