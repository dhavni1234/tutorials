//
//  customCellTableViewCell.h
//  customCellTry1
//
//  Created by Raghu Bansal on 11/24/16.
//  Copyright © 2016 XtreemSolution. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageViewProfile;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;

@end
