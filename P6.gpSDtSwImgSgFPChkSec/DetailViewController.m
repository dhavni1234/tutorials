//http://stackoverflow.com/questions/26161429/set-uibutton-layer-border-width-and-color-in-interface-builder
//http://stackoverflow.com/questions/13717007/uitextfield-rounded-corner-issue
//https://www.youtube.com/watch?v=VpPIamkbhUU
//http://useyourloaf.com/blog/privacy-settings-in-ios-10/
//  DetailViewController.m
//  Json
//
//  Copyright © 2016 RWS. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
{
bool checked;  // Global variable is declared for check box.
}
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // button check box border.
    self.btnCheckBoxOutlet.layer.borderColor = [UIColor grayColor].CGColor;
    self.btnCheckBoxOutlet.layer.borderWidth = 1.0;
    
    // view password change hidden.
    self.viewPasswordChange.hidden = YES;
    self.viewBackPasswordChange.hidden = YES;
    self.btnChangeImageOutlet.hidden = YES;
    
    //For image view controller circular.
    NSLog(@"Data received from screen 1 %@",self.detailViewArray);
     self.imageView.layer.cornerRadius = self.imageView.frame.size.height /2;
     self.imageView.layer.masksToBounds = YES;
     self.imageView.layer.borderWidth = 0;
    self.btnUpdateProfileOutlet.layer.cornerRadius = self.btnUpdateProfileOutlet.frame.size.height /2;
    self.btnUpdateProfileOutlet.layer.masksToBounds = YES;
    self.btnUpdateProfileOutlet.layer.borderWidth = 0;
    
    for (UIButton *btn in self.btnOutletCollections) {
        btn.layer.cornerRadius = btn.frame.size.height /2;
        btn.layer.masksToBounds = YES;
        btn.layer.borderWidth = 0;
    
    // For view appearence change Password.
        self.viewPasswordChange.layer.cornerRadius = 5;
        self.viewPasswordChange.layer.masksToBounds = YES;
        self.viewPasswordChange.layer.borderWidth = 1;

        
        
    }
    
    for (UITextField *txtFieldsOutlets in self.txtFields) {
          txtFieldsOutlets.enabled = NO;
        // padding done so that text not touches the border of textfields.
        UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
        txtFieldsOutlets.leftView = paddingView;
        txtFieldsOutlets.leftViewMode = UITextFieldViewModeAlways;
    }
    
    // here keys are as per the webservices.
    NSString *fullname = [self.detailViewArray[0] valueForKey:@"name"];
    NSString *userId = [self.detailViewArray[0] valueForKey:@"id"];
    NSString *licenseNumber = [self.detailViewArray[0] valueForKey:@"license_number"];
    NSString *email = [self.detailViewArray[0] valueForKey:@"email"];
    NSString *age = [self.detailViewArray[0] valueForKey:@"age"];
    NSString *sex = [self.detailViewArray[0] valueForKey:@"sex"];
    
    // To show image.
    NSURL *imageURL = [NSURL URLWithString:[self.detailViewArray[0] valueForKey:@"profile_image"]];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage *imageLoad = [[UIImage alloc] initWithData:imageData];
    
    // Assigning values to the respective labels.
    self.txtFieldName.text = fullname;
    self.txtFieldUserType.text = userId;
    self.txtFieldLicense.text = licenseNumber;
    self.txtFieldEmail.text = email;
    self.txtFieldAge.text = age;
    self.txtFieldSex.text =  sex;
    self.imageView.image = imageLoad;
}

//-(void) triggerAction:(NSNotification *) notification
//{
//    if ([notification.object isKindOfClass:[NSArray class]])
//    //}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




// Performs action when update profile is hitted.
- (IBAction)btnUpdateProfile:(id)sender {
    if ([self.btnUpdateProfileOutlet.titleLabel.text  isEqual: @"Edit Profile"] ) {
        self.btnChangeImageOutlet.hidden = NO;
        for (UITextField *txtFieldsOutlets in self.txtFields) {
            txtFieldsOutlets.enabled = true;
            txtFieldsOutlets.layer.borderColor = [UIColor lightGrayColor].CGColor;
            txtFieldsOutlets.layer.borderWidth = 1.0;
            //txtFieldsOutlets.borderStyle = UITextBorderStyleRoundedRect;
            [self.btnUpdateProfileOutlet setTitle:@"Save" forState:UIControlStateNormal];
            txtFieldsOutlets.textColor = [UIColor blackColor];
           // txtFieldsOutlets.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
            [txtFieldsOutlets setBackgroundColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:1]];
            
            }

    } else {
        self.btnChangeImageOutlet.hidden = YES;
        for (UITextField *txtFieldsOutlets in self.txtFields) {
            txtFieldsOutlets.enabled = true;
            txtFieldsOutlets.layer.borderColor = [UIColor lightGrayColor].CGColor;
            txtFieldsOutlets.layer.borderWidth = 0;
            txtFieldsOutlets.textColor = [UIColor whiteColor];
            txtFieldsOutlets.textColor = [UIColor blackColor];
            [txtFieldsOutlets setBackgroundColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:1]];
            [self.btnUpdateProfileOutlet setTitle:@"Edit Profile" forState:UIControlStateNormal];
            for (UITextField *txtFieldsOutlets in self.txtFields) {
                txtFieldsOutlets.enabled = NO;
            }
            
        }
        // code for posting the data to the server.
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
            //Image upload code start. **s1s**
                NSData *imageData = UIImageJPEGRepresentation(self.imageView.image, 0.5);
            //Image view code stop. **s1e**
        //parameters assigning via dictionary to send to sever for change.
        NSDictionary *parameter = @{@"name":self.txtFieldName.text,
                                    @"age": self.txtFieldAge.text,
                                    @"sex": self.txtFieldSex.text,
                                    @"user_id":self.txtFieldUserType.text,
                                };
        NSLog(@"Cardinals Passed For Edition: %@",parameter); // log to see what is passed.
        //Image upload code start. **s2s**
        AFHTTPRequestOperation *op = [manager POST:@"http://192.168.1.92/*/*/*/*" parameters:parameter constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
            //do not put image inside parameters dictionary as I did, but append it!
            [formData appendPartWithFileData:imageData name:@"profile_image" fileName:@"photo.jpg" mimeType:@"image/jpeg"];
        }
        //Image upload code stop. **s2e**
        success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
            NSLog(@"Success pic uploaded: %@ ***** %@", operation.responseString, responseObject);
//        [manager POST:@"http://192.168.1.92/thatsride/api/registration/profileSetup" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
            
            NSLog(@"What changes took placed in sever data: %@", responseObject); // log to see what comes from server after change.
            
            /*NSArray *dict1 = [responseObject valueForKey:@"data"];
            NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"name"]);
            // NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"email"]);
            
            //notification data passing code.
            [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:dict1];*/
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
            
            
        }];
        [op start]; //For photo upload.
    }
}
// forget password.
- (IBAction)btnForgetPassword:(id)sender {
    self.viewPasswordChange.hidden = NO;
    self.viewBackPasswordChange.hidden = NO;
    self.btnChangeImageOutlet.hidden = YES;


}
 // This button changes the password.
- (IBAction)btnOkChangePassword:(id)sender {
    
    // code for posting the data to the server.
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    //parameters assigning via dictionary to send to sever for change.
    NSDictionary *parameter = @{@"user_id":self.txtFieldUserType.text,
                                @"old_password": self.txtFieldOldPassword.text,
                                @"new_password": self.txtFieldNewPassword.text,
                             };
    NSLog(@"Cardinals Passed For Edition: %@",parameter); // log to see what is passed.
    
    [manager POST:@"http://192.168.1.92/thatsride/api/users/changePassword" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
        
        NSLog(@"What changes took placed in sever data: %@", responseObject); // log to see what comes from server after change.
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        
        
    }];
    // hides the respective view and clears the text field.
    self.viewBackPasswordChange.hidden = YES;
    self.viewBackPasswordChange.hidden = YES;
    self.txtFieldNewPassword.text = @"";
    self.txtFieldOldPassword.text = @"";
    
}

// when password change is cancelled.
- (IBAction)btnCancelChangePassword:(id)sender {
    self.viewPasswordChange.hidden = YES;
    self.viewBackPasswordChange.hidden = YES;
    // Condition to check button upload is visible or not, and display the button according to that. or we can say checking the pre availibility of the button and display according to it.
    if ([self.btnUpdateProfileOutlet.titleLabel.text  isEqual: @"Edit Profile"] ) {
        self.btnChangeImageOutlet.hidden = YES;
    } else {
        self.btnChangeImageOutlet.hidden = NO;

    }

}
// uploading the new image.
- (IBAction)btnChangeImage:(id)sender {
    // Code to change Image.
    ipc= [[UIImagePickerController alloc] init];
    ipc.delegate = self;
    ipc.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
    if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone)
        [self presentViewController:ipc animated:YES completion:nil];
    else
    {
        popover=[[UIPopoverController alloc]initWithContentViewController:ipc];
        [popover presentPopoverFromRect:self.btnChangeImageOutlet.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
}
#pragma mark - ImagePickerController Delegate

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone) {
        [picker dismissViewControllerAnimated:YES completion:nil];
    } else {
        [popover dismissPopoverAnimated:YES];
    }
    self.imageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

// button check box to display password or not.
- (IBAction)btnCheckBox:(id)sender {
    
    if (checked){
        [self.btnCheckBoxOutlet setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
        self.txtFieldOldPassword.secureTextEntry = YES;
        self.txtFieldNewPassword.secureTextEntry = YES;
        checked = NO;
    }else if (!checked){
        [self.btnCheckBoxOutlet setImage:[UIImage imageNamed:@"checkedicon"] forState:UIControlStateNormal];
        self.txtFieldOldPassword.secureTextEntry = NO;
        self.txtFieldNewPassword.secureTextEntry = NO;
        checked = YES;
    }

}
@end
