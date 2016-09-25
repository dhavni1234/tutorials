//
//  ViewController.m
//  ResignFirstReponder
//
//  Created by Bodacious IT Hub on 30/10/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.nameTextField2 becomeFirstResponder]; // Here nameTextField->> textbox name & becomeFirstresponder -> keyword
    // which shows the cursor position to Initial Text Box
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(id)sender {
    
    
    self.greetingLabel.text = [NSString stringWithFormat:@"Welcome %@",self.nameTextField.text];
    
    
    [self.nameTextField resignFirstResponder];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
     self.greetingLabel.text = [NSString stringWithFormat:@"Welcome %@",self.nameTextField.text];
    return YES;
}
@end
