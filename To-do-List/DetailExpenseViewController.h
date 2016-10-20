//
//  DetailExpenseViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "ExpenseClass.h"
#import "EditExpenseViewController.h"

@protocol DetailExpenseProtocol <NSObject>

-(void)saveExpense:(ExpenseClass*)SE atindex:(int)index;

@end

@interface DetailExpenseViewController : UIViewController<EditExpenseProtocol>

@property int index;
@property ExpenseClass *EC;
@property id<DetailExpenseProtocol>delegateDEP;

@end
