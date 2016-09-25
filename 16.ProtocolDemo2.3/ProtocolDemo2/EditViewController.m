//
//  editViewController.m
//  ProtocolDemo2
//
//  Created by Bodacious on 08/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.fnametextfield.text = self.p.firstName;
    self.lnametextfield.text = self.p.lastName;
    self.City.text = self.p.city;
    self.Number.text= self.p.number;
    
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


- (IBAction)donebutton:(id)sender {
    Person *p = [[Person alloc]initWithFName:self.fnametextfield.text LName:self.lnametextfield.text City:self.City.text Number:self.Number.text];
    
    [self.delegate editPerson:p atindex:self.index];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
