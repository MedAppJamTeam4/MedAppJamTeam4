//
//  Appointment.h
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appointment : NSObject

@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, copy) NSString *doctorName;
@property (nonatomic, copy) NSString *phoneNumber;


-(void)setLocation:(NSString *)location;
-(void)setDate:(NSDate *)date;
-(void)setDoctorName:(NSString *)doctorName;
-(void)setPhoneNumber:(NSString *)phoneNumber;

-(NSString *)getLocation;
-(NSDate *)getDate;
-(NSString *)geDoctorName;
-(NSString *)getPhoneNumber;


-(id)initWithDate:(NSDate *)date Location:(NSString *)location Doctor:(NSString *)doctorName PhoneNumber:(NSString *)phoneNumber;

@end
