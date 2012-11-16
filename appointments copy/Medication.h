//
//  Medication.h
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medication : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *dose;
@property(nonatomic, copy) NSString *frequency;
@property(nonatomic, copy) NSString *description;

-(void)setDose:(NSString *)dose;
-(void)setFrequency:(NSString *)frequency;
-(void)setName:(NSString *)name;
-(void)setDescription:(NSString *)description;

-(NSString *)getDose;
-(NSString *)getFrequency;
-(NSString *)getName;
-(NSString *)getDescription;

-(id)initWithName:(NSString *)name Dose:(NSString *)dose Frequency:(NSString *)frequency Description:(NSString *)description;

@end
