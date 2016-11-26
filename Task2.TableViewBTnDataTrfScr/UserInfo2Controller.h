//
//  UserInfo2Controller.h
//  TaskTableViewBTnDataTrf
//
// 
//

#import <UIKit/UIKit.h>

@interface UserInfo2Controller : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnGetBack;
- (IBAction)btnGetBack:(id)sender;
@property NSDictionary *userInfoDictOnController2;
@property (weak, nonatomic) IBOutlet UILabel *lblFullName;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UILabel *lblMob;

@end
