//
//  ViewController.m
//  DelegationDemo
//
//  Created by Bodacious on 01/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

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
-(void)sampleMethod{
    
    NSLog(@"I M the Protocol Method");
    self.textField.text = @"Text Updated";
}
-(void)setName:(NSString *)txt{
    
   self.textField.text = txt;
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    /*id vc = segue.destinationViewController;
    AnotherViewController *aVC = (AnotherViewController*)vc;*/
    
    AnotherViewController *aVC = (AnotherViewController*)segue.destinationViewController;
    aVC.delegate = self;
    
    aVC.someText = self.textField.text;//@"This is text";
    
    
}

@end
