//
//  ViewController.m
//  TableViewDemo
//
//  Created by Bodacious IT Hub on 18/11/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *boys;
    NSArray *girls;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    boys = [NSArray arrayWithObjects:@"Rahul",@"Ranveer",@"Shashi",@"Kabeer",nil];
    girls = [NSArray arrayWithObjects:@"Avani",@"Tanvi",@"Kavita",@"Sita",@"Geeta", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 2;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(section == 0)
        return boys.count;
    else
        return girls.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    //for items in sections
    if(indexPath.section == 0)
        cell.textLabel.text = boys[indexPath.row];
    else
        cell.textLabel.text = girls[indexPath.row];
    
    // for the detail button
    if(indexPath.row == 0 && indexPath.section == 0)
        cell.accessoryType = UITableViewCellAccessoryDetailButton;
    else
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    
    return cell;
    
}
// for heading of sections ie: Boys & girls
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(section == 0)
        return @"Boys";
    else
        return @"Girls";
}

@end
