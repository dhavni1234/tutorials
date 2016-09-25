//
//  Person.h
//  ProtocolDemo2
//
//  Created by Bodacious on 03/12/15.
//  Copyright © 2015 Bodacious. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString* firstName; // two properties of type nsstring declared.
@property NSString* lastName;

-(id)initWithFName:(NSString*)fname LName:(NSString*)lname; // initiliser method created to initilise the object.


@end
