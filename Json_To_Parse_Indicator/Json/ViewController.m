//
// tutorial links: http://stackoverflow.com/questions/29190682/display-uialertview-on-afhttprequestoperation-failure
//http://stackoverflow.com/questions/20566194/how-to-get-status-code-in-afnetworking
//
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
NSDictionary *dict;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dict = [[NSDictionary alloc] init];
    self.activityIndicator.hidden = YES;
   
    // Color Changes Code for Navigation Bar.
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    self.navigationController.navigationBar.translucent = NO;
    
    //Code for making the button round.
    self.btnOutletJson.layer.cornerRadius = 7.0;
    self.btnOutletJson.layer.masksToBounds = YES;
    

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
// Code runs when the view appears again.
- (void)viewWillAppear:(BOOL)animated {
    self.txtFieldEmail.text = @"";      // makes the text field blank.
    self.txtFieldPassword.text = @"";   // makes the password filed blank.
    self.activityIndicator.hidden = YES; // hides the activity indicator.

}

- (IBAction)showJson:(id)sender {
    self.activityIndicator.hidden = NO;
    [self.activityIndicator startAnimating];
    
    // code for posting the data to the server.
   
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    //parameters assigning via dictionary.
    NSDictionary *parameter = @{@"email": self.txtFieldEmail.text, //email: ram@mailinator.com
                                @"password": self.txtFieldPassword.text, // 123456
                                @"device_token":@"12345689",
                                @"device_timezone":[NSTimeZone systemTimeZone]};
    
    NSLog(@"Dict %@",parameter); // log to see what is passed.
    
    [manager POST:@"http://108.163.162.202:8080/semipro/users/login" parameters:parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
      //  NSLog(@"JSON: %@", responseObject); // log to see what comes from server.
        

       dict = responseObject;
       NSLog(@"dict data: %@",dict);
        NSDictionary *dict1 = [dict valueForKey:@"data"];
        
        NSDictionary *dict2 = [dict1 valueForKey:@"user"];

        [self.activityIndicator stopAnimating];

       NSDictionary *responseDictionary = responseObject;

        if ([responseDictionary[@"status"] isEqualToString:@"success"]) {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                            message:@"Login Successful!"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            
            
          DetailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"dvc"];
            dvc.data1 = dict2;
            [self.navigationController pushViewController:dvc animated:YES];
            
        }
        else {
            UIAlertView *alertError = [[UIAlertView alloc] initWithTitle:@"Login failed"
                                                                 message:@"Enter Vaild Details"
                                                                delegate:self
                                                       cancelButtonTitle:@"OK"
                                                       otherButtonTitles:nil];
            [self.navigationController popToRootViewControllerAnimated:YES];
            self.activityIndicator.hidden = YES;

            [alertError show];
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        
        UIAlertView *alertError = [[UIAlertView alloc] initWithTitle:@"Network problem"
                                                             message:[error localizedDescription]
                                                            delegate:self
                                                   cancelButtonTitle:@"OK"
                                                   otherButtonTitles:nil];
        [alertError show];
        
    }];
    
}



@end
