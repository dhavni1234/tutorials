//
//  CCTextField.h
//  ccTextField
//
//  Created by Raghu Bansal on 10/24/16.
//  Copyright © 2016 XtreemSolution. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface CCTextField : UITextField
@property(nonatomic) IBInspectable NSInteger borderWidth;
@property(nonatomic) IBInspectable NSInteger cornerRadius;
@property(nonatomic) IBInspectable UIColor *borderColor;


@end
