//
//  AppointmentDataController.m
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "AppointmentDataController.h"


@class Appointment;

@implementation AppointmentDataController


-(NSUInteger) countOfList
{
    return [self.masterAppointmentList count];
}

-(Appointment *) objectInListAtIndex:(NSUInteger)theIndex
{
    return [self.masterAppointmentList objectAtIndex:theIndex];
}

-(void)addAppointment:(Appointment *)appointment
{
    [self.masterAppointmentList addObject:appointment];
}

-(void)setMasterAppointmentList:(NSMutableArray * )newList
{
    if( _masterAppointmentList != newList)
        _masterAppointmentList = [newList mutableCopy];
}



-(void)initializeDefaultDataList
{
    NSMutableArray *appointmentList = [[NSMutableArray alloc]init];
    self.masterAppointmentList = appointmentList;
    
}

-(id)init{
    if(self == [super init])
    {
        [self initializeDefaultDataList];
        return self;
        
    }
    return nil;
}

@end
