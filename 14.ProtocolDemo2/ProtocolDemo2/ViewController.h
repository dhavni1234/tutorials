//
//  ViewController.h
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h" // person.h is imported here and confirmed the data source and delegation protocols below.

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>


@end

