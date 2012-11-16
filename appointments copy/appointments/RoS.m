//
//  RoS.m
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "RoS.h"

@implementation RoS
-(id)initWithName:(NSDate *)date systems:(NSMutableArray *)systems
{
    self = [super init];
    if (self) {
        _systems = systems;
        _date = date;
        return self;
    }
    return nil;
}
@end
