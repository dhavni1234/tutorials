//
// tutorial links: http://stackoverflow.com/questions/29190682/display-uialertview-on-afhttprequestoperation-failure
//http://stackoverflow.com/questions/20566194/how-to-get-status-code-in-afnetworking
//http://jsonviewer.stack.hu/   to see the structure of data.
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
    //dict = [[NSDictionary alloc] init];
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
        NSDictionary *parameter = @{@"email": @"jayant@mailinator.com", //email: ram@mailinator.com
                                    @"password": @"123456", // 123456
                                    };
        NSLog(@"Cardinals Passed: %@",parameter); // log to see what is passed.
        
        [manager POST:@"http://192.168.1.92/*/*/*/*" parameters:parameter success:^(AFHTTPRequestOperation *operation, NSDictionary * responseObject) {
            
            NSLog(@"JSON Response Received: %@", responseObject); // log to see what comes from server.
            
            NSArray *dataTransferred = [responseObject valueForKey:@"data"];
           // NSLog(@"data fetched: %@",[dataTransferred[0] valueForKey:@"name"]);
            // NSLog(@"data fetched: %@",[dict1[0] valueForKey:@"email"]);

//notification data passing code.
        [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationMessageEvent" object:dataTransferred];
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
            

        }];

    }


@end
