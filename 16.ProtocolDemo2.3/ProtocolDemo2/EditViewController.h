//
//  editViewController.h
//  ProtocolDemo2
//
//  Created by Bodacious on 08/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"


@protocol EditViewControllerProtocol

-(void)editPerson:(Person*)p atindex:(int)a;

@end

@interface EditViewController : UIViewController

@property Person *p;
@property int index;


@property id<EditViewControllerProtocol> delegate;


@property (weak, nonatomic) IBOutlet UITextField *fnametextfield;
@property (weak, nonatomic) IBOutlet UITextField *lnametextfield;
@property (weak, nonatomic) IBOutlet UITextField *Number;
@property (weak, nonatomic) IBOutlet UITextField *City;

- (IBAction)donebutton:(id)sender;

@end
