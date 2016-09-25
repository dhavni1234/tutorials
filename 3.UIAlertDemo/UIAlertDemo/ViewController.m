//
//  ViewController.m
//  UIAlertDemo
//
//  Created by Bodacious IT Hub on 31/10/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Greetings"
                                                   message:@"Sample Alert View"
                                                  delegate:self
                                         cancelButtonTitle:@"Yes"
                                         otherButtonTitles:@"No",nil];
    alert.tag = 1;
    [alert show];
}

- (IBAction)genderButton:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"What you are"
                                                   message:@"Choose your Gender"
                                                  delegate:self
                                         cancelButtonTitle:@"Male"
                                         otherButtonTitles:@"Female",nil];
    alert.tag = 2;
    [alert show];
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    //NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if(alertView.tag == 1){
        
        if(buttonIndex == 0)
            self.msgLabel.text = @"Yes";
        else
            self.msgLabel.text = @"No";
    }
    else{
        
        if(buttonIndex == 0)
            self.msgLabel.text = @"Male";
        else
            self.msgLabel.text = @"Female";
    }
}

@end
