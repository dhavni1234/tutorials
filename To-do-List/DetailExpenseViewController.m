//
//  DetailExpenseViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "DetailExpenseViewController.h"

@interface DetailExpenseViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblExpense;
@property (weak, nonatomic) IBOutlet UILabel *lblExpenseDetails;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblCategory;

@end

@implementation DetailExpenseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblExpense.text = self.EC.expense;
    self.lblExpenseDetails.text = self.EC.expenseDetails;
    self.lblDate.text = [NSString stringWithFormat:@"%@",self.EC.date];
    self.lblCategory.text = self.EC.category;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EditExpenseViewController *eevc = (EditExpenseViewController*)segue.destinationViewController;
    eevc.E =self.EC;
    eevc.index = self.index;
    eevc.delegateEEP =self;
    
    
}
-(void)editExpense:(ExpenseClass *)EE atindex:(int)a{
    [self.delegateDEP saveExpense:EE atindex:a];
}

@end
