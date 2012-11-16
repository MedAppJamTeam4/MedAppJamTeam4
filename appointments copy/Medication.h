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

-(id)initWithName:(NSString *)name Dose:(NSString *)dose Frequency:(NSString *)frequency Description:(NSString *)description;

@end
