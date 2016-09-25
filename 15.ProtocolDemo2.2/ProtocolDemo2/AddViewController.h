//
//  AddViewController.h
//  ProtocolDemo2
//
//  Created by Bodacious on 04/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@protocol AddViewControllerProtocol

-(void)addPerson:(Person*)p;

-(void)removeAddViewController;


@end

@interface AddViewController : UIViewController

@property id<AddViewControllerProtocol> delegate;

@property (weak, nonatomic) IBOutlet UITextField *lblFirstName;

@property (weak, nonatomic) IBOutlet UITextField *lblLastName;

- (IBAction)btnBack:(id)sender;

- (IBAction)btnDone:(id)sender;

@end
