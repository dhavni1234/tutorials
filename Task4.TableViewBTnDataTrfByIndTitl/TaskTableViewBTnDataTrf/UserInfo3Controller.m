//
//  UserInfo3Controller.m
//  TaskTableViewBTnDataTrf
//
// 
//

#import "UserInfo3Controller.h"

@interface UserInfo3Controller ()

@end

@implementation UserInfo3Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"View Loaded: UserInfo3");
    NSLog(@"Data Received:%@",self.userInfoDictOnController3);
    
    NSString *firstName = [self.userInfoDictOnController3 valueForKey:@"firstName"];
    NSString *lastName = [self.userInfoDictOnController3 valueForKey:@"lastName"];
    self.lblFullName.text = [NSString stringWithFormat:@"%@ %@",firstName, lastName];
    self.lblCity.text = [self.userInfoDictOnController3 valueForKey:@"city"];
    self.lblMob.text = [self.userInfoDictOnController3 valueForKey:@"mob"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnGetBAck:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
