//
//  AppointmentDataController.h
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Appointment;

@interface AppointmentDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterAppointmentList;

-(void)setMasterAppointmentList:(NSMutableArray * )newList;
-(Appointment *) objectInListAtIndex:(NSUInteger)theIndex;
-(void)addAppointment:(Appointment *)appointment;
-(void)initializeDefaultDataList;
-(NSUInteger) countOfList;

@end
