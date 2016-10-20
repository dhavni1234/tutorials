//
//  CategoryClass.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "CategoryClass.h"

@implementation CategoryClass

-(id)initWithCategoryName:(NSString *)categoryName CategoryDetails:(NSString *)categoryDetails{
    self.categoryName = categoryName;
    self.categoryDetails = categoryDetails;
    return self;
}

@end
