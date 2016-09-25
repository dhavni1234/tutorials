//
//  ViewController.h
//  FirstApplication
//
//  Created by Bodacious IT Hub on 29/10/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *myLable;

@property (weak, nonatomic) IBOutlet UILabel *lable1;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

-(IBAction)buttonClick:(id)sender;
- (IBAction)newAction:(id)sender;

@end

