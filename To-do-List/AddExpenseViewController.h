//
//  AddExpenseViewController.h
//  
//
//  Created by TechReviews on 5/1/16.
//
//

#import <UIKit/UIKit.h>
#import "ExpenseClass.h"
#import "ChooseCategoryViewController.h"
#import "ChooseDateViewController.h"

@protocol AddExpenseProtocol <NSObject>

-(void)addExpense:(ExpenseClass*)AE;

@end

@interface AddExpenseViewController : UIViewController<ChooseCategoryProtocol,ChooseDateProtocol>
@property id<AddExpenseProtocol>delegateADD;

@end
