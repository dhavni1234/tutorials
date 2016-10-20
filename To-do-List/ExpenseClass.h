//
//  ExpenseClass.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <Foundation/Foundation.h>

@interface ExpenseClass : NSObject

@property NSString *expense;
@property NSString *expenseDetails;
@property NSDate *date;
@property NSString *category;

-(id)initWithExpense:(NSString*)expense ExpenseDetails:(NSString*)expenseDetails Date:(NSDate*)date Category:(NSString*)category;

@end
