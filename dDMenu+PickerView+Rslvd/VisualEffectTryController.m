//
//  VisualEffectTryController.m
//  dropDownButtonTry
//

#import "VisualEffectTryController.h"

@interface VisualEffectTryController ()

@end

@implementation VisualEffectTryController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
    visualEffectView.frame = self.imageView.bounds;
    [self.imageView addSubview:visualEffectView];*/
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

- (IBAction)btnHide:(id)sender {
    self.visualEffect.hidden = YES;
}
- (IBAction)btnBlurShow:(id)sender {
    self.visualEffect.hidden = NO;
}
@end
