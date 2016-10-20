//
//  DetailIncomeViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "IncomeClass.h"
#import "EditDetailIncomeViewController.h"

@protocol DetailIncomeViewcontrollProtocol <NSObject>

-(void)saveIncome:(IncomeClass*)SI atindex:(int)index;

@end

@interface DetailIncomeViewController : UIViewController<EditIncomeViewControllerProtocol>
@property IncomeClass *I;
@property int index;
@property id<DetailIncomeViewcontrollProtocol>delegateDIVP;

@end
