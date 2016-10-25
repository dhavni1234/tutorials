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
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
    
    // assigning values to the respective labels.
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



- (IBAction)btnUpdateProfile:(id)sender {
    if ([self.btnUpdateProfileOutlet.titleLabel.text  isEqual: @"Edit Profile"] ) {
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
        
        //parameters assigning via dictionary to send to sever for change.
        NSDictionary *parameter = @{@"name":self.txtFieldName.text,
                                    @"age": self.txtFieldAge.text,
                                    @"sex": self.txtFieldSex.text,
                                    @"user_id":self.txtFieldUserType.text,
                                    
                                    };
        NSLog(@"Cardinals Passed For Edition: %@",parameter); // log to see what is passed.
        
        [manager POST:@"http://192.168.1.92/*/*/*/*" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
            
            NSLog(@"What changes took placed in sever data: %@", responseObject); // log to see what comes from server after change.
            
            /*NSArray *dict1 = [responseObject valueForKey:@"data"];
            NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"name"]);
            // NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"email"]);
            
            //notification data passing code.
            [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:dict1];*/
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
            
            
        }];
        
    }
}

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

@end
