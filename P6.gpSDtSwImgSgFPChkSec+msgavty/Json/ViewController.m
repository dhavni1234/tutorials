//
// tutorial links: http://stackoverflow.com/questions/29190682/display-uialertview-on-afhttprequestoperation-failure
//http://stackoverflow.com/questions/20566194/how-to-get-status-code-in-afnetworking
//http://jsonviewer.stack.hu/   to see the structure of data.
//http://stackoverflow.com/questions/37110134/response-in-alert-view  to check response status.
//***** to change the alert view colors: *****
//http://stackoverflow.com/questions/24157694/change-button-title-color-in-uialertview // alert text color.


//  ViewController.m
//  Json
//
//  Created by Matt on 6/21/14.
//  Copyright (c) 2014 RWS. All rights reserved.
// line 215 of AFURLResponseSerialization.m may need editing.

#import "ViewController.h"
#import "AFNetworking.h"



@interface ViewController ()
{
    NSArray *arr1;
    bool checked;  // Global variable is declared for check box.
    NSArray *status;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //dict = [[NSDictionary alloc] init];
//    self.txtFieldEmail.enabled = NO;
//    self.txtFieldPassword.enabled = NO;
    [self setState];
    self.activityIndicator.hidden = YES;

    
    // Login button corner radius.
    for (UIButton *btn in self.btnCollection) {
        btn.layer.cornerRadius = btn.frame.size.height /2;
        btn.layer.masksToBounds = YES;
        btn.layer.borderWidth = 0;
    }
    // button check box border.
    self.btnCheckBoxOutlet.layer.borderColor = [UIColor grayColor].CGColor;
    self.btnCheckBoxOutlet.layer.borderWidth = 1.0;
   
    
    //Switch default appeareance off.
    self.btnSwitchOutlet.on = NO;
    self.txtFieldEmail.hidden = YES;
    self.txtFieldPassword.hidden = YES;
    self.btnOutletJson.frame = CGRectMake(135,273,105,30);
    self.lblLoginMode.text = @"Direct";
    self.btnOutletJsonEmailPassword.hidden = YES;
    self.btnCheckBoxOutlet.hidden = YES;
    self.lblShowPassword.hidden = YES;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Code to remove the keyboard.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}



- (IBAction)showJson:(id)sender {
        //ActivityIndicator code.
    self.activityIndicator.hidden = NO;
    [self.activityIndicator startAnimating];
        // code for posting the data to the server.
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        
        //parameters assigning via dictionary.
    
        NSDictionary *parameter = @{@"email": @"surya@mailinator.com", //email: ram@mailinator.com
                                    @"password": @"123456", // 123456
                                    };
        NSLog(@"Parameter Passed: %@",parameter); // log to see what is passed.
        
    [manager POST:@"http://192.168.1.92/*/*/*/*" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
        
        NSLog(@"JSON Response Received: %@", responseObject); // log to see what comes from server.
        arr1 = [responseObject valueForKey:@"data"];
        status = [responseObject valueForKey:@"status"];
        NSString *statusMessage = [NSString stringWithFormat:@"%@", status];
        NSLog(@"dict1 holds %@", arr1);
        NSLog(@"***Status Message*** %@", status);

       
        
        //Alert for status check then pass the dictionary to other view.
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Login Verification"
                                                                       message:statusMessage
                                                                preferredStyle:UIAlertControllerStyleAlert];
        [alert.view setTintColor:[UIColor redColor]]; //changes the color of button.
        alert.view.layer.cornerRadius = 0.5 * alert.view.bounds.size.width; //changes the corner radius.
        //alert.view.backgroundColor = [UIColor blackColor]; //changes the Background color.
        
//        [alert.view.backgroundColor: [UIColor grayColor]];
        /*
         alert.view.backgroundColor = UIColor.orangeColor()
         alert.view.tintColor = UIColor.orangeColor()
         alert.view.layer.cornerRadius = 0.5 * alert.view.bounds.size.width
         
         */

        //Alert action Replay.
        UIAlertAction *Ok =[UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action){
                                                         [alert dismissViewControllerAnimated:YES completion:nil];
        if ([statusMessage isEqualToString:@"success"]) {
        DetailViewController *dvc = (DetailViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"detailViewTransfer"];
            [self.navigationController pushViewController:dvc animated:YES];
            dvc.detailViewArray = arr1 ;
            NSLog(@"destViewController Array %@", dvc.detailViewArray);
            [self.activityIndicator stopAnimating];
            self.activityIndicator.hidden = YES;
        } else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            [self.activityIndicator stopAnimating];
            self.activityIndicator.hidden = YES;
                }
                                                         
    }];
        
        [alert addAction:Ok];
       
        
        [self presentViewController:alert animated:YES completion:nil];

        
        
            //NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"name"]);
            // NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"email"]);

//notification data passing code.
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:dict1];
            // For Navigation.
       
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
            

        }];
    
   

    

    }

// Here switch control is used to dispaly text in label,and hide textbox.
- (IBAction)btnSwitch:(id)sender {
    UISwitch *swtch = (UISwitch*)sender;
    BOOL state = swtch.on;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:state forKey:@"On/Off"];
    [userDefaults synchronize];
    
    //self.lblLoginMode.text = swtch.on?@"Email & Password":@"Direct";

    if (!swtch.on) {
        self.txtFieldEmail.hidden = YES;
        self.txtFieldPassword.hidden = YES;
        self.btnOutletJson.frame = CGRectMake(135,273,105,30);
        self.lblLoginMode.text = @"Direct";
        self.btnOutletJsonEmailPassword.hidden = YES;
        self.btnOutletJson.hidden = NO;
        self.btnCheckBoxOutlet.hidden = YES;
        self.lblShowPassword.hidden = YES;


    }else {
        self.txtFieldEmail.hidden = NO;
        self.txtFieldPassword.hidden = NO;
        self.btnOutletJsonEmailPassword.frame = CGRectMake(135,380,105,30);
        self.lblLoginMode.text = @"Email & Password";
        self.btnOutletJsonEmailPassword.hidden = NO;
        self.btnOutletJson.hidden = YES;
        self.btnCheckBoxOutlet.hidden = NO;
        self.lblShowPassword.hidden = NO;
        


    }
}

-(void) setState {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    BOOL state = [userDefaults boolForKey:@"On/Off"];
    self.btnSwitchOutlet.on = state;
    
}

// button activated when textfields are activated.
- (IBAction)btnShowJsonEmailPassord:(id)sender {
    // code for posting the data to the server.
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    //parameters assigning via dictionary.
    
    NSDictionary *parameter = @{@"email": self.txtFieldEmail.text, //email: jayant@mailinator.com
                                @"password": self.txtFieldPassword.text, // 123456
                                };
    NSLog(@"Cardinals Passed: %@",parameter); // log to see what is passed.
    
    [manager POST:@"http://192.168.1.92/*/*/*/*" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
        
        NSLog(@"JSON Response Received: %@", responseObject); // log to see what comes from server.
        
        arr1 = [responseObject valueForKey:@"data"];
        NSLog(@"dict1 holds %@", arr1);
        
        
        //NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"name"]);
        // NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"email"]);
        
        //notification data passing code.
        //        [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:dict1];
        // For Navigation.
        DetailViewController *dvc = (DetailViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"detailViewTransfer"];
        [self.navigationController pushViewController:dvc animated:YES];
        dvc.detailViewArray = arr1 ;
        NSLog(@"destViewController Array %@", dvc.detailViewArray);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        
        
    }];

}
 // button check box to display password or not.
- (IBAction)btnCheckBox:(id)sender {
   
    if (checked){
            [self.btnCheckBoxOutlet setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
            self.txtFieldPassword.secureTextEntry = YES;
            checked = NO;
        }else if (!checked){
            [self.btnCheckBoxOutlet setImage:[UIImage imageNamed:@"checkedicon"] forState:UIControlStateNormal];
            self.txtFieldPassword.secureTextEntry = NO;
            checked = YES;
        }

}
@end
