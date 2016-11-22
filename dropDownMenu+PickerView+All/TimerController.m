//
//  TimerController.m
//  dropDownButtonTry
//


#import "TimerController.h"

@interface TimerController ()
{
    int afterRemainder;
    int remainder;
    NSTimeInterval countDownTimer;
}

@end

@implementation TimerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnStartAction:(id)sender {
    countDownTimer = (NSTimeInterval)self.timer.countDownDuration;
    remainder = countDownTimer;
    afterRemainder = countDownTimer - remainder%60;
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateCountDown) userInfo:nil repeats:YES];
    self.timer.hidden = YES;
    self.btnStart.hidden = YES;
}
- (void)updateCountDown {
    afterRemainder --;
    int hours = (int)(afterRemainder/(60*60));
    int mins = (int)(((int)afterRemainder/60)-(hours*60));
    int secs = (int)(((int)afterRemainder - (60 * mins) - (60 *hours * 60)));
    NSString *displayText = [[NSString alloc]initWithFormat:@"%02u: %02u: %02u",hours,mins,secs];
    self.label.text = displayText;
    
    // Effects that performs the desired task as per requirement.
    /*
    if (hours == 00 && mins == 00 && secs == 55) {
        self.controllerView.backgroundColor = [UIColor blueColor];
    }
    else if (hours == 00 && mins == 00 && secs == 50){
        self.controllerView.backgroundColor = [UIColor greenColor];
    }
    else{
        self.controllerView.backgroundColor = [UIColor whiteColor];
    }*/

}

@end
