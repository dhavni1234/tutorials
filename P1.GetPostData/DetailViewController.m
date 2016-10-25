//http://stackoverflow.com/questions/26161429/set-uibutton-layer-border-width-and-color-in-interface-builder
//http://stackoverflow.com/questions/13717007/uitextfield-rounded-corner-issue
//  DetailViewController.m
//  Json
//
//

#import "DetailViewController.h"

@interface DetailViewController ()
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //For image view controller circular.
     self.imageView.layer.cornerRadius = self.imageView.frame.size.height /2;
     self.imageView.layer.masksToBounds = YES;
     self.imageView.layer.borderWidth = 0;
    
    self.btnUpdateProfileOutlet.layer.cornerRadius = self.btnUpdateProfileOutlet.frame.size.height /2;
    self.btnUpdateProfileOutlet.layer.masksToBounds = YES;
    self.btnUpdateProfileOutlet.layer.borderWidth = 0;
    
    for (UITextField *txtFieldsOutlets in self.txtFields) {
          txtFieldsOutlets.enabled = NO;
//        txtFieldsOutlets.layer.cornerRadius = 3.0;
//        txtFieldsOutlets.layer.masksToBounds = YES;
        // padding done so that text not touches the border of textfields.
        UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
        txtFieldsOutlets.leftView = paddingView;
        txtFieldsOutlets.leftViewMode = UITextFieldViewModeAlways;
    }
    

    
    
    //Notification data received.
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(triggerAction:) name:@"NotificationMessageEvent" object:nil];
    
}

-(void) triggerAction:(NSNotification *) notification
{
    if ([notification.object isKindOfClass:[NSArray class]])
    {
        NSArray *arr = [notification object]; // here array is taken else either be dictionary acc to req.
        NSString *fullname = [arr[0] valueForKey:@"name"]; // here keys are as per the webservices.
        NSString *userId = [arr[0] valueForKey:@"id"];
        NSString *licenseNumber = [arr[0] valueForKey:@"license_number"];
        NSString *email = [arr[0] valueForKey:@"email"];
        NSString *age = [arr[0] valueForKey:@"age"];
        NSString *sex = [arr[0] valueForKey:@"sex"];
        // To show image.
        NSURL *imageURL = [NSURL URLWithString:[arr[0] valueForKey:@"profile_image"]];
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        UIImage *imageLoad = [[UIImage alloc] initWithData:imageData];
      
        
        self.txtFieldName.text = fullname; // assigning values to the respective labels.
        self.txtFieldUserType.text = userId;
        self.txtFieldLicense.text = licenseNumber;
        self.txtFieldEmail.text = email;
        self.txtFieldAge.text = age;
        self.txtFieldSex.text =  sex;
        self.imageView.image = imageLoad;
        
        /*
         NSURL *imageURL = [NSURL URLWithString:[appsdict objectForKey:@"image"]];
         NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
         UIImage *imageLoad = [[UIImage alloc] initWithData:imageData];
         cell.imageView.image = imageLoad;
         */
    }
    else
    {
        NSLog(@"Error, object not recognised.");
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
        
        //parameters assigning via dictionary.
        NSDictionary *parameter = @{@"name":self.txtFieldName.text,
                                    @"age": self.txtFieldAge.text,
                                    @"sex": self.txtFieldSex.text,
                                    @"user_id":self.txtFieldUserType.text,
                                    
                                    };
        NSLog(@"Cardinals Passed For Edition: %@",parameter); // log to see what is passed.
        
        [manager POST:@"http://192.168.1.92/*/*/*/*" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
            
            NSLog(@"JSON Response Received From Profile: %@", responseObject); // log to see what comes from server.
            
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
@end
