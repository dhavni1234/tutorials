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
    self.btnOutletJson.enabled = NO;
   
    // Color Changes Code for Navigation Bar.
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    self.navigationController.navigationBar.translucent = NO;
    
    //Code for making the button round.
    self.btnOutletJson.layer.cornerRadius = 7.0;
    self.btnOutletJson.layer.masksToBounds = YES;
    //
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//code for email validation.
/*- (BOOL)validateEmailWithString:(NSString*)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}*/
/*- (BOOL)validateEmailWithString:(NSString*)checkString
{
    BOOL stricterFilter = NO;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}*/

// Code to remove the keyboard.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

//


// delegate methods: (textfield) for changing of color during active and in active states.
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"textFieldShouldBeginEditing");
    textField.backgroundColor = [UIColor lightGrayColor];
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"textFieldDidEndEditing");
    textField.backgroundColor = [UIColor whiteColor];
}
// delegate methods: Restricts the particular strings according to user req.
/*- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"textField:shouldChangeCharactersInRange:replacementString:");
    
    if ([string isEqualToString:@"#"]|| [string isEqualToString:@" "]) {
        return NO;
    }
    else {
        return YES;
    }
}*/
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"textField:shouldChangeCharactersInRange:replacementString:");
    //Code enabling the button on text entry.
    NSUInteger length = textField.text.length - range.length + string.length;
    if (length > 0) {
        self.btnOutletJson.enabled = YES;
    } else {
        self.btnOutletJson.enabled = NO;
    }
    return YES;

    /*if([self.txtFieldEmail.text length] >0 && [self.txtFieldPassword.text length] >0){
        [self.btnOutletJson setEnabled:YES];
        
    }
    else{
        [self.btnOutletJson setEnabled:NO] ;
         }
    return YES;*/
//Code restricts emoji in textfield.
    if ([textField isFirstResponder])
    {
        if ([[[textField textInputMode] primaryLanguage] isEqualToString:@"emoji"] || ![[textField textInputMode] primaryLanguage])
        {
            return NO;
        }
    }
    return YES;
    
// Code restricts particular characters.
    if (textField.tag == 1) {
        if ([string isEqualToString:@"#"]|| [string isEqualToString:@" "]) {
            return NO;

        }
        else {
            return YES;
        }
        
    }
    else {
        if ([string isEqualToString:@" "]) {
            return NO;
            return [textField textInputMode] != nil;

        }
        else {
            return YES;
        }
        
    }
}
// Code to perform action on return button of keyboard.
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textFieldShouldReturn:");
    if (textField.tag == 1) {
        UITextField *passwordTextField = (UITextField *)[self.view viewWithTag:2];
        [passwordTextField becomeFirstResponder];
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}

//- (BOOL)textFieldShouldClear:(UITextField *)textField{
//    NSLog(@"textFieldShouldClear:");
//    textField.text = @"";
//    [textField resignFirstResponder];
//    return NO;
//    //return YES;
//}

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
