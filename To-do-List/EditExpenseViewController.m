//
//  EditExpenseViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "EditExpenseViewController.h"

@interface EditExpenseViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnShowDate;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldExpense;
@property (weak, nonatomic) IBOutlet UITextView *txtViewExpenseDetails;
@property (weak, nonatomic) IBOutlet UIButton *btnShowCategory;

@end

@implementation EditExpenseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.txtFieldExpense.text = self.E.expense;
    self.txtViewExpenseDetails.text = self.E.expenseDetails;
    //self.btnShowCategory.titleLabel.text = self.E.category;
    [self.btnShowCategory setTitle:self.E.category forState:UIControlStateNormal];
    NSLog(@"%@",self.E.category);
    NSLog(@"%@",self.E.date);
    [self.btnShowDate setTitle:[NSString stringWithFormat:@"%@",self.E.date] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ChooseCategoryViewController *CD = (ChooseCategoryViewController*)segue.destinationViewController;
    CD.delegateCCP = self;
    
    
 
}

-(void)setDate:(NSDate *)Cdate{
    [self.btnShowDate setTitle:[NSString stringWithFormat:@"%@",Cdate] forState:UIControlStateNormal];
    
}
- (IBAction)btnDone:(id)sender {
    ExpenseClass *EEE = [[ExpenseClass alloc]initWithExpense:self.txtFieldExpense.text ExpenseDetails:self.txtViewExpenseDetails.text Date:(NSDate*)self.btnShowDate.titleLabel.text Category:self.btnShowCategory.titleLabel.text];
    [self.delegateEEP editExpense:EEE atindex:self.index];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}

//here coding for button date is done cos as there are not 2 direct segues formed in a view controller
- (IBAction)btnDate:(id)sender {
    ChooseDateViewController *p = (ChooseDateViewController*)[self.storyboard instantiateViewControllerWithIdentifier:@"Date"];
    p.delegateDate = self;
    [self.navigationController pushViewController:p animated:YES];
    
}
- (IBAction)btnCategory:(id)sender {
    
}

-(void)setCategory:(NSString *)SC{
    [self.btnShowCategory setTitle:SC forState:UIControlStateNormal];
    //self.btnShowCategory.titleLabel.text = SC;
    NSLog(@"string is %@",SC);
}


@end
