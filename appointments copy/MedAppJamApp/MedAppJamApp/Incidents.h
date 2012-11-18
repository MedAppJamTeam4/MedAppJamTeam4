//
//  Incidents.h
//  MedAppJamApp
//
//  Created by marc wong on 11/16/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Incidents : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *location;

@property (nonatomic, copy) NSDate *date;
- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;

@end
