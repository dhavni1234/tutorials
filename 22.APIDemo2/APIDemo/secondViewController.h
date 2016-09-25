//
//  secondViewController.h
//  APIDemo
//
//  Created by ashish on 12/17/15.
//  Copyright © 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *userid;
@property (weak, nonatomic) IBOutlet UILabel *usertitle;
@property (weak, nonatomic) IBOutlet UILabel *body;

@property NSDictionary *data;
@end
