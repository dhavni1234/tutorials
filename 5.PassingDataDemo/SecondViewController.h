//
//  SecondViewController.h
//  PassingDataDemo
//
//  Created by Bodacious IT Hub on 02/11/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerProtocol <NSObject>

-(void)setData:(NSString*)str;

@end

@interface SecondViewController : UIViewController

@property NSString *userName;
@property (weak,nonatomic)IBOutlet UILabel *lbl;

@property id<SecondViewControllerProtocol> delegate;

@end
