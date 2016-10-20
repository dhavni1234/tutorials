//
//  CategoryClass.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <Foundation/Foundation.h>

@interface CategoryClass : NSObject

@property NSString *categoryName;
@property NSString *categoryDetails;

-(id)initWithCategoryName:(NSString*)categoryName CategoryDetails:(NSString*)categoryDetails;

@end
