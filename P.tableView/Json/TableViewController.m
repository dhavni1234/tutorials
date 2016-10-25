//
//  TableViewController.m
//  Json
//
//

#import "TableViewController.h"

@interface TableViewController ()
{
    NSArray *arr;
        
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
  
    //Notification data received.
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(triggerAction:) name:@"NotificationMessageEvent" object:nil];

}
-(void) triggerAction:(NSNotification *) notification
{
    if ([notification.object isKindOfClass:[NSArray class]])
    {
        NSArray *dataReceived = [notification object];
         arr = dataReceived ;
        NSLog(@"arr1 value %@",dataReceived);
        [self.tableview reloadData];

        /*NSString *fullname = [arr[0] valueForKey:@"name"]; // here keys are as per the webservices.
        NSString *userType = [arr[0] valueForKey:@"user_type"];
        NSString *licenseNumber = [arr[0] valueForKey:@"license_number"];
        NSString *email = [arr[0] valueForKey:@"email"];
        NSString *age = [arr[0] valueForKey:@"age"];
        NSString *sex = [arr[0] valueForKey:@"sex"];
        // To show image.
        NSURL *imageURL = [NSURL URLWithString:[arr[0] valueForKey:@"profile_image"]];
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        UIImage *imageLoad = [[UIImage alloc] initWithData:imageData];*/
        
    }
    else
    {
        NSLog(@"Error, object not recognised.");
    }
}

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arr.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 280;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    TableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    arr  = [arr objectAtIndex:indexPath.row];

    //display data in table view
    cell.lblName.text = [arr valueForKey:@"name"]; // assigning values to the respective labels.
    cell.lblUserType.text = [arr valueForKey:@"user_type"];
    cell.lblLicense.text = [arr valueForKey:@"license_number"];
    cell.lblEmail.text = [arr valueForKey:@"email"];
    cell.lblAge.text = [arr valueForKey:@"age"];
    cell.lblSex.text =  [arr valueForKey:@"sex"];
    // To show image.
    NSURL *imageURL = [NSURL URLWithString:[arr valueForKey:@"profile_image"]];
     NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
     UIImage *imageLoad = [[UIImage alloc] initWithData:imageData];
     cell.imageView.image = imageLoad;
    
    return cell;
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
