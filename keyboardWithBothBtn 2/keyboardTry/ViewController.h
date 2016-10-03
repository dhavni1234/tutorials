//
//  ViewController.h
//  keyboardTry
//
//  Created by TechReviews on 9/7/16.
//  Copyright © 2016 xtremer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtField;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)button:(id)sender;
- (IBAction)button1:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

