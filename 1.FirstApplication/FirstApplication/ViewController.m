//
//  ViewController.m
//  FirstApplication
//
//  Created by Bodacious IT Hub on 29/10/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.lable1.text = @"Text Updated";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonClick:(id)sender{
    
    NSLog(@"Button Was Clicked!!");
    
    NSString *str = [self.myTextField text];
    
    int a = [str intValue];
    
    a = a +10;
    
    self.myLable.text = [NSString stringWithFormat:@"New value is %d",a];
    
    NSLog(@"Value from text field is %@",str);
}

- (IBAction)newAction:(id)sender {
    
    UIButton *btn = (UIButton*)sender;
    if(btn.tag == 1){
        NSLog(@"First Was Clicked");
    }
    else{
        NSLog(@"Second Was Clicked!!");
    }
    
    
}

@end
