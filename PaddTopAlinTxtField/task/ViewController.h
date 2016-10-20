//
//  ViewController.h
//  task
//
//  Created by TechReviews on 10/17/16.
//  Copyright © 2016 xtremer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtFieldUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldMessage;

@property (weak, nonatomic) IBOutlet UIButton *btnMessageMeOutlet;

- (IBAction)btnMessageMe:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldOutlets;

@end

