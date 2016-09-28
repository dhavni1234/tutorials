//
//  BookingDetail.h
//  try1
//
//  Created by Sourabh Sharma on 9/20/16.
//  Copyright © 2016 Sourabh Sharma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BookingDetail : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblCategory;
@property (weak, nonatomic) IBOutlet UILabel *lblStop;
@property (weak, nonatomic) IBOutlet UILabel *lblFare;
@property (weak, nonatomic) IBOutlet UILabel *lblTickets;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblSource;
@property (weak, nonatomic) IBOutlet UILabel *lblDestination;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;


/*@property NSString *Category;
@property NSString *numberOfTickets;
@property NSString *numberOfStop;
@property NSString *fare;
@property NSString *bookingDate;

-(id)initWithCategory:(NSString*)category Stop:(int*)stop Fare:(int*)fare NumberOftickets:(int*) tickets BookingDime:(NSString*)bookingDate;

*/
@end
