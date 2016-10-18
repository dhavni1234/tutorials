//
//  TableViewController.h
//  Json
//
//  Created by Raghu Bansal on 10/17/16.
//  Copyright © 2016 RWS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

@interface TableViewController : UITableViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableview;


@end
