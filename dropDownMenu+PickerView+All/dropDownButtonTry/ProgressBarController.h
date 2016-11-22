//
//  ProgressBarController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface ProgressBarController : UIViewController
@property (nonatomic, weak) IBOutlet UIProgressView *progressBar;


- (IBAction)goPressed:(UIButton *)sender;
@end
