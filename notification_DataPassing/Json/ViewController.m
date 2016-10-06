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
    self.txtFieldEmail.enabled = NO;
    self.txtFieldPassword.enabled = NO;
    
   
    

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
    
        // code for posting the data to the server.
        
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        
        //parameters assigning via dictionary.
        NSDictionary *parameter = @{@"email": @"ram@mailinator.com", //email: ram@mailinator.com
                                    @"password": @"123456", // 123456
                                    @"device_token":@"12345689",
                                    @"device_timezone":[NSTimeZone systemTimeZone]};
        
        NSLog(@"Dict %@",parameter); // log to see what is passed.
        
        [manager POST:@"http://108.163.162.202:8080/semipro/users/login" parameters:parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
            //  NSLog(@"JSON: %@", responseObject); // log to see what comes from server.
            
            
            dict = responseObject;
            NSLog(@"dict data: %@",dict);
            NSDictionary *dict1 = [dict valueForKey:@"data"];
            
            NSDictionary *dict2 = [dict1 valueForKey:@"user"];
            //notification data passing code.
            [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:dict2];
            
            // Alert code
            NSDictionary *responseDictionary = responseObject;
                       
            if ([responseDictionary[@"status"] isEqualToString:@"success"]) {
                
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                                message:@"Login Successful!"
                                                               delegate:self
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
                [alert show];
                
                
               /* DetailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"dvc"];
                dvc.data = dict2;
                [self.navigationController pushViewController:dvc animated:YES];
                */
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
