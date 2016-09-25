//
//  ViewController.h
//  UIAlertDemo
//
//  Created by Bodacious IT Hub on 31/10/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;

- (IBAction)showAlert:(id)sender;

- (IBAction)genderButton:(id)sender;

@end

