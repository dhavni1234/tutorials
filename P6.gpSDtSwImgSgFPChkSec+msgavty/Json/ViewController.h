//
//  ViewController.h
//  Json
//
//  Created by Matt on 6/21/14.
//  Copyright (c) 2014 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

//Outlets for text fields.
@property (weak, nonatomic) IBOutlet UITextField *txtFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldPassword;
// Outlet for login mode.
@property (weak, nonatomic) IBOutlet UILabel *lblLoginMode;
- (IBAction)btnSwitch:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *btnSwitchOutlet;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnCollection;
- (IBAction)showJson:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnOutletJson;
@property (weak, nonatomic) IBOutlet UIButton *btnOutletJsonEmailPassword;
- (IBAction)btnShowJsonEmailPassord:(id)sender;
// Outlet and action for show password.
@property (weak, nonatomic) IBOutlet UIButton *btnCheckBoxOutlet;
- (IBAction)btnCheckBox:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblShowPassword;



@end
