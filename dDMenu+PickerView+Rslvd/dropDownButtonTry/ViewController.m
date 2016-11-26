//
//  ViewController.m
//  dropDownButtonTry
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.btnDropDownOutlet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btnDropDownOutlet setTitle:@"▼" forState:UIControlStateNormal];
    self.dropView.hidden = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnDropDown:(id)sender {
    self.dropView.hidden = NO;
    [self.btnDropDownOutlet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btnDropDownOutlet setTitle:@"▲" forState:UIControlStateNormal];
    
    
}

- (IBAction)btnMale:(id)sender {
    self.lbl.text = @"Male";
    self.dropView.hidden = YES;
    [self.btnDropDownOutlet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btnDropDownOutlet setTitle:@"▼" forState:UIControlStateNormal];

}

- (IBAction)btnFemale:(id)sender {
    self.lbl.text = @"Female";
    self.dropView.hidden = YES;
    [self.btnDropDownOutlet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btnDropDownOutlet setTitle:@"▼" forState:UIControlStateNormal];
}

- (IBAction)btnTransgender:(id)sender {
    self.lbl.text = @"Transgender";
    self.dropView.hidden = YES;
    [self.btnDropDownOutlet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btnDropDownOutlet setTitle:@"▼" forState:UIControlStateNormal];
}
@end
