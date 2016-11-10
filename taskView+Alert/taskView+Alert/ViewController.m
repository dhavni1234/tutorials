//
//  ViewController.m
//  taskView+Alert
//


#import "ViewController.h"
#import "AlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib..
    self.controllerView.frame = CGRectMake(0, 44, 320, 416);
    self.ViewAlert.backgroundColor = [UIColor clearColor];
   
    
    //label
    
//    self.lblTextMatter.sizeToFit;
//    self.lblTextMatter.text = @"Hello how are you aima hjifnfn dfgfdgfdggg sfgfgfgfg fgfdgfg dfdfdfdsfdf dsfdsffdsfdsfdf dsfdfdsffdsfdsf";
//    self.lblTextMatter.adjustsFontSizeToFitWidth = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAlert:(id)sender{
    [AlertController alertWithTitle:@"Alert Title" andMessage:@"Test message" delegate:nil alertButtonTitles:@[@"Ok", @"Cancel"]];
}

- (void)alert:(AlertController *)alertController clickButtonAtIndex:(NSInteger)index{
    
}

@end
