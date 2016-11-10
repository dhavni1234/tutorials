//
//  ViewController.h
//  taskView+Alert
//

#import <UIKit/UIKit.h>
#import "AlertController.h"

@interface ViewController : UIViewController<AlertControllerDelegate>

@property (strong, nonatomic) IBOutlet UIView *controllerView;
@property (weak, nonatomic) IBOutlet UIView *ViewAlert;
@property (weak, nonatomic) IBOutlet UILabel *lblAlert;
@property (weak, nonatomic) IBOutlet UILabel *lblTextMatter;


@end

