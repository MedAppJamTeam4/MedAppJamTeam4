//
//  Concerns.m
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "Concerns.h"

@implementation Concerns


- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date {
    
    self = [super init];
    if (self) {
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    return nil;
}

@end
