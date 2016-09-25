//
//  ViewController.m
//  UserDefaultsDemo
//
//  Created by Bodacious on 09/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *btnSound;
@property (weak, nonatomic) IBOutlet UISwitch *btnSync;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setState];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnSound:(id)sender {
    
    UISwitch *s = (UISwitch*)sender;
    
    BOOL stauts = s.on;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setBool:stauts forKey:@"sound"];
    
    [userDefaults synchronize];
}

- (IBAction)btnSync:(id)sender {
    
    UISwitch *s = (UISwitch*)sender;
    
    BOOL stauts = s.on;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setBool:stauts forKey:@"sync"];
    
    [userDefaults synchronize];
}
- (IBAction)sliderMoved:(id)sender {
    
    UISlider *s = (UISlider*)sender;
    
    int value = (int)s.value;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setInteger:value forKey:@"syncDur"];
    [userDefaults synchronize];
    
}

-(void)setState{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    BOOL soundOn = [userDefaults boolForKey:@"sound"];
    BOOL syncOn = [userDefaults boolForKey:@"sync"];
    int value = (int)[userDefaults integerForKey:@"syncDur"];
    
    self.btnSound.on = soundOn;
    self.btnSync.on = syncOn;
    self.slider.value = value;
    
    
}


@end
