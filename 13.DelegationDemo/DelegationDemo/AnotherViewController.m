//
//  AnotherViewController.m
//  DelegationDemo
//
//  Created by Bodacious on 01/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "AnotherViewController.h"

@interface AnotherViewController ()

@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nametxt.text = self.someText; //This code is for data load on screen AVC from VC textfield via property.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(id)sender {
    
    //[self.delegate sampleMethod];
    
    [self.delegate setName:self.nametxt.text]; //This code is for data trf from AVC to VC + screen change AVC to VC
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
