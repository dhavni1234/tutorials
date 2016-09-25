//
//  AddViewController.m
//  ProtocolDemo2
//
//  Created by Bodacious on 04/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btnBack:(id)sender {
    
    [self.delegate removeAddViewController];
}

- (IBAction)btnDone:(id)sender {
    
    Person *p = [[Person alloc]initWithFName:self.lblFirstName.text LName:self.lblLastName.text City:self.cityName.text Number:self.mobileNumber.text];
    
    [self.delegate addPerson:p];
    
    
    
}
@end
