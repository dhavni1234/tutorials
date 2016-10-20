//
//  ExpenseViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "ExpenseViewController.h"

@interface ExpenseViewController ()
{
    NSMutableArray *arrayExpense;
    int selectedIndex;
}

@end

@implementation ExpenseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrayExpense = [[NSMutableArray alloc]init];
    ExpenseClass *E1 = [[ExpenseClass alloc]initWithExpense:@"2000" ExpenseDetails:@"Fun With friends" Date:[NSDate date] Category:@"FOOD"];
    [arrayExpense addObject:E1];
    [arrayExpense addObject:[[ExpenseClass alloc]initWithExpense:@"100" ExpenseDetails:@"Petrol" Date:[NSDate date] Category:@"PETROL"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayExpense.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell1"];
    ExpenseClass *E = arrayExpense[indexPath.row];
    cell.textLabel.text = E.expense;
    cell.detailTextLabel.text = E.category;
    return cell;
}
-(NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    selectedIndex = (int)indexPath.row;
    return indexPath;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailExpenseViewController *DEVC = (DetailExpenseViewController*)segue.destinationViewController;
    DEVC.EC = arrayExpense[selectedIndex];
    DEVC.index = selectedIndex;
    DEVC.delegateDEP = self;
}

-(void) saveExpense:(ExpenseClass *)SE atindex:(int)index{
    arrayExpense[index] = SE;
    [self.tableView reloadData];
    
}
// To delete the selection via swipping
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [arrayExpense removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
}

//For add

-(void)addExpense:(ExpenseClass *)AE{
    [arrayExpense  addObject:AE];
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:NO completion:^{
        NSLog(@"ADDED EXPENSE");
    }];
}
- (IBAction)btnAdd:(id)sender {
    
    AddExpenseViewController *AEVC = (AddExpenseViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"ADD"];
    AEVC.delegateADD = self;
   // [self presentViewController:AEVC animated:NO completion:nil];
    [self.navigationController pushViewController:AEVC animated:YES];
}




@end
