//
//  TableViewController.h
//  TaskTableViewBTnDataTrf
//
//  
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "UserInfo1Controller.h"
#import "UserInfo2Controller.h"
#import "UserInfo3Controller.h"

@protocol dataTableProtocol <NSObject>

-(void)dictionaryToTransfer:(NSDictionary*)dictionaryTransfer;

@end

@interface TableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource>

@property id<dataTableProtocol>delegateDTP;
@end
