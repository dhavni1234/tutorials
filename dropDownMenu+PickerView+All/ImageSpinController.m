//http://stackoverflow.com/questions/9844925/uiview-infinite-360-degree-rotation-animation
//  ImageSpinController.m
//  dropDownButtonTry

// Note: Image1 rotates @ 180 deg so be sure for the rotations, and Image2 rotates slow take the necessery actions according to your requirement.


#import "ImageSpinController.h"

@interface ImageSpinController ()
{
    BOOL animating;
    
    //ForImage2
    NSTimer *spinTimer;
}

@end

@implementation ImageSpinController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self startSpin];
    
    //For Image2.
    spinTimer = [NSTimer scheduledTimerWithTimeInterval:.01 target: self selector:@selector(spinVoid) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// For Image1
- (void) spinWithOptions: (UIViewAnimationOptions) options {
    // this spin completes 360 degrees every 2 seconds
    [UIView animateWithDuration: 0.5f
                          delay: 0.0f
                        options: options
                     animations: ^{
                         self.imageSpin1.transform = CGAffineTransformRotate(self.imageSpin1.transform, M_PI / 2);
                     }
                     completion: ^(BOOL finished) {
                         if (finished) {
                             if (animating) {
                                 // if flag still set, keep spinning with constant speed
                                 [self spinWithOptions: UIViewAnimationOptionCurveLinear];
                             } else if (options != UIViewAnimationOptionCurveEaseOut) {
                                 // one last spin, with deceleration
                                 [self spinWithOptions: UIViewAnimationOptionCurveEaseOut];
                             }
                         }
                     }];
}

- (void) startSpin {
    if (!animating) {
        animating = YES;
        [self spinWithOptions: UIViewAnimationOptionCurveEaseIn];
    }
}

- (void) stopSpin {
    // set the flag to stop spinning after one last 90 degree increment
    animating = NO;
}

//For Image2
-(void) spinVoid {
    
    self.imageSpin2.transform = CGAffineTransformRotate(self.imageSpin2.transform, 0.001);
    
}



@end
