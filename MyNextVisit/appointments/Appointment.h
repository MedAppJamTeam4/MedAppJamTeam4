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
@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSString *doctorName;
@property (nonatomic, copy) NSString *phoneNumber;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *time;



-(id)initWithDate:(NSString *)date Location:(NSString *)location Doctor:(NSString *)doctorName PhoneNumber:(NSString *)phoneNumber time:(NSString *)time description:(NSString *)description;

@end
