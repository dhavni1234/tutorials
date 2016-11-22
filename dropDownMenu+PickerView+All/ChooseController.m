//
//  ChooseController.m
//  dropDownButtonTry
//


#import "ChooseController.h"

@interface ChooseController ()

@end

@implementation ChooseController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets = NO; // removes the top spaces of scroll view.
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// code for segue to execute with button title.
- (IBAction)buttonClicked:(id)sender {
    NSLog(@"Button pressed: %@", [sender currentTitle]);
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:[sender currentTitle]];
    //[self presentViewController:vc animated:YES completion:nil];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
