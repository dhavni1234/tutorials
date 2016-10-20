//
//  ChooseCategoryViewController.h
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import <UIKit/UIKit.h>
#import "CategoryClass.h"
#import "AddCategoryViewController.h"


@protocol ChooseCategoryProtocol <NSObject>

-(void)setCategory:(NSString*)SC;

@end


@interface ChooseCategoryViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,AddCategoryProtocol>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property id<ChooseCategoryProtocol>delegateCCP;
@end
