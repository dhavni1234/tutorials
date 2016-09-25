//
//  ViewController.m
//  CustomCellDemo
//
//  Created by Bodacious on 25/11/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"
#import "CustomCellClass.h"


@interface ViewController ()
{
    NSArray *items;
}
@end

@implementation ViewController


#pragma mark UIViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    items = [[NSArray alloc]initWithObjects:@"Profile",@"Contact Info",@"Hobbies",@"Connections",@"Log Out", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return items.count+1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.row == 0){
        
        //create custom cell and return it
        
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        CustomCellClass *myCustomCell = (CustomCellClass*)arr[0];
        myCustomCell.nameLabel.text = @"Rahul";
        return myCustomCell;
        
    }
    else{
        
        
        UITableViewCell *cell;
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        if(cell == nil){
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        
        cell.textLabel.text = items[indexPath.row - 1];
        if(indexPath.row>=1 && indexPath.row <= 4)
            cell.accessoryType = UITableViewCellStyleValue1;	
        
        return cell;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        return 131;
    }
    else
    {
        return 50;
    }
}
@end
