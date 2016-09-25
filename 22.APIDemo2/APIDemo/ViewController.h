//
//  ViewController.h
//  APIDemo
//
//  Created by Bijendra Bhati on 26/03/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *table;


@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

