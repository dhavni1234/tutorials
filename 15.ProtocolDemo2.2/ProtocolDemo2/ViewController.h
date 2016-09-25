//
//  ViewController.h
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "AddViewController.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,AddViewControllerProtocol>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

