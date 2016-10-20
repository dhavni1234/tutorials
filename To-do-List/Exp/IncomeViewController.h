//
//  IncomeViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "IncomeClass.h"
#import "DetailIncomeViewController.h"
#import "EditDetailIncomeViewController.h"
#import "AddIncomeViewController.h"

@interface IncomeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,DetailIncomeViewcontrollProtocol,AddIncomeViewControllerProtocol>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
