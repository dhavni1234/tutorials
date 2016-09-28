//
//  ViewController.h
//  Json
//
//  Created by Matt on 6/21/14.
//  Copyright (c) 2014 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ViewController : UIViewController

- (IBAction)showJson:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *txtFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldPassword;


@end
