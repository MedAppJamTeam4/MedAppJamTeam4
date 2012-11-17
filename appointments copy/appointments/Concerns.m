//
//  Concerns.m
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "Concerns.h"


@implementation Concerns


- (id)initWithName:(NSString *)name status:(NSString *)status date:(NSDate *)startDate instances:(NSMutableArray *)instances{
    
    self = [super init];
    if (self) {
        _name = name;
        _status = status;
        _startDate = startDate;
        _instances = instances;
        return self;
    }
    return nil;
}

@end
