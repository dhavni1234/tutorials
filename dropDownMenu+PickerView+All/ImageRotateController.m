//
//  ImageRotateController.m
//  dropDownButtonTry


#import "ImageRotateController.h"

@interface ImageRotateController ()
{
    
    
}

@end

@implementation ImageRotateController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Method for rotation of image(direct CCP from net).
- (UIImage *)imageRotatedByDegrees:(UIImage*)oldImage deg:(CGFloat)degrees{
    // calculate the size of the rotated view's containing box for our drawing space
    UIView *rotatedViewBox = [[UIView alloc] initWithFrame:CGRectMake(0,0,oldImage.size.width, oldImage.size.height)];
    CGAffineTransform t = CGAffineTransformMakeRotation(degrees * M_PI / 180);
    rotatedViewBox.transform = t;
    CGSize rotatedSize = rotatedViewBox.frame.size;
    // Create the bitmap context
    UIGraphicsBeginImageContext(rotatedSize);
    CGContextRef bitmap = UIGraphicsGetCurrentContext();
    
    // Move the origin to the middle of the image so we will rotate and scale around the center.
    CGContextTranslateCTM(bitmap, rotatedSize.width/2, rotatedSize.height/2);
    
    //   // Rotate the image context
    CGContextRotateCTM(bitmap, (degrees * M_PI / 180));
    
    // Now, draw the rotated/scaled image into the context
    CGContextScaleCTM(bitmap, 1.0, -1.0);
    CGContextDrawImage(bitmap, CGRectMake(-oldImage.size.width / 2, -oldImage.size.height / 2, oldImage.size.width, oldImage.size.height), [oldImage CGImage]);
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (IBAction)btnUp:(id)sender {
    //respective method to call the main method for rotation of image.
    self.imageForRotation.image = [self imageRotatedByDegrees:self.imageForRotation.image deg:180];

}

- (IBAction)btnDown:(id)sender {
    self.imageForRotation.image = [self imageRotatedByDegrees:self.imageForRotation.image deg:180];

}

- (IBAction)btnLeft:(id)sender {
self.imageForRotation.image = [self imageRotatedByDegrees:self.imageForRotation.image deg:-90];

}

- (IBAction)btnRight:(id)sender {
    self.imageForRotation.image = [self imageRotatedByDegrees:self.imageForRotation.image deg:90];
}

@end
