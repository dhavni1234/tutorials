//
//  ViewController.m
//  try1
//
//  Created by Sourabh Sharma on 9/20/16.
//  Copyright © 2016 Sourabh Sharma. All rights reserved.
//

#import "ViewController.h"
#import "BookingDetail.h"

@interface ViewController ()
{
    NSArray *array;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.barTintColor = [UIColor darkGrayColor];
    self.navigationController.navigationBar.translucent = NO;
   
    
    NSDictionary *dict1 = @{@"Source":@"Railway Station",
                            @"Destination":@"Bus Stop",
                            @"Category":@"Regular Routes",
                           @"Stop":@"1",
                           @"Fare":@"$14",
                           @"Ticket":@"2",
                           @"Time":@"10:00",
                           @"BookedDate":@"25/10/2016",};
    
    NSDictionary *dict2 = @{
                            @"Source":@"Test1",
                            @"Destination":@"Test2",
                            @"Category":@"Regular Routes 5",
                           @"Stop":@"0",
                           @"Fare":@"$20",
                           @"Ticket":@"4",
                           @"Time":@"04:00",
                           @"BookedDate":@"26/10/2016",};

    NSDictionary *dict3 = @{@"Source":@"Test55",
                            @"Destination":@"Test66",
                            @"Category":@"Regular Routes 3",
                           @"Stop":@"3",
                           @"Fare":@"$55",
                           @"Ticket":@"0",
                           @"Time":@"08:00",
                           @"BookedDate":@"27/10/2016",};

    NSDictionary *dict4 = @{@"Source":@"Test11",
                            @"Destination":@"Test21",
                            @"Category":@"Regular Routes 5",
                           @"Stop":@"1",
                           @"Fare":@"$14",
                           @"Ticket":@"2",
                           @"Time":@"10:00",
                           @"BookedDate":@"28/10/2016",};

    NSDictionary *dict5 = @{@"Source":@"Test100",
                            @"Destination":@"Test200",
                            @"Category":@"Regular Routes 11",
                           @"Stop":@"1",
                           @"Fare":@"$14",
                           @"Ticket":@"2",
                           @"Time":@"06:00",
                           @"BookedDate":@"25/10/2016",};

    
    array = [[NSArray alloc]initWithObjects:dict1,dict2,dict3,dict4,dict5, nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return array.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BookingDetail *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[BookingDetail alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    
    NSDictionary *dict  = [array objectAtIndex:indexPath.row];
    NSLog(@"%@",dict);
    
    //display data in table view
    cell.lblSource.text = [dict valueForKey:@"Source"];
    cell.lblDestination.text = [dict valueForKey:@"Destination"];
    cell.lblCategory.text = [dict valueForKey:@"Category"];
    cell.lblStop.text = [ dict valueForKey:@"Stop"];
    cell.lblFare.text = [dict valueForKey:@"Fare"];
    cell.lblTickets.text = [dict valueForKey:@"Ticket"];
    cell.lblTime.text = [dict valueForKey:@"Time"];
    cell.lblDate.text = [ dict valueForKey:@"BookedDate"];
    
    //code for view border.
    cell.view1.layer.borderColor = [UIColor lightGrayColor].CGColor;
    cell.view1.layer.borderWidth = 0.3f;
    cell.view2.layer.borderColor = [UIColor lightGrayColor].CGColor;
    cell.view2.layer.borderWidth = 0.3f;

    return cell;
    
}

@end
