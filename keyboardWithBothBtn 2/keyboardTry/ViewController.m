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
    colours = [[NSMutableArray alloc]init];
    [colours addObject:@"Yellow"];
    [colours addObject:@"Pink"];
    [colours addObject:@"Red"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.scrollView setContentOffset:scrollPoint animated:YES ];
}
-(void)textFieldDidEndEditing:(UITextField *)textField {
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}


-(void)dissmisskeyboard {
    [self.txtField resignFirstResponder];
}
- (IBAction)button:(id)sender {
    [self dissmisskeyboard];
}

- (IBAction)button1:(id)sender {
    [self dissmisskeyboard];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //[self.view endEditing:YES];
    [self dissmisskeyboard];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return colours.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = colours[indexPath.row];
    return cell;
}

@end
