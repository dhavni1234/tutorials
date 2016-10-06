//
//  DetailViewController.m
//  Json
//
//  Created by Raghu Bansal on 9/27/16.
//  Copyright © 2016 RWS. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.navigationItem.hidesBackButton = YES; // hides the back button on navigation bar.
       
    NSLog(@"dict val rcvd %@",self.data1);
    
    NSString *fullname = [self.data1 valueForKey:@"fullname"];
    NSString *email = [self.data1 valueForKey:@"email"];
    NSString *title = [self.data1 valueForKey:@"title"];

    
    self.lblFullName.text = fullname;
    self.lblEmail.text = email;
    self.lblTitle.text = title;

   // NSLog(@"Data displayed");


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

@end
