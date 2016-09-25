//
//  TableViewController.h
//  AudioAndVideoDemo
//
//  Created by ashish on 12/14/15.
//  Copyright © 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol tabelviewcontrollerprotocol

-(void)setsong:(NSString*)p;

@end                                     //

@interface TableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>

@property id<tabelviewcontrollerprotocol> delegate;   //

@property (strong, nonatomic) IBOutlet UITableView *TableView;
@end
