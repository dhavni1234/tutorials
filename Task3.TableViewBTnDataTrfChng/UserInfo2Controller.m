//
//  UserInfo2Controller.m
//  TaskTableViewBTnDataTrf
//
// 

#import "UserInfo2Controller.h"

@interface UserInfo2Controller ()

@end

@implementation UserInfo2Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"View Loaded: UserInfo2");
    NSLog(@"Data Received:%@",self.userInfoDictOnController2);
    
    NSString *firstName = [self.userInfoDictOnController2 valueForKey:@"firstName"];
    NSString *lastName = [self.userInfoDictOnController2 valueForKey:@"lastName"];
    self.lblFullName.text = [NSString stringWithFormat:@"%@ %@",firstName, lastName];
    self.lblCity.text = [self.userInfoDictOnController2 valueForKey:@"city"];
    self.lblMob.text = [self.userInfoDictOnController2 valueForKey:@"mob"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnGetBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
