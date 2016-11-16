//
//  ViewController.m
//  TryPCH
//


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.txtName.placeholder = TXT_EMAIL_PLACEHOLDER;
    self.txt2.placeholder = TXT_EMAIL_PLACEHOLDER;
    self.imageView.image = IMAGELOGO;
    if (IS_IPHONE_4S){
        NSLog(@"****device**** is: 4S");
    }
    else if (IS_IPHONE_5){
        NSLog(@"****device**** is: 5S");
    }

    else if (IS_IPHONE_6){
        NSLog(@"****device**** is: 6");
    }

   else if (IS_IPHONE_6_PLUS){
        NSLog(@"****device**** is: 6+");
    }
    NSString* iosVersion=[[UIDevice currentDevice] systemVersion];
    NSLog(@"******Current Version******** is:%@",iosVersion);

   
    //Condition check.
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
//        NSLog(@"****** Greater system version *****");
//    }
    // To blink effect.
    self.lblAlert.alpha = 0;
    self.btn3Outlet.alpha = 0;
    
    [UIView animateWithDuration:1.5 delay:5.5 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        self.lblAlert.alpha = 1;
        self.btn3Outlet.alpha = 1;

    } completion:nil]; // here delay is first display time & animateWithDuration is gap.
    
   /* // button
    self.btn3Outlet.alpha = 0;
    [UIButton animateWithDuration:1.5 delay:0.5 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        [UIView setAnimationRepeatCount:3];// counter for blinks
        self.btn3Outlet.alpha = 1;
        
    } completion:nil];*/
//    UIButton *random = (UIButton *)[self.view viewWithTag:i+20];
//    random.alpha = 0;
//    
//    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    [animation setFromValue:[NSNumber numberWithFloat:0.0]];
//    [animation setToValue:[NSNumber numberWithFloat:1.0]];
//    [animation setDuration:0.2f];
//    [animation setRepeatCount:3];
//    [animation setAutoreverses:YES];
//    [animation setRemovedOnCompletion:NO];
//    [random.layer addAnimation:animation forKey:@"animation"];
    //

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btn1:(id)sender {
   self.txtName.text = [NSString stringWithFormat:@"%d",RATING];
}


- (IBAction)btn2:(id)sender {
    self.txt2.text = TEXT;
}
@end
