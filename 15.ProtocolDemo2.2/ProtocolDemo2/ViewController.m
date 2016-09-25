//
//  ViewController.m
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"

@interface ViewController ()
{
    NSMutableArray *persons;
    int selectedIndex;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //create mutable array
    persons = [[NSMutableArray alloc]init];
    
    //create person object
    Person *p1 = [[Person alloc]initWithFName:@"Rahul" LName:@"Singh"];
    
    //add person object to array
    [persons addObject:p1];
    
    [persons addObject:[[Person alloc]initWithFName:@"Shashi" LName:@"Sharma"]];
    
    [persons addObject:[[Person alloc]initWithFName:@"Kabeer" LName:@"Verma"]];
    
    
}
- (IBAction)btnAddClick:(id)sender {
    
    /*Person *p = [[Person alloc]initWithFName:@"Tanvi" LName:@"Sharma"];
    
    [persons addObject:p];
    
    [self.tableView reloadData];*/
    
   // UIStoryboard *sb = self.storyboard;
    
  //  AddViewController *aVC = (AddViewController*)[sb instantiateViewControllerWithIdentifier:@"AddVC"];
    
    AddViewController *aVC = (AddViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"AddVC"];
    
    aVC.delegate = self;
    
    [self presentViewController:aVC animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return  persons.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle			 reuseIdentifier:@"cell"];
    
    Person *p = persons[indexPath.row];
    
    cell.textLabel.text = p.firstName;
    cell.detailTextLabel.text = @"Something";
    
    return cell;
}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    selectedIndex = (int)indexPath.row;
    return indexPath;
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    DetailsViewController *dVC = (DetailsViewController*)segue.destinationViewController;
    dVC.p = persons[selectedIndex];
}

#pragma mark AddViewController Protocol
-(void)addPerson:(Person *)p{
    
    [persons addObject:p];
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Removed");
    }];
    
}
-(void)removeAddViewController{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
