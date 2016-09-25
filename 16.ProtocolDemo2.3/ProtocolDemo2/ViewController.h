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
#import "EditViewController.h"
#import "DetailsViewController.h"


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,AddViewControllerProtocol,DetailsViewControllerProtocol>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

