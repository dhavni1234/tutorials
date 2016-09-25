//
//  ViewController.m
//  AnimationDemo
//
//  Created by Bijendra Bhati on 24/11/15.
//  Copyright (c) 2015 Bodacious IT Hub Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL visible;
    BOOL moved;
}
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UIView *anotherView;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIView *slideView;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btns;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    visible = true;
    moved = false;
    
    //add radius
    
    self.myImage.layer.cornerRadius = self.myImage.frame.size.width/2;
    self.myImage.layer.masksToBounds = YES;
    
    self.myView.layer.cornerRadius = 4.0;
    self.myView.layer.masksToBounds = YES;
    
    self.btn.layer.cornerRadius = 3.0;
    self.btn.layer.masksToBounds = YES;
    
    
    for (UIButton *btn in self.btns) {
        
        btn.layer.cornerRadius = 3.0;
        btn.layer.masksToBounds = YES;
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma code for amiminate button(button color green)
- (IBAction)btnAnimate:(id)sender {
    
    if(visible){
        
        [UIView animateWithDuration:0.5 animations:^{
            
            self.myView.alpha = 0;
            visible = false;
            
        }];
    }
    else{
        [UIView animateWithDuration:0.5 animations:^{
            
            self.myView.alpha = 1;
            visible = true;
            
        }];
    }
   
}
#pragma code for slideview having Button (view red color)
- (IBAction)slideViewButton:(id)sender {
    CGRect rect = self.slideView.frame;
    
    if(!moved){
        
        int x = rect.origin.x;
        int y = rect.origin.y ;
        int width = rect.size.width+60;
        int height = rect.size.height;
        
        [UIView animateWithDuration:0.5 animations:^{
            
            self.slideView.frame = CGRectMake(x, y, width, height);
            moved = true;
        }];
        
        
        
        
    }
    else{
        
        int x = rect.origin.x;
        int y = rect.origin.y ;
        int width = rect.size.width-60;
        int height = rect.size.height;
        
        [UIView animateWithDuration:0.5 animations:^{
            
            
            self.slideView.frame = CGRectMake(x, y, width, height);
            moved = false;
        }];
        
    }
    
}
#pragma code for view move (button named: Move , view: blue color)

- (IBAction)btnMove:(id)sender {
    
    CGRect rect = self.anotherView.frame;
    
    if(!moved){
        
        int x = rect.origin.x;
        int y = rect.origin.y + 100;
        int width = rect.size.width;
        int height = rect.size.height;
        
        [UIView animateWithDuration:0.5 animations:^{
            
            self.anotherView.frame = CGRectMake(x, y, width, height);
            moved = true;
        }];
        
        
       
        
    }
    else{
        
        int x = rect.origin.x;
        int y = rect.origin.y - 100;
        int width = rect.size.width;
        int height = rect.size.height;
       
        [UIView animateWithDuration:0.5 animations:^{
            
            
            self.anotherView.frame = CGRectMake(x, y, width, height);
            moved = false;
        }];
        
    }
    
}


@end
