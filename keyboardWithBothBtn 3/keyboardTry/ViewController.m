//
//  ViewController.m
//  keyboardTry
//
//  Created by TechReviews on 9/7/16.
//  Copyright © 2016 xtremer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *colours;
    int selectedIndex;
    
}


//@property UIScrollView *scrollview1;
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //self.btnOutlet.hidden = YES;

    colours = [[NSMutableArray alloc]init];
    [colours addObject:@"Yellow"];
    [colours addObject:@"Pink"];
    [colours addObject:@"Red"];
    [colours addObject:@"Blue"];
    [colours addObject:@"Violet"];
    [colours addObject:@"Green"];
    [colours addObject:@"White"];
    [colours addObject:@"Maroon"];
    [colours addObject:@"Saffron"];
    
    
    [self.tableView reloadData];
    int lastRowNumber = (int)[self.tableView numberOfRowsInSection:0] - 1;
    NSIndexPath* ip = [NSIndexPath indexPathForRow:lastRowNumber inSection:0];
    [self.tableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionBottom animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.scrollView setContentOffset:scrollPoint animated:YES ]; // scrollview > tableview
    [self.tableView setContentOffset:scrollPoint animated:YES ];
    

}
-(void)textFieldDidEndEditing:(UITextField *)textField {
    [self.scrollView setContentOffset:CGPointZero animated:YES]; // scrollview > tableview
    [self.tableView setContentOffset:CGPointZero animated:YES];
    int lastRowNumber = (int)[self.tableView numberOfRowsInSection:0] - 1;
    NSIndexPath* ip = [NSIndexPath indexPathForRow:lastRowNumber inSection:0];
    [self.tableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionBottom animated:NO];
    
}


-(void)dissmisskeyboard {
    [self.txtField resignFirstResponder];
}
- (IBAction)button:(id)sender {
    [colours addObject:self.txtField.text];
    [self.tableView reloadData];
    
  /*  if((self.txtField.text.length >0)){
        self.btnOutlet.hidden = NO;
    }
    else{
        self.btnOutlet.hidden = YES;

    }*/
    int lastRowNumber = (int)[self.tableView numberOfRowsInSection:0] - 1;
    NSIndexPath* ip = [NSIndexPath indexPathForRow:lastRowNumber inSection:0];
    [self.tableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionTop animated:NO];
    
    self.txtField.text = nil;
    [self dissmisskeyboard];
}

- (IBAction)button1:(id)sender {
   
    [colours addObject:self.txtField.text];
    [self.tableView reloadData];
    
    int lastRowNumber = (int)[self.tableView numberOfRowsInSection:0] - 1;
    NSIndexPath* ip = [NSIndexPath indexPathForRow:lastRowNumber inSection:0];
    [self.tableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionTop animated:NO];

    self.txtField.text = nil;
    [self dissmisskeyboard];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
    //[self dissmisskeyboard];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return colours.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = colours[indexPath.row];
    return cell;
}
/*- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
    int lastRowNumber = (int)[_tableView numberOfRowsInSection:0] - 1;
    NSIndexPath* ip = [NSIndexPath indexPathForRow:lastRowNumber inSection:0];
    [self.tableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionTop animated:NO];
}*/

@end
