//
//  ViewController.h
//  ResignFirstReponder
//
//  Created by Bodacious IT Hub on 30/10/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
- (IBAction)buttonClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField2;

@end

