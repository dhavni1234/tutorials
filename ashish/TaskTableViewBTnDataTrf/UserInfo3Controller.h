//
//  UserInfo3Controller.h
//  TaskTableViewBTnDataTrf
//
//  
//

#import <UIKit/UIKit.h>

@interface UserInfo3Controller : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnGetBackOutlet;
- (IBAction)btnGetBAck:(id)sender;
@property NSDictionary *userInfoDictOnController3;
@property (weak, nonatomic) IBOutlet UILabel *lblFullName;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UILabel *lblMob;

@end
