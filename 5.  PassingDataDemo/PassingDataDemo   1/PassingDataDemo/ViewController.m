//
//  ViewController.m
//  PassingDataDemo
//
//  Created by Bodacious IT Hub on 02/11/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtUserName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController.navigationBar setHidden:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnNextClick:(id)sender {
    [self performSegueWithIdentifier:@"next" sender:self];
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    SecondViewController *destVC = (SecondViewController*)segue.destinationViewController;
    destVC.userName = self.txtUserName.text;
    destVC.delegate = self;
    
    
}

-(void)setData:(NSString *)str{
    
    NSLog(@"I Have Recieved Data = %@",str);
}

@end
