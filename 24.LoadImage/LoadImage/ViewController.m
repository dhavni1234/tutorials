//
//  ViewController.m
//  LoadImage
//
//  Created by Bodacious on 18/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.activity stopAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnLoadImage:(id)sender {
    
    [self.activity startAnimating];
    
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(LoadImage) object:nil];
    [thread start];
    
    
}
-(void)LoadImage{
    
    NSURL *url = [NSURL URLWithString:@"http://media1.santabanta.com/full6/Nature/Flowers/flowers-165a.jpg"];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    if(data!=nil){
        UIImage *img = [UIImage imageWithData:data];
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.myImageView.image = img;
            [self.activity stopAnimating];
        }];
    }
    else{
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            //self.myImageView.image = img;
            [self.activity stopAnimating];
            NSLog(@"Could not load image");
        }];
    }
    
}
- (IBAction)btnLoadImage2:(id)sender {
    {
        
        [self.activity startAnimating];
        
        dispatch_queue_t backgroundQueue = dispatch_queue_create("dispatch_queue_#1", 0);
        dispatch_async( backgroundQueue, ^{
            
            /*int i;
             for (i = 1; i<=10000; i++) {
             NSLog(@"Hello");
             }*/
            
            NSURL *url = [NSURL URLWithString:@"http://media1.santabanta.com/full6/Nature/Flowers/flowers-165a.jpg"];
            
            NSData *data = [NSData dataWithContentsOfURL:url];
            
            if(data!=nil){
                UIImage *img = [UIImage imageWithData:data];
                
                //to perform operation on main queue
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.myImageView.image = img;
                    NSLog(@"Image Set");
                    [self.activity stopAnimating];
                });
            }
            else{
                NSLog(@"Error fetching image");
            }
            
            
        });
        
        
        
        
    }
}
- (IBAction)button3:(id)sender {
    [self.activity startAnimating];
    
    dispatch_queue_t backgroundQueue = dispatch_queue_create("dispatch_queue_#1", 0);
    
    dispatch_async( backgroundQueue, ^{
        for (int i = 1; i<=10000; i++) {
            NSLog(@"Hello");
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.activity stopAnimating];
        });
    });
    
}

@end
