//http://www.edumobile.org/ios/updating-a-progress-bar-iphone/
//https://github.com/ioscreator/ioscreator
//  ProgressBarController.m
//  dropDownButtonTry
//


#import "ProgressBarController.h"

@interface ProgressBarController ()


@end

@implementation ProgressBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// used the direct code from above website.
- (IBAction)goPressed:(UIButton *)sender
{
    NSOperationQueue *progressQueue = [[NSOperationQueue alloc] init];
    [progressQueue addOperationWithBlock:^{
        for (int i = 1; i <= 10; i++) {
            sleep(1);
            float progressValue = (float)i/10.0;
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.progressBar setProgress:progressValue];
            });
        }
    }];
}


@end
