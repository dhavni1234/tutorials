//
//  AlertController.h
//  taskView+Alert
//


#import <UIKit/UIKit.h>
@class AlertController;

@protocol AlertControllerDelegate <NSObject>

- (void)alert:(AlertController *)alertController clickButtonAtIndex:(NSInteger )index;

@end


@interface AlertController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *alertTitle;
@property (weak, nonatomic) IBOutlet UILabel *alertMessage;
@property (weak, nonatomic) NSString *titleString;
@property (weak, nonatomic) NSString *msgString;

@property(nonatomic, strong) id <AlertControllerDelegate> alertDelegate;

+ (void)alertWithTitle:(NSString *)title andMessage:(NSString *)message delegate:(id)delegate alertButtonTitles:(NSArray *)buttons;


@end
