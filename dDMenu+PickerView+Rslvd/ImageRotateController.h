//
//  ImageRotateController.h
//  dropDownButtonTry
//


#import <UIKit/UIKit.h>

@interface ImageRotateController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageForRotation;
- (IBAction)btnUp:(id)sender;
- (IBAction)btnDown:(id)sender;
- (IBAction)btnLeft:(id)sender;
- (IBAction)btnRight:(id)sender;


@end
