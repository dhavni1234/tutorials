//
//  ViewController.m
//  tableViewTry2
//


#import "ViewController.h"

@interface ViewController ()
{
    NSArray *boysName;
    NSArray *girlsName;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    boysName = [[NSArray alloc]initWithObjects:@"Ram",@"Shyam", nil];
    girlsName = [[NSArray alloc]initWithObjects:@"Sita",@"Gita", nil];

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
        return boysName.count;
    }
    else {
        return girlsName.count;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    // names in section
    if (indexPath.section == 0) {
        cell.textLabel.text = boysName[indexPath.row];
    } else {
        cell.textLabel.text = girlsName[indexPath.row];
    }
    
    // accesory type
   
    if (indexPath.section == 0) {
        //image code
       /* UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
        cell.accessoryView = imageView;*/
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else {
       
    cell.accessoryType = UITableViewCellAccessoryNone;
    }
      return cell;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section ==0) {
        return @"Boys Name";
        
    }
    else {
        return @"Girls Name";
    }
}
/*- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return boysName;
}*/


@end
