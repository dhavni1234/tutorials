//
//  EditExpenseViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "ExpenseClass.h"
#import "ChooseDateViewController.h"
#import "ChooseCategoryViewController.h"




@protocol EditExpenseProtocol <NSObject>

-(void)editExpense:(ExpenseClass*)EE atindex:(int)a;

@end

@interface EditExpenseViewController : UIViewController<ChooseDateProtocol,ChooseCategoryProtocol>
@property ExpenseClass *E;
@property int index;
@property id<EditExpenseProtocol>delegateEEP;


@end
