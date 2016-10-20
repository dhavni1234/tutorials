//
//  ViewController.m
//  task
//
//  Created by TechReviews on 10/17/16.
//  Copyright © 2016 xtremer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Textcolor and font for placeholder text.
    UIColor *color = [UIColor blackColor];
    UIFont* boldFont = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    
    [self.txtFieldUserName setFont:boldFont];
    self.txtFieldUserName.borderStyle = UITextBorderStyleRoundedRect;
    self.txtFieldUserName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"User Name" attributes:@{NSForegroundColorAttributeName: color}];
    
    [self.txtFieldEmail setFont:boldFont];
    self.txtFieldEmail.borderStyle = UITextBorderStyleRoundedRect;
    self.txtFieldEmail.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Email" attributes:@{NSForegroundColorAttributeName: color}];
    
    [self.txtFieldMessage setFont:boldFont];
    self.txtFieldMessage.borderStyle = UITextBorderStyleRoundedRect;
    self.txtFieldMessage.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Message" attributes:@{NSForegroundColorAttributeName: color}];
    
    // padding done so that text not touches the border of textfields.
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    self.txtFieldOutlets.leftView = paddingView;
    self.txtFieldOutlets.leftViewMode = UITextFieldViewModeAlways;
    
    //Text top alignment for textfiled (message) on increasing the height.
    self.txtFieldOutlets.contentVerticalAlignment = UIControlContentVerticalAlignmentTop ;
    // TextFields Border code.
    
    //Button corner radius.
    self.btnMessageMeOutlet.layer.cornerRadius = 2.0;
    self.btnMessageMeOutlet.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnMessageMe:(id)sender {
}
@end
