//
//  secondViewController.m
//  APIDemo
//
//  Created by ashish on 12/17/15.
//  Copyright © 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
    NSNumber *userid = [self.data objectForKey:@"id"];
    NSString *title = [self.data objectForKey:@"title"];
    NSString *body = [self.data objectForKey:@"body"];
    
    
    self.userid.text = [NSString stringWithFormat:@"%@",userid];
    self.usertitle.text = title;
    self.body.text= body;
    
    NSLog(@"I reached Here");
    
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
