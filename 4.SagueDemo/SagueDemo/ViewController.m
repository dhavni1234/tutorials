//
//  ViewController.m
//  SagueDemo
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
- (IBAction)btnSecond:(id)sender {
    
    [self performSegueWithIdentifier:@"Third" sender:self];//code for segue from S1 to S2 <clk on segue link>
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    NSLog(@"Segue Identifier is %@",segue.identifier);
    //segue.destinationViewController
    
}

@end
