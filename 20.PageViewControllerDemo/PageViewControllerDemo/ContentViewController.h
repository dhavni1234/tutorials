//
//  ContentViewController.h
//  PageViewControllerDemo
//
//  Created by Bijendra Bhati on 17/03/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblText;


@property (weak,nonatomic) NSString *titleText;
@property (weak,nonatomic) NSString *chapterText;

@end
