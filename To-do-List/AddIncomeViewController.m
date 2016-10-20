//
//  AddIncomeViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "AddIncomeViewController.h"

@interface AddIncomeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtFieldIncome;
@property (weak, nonatomic) IBOutlet UITextView *txtViewDetails;
@property (weak, nonatomic) IBOutlet UIDatePicker *pickerDate;

@end

@implementation AddIncomeViewController

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
    IncomeClass *I = [[IncomeClass alloc]initWithIncome:self.txtFieldIncome.text Details:self.txtViewDetails.text Date:self.pickerDate.date];
    [self.delegateAIVCP addIncome:I];
}

@end
