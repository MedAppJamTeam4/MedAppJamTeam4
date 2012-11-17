//
//  Concerns.m
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "Concern.h"


@implementation Concern


- (id)initWithName:(NSString *)name status:(NSString *)status date:(NSDate *)date instances:(NSMutableArray *)instances isRoS:(BOOL)isRoS{
    
    self = [super init];
    if (self) {
        _name = name;
        _status = status;
        _date = date;
        _instances = instances;
        _isRoS = isRoS;
        return self;
    }
    return nil;
}

@end
