//
//  UserInfo1Controller.h
//  TaskTableViewBTnDataTrf
//
//

#import <UIKit/UIKit.h>

@interface UserInfo1Controller : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnGetBackOutlet;
- (IBAction)btnGetBack:(id)sender;
@property NSDictionary *userInfoDictOnController1;
@property (weak, nonatomic) IBOutlet UILabel *lblFullName;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UILabel *lblMob;

@end
