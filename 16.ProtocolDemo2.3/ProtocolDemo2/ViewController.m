//
//  ViewController.m
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"


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
    Person *p1 = [[Person alloc]initWithFName:@"Rahul" LName:@"Singh" City:@"Jaipur" Number:@"1234567890"];
    
    //add person object to array
    [persons addObject:p1];
    
    [persons addObject:[[Person alloc]initWithFName:@"Shashi" LName:@"Sharma" City:@"Surat" Number:@"9123945864"]];
    
    [persons addObject:[[Person alloc]initWithFName:@"Kabeer" LName:@"Verma" City:@"Pune" Number:@"9660570033"]];
    
    
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
    
    cell.textLabel.text = p.firstName; // shows First Name
    cell.detailTextLabel.text = p.city; // shows City Name
    
    return cell;
}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    selectedIndex = (int)indexPath.row;
    return indexPath;
    
    
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    DetailsViewController *dVC = (DetailsViewController*)segue.destinationViewController;
    dVC.p = persons[selectedIndex];
    dVC.index = selectedIndex;
    dVC.b =self;
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

#pragma mark Detailviewcontroller protocol
-(void)removedetailsviewcontroller{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)savePerson:(Person *)p atIndex:(int)index{
    
    Person *per = persons[index];
    per.firstName =p.firstName;
    per.lastName = p.lastName;
    per.city = p.city;
    per.number = p.number;
    
    [self.tableView reloadData];
    
}



@end
