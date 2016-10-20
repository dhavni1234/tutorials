//
//  DetailIncomeViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "DetailIncomeViewController.h"

@interface DetailIncomeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblIncome;
@property (weak, nonatomic) IBOutlet UILabel *labelDetails;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;

@end

@implementation DetailIncomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblIncome.text = self.I.income;
    self.labelDetails.text = self.I.details;
    self.lblDate.text = [NSString stringWithFormat:@"%@",self.I.date];
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
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EditDetailIncomeViewController *edivc = (EditDetailIncomeViewController*)segue.destinationViewController;
    edivc.I = self.I;
    edivc.index = self.index;
    edivc.delegateEIVP = self;
}
-(void)editIncome:(IncomeClass *)EI atindex:(int)a{
    [self.delegateDIVP saveIncome:EI atindex:a];
}

@end
