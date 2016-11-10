//
//  ViewController.h
//  swipeScreen
//


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
- (IBAction)btnPreviousImage:(id)sender;
- (IBAction)btnNextImage:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet UIButton *btnPreviousOutlet;
@property (weak, nonatomic) IBOutlet UIButton *btnNextOutlet;
- (IBAction)swipeGesture:(UIGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;



@end

