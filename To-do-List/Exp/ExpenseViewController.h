//
//  ExpenseViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "ExpenseClass.h"
#import "DetailExpenseViewController.h"
#import "EditChooseCategoryViewController.h"
#import "AddExpenseViewController.h"

@interface ExpenseViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,DetailExpenseProtocol,AddExpenseProtocol>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
