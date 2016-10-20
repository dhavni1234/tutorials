//
//  AddExpenseViewController.m
//  
//
//  Created by TechReviews on 5/1/16.
//
//

#import "AddExpenseViewController.h"

@interface AddExpenseViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnShowCategory;
@property (weak, nonatomic) IBOutlet UIButton *btnShowDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldExpense;
@property (weak, nonatomic) IBOutlet UITextView *txtViewExpenseDetails;

@end

@implementation AddExpenseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

- (IBAction)btnSave:(id)sender {
    ExpenseClass *E = [[ExpenseClass alloc]initWithExpense:self.txtFieldExpense.text ExpenseDetails:self.txtViewExpenseDetails.text Date:(NSDate*)self.btnShowCategory.titleLabel.text Category:self.btnShowCategory.titleLabel.text];
    [self.delegateADD addExpense:E];
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)setCategory:(NSString *)SC{
    [self.btnShowCategory setTitle:SC forState:UIControlStateNormal];
    //self.btnShowCategory.titleLabel.text = SC;
    NSLog(@"string is %@",SC);
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ChooseCategoryViewController *CD = (ChooseCategoryViewController*)segue.destinationViewController;
    CD.delegateCCP = self;
}


//For date
- (IBAction)btnDate:(id)sender {
    ChooseDateViewController *p = (ChooseDateViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"Date"];
    p.delegateDate = self;
    [self.navigationController pushViewController:p animated:YES];
}
-(void)setDate:(NSDate *)Cdate{
    [self.btnShowDate setTitle:[NSString stringWithFormat:@"%@",Cdate] forState:UIControlStateNormal];
    
}

@end
