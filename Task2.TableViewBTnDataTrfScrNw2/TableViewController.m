//
//  TableViewController.m
//  TaskTableViewBTnDataTrf
//
// 
//

#import "TableViewController.h"
#import "TableViewCell.h"

@interface TableViewController ()
{
    NSDictionary *userInfo1Dict;
    NSDictionary *userInfo2Dict;
    NSDictionary *userInfo3Dict;
    NSArray *arrayAllUserInfo;
    int selectedIndex;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *userInfo4Dict = @{@"firstName":@"Jack",
                                    @"lastName":@"Marvick",
                                    @"city":@"Dellas",
                                    @"mob":@"123",
                            
                                     };
    NSDictionary *userInfo5Dict = @{@"firstName":@"Alma",
                                    @"lastName":@"Beptist",
                                    @"city":@"texas",
                                    @"mob":@"456",
                                };
    NSDictionary *userInfo6Dict = @{@"firstName":@"John",
                                    @"lastName":@"Carter",
                                    @"city":@"Abu Dhabi",
                                    @"mob":@"789",
                                };


    
    arrayAllUserInfo = [[NSArray alloc] initWithObjects:userInfo4Dict,userInfo5Dict,userInfo6Dict, nil];
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
    cell.btnGetDetailOutlet.tag = indexPath.row;
    
    // **Here the selector is used to provide the button action functionality. Here as we have declared into TableViewcell, and we have to use it TableViewController.**
    [cell.btnGetDetailOutlet addTarget:self action:@selector(whatHappensButtonOnClick:) forControlEvents:UIControlEventTouchUpInside];
    

    

    return cell;
}

// **Code shows which row is selected.**
- (NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedIndex = (int)indexPath.row;
    NSLog(@"Index Selected %d",selectedIndex);
    return indexPath;
    
}
//**Button action.**
-(void)whatHappensButtonOnClick:(UIButton*)sender
{
    if (sender.tag == 0)
    {
        UserInfo1Controller *UserInfo1 = (UserInfo1Controller*)[self.storyboard instantiateViewControllerWithIdentifier:@"detailPage"];
        [self.navigationController pushViewController:UserInfo1 animated:YES];
        UserInfo1.userInfoDictOnController1 = arrayAllUserInfo[0];
    }
    else if (sender.tag == 1){
        UserInfo1Controller *UserInfo1 = (UserInfo1Controller*)[self.storyboard instantiateViewControllerWithIdentifier:@"detailPage"];
        [self.navigationController pushViewController:UserInfo1 animated:YES];
        UserInfo1.userInfoDictOnController1 = arrayAllUserInfo[1];
    }
    else if (sender.tag == 2){
        UserInfo1Controller *UserInfo1 = (UserInfo1Controller*)[self.storyboard instantiateViewControllerWithIdentifier:@"detailPage"];
        [self.navigationController pushViewController:UserInfo1 animated:YES];
        UserInfo1.userInfoDictOnController1 = arrayAllUserInfo[2];

    }

}



//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    UserInfo1Controller *UserInfo1 = (UserInfo1Controller*)[self.storyboard instantiateViewControllerWithIdentifier:@"userInfo1"];
//    [self.navigationController pushViewController:UserInfo1 animated:YES];
//
//    
//}


@end
