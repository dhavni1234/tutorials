//
//  Person.m
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import "Person.h"

@implementation Person

// initliser defined below for fname and lname
-(id)initWithFName:(NSString *)fname LName:(NSString *)lname{
    
    self.firstName = fname;
    self.lastName = lname;
    return self;
}
@end
