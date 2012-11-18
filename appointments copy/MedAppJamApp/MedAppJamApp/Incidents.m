//
//  Incidents.m
//  MedAppJamApp
//
//  Created by marc wong on 11/16/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "Incidents.h"

@implementation Incidents

- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date {
    
    self =[super init];
    if (self) {
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    return self;
}

@end
