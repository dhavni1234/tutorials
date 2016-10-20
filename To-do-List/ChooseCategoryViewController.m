//
//  ChooseCategoryViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "ChooseCategoryViewController.h"

@interface ChooseCategoryViewController ()
{
    NSMutableArray *arrayCategory;
    int selectedIndex;

}

@end

@implementation ChooseCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    arrayCategory = [[NSMutableArray alloc]init];
    CategoryClass *Cat = [[CategoryClass alloc]initWithCategoryName:@"FOOD" CategoryDetails:@"Food with friends at restro"];
    [arrayCategory addObject:Cat];
    [arrayCategory addObject:[[CategoryClass alloc]initWithCategoryName:@"MOVIE" CategoryDetails:@"Movie With friends"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayCategory.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
    if(!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell2"];
    CategoryClass *CC = arrayCategory[indexPath.row];
    cell.textLabel.text = CC.categoryName;
    return cell;
}
-(NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    selectedIndex = (int)indexPath.row;
    CategoryClass *p = arrayCategory[selectedIndex];
    [self.delegateCCP setCategory:p.categoryName];
    [self.navigationController popViewControllerAnimated:YES];
    return indexPath;
    
}
//for adding a category
-(void)addCategory:(CategoryClass *)AC{
    [arrayCategory addObject:AC];
    [self.tableView reloadData];
    //[self.navigationController popViewControllerAnimated:YES];
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    AddCategoryViewController *ACVC = (AddCategoryViewController*)segue.destinationViewController;
    ACVC.delegateAC = self;
    
}


@end
