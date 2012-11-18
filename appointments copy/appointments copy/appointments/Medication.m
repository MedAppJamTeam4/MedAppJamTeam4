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
    -(void)setDose:(NSString *)dose
    {
        _dose = dose;
    }
    
    -(void)setFrequency:(NSString *)frequency
    {
        _frequency = frequency;
    }
    
    -(void)setName:(NSString *)name
    {
        _name = name;
    }
    
    -(void)setDescription:(NSString *)description
      {
          _description = description;
      }
    
    -(NSString *)getDose
    {
        return [self dose];
    }
    
    -(NSString *)getFrequency
    {
        return [self frequency];
    }
    
    
    -(NSString *)getName
    {
        return [self name];
    }
    
    -(NSString *)getDescription
    {
        return [self description];
    }


@end
