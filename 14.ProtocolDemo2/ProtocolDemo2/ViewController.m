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
    NSMutableArray *persons; // mutable array is created for changes during run time.
    int selectedIndex;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //create mutable array
    persons = [[NSMutableArray alloc]init]; // initilsed the mutable array.
    
    //create person object
    Person *p1 = [[Person alloc]initWithFName:@"Rahul" LName:@"Singh"];
    
    //add person object to array
    [persons addObject:p1];
    
    [persons addObject:[[Person alloc]initWithFName:@"Shashi" LName:@"Sharma"]];
    
    [persons addObject:[[Person alloc]initWithFName:@"Kabeer" LName:@"Verma"]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return  persons.count; // person.count returns the automised number of sections in the table.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    Person *p = persons[indexPath.row];// to fatch data from person array.
    
    cell.textLabel.text = p.firstName;
    
    
    return cell;
}

//reuse identifier error removal code 
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    selectedIndex = (int)indexPath.row;
    return indexPath;
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    DetailsViewController *dVC = (DetailsViewController*)segue.destinationViewController;
    dVC.p = persons[selectedIndex];
}

@end
