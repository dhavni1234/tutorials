//
//  UserInfo1Controller.m
//  TaskTableViewBTnDataTrf
//
//

#import "UserInfo1Controller.h"

@interface UserInfo1Controller ()

@end

@implementation UserInfo1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"View Loaded: UserInfo1");
    NSLog(@"Data Received:%@",self.userInfoDictOnController1);
    
    NSString *firstName = [self.userInfoDictOnController1 valueForKey:@"firstName"];
    NSString *lastName = [self.userInfoDictOnController1 valueForKey:@"lastName"];
    self.lblFullName.text = [NSString stringWithFormat:@"%@ %@",firstName, lastName];
    self.lblCity.text = [self.userInfoDictOnController1 valueForKey:@"city"];
    self.lblMob.text = [self.userInfoDictOnController1 valueForKey:@"mob"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnGetBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
