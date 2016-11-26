//
//  ViewController.m
//  customCellTry1
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *allInfoArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDictionary *info1 = @{@"name":@"Alpha",
                            @"city":@"Jaipur",
                            @"image": [UIImage imageNamed: @"i1.png"],
                            };
    NSDictionary *info2 = @{@"name":@"Beta",
                            @"city":@"Delhi",
                            @"image": [UIImage imageNamed: @"i2.png"],
                            };
    allInfoArray = [[NSMutableArray alloc]initWithObjects:info1,info2, nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return allInfoArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    customCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[customCellTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    //Shows the data of all array.
    NSDictionary *infoDict = [allInfoArray objectAtIndex:indexPath.row];
    NSLog(@"%@",infoDict);
    
    cell.lblName.text = [infoDict valueForKey:@"name"];
    cell.lblCity.text = [infoDict valueForKey:@"city"];
    // **To show image.**
    cell.imageView.image = [infoDict valueForKey:@"image"];
    
    return cell;
}
















@end
