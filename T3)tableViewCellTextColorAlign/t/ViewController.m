//
//  ViewController.m
//  t
//


#import "ViewController.h"

@interface ViewController ()
{
    NSArray *boys;
    NSArray *girls;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    boys = [[NSArray alloc]initWithObjects:@"A",@"B", nil];
    girls = [[NSArray alloc]initWithObjects:@"C",@"D", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return boys.count;
    }
    else {
        return girls.count;
        }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    if (indexPath.section == 0) {
        cell.textLabel.text = boys[indexPath.row];
    } else {
        cell.textLabel.text = girls[indexPath.row];
        cell.textLabel.textColor = [UIColor redColor];
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    
    return cell;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Boys";
    } else {
        return @"Girls";
    }
}
//For color change of section field and its text properties.
- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *headerView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)];
    
    //Put your common code here
    // lets say you need all background color to be white. do this here
    [headerView setBackgroundColor:[UIColor greenColor]];
    
    //Check the section and do section specific contents
    if (section == 0){
        [headerView setText:@"Boys"];
        headerView.textAlignment = NSTextAlignmentCenter;
    }
        else if (section == 1){
        [headerView setText:@"Girls"];
        [headerView setBackgroundColor:[UIColor redColor]]; 
        }
    return headerView;
}
@end
