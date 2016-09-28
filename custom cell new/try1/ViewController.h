//
//  ViewController.h
//  try1
//
//  Created by Sourabh Sharma on 9/20/16.
//  Copyright © 2016 Sourabh Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookingDetail.h"


@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *bookingTableView;



@end

