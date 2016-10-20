//
//  ExpenseClass.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "ExpenseClass.h"

@implementation ExpenseClass
-(id)initWithExpense:(NSString *)expense ExpenseDetails:(NSString *)expenseDetails Date:(NSDate *)date Category:(NSString *)category{
    self.expense = expense;
    self.expenseDetails = expenseDetails;
    self.date = date;
    self.category = category;
    return self;
}

@end
