//
//  VisualEffectTryController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface VisualEffectTryController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *imageView;
- (IBAction)btnHide:(id)sender;
@property (weak, nonatomic) IBOutlet UIVisualEffectView *visualEffect;
- (IBAction)btnBlurShow:(id)sender;

@end
