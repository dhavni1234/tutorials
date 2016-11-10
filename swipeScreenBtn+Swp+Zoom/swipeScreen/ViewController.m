//
//  ViewController.m
//  swipeScreen
//


#import "ViewController.h"

@interface ViewController ()
{
    NSArray *arrayImages;
    NSArray *arrayImageDetailText;
    int Counter;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Counter = 0;
    self.btnPreviousOutlet.hidden = YES;

    arrayImages = [[NSArray alloc]initWithObjects:@"page1.png",@"image2.png",@"image3.png",@"image4.png", nil];
    self.imageView.image = [UIImage imageNamed:@"page1.png"];
    //arrayImages = @[@"page1.png", @"page2.png", @"page3.png", @"page4.png"];
    arrayImageDetailText = [[NSArray alloc]initWithObjects:@"Hii I am Mobile Screen",
                            @"Green Pointer",@"Red Pointer",@"Hii I am Check Mark", nil];
    self.txtView.text = [arrayImageDetailText objectAtIndex:0];
    NSLog(@"%lu",(unsigned long)arrayImages.count);
    
    //**Scroll zoom**
    /* //self.scrollView.minimumZoomScale = 1.0 ;
    self.scrollView.maximumZoomScale = 5.0;
    [self.scrollView setClipsToBounds:YES];*/
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 6.0;
    self.scrollView.contentSize = self.imageView.frame.size;
    self.scrollView.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNextImage:(id)sender {
    Counter += 1;
    NSLog(@"%lu",(unsigned long)arrayImages.count);

    if (Counter == (arrayImages.count - 1)){
        self.btnNextOutlet.hidden = YES;
    }
    
    if (Counter > 0) {
        self.btnPreviousOutlet.hidden = NO;
        NSLog(@"Condition Check For Counter:%d",Counter);
        // **To Show direct image without any duration, use below code else use other below code.**
        //[self.imageView setImage:[UIImage imageNamed:[arrayImages objectAtIndex:Counter]]];
        
        // **To Show direct image without Some Time duration.**
        UIImage * toImage = [UIImage imageNamed:[arrayImages objectAtIndex:Counter]];
        [UIView transitionWithView:self.imageView
                          duration:2.0f
                           options:UIViewAnimationOptionTransitionFlipFromLeft
                        animations:^{
                            self.imageView.image = toImage;
                        } completion:nil];
        // **To show text in text view.**
        [UIView transitionWithView:self.txtView
                          duration:2.0f
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            self.txtView.text = [arrayImageDetailText objectAtIndex:Counter];
                        } completion:nil];
        NSLog(@"Counter Value:%d",Counter);
        

    }
}


- (IBAction)btnPreviousImage:(id)sender {
    Counter -= 1;
    if (Counter == 0) {
        self.btnPreviousOutlet.hidden = YES;
        self.btnNextOutlet.hidden = NO;
    }
    
    if (Counter <= arrayImages.count) {
        // **To Show direct image without any duration, use below code else use other below code.**
        //[self.imageView setImage:[UIImage imageNamed:[arrayImages objectAtIndex:Counter]]];
        
        // **To Show direct image without Some Time duration.**
        UIImage * toImage = [UIImage imageNamed:[arrayImages objectAtIndex:Counter]];
        [UIView transitionWithView:self.imageView
                          duration:2.0f
                           options:UIViewAnimationOptionTransitionFlipFromRight
                        animations:^{
                            self.imageView.image = toImage;
                        } completion:nil];
        // **To show text in text view.**
        [UIView transitionWithView:self.txtView
                          duration:2.0f
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            self.txtView.text = [arrayImageDetailText objectAtIndex:Counter];
                        } completion:nil];
        NSLog(@"Counter Value:%d",Counter);

        
    }
}

// **zooming scroll view.**
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
 {
    return self.imageView;
}
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale
{
}



// **For swiping the images.**
- (IBAction)swipeGesture:(UIGestureRecognizer *)sender {
    //NSLog(@"Swiped");
    
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            NSLog(@"Condition Check For Counter:%d",Counter);
            self.btnNextOutlet.hidden = YES;    // hides the btn when swiping is used.
//            if (Counter == 0) {
//                self.btnPreviousOutlet.hidden = YES;
//                self.btnNextOutlet.hidden = NO;
//            }
            [self.imageView setImage:[UIImage imageNamed:[arrayImages objectAtIndex:Counter]]];
            self.txtView.text = [arrayImageDetailText objectAtIndex:Counter];
            Counter++;
            break;
            
        case UISwipeGestureRecognizerDirectionRight:
            NSLog(@"Condition Check For Counter:%d",Counter);
            self.btnPreviousOutlet.hidden = YES;    // hides the btn when swiping is used.

//            if (Counter == (arrayImages.count - 1)){
//                self.btnNextOutlet.hidden = YES;
//            }
            [self.imageView setImage:[UIImage imageNamed:[arrayImages objectAtIndex:Counter]]];
            self.txtView.text = [arrayImageDetailText objectAtIndex:Counter];
            Counter--;
            
            /*Counter += 1;
            NSLog(@"%lu",(unsigned long)arrayImages.count);
            
            if (Counter == (arrayImages.count - 1)){
                self.btnNextOutlet.hidden = YES;
            }
            
            if (Counter > 0) {
                self.btnPreviousOutlet.hidden = NO;
                NSLog(@"Condition Check For Counter:%d",Counter);
                [self.imageView setImage:[UIImage imageNamed:[arrayImages objectAtIndex:Counter]]];
                self.txtView.text = [arrayImageDetailText objectAtIndex:Counter];
                NSLog(@"Counter Value:%d",Counter);
            }*/

            break;
        default:
            break;
    }
    Counter = (Counter < 0 )? (int)([arrayImages count]-1):
    Counter % [arrayImages count];
   // self.imageView.image = [UIImage imageNamed:[images objectAtIndex:Counter]];
}
@end
