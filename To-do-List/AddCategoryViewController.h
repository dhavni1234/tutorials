//
//  AddCategoryViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "CategoryClass.h"

@protocol AddCategoryProtocol <NSObject>

-(void)addCategory:(CategoryClass*)AC;

@end




@interface AddCategoryViewController : UIViewController
@property id<AddCategoryProtocol>delegateAC;

@end
