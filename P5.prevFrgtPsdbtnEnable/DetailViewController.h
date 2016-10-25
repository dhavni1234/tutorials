//http://www.theappguruz.com/blog/ios-image-picker-controller
//  DetailViewController.h
//  Json
//
//  Copyright © 2016 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "AFNetworking.h"


@interface DetailViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

{
    UIImagePickerController *ipc;
    UIPopoverController *popover;
}
@property NSArray *detailViewArray;

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


// Outlets for Image view.
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *btnUpdateProfileOutlet;
@property (weak, nonatomic) IBOutlet UIView *viewPasswordChange;

// button outlet/actions for Change Password.
- (IBAction)btnOkChangePassword:(id)sender;
- (IBAction)btnCancelChangePassword:(id)sender;
- (IBAction)btnUpdateProfile:(id)sender;
- (IBAction)btnForgetPassword:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *viewBackPasswordChange;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldOldPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldNewPassword;



@end
