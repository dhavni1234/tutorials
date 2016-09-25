//
//  AnotherViewController.m
//  AudioAndVideoDemo
//
//  Created by Bodacious IT Hub on 14/12/15.
//  Copyright © 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "AnotherViewController.h"

@interface AnotherViewController ()

@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


-(void)setsong:(NSString *)p{
    
    NSLog(@"I have to play the song -> %@",p);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    TableViewController *t = (TableViewController*)segue.destinationViewController;
    t.delegate = self;
}
@end
