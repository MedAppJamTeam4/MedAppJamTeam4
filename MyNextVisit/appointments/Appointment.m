//
//  Appointment.m
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "Appointment.h"

@implementation Appointment

-(id)initWithDate:(NSString *)date Location:(NSString *)location Doctor:(NSString *)doctorName PhoneNumber:(NSString *)phoneNumber time:(NSString *)time description:(NSString *)description
{
    self = [super init];
    
    if(self)
    {
        _date = date;
        _location = location;
        _doctorName = doctorName;
        _phoneNumber = phoneNumber;
        _time = time;
        _description = description;
        return self;
    }
    return nil;
 
}



-(void)setLocation:(NSString *)location;
{
    self.location = location;
}
-(void)setDate:(NSString *)date
{
    self.date = date;
    
}
-(void)setDoctorName:(NSString *)doctorName
{
    self.doctorName=doctorName;
}
-(void)setPhoneNumber:(NSString *)phoneNumber
{
    self.phoneNumber = phoneNumber;
}

-(NSString *)getLocation
{
    return [self location];
}

-(NSString *)getDate
{
    return [self date];
}

-(NSString *)geDoctorName
{
    return [self doctorName];
}

-(NSString *)getPhoneNumber
{
    return [self phoneNumber];
}

@end
