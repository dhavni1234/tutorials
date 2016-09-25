//
//  CustomCellClass.m
//  CustomCellDemo
//
//  Created by Bodacious on 25/11/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "CustomCellClass.h"

@implementation CustomCellClass

- (void)awakeFromNib {
    // Initialization code
    
    self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2;
    self.userImage.layer.masksToBounds = YES;
    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
