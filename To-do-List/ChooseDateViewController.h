//
//  ChooseDateViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>

@protocol ChooseDateProtocol <NSObject>

-(void)setDate:(NSDate*)Cdate;

@end

@interface ChooseDateViewController : UIViewController

@property id<ChooseDateProtocol>delegateDate;

@end
