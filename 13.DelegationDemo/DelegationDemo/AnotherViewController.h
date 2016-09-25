//
//  AnotherViewController.h
//  DelegationDemo
//
//  Created by Bodacious on 01/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AnotherViewControllerProtocol

-(void)sampleMethod;
-(void)setName:(NSString*)txt;

@end

@interface AnotherViewController : UIViewController

@property id<AnotherViewControllerProtocol> delegate;
@property (weak, nonatomic) IBOutlet UITextField *nametxt;

@property NSString *someText;

@end
