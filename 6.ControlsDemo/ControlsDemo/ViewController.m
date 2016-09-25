//
//  ViewController.m
//  ControlsDemo
//
//  Created by Bodacious IT Hub on 05/11/15.
//  Copyright (c) 2015 Bodacious IT Hub. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGRect orignalRect;
    BOOL moved;
}

@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UIView *sliderView;

@property (weak, nonatomic) IBOutlet UILabel *switchControlLabel;

@property (weak, nonatomic) IBOutlet UIView *movableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.lbl1.text = @"Selected Segment is Third";
    
    NSLog(@"Slider View Frame Is(dynamical created) ::\n%@",NSStringFromCGRect(self.sliderView.frame));
    
    moved = false;
    orignalRect = self.movableView.frame;

    [self addNewView]; // view below yellow view apperar at runtime mean programatically
}

-(void)addNewView{
    
    UIView *v = [[UIView alloc]init];
    
    int x = self.movableView.frame.origin.x;
    int y = self.movableView.frame.origin.y + 50;
    int width = self.movableView.frame.size.width;
    int height = self.movableView.frame.size.height;
    
    CGRect rect = CGRectMake(x, y, width, height);
    
    v.frame = rect;
    v.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:v];

    
    
}

- (IBAction)btnMoveView:(id)sender {
    
    if(moved){
        self.movableView.frame = orignalRect;
        moved = false;
    }
    else{
        int x = self.movableView.frame.origin.x;
        int y = self.movableView.frame.origin.y + 50;
        int width = self.movableView.frame.size.width;
        int height = self.movableView.frame.size.height;
        
        CGRect rect = CGRectMake(x, y, width, height);
        
        self.movableView.frame = rect;
        moved = true;
    }
    
    
}

- (IBAction)sliderMoved:(id)sender {
    
    UISlider *sldr = (UISlider*)sender;
    
    self.sliderView.alpha = sldr.value;
    
    self.lbl1.text = [NSString stringWithFormat:@"Value is %f",sldr.value];
    
    
}
//switch button (Sync)
- (IBAction)switchClicked:(id)sender {
    
    UISwitch *swtch = (UISwitch*)sender;
    
    self.switchControlLabel.text = swtch.on?@"Sync is ON":@"Sync is OFF";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Segmented Button i.e here 4 buttons which changes color
- (IBAction)segmentedButtonClick:(id)sender {
    
    UISegmentedControl *segCntrl = (UISegmentedControl*)sender;
    
    NSString *title = [segCntrl titleForSegmentAtIndex:segCntrl.selectedSegmentIndex];
    
    self.lbl1.text = [NSString stringWithFormat:@"Selected Segment is %@",title];
    
    switch (segCntrl.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor redColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor grayColor];
            break;
            
            
        case 2:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
            
            
        default:
            self.view.backgroundColor = [UIColor blueColor];
            break;
            
            
    }
    
    
    
    
}

@end
