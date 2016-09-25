//
//  SeconViewController.m
//  CustomCellDemo
//
//  Created by Bodacious on 26/11/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "SeconViewController.h"

@interface SeconViewController ()

@end

@implementation SeconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lbl.text = self.labelText;
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
