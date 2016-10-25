//
//  DetailViewController.h
//  Json
//
//  Copyright © 2016 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "AFNetworking.h"


@interface DetailViewController : UIViewController
//TextFields Outlet Collection
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *txtFields;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnOutletCollections;
@property (weak, nonatomic) IBOutlet UIButton *btnChangeImageOutlet;
- (IBAction)btnChangeImage:(id)sender;

//TextFields outlets
@property (weak, nonatomic) IBOutlet UITextField *txtFieldName;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldUserType;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldLicense;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldAge;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldSex;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *btnUpdateProfileOutlet;
- (IBAction)btnUpdateProfile:(id)sender;



@end
