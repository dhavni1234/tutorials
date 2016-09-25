//
//  ViewController.m
//  APIDemo
//
//  Created by Bijendra Bhati on 26/03/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//


//http://jsonplaceholder.typicode.com/


#import "ViewController.h"


@interface ViewController ()
{
    int selectedIndex;
}


@property NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ///[self LoadData];
    
    //create a new thread
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(LoadData) object:nil];
    [thread start];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(void)LoadData{
    
    NSURL *url = [NSURL URLWithString:@"http://jsonplaceholder.typicode.com/posts"];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    if(data != nil){
    
    self.array = [NSJSONSerialization JSONObjectWithData: data options: kNilOptions error: nil];
        NSLog(@"%@",self.array);
        
    }else {
        NSLog(@"Recieve no data");
    }
    
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
        [self.table reloadData];
        [self.activityIndicator stopAnimating];
    }];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   
    return self.array.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSDictionary *dict = self.array[indexPath.row];
    
    NSString *userid = [dict objectForKey:@"id"];
    NSString *title = [dict objectForKey:@"title"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@. %@",userid, title];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    selectedIndex = (int)indexPath.row;
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    secondViewController *dVC = (secondViewController*)segue.destinationViewController;
    dVC.data = self.array[selectedIndex];
}

@end
