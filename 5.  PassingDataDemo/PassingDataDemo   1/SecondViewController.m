//
//  SecondViewController.m
//  PassingDataDemo
//
//  Created by Bodacious IT Hub on 02/11/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtData;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lbl.text = [NSString stringWithFormat:@"Welcome %@",self.userName];
    
    
    [self.navigationController.navigationBar setHidden:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnSetDataClick:(id)sender {
    
    [self.delegate setData:self.txtData.text];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
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
