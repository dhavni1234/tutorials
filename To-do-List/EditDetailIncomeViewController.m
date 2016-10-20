//
//  EditDetailIncomeViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "EditDetailIncomeViewController.h"

@interface EditDetailIncomeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtFieldIncome;
@property (weak, nonatomic) IBOutlet UITextView *txtViewDetails;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;

@end

@implementation EditDetailIncomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.txtFieldIncome.text = self.I.income;
    self.txtViewDetails.text = self.I.details;
   
    
    
    
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

- (IBAction)btnDone:(id)sender {
    IncomeClass *II =[[IncomeClass alloc]initWithIncome:self.txtFieldIncome.text Details:self.txtViewDetails.text Date:self.datePicker.date];
    [self.delegateEIVP editIncome:II atindex:self.index];
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController popViewControllerAnimated:YES];
}



@end
