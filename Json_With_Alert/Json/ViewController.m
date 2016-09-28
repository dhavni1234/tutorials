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

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// To remove the keyboard.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

- (IBAction)showJson:(id)sender {
    
    
    
    // code for posting the data to the server.
   
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    //parameters assigning via dictionary.

    NSDictionary *parameter = @{@"email": self.txtFieldEmail.text, //email: ram@mailinator.com
                                @"password": self.txtFieldPassword.text, // 123456
                                @"device_token":@"12345689",
                                @"device_timezone":[NSTimeZone systemTimeZone]};
    
    NSLog(@"Dict %@",parameter); // log to see what is passed.
    
    [manager POST:@"http://108.163.162.202:8080/semipro/users/login" parameters:parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject); // log to see what comes from server.
        
        // For alert code.
        NSDictionary *responseDictionary = responseObject;
        
        if ([responseDictionary[@"status"] isEqualToString:@"success"]) {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                            message:@"Login Successful!"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            UIViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"dvc"];
            [self.navigationController pushViewController: dvc animated:YES];
            
        } else {
            UIAlertView *alertError = [[UIAlertView alloc] initWithTitle:@"Login failed"
                                                                 message:@"Enter Vaild Details"
                                                                delegate:self
                                                       cancelButtonTitle:@"OK"
                                                       otherButtonTitles:nil];
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
   /*
    NSDictionary *eventLocation = [NSDictionary dictionaryWithObjectsAndKeys:@"43.93838383",@"latitude",@"-3.46",@"latitude", nil];
    
    NSMutableDictionary *eventData = [NSDictionary dictionaryWithObjectsAndKeys:eventLocation,@"eventLocation", nil];
    [eventData setObject:@"Jun 13, 2012 12:00:00 AM" forKey:@"eventDate"];
    [eventData setObject:@"hjhj" forKey:@"text"];
    .
    .
    .
    NSMutableDictionary *finalDictionary = [NSMutableDictionary dictionaryWithObjectsAndKeys:eventData,@"eventData", nil];
    [NSDictionary setObject:@"ELDIARIOMONTANES" forKey:@"type"];
    [finalDictionary setObject:@"accIDENTE" forKey:@"title"];
    
    */
    
        // 3
       /*NSDictionary *dic  = (NSDictionary *)responseObject;
         NSArray *players = [dic objectForKey:@"player_info"];
        NSString *str1 = [players objectAtIndex:2];
          NSLog(@"%@", str1);
        int count=0;
        
        for (NSDictionary *dict in [dic objectForKey:@"player_info"]) {
            
                              // Some code to start the download.
            
            // NSLog(@"%d", count);
            
            if(count==2){
              NSString *nname = [dict valueForKey:@"college"];
                   NSLog(@"%@", nname);
            }
           count++;
                              }

        
        
        
     
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        // 4
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
    // 5
    [operation start];
    */
    
}
@end
