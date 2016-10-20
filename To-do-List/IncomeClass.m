//
//  IncomeClass.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "IncomeClass.h"

@implementation IncomeClass
-(id)initWithIncome:(NSString *)income Details:(NSString *)details Date:(NSDate *)date{
    self.income = income;
    self.details = details;
    self.date = date;
    return self;
}

@end
