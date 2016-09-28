//
//  DetailViewController.h
//  Json
//
//  Created by Raghu Bansal on 9/27/16.
//  Copyright © 2016 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblDob;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet UILabel *lblFullName;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@property NSDictionary *data1;

@end
