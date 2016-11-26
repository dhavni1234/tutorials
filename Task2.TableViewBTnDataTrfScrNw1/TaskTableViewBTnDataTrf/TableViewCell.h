//
//  TableViewCell.h
//  TaskTableViewBTnDataTrf
//

//

#import <UIKit/UIKit.h>
#import "TableViewController.h"

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UIButton *btnGetDetailOutlet;
- (IBAction)btnGetDetail:(id)sender;

@end
