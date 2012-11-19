//
//  Concerns.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Instance.h"
#import "RoS.h"


@interface Concern : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSDate *date;

@property (nonatomic, copy) NSMutableArray *instances;

@property BOOL isRoS;

- (id)initWithName:(NSString *)name status:(NSString *)status date:(NSDate *)date instances:(NSMutableArray *)instances isRoS:(BOOL)isRoS;

@end
