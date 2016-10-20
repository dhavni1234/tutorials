//
//  EditDetailIncomeViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "IncomeClass.h"


@protocol EditIncomeViewControllerProtocol <NSObject>

-(void)editIncome:(IncomeClass*)EI atindex:(int)a;


@end

@interface EditDetailIncomeViewController : UIViewController
@property IncomeClass *I;
@property int index;
@property id<EditIncomeViewControllerProtocol>delegateEIVP;


@end
