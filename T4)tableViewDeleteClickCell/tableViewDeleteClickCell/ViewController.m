//
//  ViewController.m
//  tableViewDeleteClickCell
//


#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *nameArray; // nsmutable is taken as we have to change during run time.
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem; // programaticaly button.
    
    nameArray = [[NSMutableArray alloc]initWithObjects:@"Raman",@"Aman",@"Ananya",@"Zoya", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return nameArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = nameArray[indexPath.row];
    return cell;
}

// **This is tableview delegate method performs the desired action on tapping of particular cell.**
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Section selected: %ld",(long)indexPath.section);
    NSLog(@"Row selected: %ld",(long)indexPath.row);
    
    // **Both the below methods are right you can choose any of them, For displaying the text of the selected cell.**
    
//    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
//    NSLog(@"Selected cell text is: %@",cell);
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellLabelText = cell.textLabel.text;
    NSLog(@"Selected cell text is: %@",cellLabelText);
}

//**For deletion of cell.**
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [nameArray removeObjectAtIndex:indexPath.row];
    
    NSArray *arr = [NSArray arrayWithObjects:indexPath, nil];
    
    [tableView deleteRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationNone];
    
}

// On clicking two new rows are added into the tableView.
- (IBAction)buttonAddClick:(id)sender {
    
    long count = (long)nameArray.count;
    count++;
    
    NSString *newItem = [NSString stringWithFormat:@"New Item is of no %ld",count];
    
    
    [nameArray insertObject:newItem atIndex:0];
    [nameArray insertObject:newItem atIndex:0];
    
    NSIndexPath *index = [NSIndexPath indexPathForRow:0 inSection:0];
    NSIndexPath *index1 = [NSIndexPath indexPathForRow:1 inSection:0];
    
    NSArray *arr = [NSArray arrayWithObjects:index,index1, nil];
    [self.tableView insertRowsAtIndexPaths:arr withRowAnimation:UITableViewRowAnimationLeft];
    
}


@end
