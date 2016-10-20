//
//  IncomeClass.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <Foundation/Foundation.h>

@interface IncomeClass : NSObject
@property NSString *income;
@property NSString *details;
@property NSDate *date;

-(id)initWithIncome:(NSString*)income Details:(NSString*)details Date:(NSDate*)date;
@end
