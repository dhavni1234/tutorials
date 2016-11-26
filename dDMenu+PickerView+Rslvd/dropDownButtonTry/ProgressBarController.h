//
//  ProgressBarController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface ProgressBarController : UIViewController
@property (nonatomic, weak) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet UILabel *lblDisplay;


- (IBAction)goPressed:(UIButton *)sender;
@end
