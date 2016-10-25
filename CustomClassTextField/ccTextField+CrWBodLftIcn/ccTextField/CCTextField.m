//
//  CCTextField.m
//  ccTextField
//
//  Created by Raghu Bansal on 10/24/16.
//  Copyright © 2016 XtreemSolution. All rights reserved.
//

#import "CCTextField.h"

@implementation CCTextField
{
    UIImageView *leftIconView;
    UIView *leftContainerView;
    UIImageView *leftIconImageView;
}

- (void) awakeFromNib
{
    [super awakeFromNib];
    [self initialize];
}



- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self initialize];
        
    }
    return self;
}


// Shows the proper changes in story board.
- (void)prepareForInterfaceBuilder{
    [self initialize];
}



-(void)initialize {
    self.tintColor = [UIColor blueColor]; // code for curser color when we enter text to text field.
    [self initializeView];
    
    if(self.leftIcon)
    {
        [self addLeftIcon];
    }

}
-(void)addLeftIcon
{
    leftContainerView = [[UIView alloc] init];

    leftIconImageView = [[UIImageView alloc] initWithImage:self.leftIcon];
    [leftIconImageView setBackgroundColor:[UIColor clearColor]];
    [leftContainerView addSubview:leftIconImageView];
    [self setLeftView:leftContainerView];
    [self setLeftViewMode:UITextFieldViewModeAlways];
}

-(void)drawRect:(CGRect)rect
{
    
    [leftContainerView setFrame:CGRectMake(0, 0, self.frame.size.height, self.frame.size.height)];
    [leftIconImageView setFrame:CGRectMake(self.frame.size.height/3, (self.frame.size.height/3), self.frame.size.height/3, self.frame.size.height/3)];
    leftContainerView.frame  = CGRectMake(0, 0, self.frame.size.height, self.frame.size.height) ;
}




- (void)initializeView {
    if(self.borderColor == nil)
    {
        self.borderColor = [UIColor whiteColor];
    }
    
    self.layer.cornerRadius = self.cornerRadius;
    self.layer.borderColor = self.borderColor.CGColor;
    self.layer.borderWidth = self.borderWidth;
}


@end

