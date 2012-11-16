//
//  Medication.m
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "Medication.h"

@implementation Medication

-(id)initWithName:(NSString *)name Dose:(NSString *)dose Frequency:(NSString *)frequency Description:(NSString *)description
{
    self = [super init];
    
    if(self)
    {
        _name = name;
        _dose = dose;
        _frequency = frequency;
        _description = description;
        
        return self;
    }
    return nil;
}

@end
