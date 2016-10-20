//
//  AddCategoryViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "AddCategoryViewController.h"

@interface AddCategoryViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtFieldCategory;
@property (weak, nonatomic) IBOutlet UITextView *txtViewCategoryDetails;

@end

@implementation AddCategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnDone:(id)sender {
    CategoryClass *Cc = [[CategoryClass alloc]initWithCategoryName:self.txtFieldCategory.text CategoryDetails:self.txtViewCategoryDetails.text];
    [self.delegateAC addCategory:Cc];
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}

@end
