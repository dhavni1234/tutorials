//
//  ViewController.m
//  TableViewDemo1
//
//  Created by Bodacious IT Hub on 19/11/15.
//  Copyright © 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"
#import "AnotherViewController.h"

@interface ViewController ()
{
    NSMutableArray *items;
}
@property (strong, nonatomic) IBOutlet UITableView *myTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    items = [NSMutableArray arrayWithObjects:@"First", @"Second",@"Third",@"Fourth",@"Fifth", nil];
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource Methods



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = items[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Section no is %ld",(long)indexPath.section);
    NSLog(@"Row no is %ld",(long)indexPath.row);
    
    /*UIStoryboard *sb = self.storyboard;
    AnotherViewController *aVC = (AnotherViewController*)[sb instantiateViewControllerWithIdentifier:@"Another"];
    [self.navigationController pushViewController:aVC animated:YES];*/
    
    
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [items removeObjectAtIndex:indexPath.row];
    
    NSArray *arr = [NSArray arrayWithObjects:indexPath, nil];
    
    [tableView deleteRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationNone];
    
}


#pragma  mark IBActions

- (IBAction)buttonAddClick:(id)sender {
    
    long count = (long)items.count;
    
    count++;
    
    NSString *newItem = [NSString stringWithFormat:@"New Item is of no %ld",count];
    
    
    [items insertObject:newItem atIndex:0];
    [items insertObject:newItem atIndex:0];
    
    
    NSIndexPath *index = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *index1 = [NSIndexPath indexPathForRow:1 inSection:0];
    
    NSArray *arr = [NSArray arrayWithObjects:index,index1, nil];
    
    //NSArray *arr = [NSArray arrayWithObjects:[NSIndexPath indexPathForRow:0 inSection:0], nil];
    
    
    [self.myTable insertRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationLeft];
    
}



@end
