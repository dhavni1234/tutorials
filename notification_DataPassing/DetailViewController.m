//
//  DetailViewController.m
//  Json
//
//  Created by Raghu Bansal on 9/27/16.
//  Copyright © 2016 RWS. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.navigationItem.hidesBackButton = YES; // hides the back button on navigation bar.
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(triggerAction:) name:@"NotificationMessageEvent" object:nil];
    
   // NSLog(@"Data displayed");


}
-(void) triggerAction:(NSNotification *) notification
{
    if ([notification.object isKindOfClass:[NSDictionary class]])
    {
        NSDictionary *dict2 = [notification object]; // here assigning the dict2 of vc.m here no need to any other reference here for declaration of it.
        // do stuff here with your message data
        NSString *fullname = [dict2 valueForKey:@"fullname"];
        NSString *email = [dict2 valueForKey:@"email"];
        NSString *title = [dict2 valueForKey:@"title"];
        
        
        self.lblFullName.text = fullname;
        self.lblEmail.text = email;
        self.lblTitle.text = title;
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

@end
