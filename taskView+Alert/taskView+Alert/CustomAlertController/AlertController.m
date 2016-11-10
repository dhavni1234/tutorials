//
//  AlertController.m
//  taskView+Alert
//


#import "AlertController.h"

@interface AlertController ()

@end

@implementation AlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor clearColor];
    
    self.alertTitle.text = _titleString;
    self.alertMessage.text = _msgString;
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


- (IBAction)clickButton:(id)sender{
    [_alertDelegate respondsToSelector:@selector(alert:clickButtonAtIndex:)];
}

+ (void)alertWithTitle:(NSString *)title andMessage:(NSString *)message delegate:(id)delegate alertButtonTitles:(NSArray *)buttons{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Alert" bundle:nil];
    
    AlertController *vc = [storyboard instantiateViewControllerWithIdentifier:@"AlertController"];
    vc.titleString = title;
    vc.msgString = message;
    
    UIViewController *presentVC = [[[UIApplication sharedApplication] windows] lastObject].rootViewController;
    vc.view.backgroundColor = [UIColor colorWithRed:170.0/255.0 green:170.0/255.0 blue:170.0/255.0 alpha:0.1];
    vc.providesPresentationContextTransitionStyle = YES;
    vc.definesPresentationContext = YES;
    vc.alertDelegate = presentVC;
    [vc setModalPresentationStyle:UIModalPresentationOverCurrentContext];
    [presentVC presentViewController:vc animated:YES completion:nil];
}

@end
