//
//  ViewController.m
//  ThreadDemo
//
//  Created by Bodacious on 12/17/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lbl;

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
- (IBAction)btnClick:(id)sender {
    
    self.lbl.text = @"Processing...";
    
    //[self someBulkyTask];

    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(someBulkyTask) object:nil];
    [thread start];
    
    //@selector is used because
    
    
  
}

-(void)someBulkyTask{
    
    
    [NSThread sleepForTimeInterval:2.0]; // timer 
    
    NSLog(@"Task Completed");
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
        
        self.lbl.text = @"Process Completed !!";
        
    }];
    
    
    
    
    
}

@end
