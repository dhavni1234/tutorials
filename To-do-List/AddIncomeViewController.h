//
//  AddIncomeViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "IncomeClass.h"

@protocol AddIncomeViewControllerProtocol <NSObject>

-(void)addIncome:(IncomeClass*)AI;

@end

@interface AddIncomeViewController : UIViewController
@property id<AddIncomeViewControllerProtocol>delegateAIVCP;

@end
