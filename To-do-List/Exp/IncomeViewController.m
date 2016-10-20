//
//  IncomeViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "IncomeViewController.h"

@interface IncomeViewController ()
{
    NSMutableArray *arrayIncome;
    int selectedIndex;
}

@end

@implementation IncomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrayIncome = [[NSMutableArray alloc]init];
    IncomeClass *I1 = [[IncomeClass alloc]initWithIncome:@"1000" Details:@"BOOKS" Date:[NSDate date]];
    [arrayIncome addObject:I1];
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
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayIncome.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    IncomeClass *I = arrayIncome[indexPath.row];
    cell.textLabel.text = I.income;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",I.date];
    return cell;
}

- (NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedIndex = (int)indexPath.row;
    return indexPath;
}

//for segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailIncomeViewController *divc = (DetailIncomeViewController*)segue.destinationViewController;
    divc.I = arrayIncome[selectedIndex];
    divc.index = selectedIndex;
    divc.delegateDIVP = self;
}
-(void)saveIncome:(IncomeClass *)SI atindex:(int)index{
    arrayIncome[index] = SI;
    [self.tableView reloadData];
}

//For adding the income
- (IBAction)btnAdd:(id)sender {
    AddIncomeViewController *aivc = (AddIncomeViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"ADDINCOME"];
    aivc.delegateAIVCP = self;
    [self presentViewController:aivc animated:NO completion:nil];
}

-(void)addIncome:(IncomeClass *)AI{
    [arrayIncome addObject:AI];
    [self.tableView reloadData];
    [self dismissViewControllerAnimated:NO completion:^{
        NSLog(@"ADDED");
    }];
}
// To delete the selection via swipping
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [arrayIncome removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
}


@end
