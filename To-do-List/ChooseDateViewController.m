//
//  ChooseDateViewController.m
//  
//
//  Created by TechReviews on 4/29/16.
//
//

#import "ChooseDateViewController.h"

@interface ChooseDateViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *pickerDate;

@end

@implementation ChooseDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDone:(id)sender {
    [self.delegateDate setDate:self.pickerDate.date];
    [self.navigationController popViewControllerAnimated:YES];
}


@end
