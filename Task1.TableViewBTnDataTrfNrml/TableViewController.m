//
//  TableViewController.m
//  TaskTableViewBTnDataTrf
//


#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()
{
    NSArray *arrayAllUserInfo;
    int selectedIndex;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSDictionary *userInfo1 = @{@"firstName":@"Jack",
                            @"lastName":@"Marvick",
                            @"city":@"Dellas",
                            @"mob":@"123",
                            
                                     };
    NSDictionary *userInfo2 = @{@"firstName":@"Alma",
                                @"lastName":@"Beptist",
                                @"city":@"texas",
                                @"mob":@"456",
                                };
    NSDictionary *userInfo3 = @{@"firstName":@"John",
                                @"lastName":@"Carter",
                                @"city":@"Abu Dhabi",
                                @"mob":@"789",
                                };


    
    arrayAllUserInfo = [[NSArray alloc] initWithObjects:userInfo1,userInfo2,userInfo3, nil];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayAllUserInfo.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 85;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"] ;
    if(!cell)
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    NSDictionary *userInfoCollection  = [arrayAllUserInfo objectAtIndex:indexPath.row];
    cell.lblName.text = [userInfoCollection valueForKey:@"firstName"];
    cell.lblCity.text = [userInfoCollection valueForKey:@"city"];
    
    if(indexPath.row == 0)
    {
        cell.btnGetDetailOutlet.tag = 1;
        
    }
    else if (indexPath.row == 1)
    {
        cell.btnGetDetailOutlet.tag = 2;
    }
    else if (indexPath.row == 2)
    {
        cell.btnGetDetailOutlet.tag = 3;
    }
   
    

    return cell;
}

// Code shows which row is selected.The below code 
- (NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedIndex = (int)indexPath.row;
    NSLog(@"Index Selected %d",selectedIndex);
    return indexPath;
    
}


@end
