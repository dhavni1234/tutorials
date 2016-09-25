//
//  DetailsViewController.h
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Person.h"
#import "EditViewController.h"


@protocol DetailsViewControllerProtocol

-(void)removedetailsviewcontroller;
-(void)savePerson:(Person*)p atIndex:(int)index;
@end

@interface DetailsViewController : UIViewController<EditViewControllerProtocol>

@property id<DetailsViewControllerProtocol> b;
@property id editDelegate;
@property Person *p;
@property int index;

@end
